"use client";

import Link from "next/link";
import {useTranslations} from "@/lib/translations/context";
import {addLocaleToPath} from "@/lib/i18n";

export default function LessonsPage() {
    const {t, locale} = useTranslations();

    const renderSection = (
        title: string,
        desc: string,
        topics: string[],
        concepts: string[],
        topicsLabel: string,
        conceptsLabel: string
    ) => (
        <>
            <h2 className="text-2xl font-semibold text-text mt-8 mb-4 pb-2 border-b border-border">{title}</h2>
            <p className="text-text-muted leading-relaxed mb-4">{desc}</p>
            <h3 className="text-xl font-semibold text-text mt-6 mb-3">{topicsLabel}</h3>
            <ul className="list-disc list-inside space-y-2 mb-4 text-text-muted">
                {topics.map((topic, i) => (
                    <li key={i} className="leading-relaxed">{topic}</li>
                ))}
            </ul>
            <h3 className="text-xl font-semibold text-text mt-6 mb-3">{conceptsLabel}</h3>
            <ul className="list-disc list-inside space-y-2 mb-4 text-text-muted">
                {concepts.map((concept, i) => (
                    <li key={i} className="leading-relaxed">
                        <code className="bg-surface px-1.5 py-0.5 rounded text-sm font-mono text-primary">{concept}</code>
                    </li>
                ))}
            </ul>
            <hr className="border-border my-8"/>
        </>
    );

    return (
        <div>
            <h1 className="text-4xl font-bold text-text mt-8 mb-4 first:mt-0">{t.docs.lessons.title}</h1>

            <p className="text-text-muted leading-relaxed mb-4">{t.docs.lessons.intro}</p>

            <h2 className="text-2xl font-semibold text-text mt-8 mb-4 pb-2 border-b border-border">{t.docs.lessons.courseOverview}</h2>

            <ul className="list-disc list-inside space-y-2 mb-4 text-text-muted">
                {t.docs.lessons.courseFeatures.map((feature, i) => (
                    <li key={i} className="leading-relaxed">
                        <strong className="font-semibold text-text">{feature}</strong></li>
                ))}
            </ul>

            <hr className="border-border my-8"/>

            {renderSection(
                `1. ${t.docs.lessons.basics.title}`,
                t.docs.lessons.basics.desc,
                t.docs.lessons.basics.topicsList,
                t.docs.lessons.basics.conceptsList,
                t.docs.lessons.basics.topics,
                t.docs.lessons.basics.concepts
            )}

            {renderSection(
                `2. ${t.docs.lessons.layoutManagers.title}`,
                t.docs.lessons.layoutManagers.desc,
                t.docs.lessons.layoutManagers.topicsList,
                t.docs.lessons.layoutManagers.conceptsList,
                t.docs.lessons.layoutManagers.topics,
                t.docs.lessons.layoutManagers.concepts
            )}

            {renderSection(
                `3. ${t.docs.lessons.basicComponents.title}`,
                t.docs.lessons.basicComponents.desc,
                t.docs.lessons.basicComponents.topicsList,
                t.docs.lessons.basicComponents.conceptsList,
                t.docs.lessons.basicComponents.topics,
                t.docs.lessons.basicComponents.concepts
            )}

            {renderSection(
                `4. ${t.docs.lessons.eventHandling.title}`,
                t.docs.lessons.eventHandling.desc,
                t.docs.lessons.eventHandling.topicsList,
                t.docs.lessons.eventHandling.conceptsList,
                t.docs.lessons.eventHandling.topics,
                t.docs.lessons.eventHandling.concepts
            )}

            {renderSection(
                `5. ${t.docs.lessons.advancedComponents.title}`,
                t.docs.lessons.advancedComponents.desc,
                t.docs.lessons.advancedComponents.topicsList,
                t.docs.lessons.advancedComponents.conceptsList,
                t.docs.lessons.advancedComponents.topics,
                t.docs.lessons.advancedComponents.concepts
            )}

            {renderSection(
                `6. ${t.docs.lessons.menusAndDialogs.title}`,
                t.docs.lessons.menusAndDialogs.desc,
                t.docs.lessons.menusAndDialogs.topicsList,
                t.docs.lessons.menusAndDialogs.conceptsList,
                t.docs.lessons.menusAndDialogs.topics,
                t.docs.lessons.menusAndDialogs.concepts
            )}

            {renderSection(
                `7. ${t.docs.lessons.graphicsAndPainting.title}`,
                t.docs.lessons.graphicsAndPainting.desc,
                t.docs.lessons.graphicsAndPainting.topicsList,
                t.docs.lessons.graphicsAndPainting.conceptsList,
                t.docs.lessons.graphicsAndPainting.topics,
                t.docs.lessons.graphicsAndPainting.concepts
            )}

            {renderSection(
                `8. ${t.docs.lessons.bestPractices.title}`,
                t.docs.lessons.bestPractices.desc,
                t.docs.lessons.bestPractices.topicsList,
                t.docs.lessons.bestPractices.conceptsList,
                t.docs.lessons.bestPractices.topics,
                t.docs.lessons.bestPractices.concepts
            )}

            <h2 className="text-2xl font-semibold text-text mt-8 mb-4 pb-2 border-b border-border">{t.docs.lessons.progressTracking}</h2>

            <p className="text-text-muted leading-relaxed mb-4">{t.docs.lessons.progressDesc}</p>

            <ul className="list-disc list-inside space-y-2 mb-4 text-text-muted">
                {t.docs.lessons.progressFeatures.map((feature, i) => (
                    <li key={i} className="leading-relaxed">{feature}</li>
                ))}
            </ul>

            <h2 className="text-2xl font-semibold text-text mt-8 mb-4 pb-2 border-b border-border">{t.docs.lessons.recommendedApproach}</h2>

            <ol className="list-decimal list-inside space-y-2 mb-4 text-text-muted">
                {t.docs.lessons.approachSteps.map((step, i) => (
                    <li key={i} className="leading-relaxed"><strong className="font-semibold text-text">{step}</strong>
                    </li>
                ))}
            </ol>

            <h2 className="text-2xl font-semibold text-text mt-8 mb-4 pb-2 border-b border-border">{t.docs.lessons.needHelp}</h2>

            <p className="text-text-muted leading-relaxed mb-4">{t.docs.lessons.helpDesc}</p>

            <ol className="list-decimal list-inside space-y-2 mb-4 text-text-muted">
                {t.docs.lessons.helpSteps.map((step, i) => (
                    <li key={i} className="leading-relaxed">{step}</li>
                ))}
            </ol>

            <hr className="border-border my-8"/>

            <p className="text-text-muted leading-relaxed mb-4">
                {t.docs.lessons.readyToBegin}{" "}
                <Link href={addLocaleToPath("/download", locale)} className="text-primary hover:underline">{t.common.download}</Link>{" "}
                {t.docs.lessons.readyToBeginSuffix}
            </p>
        </div>
    );
}
