import {MetadataRoute} from "next";
import {SITE_URL} from "@/lib/constants";

export const dynamic = "force-static";

export default function sitemap(): MetadataRoute.Sitemap {
    const baseUrl = SITE_URL;

    // Static pages
    const staticPages = [
        "",
        "/download",
        "/support",
        "/privacy",
        "/terms",
    ];

    // Documentation pages
    const docPages = [
        "/docs",
        "/docs/getting-started",
        "/docs/lessons",
    ];

    const allPages = [...staticPages, ...docPages];

    return allPages.map((path) => ({
        url: `${baseUrl}${path}`,
        lastModified: new Date(),
        changeFrequency: path === "" ? "weekly" : "monthly",
        priority: path === "" ? 1 : path.startsWith("/docs") ? 0.8 : 0.6,
    }));
}
