export type Locale = "en" | "ru" | "it" | "es";

export const locales: Locale[] = ["en", "ru", "it", "es"];
export const defaultLocale: Locale = "en";

export const localeNames: Record<Locale, string> = {
    en: "English",
    ru: "Русский",
    it: "Italiano",
    es: "Español",
};

export function getLocaleFromPath(pathname: string): Locale {
    const segments = pathname.split("/").filter(Boolean);
    const firstSegment = segments[0];

    if (locales.includes(firstSegment as Locale)) {
        return firstSegment as Locale;
    }

    return defaultLocale;
}

export function addLocaleToPath(pathname: string, locale: Locale): string {
    // For static export, we don't use locale prefixes in URLs
    // Locale is stored in localStorage instead
    return pathname;
}

export function removeLocaleFromPath(pathname: string): string {
    const segments = pathname.split("/").filter(Boolean);
    if (locales.includes(segments[0] as Locale)) {
        segments.shift();
    }
    return segments.length > 0 ? `/${segments.join("/")}` : "/";
}
