package com.posadskiy.javaswingtutor.service.application;

import com.posadskiy.javaswingtutor.domain.dto.LessonDto;
import com.posadskiy.javaswingtutor.service.domain.entity.TaskEntity;
import com.posadskiy.javaswingtutor.service.domain.mapper.DtoMapper;
import com.posadskiy.javaswingtutor.service.infrastructure.jpa.LessonRepository;
import com.posadskiy.javaswingtutor.service.infrastructure.jpa.TaskRepository;
import jakarta.inject.Singleton;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Singleton
public class LessonService {
    private final LessonRepository lessonRepository;
    private final TaskRepository taskRepository;
    private final TranslationService translationService;

    public LessonService(
        LessonRepository lessonRepository,
        TaskRepository taskRepository,
        TranslationService translationService) {
        this.lessonRepository = lessonRepository;
        this.taskRepository = taskRepository;
        this.translationService = translationService;
    }

    public List<LessonDto> getAll() {
        return getAll("en");
    }

    public List<LessonDto> getAll(String languageCode) {
        String lang = languageCode != null ? languageCode : "en";
        List<com.posadskiy.javaswingtutor.service.domain.entity.LessonEntity> lessons = lessonRepository.findAll()
            .stream()
            .toList();
        Map<Long, List<TaskEntity>> tasksByLesson = loadTasksByLesson(lessons);
        return lessons
            .stream()
            .map(lesson -> {
                String translatedName = translationService.getLessonName(
                    lesson.getId(), lang
                );
                return DtoMapper.toDto(
                    lesson,
                    tasksByLesson.getOrDefault(lesson.getId(), List.of()),
                    lang,
                    translatedName,
                    task -> {
                        String taskTitle = translationService.getTaskTitle(task.getId(), lang);
                        String taskQuestion = translationService.getTaskQuestion(task.getId(), lang);
                        return DtoMapper.toDto(task, lang, taskTitle, taskQuestion);
                    }
                );
            })
            .toList();
    }

    public List<LessonDto> getByCategory(Long categoryId) {
        return getByCategory(categoryId, "en");
    }

    public List<LessonDto> getByCategory(Long categoryId, String languageCode) {
        String lang = languageCode != null ? languageCode : "en";
        if (categoryId == null) {
            return getAll(lang);
        }
        List<com.posadskiy.javaswingtutor.service.domain.entity.LessonEntity> lessons =
            lessonRepository.findByTaskCategoryId(categoryId);
        Map<Long, List<TaskEntity>> tasksByLesson = loadTasksByLesson(lessons);
        return lessons
            .stream()
            .map(lesson -> {
                String translatedName = translationService.getLessonName(
                    lesson.getId(), lang
                );
                return DtoMapper.toDto(
                    lesson,
                    tasksByLesson.getOrDefault(lesson.getId(), List.of()),
                    lang,
                    translatedName,
                    task -> {
                        String taskTitle = translationService.getTaskTitle(task.getId(), lang);
                        String taskQuestion = translationService.getTaskQuestion(task.getId(), lang);
                        return DtoMapper.toDto(task, lang, taskTitle, taskQuestion);
                    }
                );
            })
            .toList();
    }

    public java.util.Optional<LessonDto> getById(Long id) {
        return getById(id, "en");
    }

    public java.util.Optional<LessonDto> getById(Long id, String languageCode) {
        String lang = languageCode != null ? languageCode : "en";
        return lessonRepository.findById(id)
            .map(lesson -> {
                List<TaskEntity> lessonTasks = taskRepository.findByLessonId(lesson.getId())
                    .stream()
                    .sorted(java.util.Comparator.comparing(TaskEntity::getTaskNumber))
                    .toList();
                String translatedName = translationService.getLessonName(
                    lesson.getId(), lang
                );
                return DtoMapper.toDto(
                    lesson,
                    lessonTasks,
                    lang,
                    translatedName,
                    task -> {
                        String taskTitle = translationService.getTaskTitle(task.getId(), lang);
                        String taskQuestion = translationService.getTaskQuestion(task.getId(), lang);
                        return DtoMapper.toDto(task, lang, taskTitle, taskQuestion);
                    }
                );
            });
    }

    private Map<Long, List<TaskEntity>> loadTasksByLesson(
        List<com.posadskiy.javaswingtutor.service.domain.entity.LessonEntity> lessons) {
        if (lessons.isEmpty()) {
            return Collections.emptyMap();
        }
        List<Long> lessonIds = lessons.stream()
            .map(com.posadskiy.javaswingtutor.service.domain.entity.LessonEntity::getId)
            .toList();
        return taskRepository.findByLessonIdInOrderByTaskNumberAsc(lessonIds)
            .stream()
            .collect(Collectors.groupingBy(TaskEntity::getLessonId, HashMap::new, Collectors.toList()));
    }
}

