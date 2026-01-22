"use client";

import {useTranslations} from "@/lib/translations/context";
import {localeNames, locales} from "@/lib/i18n";
import {Button} from "./Button";
import {useEffect, useRef, useState} from "react";
import {cn} from "@/lib/utils";

export function LanguageSwitcher() {
    const {locale, setLocale} = useTranslations();
    const [isOpen, setIsOpen] = useState(false);
    const dropdownRef = useRef<HTMLDivElement>(null);

    useEffect(() => {
        function handleClickOutside(event: MouseEvent) {
            if (dropdownRef.current && !dropdownRef.current.contains(event.target as Node)) {
                setIsOpen(false);
            }
        }

        document.addEventListener("mousedown", handleClickOutside);
        return () => document.removeEventListener("mousedown", handleClickOutside);
    }, []);

    const currentLocaleName = localeNames[locale];

    return (
        <div className="relative" ref={dropdownRef}>
            <Button
                variant="ghost"
                size="sm"
                onClick={() => setIsOpen(!isOpen)}
                className="gap-2"
                aria-label="Select language"
            >
                <GlobeIcon className="h-4 w-4"/>
                <span className="hidden sm:inline">{currentLocaleName}</span>
                <ChevronDownIcon className={cn("h-3 w-3 transition-transform", isOpen && "rotate-180")}/>
            </Button>

            {isOpen && (
                <div className="absolute right-0 mt-2 w-48 rounded-lg border border-border bg-surface shadow-lg z-50">
                    <div className="py-1">
                        {locales.map((loc) => (
                            <button
                                key={loc}
                                onClick={() => {
                                    setLocale(loc);
                                    setIsOpen(false);
                                }}
                                className={cn(
                                    "w-full text-left px-4 py-2 text-sm transition-colors",
                                    locale === loc
                                        ? "bg-primary/10 text-primary font-medium"
                                        : "text-text-muted hover:text-text hover:bg-surface/80"
                                )}
                            >
                                <div className="flex items-center gap-2">
                                    <span className="text-xs font-medium">{localeNames[loc]}</span>
                                    {locale === loc && <CheckIcon className="h-4 w-4 ml-auto"/>}
                                </div>
                            </button>
                        ))}
                    </div>
                </div>
            )}
        </div>
    );
}

function GlobeIcon({className}: { className?: string }) {
    return (
        <svg className={className} fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
            <path
                strokeLinecap="round"
                strokeLinejoin="round"
                d="M3.055 11H5a2 2 0 012 2v1a2 2 0 002 2 2 2 0 012 2v2.945M8 3.935V5.5A2.5 2.5 0 0010.5 8h.5a2 2 0 012 2 2 2 0 104 0 2 2 0 012-2h1.064M15 20.488V18a2 2 0 012-2h3.064M21 12a9 9 0 11-18 0 9 9 0 0118 0z"
            />
        </svg>
    );
}

function ChevronDownIcon({className}: { className?: string }) {
    return (
        <svg className={className} fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
            <path strokeLinecap="round" strokeLinejoin="round" d="M19 9l-7 7-7-7"/>
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
