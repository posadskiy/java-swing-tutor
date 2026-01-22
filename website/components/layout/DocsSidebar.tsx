"use client";

import Link from "next/link";
import {usePathname} from "next/navigation";
import {useTranslations} from "@/lib/translations/context";
import {cn} from "@/lib/utils";

export function DocsSidebar() {
    const pathname = usePathname();
    const {t} = useTranslations();

    const DOCS_NAV = [
        {
            title: t.docs.sidebar.gettingStarted,
            items: [
                {href: "/docs", label: t.docs.sidebar.introduction},
                {href: "/docs/getting-started", label: t.docs.sidebar.quickStartGuide},
            ],
        },
        {
            title: t.docs.sidebar.lessons,
            items: [
                {href: "/docs/lessons", label: t.docs.sidebar.learningPath},
            ],
        },
    ];

    return (
        <aside className="w-64 shrink-0 hidden lg:block">
            <nav className="sticky top-24 space-y-8">
                {DOCS_NAV.map((section) => (
                    <div key={section.title}>
                        <h4 className="font-semibold text-text mb-3 text-sm uppercase tracking-wider">
                            {section.title}
                        </h4>
                        <ul className="space-y-1">
                            {section.items.map((item) => {
                                const isActive = pathname === item.href;
                                return (
                                    <li key={item.href}>
                                        <Link
                                            href={item.href}
                                            className={cn(
                                                "block px-3 py-2 text-sm rounded-lg transition-colors",
                                                isActive
                                                    ? "bg-primary/10 text-primary font-medium"
                                                    : "text-text-muted hover:text-text hover:bg-surface"
                                            )}
                                        >
                                            {item.label}
                                        </Link>
                                    </li>
                                );
                            })}
                        </ul>
                    </div>
                ))}
            </nav>
        </aside>
    );
}

export function MobileDocsNav() {
    const pathname = usePathname();
    const {t} = useTranslations();

    const DOCS_NAV = [
        {
            title: t.docs.sidebar.gettingStarted,
            items: [
                {href: "/docs", label: t.docs.sidebar.introduction},
                {href: "/docs/getting-started", label: t.docs.sidebar.quickStartGuide},
            ],
        },
        {
            title: t.docs.sidebar.lessons,
            items: [
                {href: "/docs/lessons", label: t.docs.sidebar.learningPath},
            ],
        },
    ];

    const allItems = DOCS_NAV.flatMap((section) => section.items);
    const currentItem = allItems.find((item) => item.href === pathname);

    return (
        <div className="lg:hidden mb-8">
            <select
                value={pathname}
                onChange={(e) => {
                    window.location.href = e.target.value;
                }}
                className="w-full px-4 py-2 bg-surface border border-border rounded-lg text-text focus:outline-none focus:ring-2 focus:ring-primary"
            >
                {DOCS_NAV.map((section) => (
                    <optgroup key={section.title} label={section.title}>
                        {section.items.map((item) => (
                            <option key={item.href} value={item.href}>
                                {item.label}
                            </option>
                        ))}
                    </optgroup>
                ))}
            </select>
        </div>
    );
}
