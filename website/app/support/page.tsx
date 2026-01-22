"use client";

import {Button, Card, CardContent, CardDescription, CardHeader, CardTitle} from "@/components/ui";
import {GITHUB_URL, SUPPORT_EMAIL} from "@/lib/constants";
import {useTranslations} from "@/lib/translations/context";
import {addLocaleToPath} from "@/lib/i18n";
import Link from "next/link";

export default function SupportPage() {
    const {t, locale} = useTranslations();
    return (
        <div className="py-16 sm:py-24">
            <div className="mx-auto max-w-4xl px-4 sm:px-6 lg:px-8">
                {/* Header */}
                <div className="text-center mb-12">
                    <h1 className="text-4xl font-bold tracking-tight text-text sm:text-5xl">
                        {t.support.title}
                    </h1>
                    <p className="mt-4 text-lg text-text-muted max-w-2xl mx-auto">
                        {t.support.description}
                    </p>
                </div>

                {/* Support Options */}
                <div className="grid gap-6 md:grid-cols-2 mb-12">
                    {/* Documentation */}
                    <Link href={addLocaleToPath("/docs", locale)}>
                        <Card hover className="h-full">
                            <CardHeader>
                                <div className="w-12 h-12 rounded-lg bg-primary/10 flex items-center justify-center mb-4">
                                    <BookIcon className="h-6 w-6 text-primary"/>
                                </div>
                                <CardTitle>{t.support.documentation}</CardTitle>
                            </CardHeader>
                            <CardContent>
                                <CardDescription>
                                    {t.support.documentationDesc}
                                </CardDescription>
                            </CardContent>
                        </Card>
                    </Link>

                    {/* FAQ */}
                    <Link href="#faq">
                        <Card hover className="h-full">
                            <CardHeader>
                                <div className="w-12 h-12 rounded-lg bg-accent/10 flex items-center justify-center mb-4">
                                    <QuestionIcon className="h-6 w-6 text-accent"/>
                                </div>
                                <CardTitle>{t.support.faq}</CardTitle>
                            </CardHeader>
                            <CardContent>
                                <CardDescription>
                                    {t.support.faqDesc}
                                </CardDescription>
                            </CardContent>
                        </Card>
                    </Link>

                    {/* GitHub Issues */}
                    <Link href={`${GITHUB_URL}/issues`} target="_blank" rel="noopener noreferrer">
                        <Card hover className="h-full">
                            <CardHeader>
                                <div className="w-12 h-12 rounded-lg bg-purple-500/10 flex items-center justify-center mb-4">
                                    <GitHubIcon className="h-6 w-6 text-purple-500"/>
                                </div>
                                <CardTitle>{t.support.github}</CardTitle>
                            </CardHeader>
                            <CardContent>
                                <CardDescription>
                                    {t.support.githubDesc}
                                </CardDescription>
                            </CardContent>
                        </Card>
                    </Link>

                    {/* Email Support */}
                    <Link href={`mailto:${SUPPORT_EMAIL}`}>
                        <Card hover className="h-full">
                            <CardHeader>
                                <div className="w-12 h-12 rounded-lg bg-orange-500/10 flex items-center justify-center mb-4">
                                    <EmailIcon className="h-6 w-6 text-orange-500"/>
                                </div>
                                <CardTitle>{t.support.email}</CardTitle>
                            </CardHeader>
                            <CardContent>
                                <CardDescription>
                                    {t.support.emailDesc}
                                </CardDescription>
                            </CardContent>
                        </Card>
                    </Link>
                </div>

                {/* FAQ Section */}
                <div id="faq" className="mb-12">
                    <h2 className="text-2xl font-bold text-text mb-6">{t.support.faqTitle}</h2>
                    <div className="space-y-4">
                        <FAQItem
                            question={t.support.faqItems.installation.question}
                            answer={t.support.faqItems.installation.answer}
                        />
                        <FAQItem
                            question={t.support.faqItems.requirements.question}
                            answer={t.support.faqItems.requirements.answer}
                        />
                        <FAQItem
                            question={t.support.faqItems.languages.question}
                            answer={t.support.faqItems.languages.answer}
                        />
                        <FAQItem
                            question={t.support.faqItems.free.question}
                            answer={t.support.faqItems.free.answer}
                        />
                    </div>
                </div>

                {/* Contact Form Alternative */}
                <Card className="border-primary/30 bg-gradient-to-br from-primary/5 to-transparent">
                    <CardContent className="p-8 text-center">
                        <h2 className="text-2xl font-bold text-text mb-4">{t.support.contactUs}</h2>
                        <p className="text-text-muted mb-6 max-w-lg mx-auto">
                            {t.support.contactDesc}
                        </p>
                        <Link href={`mailto:${SUPPORT_EMAIL}`}>
                            <Button size="lg" className="gap-2">
                                <EmailIcon className="h-5 w-5"/>
                                {t.support.orEmail} {SUPPORT_EMAIL}
                            </Button>
                        </Link>
                    </CardContent>
                </Card>
            </div>
        </div>
    );
}

function FAQItem({question, answer}: { question: string; answer: string }) {
    return (
        <details className="group rounded-lg border border-border bg-surface">
            <summary className="flex cursor-pointer items-center justify-between p-4 text-text font-medium">
                {question}
                <ChevronIcon className="h-5 w-5 text-text-muted transition-transform group-open:rotate-180"/>
            </summary>
            <div className="px-4 pb-4 text-text-muted">
                {answer}
            </div>
        </details>
    );
}

function BookIcon({className}: { className?: string }) {
    return (
        <svg className={className} fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
            <path strokeLinecap="round" strokeLinejoin="round" d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253"/>
        </svg>
    );
}

function QuestionIcon({className}: { className?: string }) {
    return (
        <svg className={className} fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
            <path strokeLinecap="round" strokeLinejoin="round" d="M8.228 9c.549-1.165 2.03-2 3.772-2 2.21 0 4 1.343 4 3 0 1.4-1.278 2.575-3.006 2.907-.542.104-.994.54-.994 1.093m0 3h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z"/>
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

function EmailIcon({className}: { className?: string }) {
    return (
        <svg className={className} fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
            <path
                strokeLinecap="round"
                strokeLinejoin="round"
                d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"
            />
        </svg>
    );
}

function ChevronIcon({className}: { className?: string }) {
    return (
        <svg className={className} fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
            <path strokeLinecap="round" strokeLinejoin="round" d="M19 9l-7 7-7-7"/>
        </svg>
    );
}
