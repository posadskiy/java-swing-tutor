"use client";

import Link from "next/link";
import {Button} from "@/components/ui";
import {DOWNLOAD_LINKS} from "@/lib/constants";
import {useTranslations} from "@/lib/translations/context";

export function DownloadCTA() {
    const {t} = useTranslations();
    return (
        <section className="py-24 sm:py-32 relative overflow-hidden">
            {/* Background */}
            <div className="absolute inset-0 bg-gradient-to-r from-primary/10 via-transparent to-accent/10"/>
            <div
                className="absolute inset-0 opacity-10"
                style={{
                    backgroundImage: `radial-gradient(circle at 2px 2px, var(--color-border) 1px, transparent 0)`,
                    backgroundSize: "32px 32px",
                }}
            />

            <div className="relative mx-auto max-w-4xl px-4 sm:px-6 lg:px-8 text-center">
                <h2 className="text-3xl font-bold tracking-tight text-text sm:text-4xl lg:text-5xl">
                    {t.downloadCTA.title}
                </h2>
                <p className="mt-6 text-lg text-text-muted max-w-2xl mx-auto">
                    {t.downloadCTA.description}
                </p>

                {/* Download Buttons */}
                <div className="mt-10 flex flex-col sm:flex-row items-center justify-center gap-4">
                    <Link href={DOWNLOAD_LINKS.mac}>
                        <Button size="lg" className="w-full sm:w-auto gap-2 min-w-[200px]">
                            <AppleIcon className="h-5 w-5"/>
                            {t.downloadCTA.downloadFor} Mac
                        </Button>
                    </Link>
                    <Link href={DOWNLOAD_LINKS.windows}>
                        <Button size="lg" variant="outline" className="w-full sm:w-auto gap-2 min-w-[200px]">
                            <WindowsIcon className="h-5 w-5"/>
                            {t.downloadCTA.downloadFor} Windows
                        </Button>
                    </Link>
                    <Link href={DOWNLOAD_LINKS.linux}>
                        <Button size="lg" variant="outline" className="w-full sm:w-auto gap-2 min-w-[200px]">
                            <LinuxIcon className="h-5 w-5"/>
                            {t.downloadCTA.downloadFor} Linux
                        </Button>
                    </Link>
                </div>

                {/* Alternative download */}
                <p className="mt-6 text-sm text-text-muted">
                    {t.downloadCTA.orDownload}{" "}
                    <Link href={DOWNLOAD_LINKS.jar} className="text-primary hover:underline">
                        {t.downloadCTA.universalJar}
                    </Link>{" "}
                    {t.downloadCTA.forAnyPlatform}
                </p>

                {/* Stats */}
                <div className="mt-16 grid grid-cols-2 md:grid-cols-4 gap-8">
                    {[
                        {value: "50+", label: t.downloadCTA.stats.lessons},
                        {value: "4", label: t.downloadCTA.stats.languages},
                        {value: t.downloadCTA.stats.free, label: t.downloadCTA.stats.free},
                        {value: "JDK 25", label: t.downloadCTA.stats.java},
                    ].map((stat) => (
                        <div key={stat.label} className="text-center">
                            <div className="text-3xl font-bold text-text">{stat.value}</div>
                            <div className="text-sm text-text-muted mt-1">{stat.label}</div>
                        </div>
                    ))}
                </div>
            </div>
        </section>
    );
}

function AppleIcon({className}: { className?: string }) {
    return (
        <svg className={className} fill="currentColor" viewBox="0 0 24 24">
            <path d="M18.71 19.5c-.83 1.24-1.71 2.45-3.05 2.47-1.34.03-1.77-.79-3.29-.79-1.53 0-2 .77-3.27.82-1.31.05-2.3-1.32-3.14-2.53C4.25 17 2.94 12.45 4.7 9.39c.87-1.52 2.43-2.48 4.12-2.51 1.28-.02 2.5.87 3.29.87.78 0 2.26-1.07 3.81-.91.65.03 2.47.26 3.64 1.98-.09.06-2.17 1.28-2.15 3.81.03 3.02 2.65 4.03 2.68 4.04-.03.07-.42 1.44-1.38 2.83M13 3.5c.73-.83 1.94-1.46 2.94-1.5.13 1.17-.34 2.35-1.04 3.19-.69.85-1.83 1.51-2.95 1.42-.15-1.15.41-2.35 1.05-3.11z"/>
        </svg>
    );
}

function WindowsIcon({className}: { className?: string }) {
    return (
        <svg className={className} fill="currentColor" viewBox="0 0 24 24">
            <path d="M3 12V6.75l6-1.32v6.48L3 12zm17-9v8.75l-10 .15V5.21L20 3zM3 13l6 .09v6.81l-6-1.15V13zm17 .25V22l-10-1.91V13.1l10 .15z"/>
        </svg>
    );
}

function LinuxIcon({className}: { className?: string }) {
    return (
        <svg className={className} fill="currentColor" viewBox="0 0 24 24">
            <path d="M12.504 0c-.155 0-.311.001-.465.003-.653.014-1.302.074-1.943.18-.763.126-1.513.32-2.237.577-.821.292-1.599.668-2.323 1.119-.726.452-1.39.979-1.981 1.566-.593.589-1.102 1.24-1.524 1.942-.422.701-.752 1.455-.986 2.24-.233.784-.362 1.598-.385 2.422-.022.824.066 1.652.26 2.461.193.809.491 1.595.882 2.343.391.747.874 1.451 1.435 2.094.561.643 1.197 1.22 1.892 1.716.695.496 1.448.905 2.24 1.221.792.315 1.619.533 2.463.647.844.114 1.7.122 2.547.024.847-.098 1.68-.301 2.481-.604.8-.302 1.562-.704 2.268-1.193.707-.489 1.354-1.068 1.924-1.719.57-.65 1.06-1.373 1.458-2.148.398-.774.699-1.597.896-2.447.197-.85.29-1.721.275-2.59-.015-.869-.14-1.732-.371-2.569-.23-.837-.563-1.644-.993-2.401-.43-.758-.954-1.461-1.56-2.093-.605-.632-1.288-1.187-2.032-1.653-.744-.466-1.546-.838-2.388-1.106-.842-.268-1.72-.429-2.61-.48-.223-.012-.446-.018-.67-.018zM12 3.99c4.405 0 8.01 3.605 8.01 8.01s-3.605 8.01-8.01 8.01-8.01-3.605-8.01-8.01S7.595 3.99 12 3.99zM8.01 7.998c-1.103 0-2.001.899-2.001 2.001 0 1.103.898 2.001 2.001 2.001 1.102 0 2.001-.898 2.001-2.001 0-1.102-.899-2.001-2.001-2.001zm7.98 0c-1.103 0-2.001.899-2.001 2.001 0 1.103.898 2.001 2.001 2.001 1.102 0 2.001-.898 2.001-2.001 0-1.102-.899-2.001-2.001-2.001zm-4.49 4.002c-.276 0-.5.224-.5.5v1.001c0 .276.224.5.5.5h1c.276 0 .5-.224.5-.5v-1.001c0-.276-.224-.5-.5-.5h-1zm-3.99 2.001c-.276 0-.5.224-.5.5 0 1.655 2.015 3 4.49 3s4.49-1.345 4.49-3c0-.276-.224-.5-.5-.5h-8.98z"/>
        </svg>
    );
}
