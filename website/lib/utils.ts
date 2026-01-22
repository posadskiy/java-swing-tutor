import {type ClassValue, clsx} from "clsx";
import {twMerge} from "tailwind-merge";

export function cn(...inputs: ClassValue[]) {
    return twMerge(clsx(inputs));
}

export function detectPlatform(): "mac" | "windows" | "linux" | "unknown" {
    if (typeof window === "undefined") return "unknown";

    const userAgent = window.navigator.userAgent.toLowerCase();
    const platform = window.navigator.platform?.toLowerCase() || "";

    if (platform.includes("mac") || userAgent.includes("mac")) {
        return "mac";
    }
    if (platform.includes("win") || userAgent.includes("win")) {
        return "windows";
    }
    if (platform.includes("linux") || userAgent.includes("linux")) {
        return "linux";
    }

    return "unknown";
}

export function getPlatformName(platform: string): string {
    switch (platform) {
        case "mac":
            return "macOS";
        case "windows":
            return "Windows";
        case "linux":
            return "Linux";
        default:
            return "Your Platform";
    }
}

export function formatDate(date: Date): string {
    return new Intl.DateTimeFormat("en-US", {
        year: "numeric",
        month: "long",
        day: "numeric",
    }).format(date);
}
