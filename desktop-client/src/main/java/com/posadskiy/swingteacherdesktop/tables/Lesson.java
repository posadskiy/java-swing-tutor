package com.posadskiy.swingteacherdesktop.tables;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serial;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
public class Lesson implements Serializable {

    @Serial
    private static final long serialVersionUID = -5527568548002296042L;

    private Integer id;

    private Integer lessonNumber;

    private String lessonName;

    private Integer idTaskCategory;

    private List<Task> tasks = new ArrayList<>();

    @Override
    public String toString() {
        return this.lessonName;
    }

}
