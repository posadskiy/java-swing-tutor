import type {Translations} from "./en";
import {translations as en} from "./en";
import {translations as ru} from "./ru";
import {translations as it} from "./it";
import {translations as es} from "./es";
import type {Locale} from "../i18n";

export const translationsMap: Record<Locale, Translations> = {
    en,
    ru,
    it,
    es,
};

export function getTranslations(locale: Locale): Translations {
    return translationsMap[locale] || translationsMap.en;
}

export type {Translations};
