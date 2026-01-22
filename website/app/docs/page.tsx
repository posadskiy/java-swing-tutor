"use client";

import Link from "next/link";
import {Badge, Card, CardContent, CardDescription, CardHeader, CardTitle} from "@/components/ui";
import {useTranslations} from "@/lib/translations/context";
import {addLocaleToPath} from "@/lib/i18n";

export default function DocsPage() {
    const {t, locale} = useTranslations();
    return (
        <div>
            <Badge variant="primary" className="mb-4">{t.common.docs}</Badge>
            <h1 className="text-4xl font-bold text-text mb-4">{t.docs.title}</h1>
            <p className="text-lg text-text-muted mb-8">
                {t.docs.description}
            </p>

            <div className="grid gap-6 md:grid-cols-2 mb-12">
                <Link href={addLocaleToPath("/docs/getting-started", locale)}>
                    <Card hover className="h-full">
                        <CardHeader>
                            <div className="w-10 h-10 rounded-lg bg-primary/10 flex items-center justify-center mb-3">
                                <RocketIcon className="h-5 w-5 text-primary"/>
                            </div>
                            <CardTitle>{t.docs.gettingStarted.title}</CardTitle>
                        </CardHeader>
                        <CardContent>
                            <CardDescription>
                                {t.docs.gettingStarted.description}
                            </CardDescription>
                        </CardContent>
                    </Card>
                </Link>

                <Link href={addLocaleToPath("/docs/lessons", locale)}>
                    <Card hover className="h-full">
                        <CardHeader>
                            <div className="w-10 h-10 rounded-lg bg-accent/10 flex items-center justify-center mb-3">
                                <BookIcon className="h-5 w-5 text-accent"/>
                            </div>
                            <CardTitle>{t.docs.lessons.title}</CardTitle>
                        </CardHeader>
                        <CardContent>
                            <CardDescription>
                                {t.docs.lessons.description}
                            </CardDescription>
                        </CardContent>
                    </Card>
                </Link>

                <Link href={addLocaleToPath("/download", locale)}>
                    <Card hover className="h-full">
                        <CardHeader>
                            <div className="w-10 h-10 rounded-lg bg-orange-500/10 flex items-center justify-center mb-3">
                                <DownloadIcon className="h-5 w-5 text-orange-500"/>
                            </div>
                            <CardTitle>{t.common.download}</CardTitle>
                        </CardHeader>
                        <CardContent>
                            <CardDescription>
                                Get Java Swing Tutor for Windows, macOS, or Linux.
                            </CardDescription>
                        </CardContent>
                    </Card>
                </Link>
            </div>

            <h2 className="text-2xl font-semibold text-text mb-4 pb-2 border-b border-border">
                {t.docs.whatYoullLearn}
            </h2>
            <ul className="space-y-3 text-text-muted mb-8">
                <li className="flex items-start gap-3">
                    <CheckIcon className="h-5 w-5 text-accent mt-0.5 shrink-0"/>
                    <span>Create desktop applications with Java Swing</span>
                </li>
                <li className="flex items-start gap-3">
                    <CheckIcon className="h-5 w-5 text-accent mt-0.5 shrink-0"/>
                    <span>Understand layout managers and component positioning</span>
                </li>
                <li className="flex items-start gap-3">
                    <CheckIcon className="h-5 w-5 text-accent mt-0.5 shrink-0"/>
                    <span>Handle user events and interactions</span>
                </li>
                <li className="flex items-start gap-3">
                    <CheckIcon className="h-5 w-5 text-accent mt-0.5 shrink-0"/>
                    <span>Build custom components and graphics</span>
                </li>
                <li className="flex items-start gap-3">
                    <CheckIcon className="h-5 w-5 text-accent mt-0.5 shrink-0"/>
                    <span>Apply best practices and design patterns</span>
                </li>
            </ul>

            <h2 className="text-2xl font-semibold text-text mb-4 pb-2 border-b border-border">
                {t.docs.needHelp}
            </h2>
            <p className="text-text-muted">
                {t.docs.helpText}{" "}
                <Link href={addLocaleToPath("/support", locale)} className="text-primary hover:underline">
                    {t.docs.supportPage}
                </Link>{" "}
                {t.docs.orReachOut}{" "}
                <a href="mailto:support@posadskiy.com" className="text-primary hover:underline">
                    support@posadskiy.com
                </a>
                .
            </p>
        </div>
    );
}

function RocketIcon({className}: { className?: string }) {
    return (
        <svg className={className} fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
            <path strokeLinecap="round" strokeLinejoin="round" d="M15.59 14.37a6 6 0 01-5.84 7.38v-4.8m5.84-2.58a14.98 14.98 0 006.16-12.12A14.98 14.98 0 009.631 8.41m5.96 5.96a14.926 14.926 0 01-5.841 2.58m-.119-8.54a6 6 0 00-7.381 5.84h4.8m2.581-5.84a14.927 14.927 0 00-2.58 5.84m2.699 2.7c-.103.021-.207.041-.311.06a15.09 15.09 0 01-2.448-2.448 14.9 14.9 0 01.06-.312m-2.24 2.39a4.493 4.493 0 00-1.757 4.306 4.493 4.493 0 004.306-1.758M16.5 9a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0z"/>
        </svg>
    );
}

function BookIcon({className}: { className?: string }) {
    return (
        <svg className={className} fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
            <path strokeLinecap="round" strokeLinejoin="round" d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253"/>
        </svg>
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
