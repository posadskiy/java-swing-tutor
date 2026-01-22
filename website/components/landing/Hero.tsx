"use client";

import Link from "next/link";
import {Button} from "@/components/ui";
import {GITHUB_URL} from "@/lib/constants";
import {useTranslations} from "@/lib/translations/context";
import {addLocaleToPath} from "@/lib/i18n";

export function Hero() {
    const {t, locale} = useTranslations();
    return (
        <section className="relative overflow-hidden">
            {/* Background gradient */}
            <div className="absolute inset-0 bg-gradient-to-b from-primary/5 via-transparent to-transparent"/>
            <div className="absolute inset-0 bg-[radial-gradient(ellipse_at_top,_var(--tw-gradient-stops))] from-primary/10 via-transparent to-transparent"/>

            {/* Grid pattern */}
            <div
                className="absolute inset-0 opacity-20"
                style={{
                    backgroundImage: `linear-gradient(to right, var(--color-border) 1px, transparent 1px),
                           linear-gradient(to bottom, var(--color-border) 1px, transparent 1px)`,
                    backgroundSize: "4rem 4rem",
                }}
            />

            <div className="relative mx-auto max-w-7xl px-4 py-24 sm:px-6 sm:py-32 lg:px-8 lg:py-40">
                <div className="grid gap-12 lg:grid-cols-2 lg:gap-8 items-center">
                    {/* Content */}
                    <div className="max-w-2xl">
                        <div className="inline-flex items-center rounded-full border border-primary/30 bg-primary/10 px-3 py-1 text-sm text-primary mb-6">
                            <span className="mr-2">✨</span>
                            {t.hero.badge}
                        </div>

                        <h1 className="text-4xl font-bold tracking-tight text-text sm:text-5xl lg:text-6xl">
                            {t.hero.title}{" "}
                            <span className="text-transparent bg-clip-text bg-gradient-to-r from-primary to-accent">
                {t.hero.titleHighlight}
              </span>{" "}
                            {t.hero.titleSuffix}
                        </h1>

                        <p className="mt-6 text-lg text-text-muted leading-relaxed">
                            {t.hero.description}
                        </p>

                        <div className="mt-8 flex flex-wrap gap-4">
                            <Link href={addLocaleToPath("/download", locale)}>
                                <Button size="lg" className="gap-2">
                                    <DownloadIcon className="h-5 w-5"/>
                                    {t.hero.downloadButton}
                                </Button>
                            </Link>
                            <Link href={addLocaleToPath("/docs/getting-started", locale)}>
                                <Button variant="outline" size="lg">
                                    {t.hero.getStartedButton}
                                </Button>
                            </Link>
                        </div>

                        <div className="mt-8 flex items-center gap-6 text-sm text-text-muted">
                            <div className="flex items-center gap-2">
                                <CheckIcon className="h-4 w-4 text-accent"/>
                                <span>{t.hero.freeOpenSource}</span>
                            </div>
                            <div className="flex items-center gap-2">
                                <CheckIcon className="h-4 w-4 text-accent"/>
                                <span>{t.hero.crossPlatform}</span>
                            </div>
                            <Link
                                href={GITHUB_URL}
                                target="_blank"
                                rel="noopener noreferrer"
                                className="flex items-center gap-2 hover:text-text transition-colors"
                            >
                                <GitHubIcon className="h-4 w-4"/>
                                <span>{t.hero.viewOnGitHub}</span>
                            </Link>
                        </div>
                    </div>

                    {/* Code Editor Mockup */}
                    <div className="relative lg:ml-8">
                        <div className="rounded-xl border border-border bg-surface shadow-2xl shadow-primary/10 overflow-hidden">
                            {/* Window controls */}
                            <div className="flex items-center gap-2 px-4 py-3 border-b border-border bg-background">
                                <div className="flex gap-1.5">
                                    <div className="w-3 h-3 rounded-full bg-red-500/80"/>
                                    <div className="w-3 h-3 rounded-full bg-yellow-500/80"/>
                                    <div className="w-3 h-3 rounded-full bg-green-500/80"/>
                                </div>
                                <span className="ml-4 text-xs text-text-muted">Java Swing Tutor</span>
                            </div>

                            {/* Code content */}
                            <div className="p-4 font-mono text-sm">
                <pre className="text-text-muted bg-transparent border-none p-0">
                  <code>
                    <span className="text-purple-400">import</span>{" "}
                      <span className="text-text">javax.swing.*;</span>
                      {"\n\n"}
                      <span className="text-purple-400">public class</span>{" "}
                      <span className="text-yellow-400">MyFirstWindow</span>{" "}
                      <span className="text-text">{"{"}</span>
                      {"\n"}
                      {"  "}
                      <span className="text-purple-400">public static void</span>{" "}
                      <span className="text-blue-400">main</span>
                    <span className="text-text">(String[] args) {"{"}</span>
                      {"\n"}
                      {"    "}
                      <span className="text-text">JFrame frame = </span>
                    <span className="text-purple-400">new</span>{" "}
                      <span className="text-yellow-400">JFrame</span>
                    <span className="text-text">(</span>
                    <span className="text-green-400">&quot;Hello Swing!&quot;</span>
                    <span className="text-text">);</span>
                      {"\n"}
                      {"    "}
                      <span className="text-text">frame.</span>
                    <span className="text-blue-400">setSize</span>
                    <span className="text-text">(</span>
                    <span className="text-orange-400">400</span>
                    <span className="text-text">, </span>
                    <span className="text-orange-400">300</span>
                    <span className="text-text">);</span>
                      {"\n"}
                      {"    "}
                      <span className="text-text">frame.</span>
                    <span className="text-blue-400">setVisible</span>
                    <span className="text-text">(</span>
                    <span className="text-purple-400">true</span>
                    <span className="text-text">);</span>
                      {"\n"}
                      {"  "}
                      <span className="text-text">{"}"}</span>
                      {"\n"}
                      <span className="text-text">{"}"}</span>
                  </code>
                </pre>
                            </div>

                            {/* Status bar */}
                            <div className="flex items-center justify-between px-4 py-2 border-t border-border bg-background text-xs text-text-muted">
                <span className="flex items-center gap-2">
                  <span className="w-2 h-2 rounded-full bg-accent animate-pulse"/>
                  Ready to run
                </span>
                                <span>Java 25</span>
                            </div>
                        </div>

                        {/* Decorative elements */}
                        <div className="absolute -z-10 -top-4 -right-4 w-72 h-72 bg-primary/20 rounded-full blur-3xl"/>
                        <div className="absolute -z-10 -bottom-4 -left-4 w-72 h-72 bg-accent/20 rounded-full blur-3xl"/>
                    </div>
                </div>
            </div>
        </section>
    );
}

function DownloadIcon({className}: { className?: string }) {
    return (
        <svg className={className} fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
            <path strokeLinecap="round" strokeLinejoin="round" d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4"/>
        </svg>
    );
}

function CheckIcon({className}: { className?: string }) {
    return (
        <svg className={className} fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
            <path strokeLinecap="round" strokeLinejoin="round" d="M5 13l4 4L19 7"/>
        </svg>
    );
}

function GitHubIcon({className}: { className?: string }) {
    return (
        <svg className={className} fill="currentColor" viewBox="0 0 24 24">
            <path
                fillRule="evenodd"
                d="M12 2C6.477 2 2 6.484 2 12.017c0 4.425 2.865 8.18 6.839 9.504.5.092.682-.217.682-.483 0-.237-.008-.868-.013-1.703-2.782.605-3.369-1.343-3.369-1.343-.454-1.158-1.11-1.466-1.11-1.466-.908-.62.069-.608.069-.608 1.003.07 1.531 1.032 1.531 1.032.892 1.53 2.341 1.088 2.91.832.092-.647.35-1.088.636-1.338-2.22-.253-4.555-1.113-4.555-4.951 0-1.093.39-1.988 1.029-2.688-.103-.253-.446-1.272.098-2.65 0 0 .84-.27 2.75 1.026A9.564 9.564 0 0112 6.844c.85.004 1.705.115 2.504.337 1.909-1.296 2.747-1.027 2.747-1.027.546 1.379.202 2.398.1 2.651.64.7 1.028 1.595 1.028 2.688 0 3.848-2.339 4.695-4.566 4.943.359.309.678.92.678 1.855 0 1.338-.012 2.419-.012 2.747 0 .268.18.58.688.482A10.019 10.019 0 0022 12.017C22 6.484 17.522 2 12 2z"
                clipRule="evenodd"
            />
        </svg>
    );
}
