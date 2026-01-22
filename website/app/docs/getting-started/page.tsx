"use client";

import Link from "next/link";
import {useTranslations} from "@/lib/translations/context";
import {addLocaleToPath} from "@/lib/i18n";

export default function GettingStartedPage() {
    const {t, locale} = useTranslations();

    return (
        <div>
            <h1 className="text-4xl font-bold text-text mt-8 mb-4 first:mt-0">{t.docs.gettingStarted.title}</h1>

            <p className="text-text-muted leading-relaxed mb-4">{t.docs.gettingStarted.welcome}</p>

            <h2 className="text-2xl font-semibold text-text mt-8 mb-4 pb-2 border-b border-border">{t.docs.gettingStarted.prerequisites}</h2>

            <p className="text-text-muted leading-relaxed mb-4">{t.docs.gettingStarted.prerequisitesDesc}</p>

            <ul className="list-disc list-inside space-y-2 mb-4 text-text-muted">
                <li className="leading-relaxed">
                    <strong className="font-semibold text-text">{t.docs.gettingStarted.jdk}</strong> {t.docs.gettingStarted.jdkInstalled}
                </li>
                <li className="leading-relaxed">
                    <strong className="font-semibold text-text">{t.docs.gettingStarted.diskSpace}</strong> {t.docs.gettingStarted.diskSpaceOf}
                </li>
                <li className="leading-relaxed">
                    <strong className="font-semibold text-text">{t.docs.gettingStarted.ram}</strong></li>
            </ul>

            <h3 className="text-xl font-semibold text-text mt-6 mb-3">{t.docs.gettingStarted.installingJava}</h3>

            <p className="text-text-muted leading-relaxed mb-4">{t.docs.gettingStarted.installingJavaDesc}</p>

            <ul className="list-disc list-inside space-y-2 mb-4 text-text-muted">
                <li className="leading-relaxed">
                    <a href="https://www.oracle.com/java/technologies/downloads/" target="_blank" rel="noopener noreferrer" className="text-primary hover:underline">Oracle JDK</a>
                </li>
                <li className="leading-relaxed">
                    <a href="https://adoptium.net/" target="_blank" rel="noopener noreferrer" className="text-primary hover:underline">Eclipse Temurin</a>
                </li>
                <li className="leading-relaxed">
                    <a href="https://aws.amazon.com/corretto/" target="_blank" rel="noopener noreferrer" className="text-primary hover:underline">Amazon Corretto</a>
                </li>
            </ul>

            <p className="text-text-muted leading-relaxed mb-4">{t.docs.gettingStarted.verifyInstallation}</p>

            <pre className="bg-surface border border-border rounded-lg p-4 overflow-x-auto mb-4 text-sm"><code className="bg-surface px-1.5 py-0.5 rounded text-sm font-mono text-primary">java --version</code></pre>

            <p className="text-text-muted leading-relaxed mb-4">{t.docs.gettingStarted.verifyOutput}</p>

            <h2 className="text-2xl font-semibold text-text mt-8 mb-4 pb-2 border-b border-border">{t.docs.gettingStarted.installation}</h2>

            <h3 className="text-xl font-semibold text-text mt-6 mb-3">{t.docs.gettingStarted.downloadApp}</h3>

            <ol className="list-decimal list-inside space-y-2 mb-4 text-text-muted">
                {t.docs.gettingStarted.downloadSteps.map((step, i) => (
                    <li key={i} className="leading-relaxed">{step}</li>
                ))}
            </ol>

            <h3 className="text-xl font-semibold text-text mt-6 mb-3">{t.docs.gettingStarted.universalJar}</h3>

            <p className="text-text-muted leading-relaxed mb-4">{t.docs.gettingStarted.universalJarDesc}</p>

            <pre className="bg-surface border border-border rounded-lg p-4 overflow-x-auto mb-4 text-sm"><code className="bg-surface px-1.5 py-0.5 rounded text-sm font-mono text-primary"># Download the JAR file
# Then run:
java -jar java-swing-tutor.jar</code></pre>

            <h2 className="text-2xl font-semibold text-text mt-8 mb-4 pb-2 border-b border-border">{t.docs.gettingStarted.firstLaunch}</h2>

            <p className="text-text-muted leading-relaxed mb-4">{t.docs.gettingStarted.firstLaunchDesc}</p>

            <ol className="list-decimal list-inside space-y-2 mb-4 text-text-muted">
                {t.docs.gettingStarted.firstLaunchSteps.map((step, i) => (
                    <li key={i} className="leading-relaxed"><strong className="font-semibold text-text">{step}</strong>
                    </li>
                ))}
            </ol>

            <h2 className="text-2xl font-semibold text-text mt-8 mb-4 pb-2 border-b border-border">{t.docs.gettingStarted.appOverview}</h2>

            <p className="text-text-muted leading-relaxed mb-4">{t.docs.gettingStarted.appOverviewDesc}</p>

            <ul className="list-disc list-inside space-y-2 mb-4 text-text-muted">
                {t.docs.gettingStarted.interfaceParts.map((part, i) => (
                    <li key={i} className="leading-relaxed"><strong className="font-semibold text-text">{part}</strong>
                    </li>
                ))}
            </ul>

            <h2 className="text-2xl font-semibold text-text mt-8 mb-4 pb-2 border-b border-border">{t.docs.gettingStarted.firstTask}</h2>

            <p className="text-text-muted leading-relaxed mb-4">{t.docs.gettingStarted.firstTaskDesc}</p>

            <ol className="list-decimal list-inside space-y-2 mb-4 text-text-muted">
                {t.docs.gettingStarted.firstTaskSteps.map((step, i) => (
                    <li key={i} className="leading-relaxed">{step}</li>
                ))}
            </ol>

            <h2 className="text-2xl font-semibold text-text mt-8 mb-4 pb-2 border-b border-border">{t.docs.gettingStarted.tipsForSuccess}</h2>

            <ul className="list-disc list-inside space-y-2 mb-4 text-text-muted">
                {t.docs.gettingStarted.tips.map((tip, i) => (
                    <li key={i} className="leading-relaxed">{tip}</li>
                ))}
            </ul>

            <h2 className="text-2xl font-semibold text-text mt-8 mb-4 pb-2 border-b border-border">{t.docs.gettingStarted.keyboardShortcuts}</h2>

            <div className="overflow-x-auto mb-4">
                <table className="w-full border-collapse">
                    <thead className="bg-surface">
                    <tr className="border-b border-border">
                        <th className="px-4 py-2 text-left text-text font-semibold">{t.docs.gettingStarted.shortcut}</th>
                        <th className="px-4 py-2 text-left text-text font-semibold">{t.docs.gettingStarted.action}</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr className="border-b border-border">
                        <td className="px-4 py-2 text-text-muted">Ctrl+R</td>
                        <td className="px-4 py-2 text-text-muted">{t.docs.gettingStarted.shortcuts.runCode}</td>
                    </tr>
                    <tr className="border-b border-border">
                        <td className="px-4 py-2 text-text-muted">Ctrl+Enter</td>
                        <td className="px-4 py-2 text-text-muted">{t.docs.gettingStarted.shortcuts.submitAnswer}</td>
                    </tr>
                    <tr className="border-b border-border">
                        <td className="px-4 py-2 text-text-muted">Ctrl+S</td>
                        <td className="px-4 py-2 text-text-muted">{t.docs.gettingStarted.shortcuts.showSolution}</td>
                    </tr>
                    <tr className="border-b border-border">
                        <td className="px-4 py-2 text-text-muted">Ctrl+Space</td>
                        <td className="px-4 py-2 text-text-muted">{t.docs.gettingStarted.shortcuts.autocomplete}</td>
                    </tr>
                    <tr className="border-b border-border">
                        <td className="px-4 py-2 text-text-muted">Ctrl+Left</td>
                        <td className="px-4 py-2 text-text-muted">{t.docs.gettingStarted.shortcuts.previousTask}</td>
                    </tr>
                    <tr className="border-b border-border">
                        <td className="px-4 py-2 text-text-muted">Ctrl+Right</td>
                        <td className="px-4 py-2 text-text-muted">{t.docs.gettingStarted.shortcuts.nextTask}</td>
                    </tr>
                    </tbody>
                </table>
            </div>

            <h2 className="text-2xl font-semibold text-text mt-8 mb-4 pb-2 border-b border-border">{t.docs.gettingStarted.nextSteps}</h2>

            <p className="text-text-muted leading-relaxed mb-4">{t.docs.gettingStarted.nextStepsDesc}</p>

            <ul className="list-disc list-inside space-y-2 mb-4 text-text-muted">
                <li className="leading-relaxed">
                    <Link href={addLocaleToPath("/docs/lessons", locale)} className="text-primary hover:underline">{t.docs.lessons.title}</Link> - {t.docs.gettingStarted.exploreLessons}
                </li>
                <li className="leading-relaxed">
                    <Link href={addLocaleToPath("/docs/components", locale)} className="text-primary hover:underline">{t.docs.sidebar.componentGallery}</Link> - {t.docs.gettingStarted.componentReference}
                </li>
                <li className="leading-relaxed">
                    <Link href={addLocaleToPath("/support", locale)} className="text-primary hover:underline">{t.common.support}</Link> - {t.docs.gettingStarted.getHelp}
                </li>
            </ul>

            <p className="text-text-muted leading-relaxed mb-4">{t.docs.gettingStarted.happyCoding}</p>
        </div>
    );
}
