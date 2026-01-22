"use client";

import {useEffect} from "react";
import {useTranslations} from "@/lib/translations/context";

export function LocaleSetter() {
    const {locale} = useTranslations();

    useEffect(() => {
        if (typeof document !== "undefined") {
            document.documentElement.lang = locale;
        }
    }, [locale]);

    return null;
}
