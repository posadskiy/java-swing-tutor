"use client";

import Link from "next/link";
import {GITHUB_URL, SUPPORT_EMAIL} from "@/lib/constants";
import {useTranslations} from "@/lib/translations/context";
import {addLocaleToPath} from "@/lib/i18n";

export function Footer() {
    const {t, locale} = useTranslations();
    const currentYear = new Date().getFullYear();

    const footerLinks = {
        product: [
            {href: addLocaleToPath("/download", locale), label: t.footer.links.download},
            {href: addLocaleToPath("/docs", locale), label: t.footer.links.documentation},
            {href: addLocaleToPath("/docs/getting-started", locale), label: t.footer.links.gettingStarted},
            {href: addLocaleToPath("/docs/lessons", locale), label: t.footer.links.lessons},
        ],
        resources: [
            {href: GITHUB_URL, label: t.footer.links.github, external: true},
            {href: addLocaleToPath("/support", locale), label: t.footer.links.support},
        ],
        legal: [
            {href: addLocaleToPath("/privacy", locale), label: t.footer.links.privacy},
            {href: addLocaleToPath("/terms", locale), label: t.footer.links.terms},
        ],
    };

    return (
        <footer className="border-t border-border bg-surface/50">
            <div className="mx-auto max-w-7xl px-4 py-12 sm:px-6 lg:px-8">
                <div className="grid grid-cols-2 gap-8 md:grid-cols-4">
                    {/* Brand */}
                    <div className="col-span-2 md:col-span-1">
                        <Link href={addLocaleToPath("/", locale)} className="flex items-center gap-2 group">
                            <div className="flex h-8 w-8 items-center justify-center rounded-lg bg-primary text-white font-bold text-sm">
                                JST
                            </div>
                            <span className="text-lg font-semibold text-text">{t.common.siteName}</span>
                        </Link>
                        <p className="mt-4 text-sm text-text-muted max-w-xs">
                            {t.footer.description}
                        </p>
                        <div className="mt-4 flex items-center gap-4">
                            <Link
                                href={GITHUB_URL}
                                target="_blank"
                                rel="noopener noreferrer"
                                className="text-text-muted hover:text-text transition-colors"
                                aria-label="GitHub"
                            >
                                <GitHubIcon className="h-5 w-5"/>
                            </Link>
                            <Link
                                href={`mailto:${SUPPORT_EMAIL}`}
                                className="text-text-muted hover:text-text transition-colors"
                                aria-label="Email"
                            >
                                <EmailIcon className="h-5 w-5"/>
                            </Link>
                        </div>
                    </div>

                    {/* Product */}
                    <div>
                        <h3 className="text-sm font-semibold text-text">{t.footer.product}</h3>
                        <ul className="mt-4 space-y-3">
                            {footerLinks.product.map((link) => (
                                <li key={link.href}>
                                    <Link
                                        href={link.href}
                                        className="text-sm text-text-muted hover:text-text transition-colors"
                                    >
                                        {link.label}
                                    </Link>
                                </li>
                            ))}
                        </ul>
                    </div>

                    {/* Resources */}
                    <div>
                        <h3 className="text-sm font-semibold text-text">{t.footer.resources}</h3>
                        <ul className="mt-4 space-y-3">
                            {footerLinks.resources.map((link) => (
                                <li key={link.href}>
                                    {"external" in link && link.external ? (
                                        <Link
                                            href={link.href}
                                            target="_blank"
                                            rel="noopener noreferrer"
                                            className="text-sm text-text-muted hover:text-text transition-colors inline-flex items-center gap-1"
                                        >
                                            {link.label}
                                            <ExternalLinkIcon className="h-3 w-3"/>
                                        </Link>
                                    ) : (
                                        <Link
                                            href={link.href}
                                            className="text-sm text-text-muted hover:text-text transition-colors"
                                        >
                                            {link.label}
                                        </Link>
                                    )}
                                </li>
                            ))}
                        </ul>
                    </div>

                    {/* Legal */}
                    <div>
                        <h3 className="text-sm font-semibold text-text">{t.footer.legal}</h3>
                        <ul className="mt-4 space-y-3">
                            {footerLinks.legal.map((link) => (
                                <li key={link.href}>
                                    <Link
                                        href={link.href}
                                        className="text-sm text-text-muted hover:text-text transition-colors"
                                    >
                                        {link.label}
                                    </Link>
                                </li>
                            ))}
                        </ul>
                    </div>
                </div>

                {/* Bottom */}
                <div className="mt-12 border-t border-border pt-8 flex flex-col sm:flex-row justify-between items-center gap-4">
                    <p className="text-sm text-text-muted">
                        &copy; {currentYear} {t.common.siteName}. All rights reserved.
                    </p>
                    <p className="text-sm text-text-muted">
                        {t.footer.builtWith}
                    </p>
                </div>
            </div>
        </footer>
    );
}

function GitHubIcon({className}: { className?: string }) {
    return (
        <svg className={className} fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
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

function ExternalLinkIcon({className}: { className?: string }) {
    return (
        <svg className={className} fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
            <path
                strokeLinecap="round"
                strokeLinejoin="round"
                d="M10 6H6a2 2 0 00-2 2v10a2 2 0 002 2h10a2 2 0 002-2v-4M14 4h6m0 0v6m0-6L10 14"
            />
        </svg>
    );
}
