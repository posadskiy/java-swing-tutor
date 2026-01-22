"use client";

import {createContext, ReactNode, useContext, useState} from "react";
import {getTranslations, type Translations} from "./index";
import {defaultLocale, type Locale} from "../i18n";

type TranslationContextType = {
    locale: Locale;
    t: Translations;
    setLocale: (locale: Locale) => void;
};

const TranslationContext = createContext<TranslationContextType | undefined>(undefined);

export function TranslationProvider({children}: { children: ReactNode }) {
    const [locale, setLocaleState] = useState<Locale>(() => {
        if (typeof window !== "undefined") {
            // Get from localStorage preference first
            const stored = localStorage.getItem("preferred-locale");
            if (stored && (stored === "en" || stored === "ru" || stored === "it" || stored === "es")) {
                return stored as Locale;
            }
            // Try browser language
            const browserLang = navigator.language.split("-")[0];
            if (browserLang === "ru" || browserLang === "it" || browserLang === "es") {
                return browserLang as Locale;
            }
        }
        return defaultLocale;
    });

    const setLocale = (newLocale: Locale) => {
        setLocaleState(newLocale);

        // Store preference in localStorage
        if (typeof window !== "undefined") {
            localStorage.setItem("preferred-locale", newLocale);
        }
    };

    const t = getTranslations(locale);

    return (
        <TranslationContext.Provider value={{locale, t, setLocale}}>
            {children}
        </TranslationContext.Provider>
    );
}

export function useTranslations() {
    const context = useContext(TranslationContext);
    if (!context) {
        throw new Error("useTranslations must be used within TranslationProvider");
    }
    return context;
}
