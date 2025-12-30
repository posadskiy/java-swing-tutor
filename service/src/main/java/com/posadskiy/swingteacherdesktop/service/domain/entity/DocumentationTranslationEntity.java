package com.posadskiy.swingteacherdesktop.service.domain.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "documentation_translation", uniqueConstraints = {
    @UniqueConstraint(columnNames = {"documentation_id", "language_code"})
})
public class DocumentationTranslationEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "documentation_id", nullable = false)
    private Long documentationId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "documentation_id", insertable = false, updatable = false)
    private DocumentationEntity documentation;

    @Column(name = "language_code", nullable = false, length = 10)
    private String languageCode;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "language_code", referencedColumnName = "code", insertable = false, updatable = false)
    private LanguageEntity language;

    @Column(name = "text", columnDefinition = "TEXT")
    private String text;
}
