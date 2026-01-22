"use client";

import {LEARNING_PATH} from "@/lib/constants";
import {Badge} from "@/components/ui";
import {useTranslations} from "@/lib/translations/context";

export function LearningPath() {
    const {t} = useTranslations();
    return (
        <section className="py-24 sm:py-32 bg-surface/30">
            <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
                {/* Header */}
                <div className="text-center max-w-3xl mx-auto mb-16">
                    <Badge variant="primary" className="mb-4">
                        {t.learningPath.badge}
                    </Badge>
                    <h2 className="text-3xl font-bold tracking-tight text-text sm:text-4xl">
                        {t.learningPath.title}
                    </h2>
                    <p className="mt-4 text-lg text-text-muted">
                        {t.learningPath.subtitle}
                    </p>
                </div>

                {/* Learning Path Timeline */}
                <div className="relative">
                    {/* Connection line */}
                    <div className="absolute left-8 top-0 bottom-0 w-0.5 bg-gradient-to-b from-primary via-primary/50 to-accent hidden lg:block"/>

                    <div className="space-y-8">
                        {LEARNING_PATH.map((section, index) => (
                            <div key={section.category} className="relative">
                                <div className="flex flex-col lg:flex-row gap-4 lg:gap-8">
                                    {/* Step indicator */}
                                    <div className="flex items-center gap-4 lg:w-48 shrink-0">
                                        <div
                                            className="w-16 h-16 rounded-full flex items-center justify-center text-xl font-bold shadow-lg z-10"
                                            style={{
                                                background: `linear-gradient(135deg, var(--color-primary), var(--color-accent))`,
                                                color: "white",
                                            }}
                                        >
                                            {index + 1}
                                        </div>
                                        <h3 className="text-xl font-semibold text-text lg:hidden">
                                            {section.category}
                                        </h3>
                                    </div>

                                    {/* Content card */}
                                    <div className="flex-1 rounded-xl border border-border bg-surface p-6 hover:border-primary/50 transition-colors">
                                        <h3 className="text-xl font-semibold text-text mb-4 hidden lg:block">
                                            {section.category}
                                        </h3>
                                        <div className="flex flex-wrap gap-2">
                                            {section.lessons.map((lesson) => (
                                                <span
                                                    key={lesson}
                                                    className="inline-flex items-center px-3 py-1 rounded-lg bg-background text-sm text-text-muted border border-border"
                                                >
                          {lesson}
                        </span>
                                            ))}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        ))}
                    </div>

                    {/* Final achievement */}
                    <div className="mt-12 text-center">
                        <div className="inline-flex items-center gap-3 px-6 py-3 rounded-full bg-gradient-to-r from-primary/20 to-accent/20 border border-primary/30">
                            <TrophyIcon className="h-6 w-6 text-accent"/>
                            <span className="text-text font-medium">
                {t.learningPath.achievement}
              </span>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    );
}

function TrophyIcon({className}: { className?: string }) {
    return (
        <svg className={className} fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
            <path
                strokeLinecap="round"
                strokeLinejoin="round"
                d="M5 3v4M3 5h4M6 17v4m-2-2h4m5-16l2.286 6.857L21 12l-5.714 2.143L13 21l-2.286-6.857L5 12l5.714-2.143L13 3z"
            />
        </svg>
    );
}
