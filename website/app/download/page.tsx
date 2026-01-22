"use client";

import {useEffect, useState} from "react";
import Link from "next/link";
import {Button, Card, CardContent, CardDescription, CardHeader, CardTitle} from "@/components/ui";
import {DOWNLOAD_LINKS, GITHUB_RELEASES_URL, SYSTEM_REQUIREMENTS} from "@/lib/constants";
import {detectPlatform, getPlatformName} from "@/lib/utils";
import {useTranslations} from "@/lib/translations/context";

export default function DownloadPage() {
    const {t} = useTranslations();
    const [platform, setPlatform] = useState<"mac" | "windows" | "linux" | "unknown">("unknown");

    useEffect(() => {
        setPlatform(detectPlatform());
    }, []);

    const platformLink = platform !== "unknown" ? DOWNLOAD_LINKS[platform] : DOWNLOAD_LINKS.jar;
    const platformName = getPlatformName(platform);

    return (
        <div className="py-16 sm:py-24">
            <div className="mx-auto max-w-4xl px-4 sm:px-6 lg:px-8">
                {/* Header */}
                <div className="text-center mb-12">
                    <h1 className="text-4xl font-bold tracking-tight text-text sm:text-5xl">
                        {t.download.title}
                    </h1>
                    <p className="mt-4 text-lg text-text-muted max-w-2xl mx-auto">
                        {t.download.description}
                    </p>
                </div>

                {/* Primary Download */}
                <Card className="mb-8 border-primary/50 bg-gradient-to-br from-primary/5 to-transparent">
                    <CardContent className="p-8 text-center">
                        <div className="inline-flex items-center justify-center w-16 h-16 rounded-2xl bg-primary/20 mb-4">
                            <PlatformIcon platform={platform} className="h-8 w-8 text-primary"/>
                        </div>
                        <h2 className="text-2xl font-bold text-text mb-2">
                            {t.download.downloadFor} {platformName}
                        </h2>
                        <p className="text-text-muted mb-6">
                            {platform !== "unknown"
                                ? t.download.detected
                                : t.download.universalJar}
                        </p>
                        <Link href={platformLink}>
                            <Button size="lg" className="gap-2">
                                <DownloadIcon className="h-5 w-5"/>
                                {t.download.downloadNow}
                            </Button>
                        </Link>
                        <p className="mt-4 text-sm text-text-muted">
                            {t.download.version} &bull; {t.download.requires}
                        </p>
                    </CardContent>
                </Card>

                {/* All Platforms */}
                <div className="mb-12">
                    <h3 className="text-lg font-semibold text-text mb-4">{t.download.platformDownloads}</h3>
                    <div className="grid gap-4 sm:grid-cols-2 lg:grid-cols-4">
                        <DownloadCard
                            platform="mac"
                            name="macOS"
                            description="Intel & Apple Silicon"
                            link={DOWNLOAD_LINKS.mac}
                            icon={<AppleIcon className="h-6 w-6"/>}
                        />
                        <DownloadCard
                            platform="windows"
                            name="Windows"
                            description="Windows 10/11"
                            link={DOWNLOAD_LINKS.windows}
                            icon={<WindowsIcon className="h-6 w-6"/>}
                        />
                        <DownloadCard
                            platform="linux"
                            name="Linux"
                            description="Ubuntu, Fedora, etc."
                            link={DOWNLOAD_LINKS.linux}
                            icon={<LinuxIcon className="h-6 w-6"/>}
                        />
                        <DownloadCard
                            platform="jar"
                            name="Universal JAR"
                            description="Any OS with Java"
                            link={DOWNLOAD_LINKS.jar}
                            icon={<JavaIcon className="h-6 w-6"/>}
                        />
                    </div>
                </div>

                {/* System Requirements */}
                <Card className="mb-12">
                    <CardHeader>
                        <CardTitle>{t.download.systemRequirements}</CardTitle>
                        <CardDescription>
                            {t.download.systemRequirementsDesc}
                        </CardDescription>
                    </CardHeader>
                    <CardContent>
                        <div className="grid gap-6 sm:grid-cols-2">
                            <div>
                                <h4 className="font-medium text-text mb-2">{t.download.operatingSystem}</h4>
                                <ul className="space-y-1 text-text-muted text-sm">
                                    {SYSTEM_REQUIREMENTS.os.map((os) => (
                                        <li key={os} className="flex items-center gap-2">
                                            <CheckIcon className="h-4 w-4 text-accent"/>
                                            {os}
                                        </li>
                                    ))}
                                </ul>
                            </div>
                            <div>
                                <h4 className="font-medium text-text mb-2">{t.download.javaVersion}</h4>
                                <p className="text-text-muted text-sm flex items-center gap-2">
                                    <CheckIcon className="h-4 w-4 text-accent"/>
                                    {SYSTEM_REQUIREMENTS.java}
                                </p>
                                <h4 className="font-medium text-text mt-4 mb-2">{t.download.memory}</h4>
                                <p className="text-text-muted text-sm flex items-center gap-2">
                                    <CheckIcon className="h-4 w-4 text-accent"/>
                                    {SYSTEM_REQUIREMENTS.ram}
                                </p>
                                <h4 className="font-medium text-text mt-4 mb-2">{t.download.diskSpace}</h4>
                                <p className="text-text-muted text-sm flex items-center gap-2">
                                    <CheckIcon className="h-4 w-4 text-accent"/>
                                    {SYSTEM_REQUIREMENTS.disk}
                                </p>
                            </div>
                        </div>
                    </CardContent>
                </Card>

                {/* Installation Instructions */}
                <Card className="mb-12">
                    <CardHeader>
                        <CardTitle>{t.download.installationInstructions}</CardTitle>
                    </CardHeader>
                    <CardContent className="space-y-6">
                        <InstallStep
                            step={1}
                            title={t.download.installSteps.step1Title}
                            description={t.download.installSteps.step1Desc}
                        />
                        <InstallStep
                            step={2}
                            title={t.download.installSteps.step2Title}
                            description={t.download.installSteps.step2Desc}
                        />
                        <InstallStep
                            step={3}
                            title={t.download.installSteps.step3Title}
                            description={t.download.installSteps.step3Desc}
                        />
                        <InstallStep
                            step={4}
                            title={t.download.installSteps.step4Title}
                            description={t.download.installSteps.step4Desc}
                        />
                    </CardContent>
                </Card>

                {/* GitHub Link */}
                <div className="text-center">
                    <p className="text-text-muted mb-4">
                        {t.download.lookingForVersions}
                    </p>
                    <Link href={GITHUB_RELEASES_URL} target="_blank" rel="noopener noreferrer">
                        <Button variant="outline" className="gap-2">
                            <GitHubIcon className="h-5 w-5"/>
                            {t.download.viewAllReleases}
                        </Button>
                    </Link>
                </div>
            </div>
        </div>
    );
}

function DownloadCard({
                          platform,
                          name,
                          description,
                          link,
                          icon,
                      }: {
    platform: string;
    name: string;
    description: string;
    link: string;
    icon: React.ReactNode;
}) {
    return (
        <Link href={link}>
            <Card hover className="h-full">
                <CardContent className="p-4 flex items-center gap-4">
                    <div className="w-12 h-12 rounded-lg bg-surface flex items-center justify-center text-text-muted">
                        {icon}
                    </div>
                    <div>
                        <h4 className="font-medium text-text">{name}</h4>
                        <p className="text-sm text-text-muted">{description}</p>
                    </div>
                </CardContent>
            </Card>
        </Link>
    );
}

function InstallStep({
                         step,
                         title,
                         description,
                     }: {
    step: number;
    title: string;
    description: string;
}) {
    return (
        <div className="flex gap-4">
            <div className="flex-shrink-0 w-8 h-8 rounded-full bg-primary/20 flex items-center justify-center text-primary font-semibold text-sm">
                {step}
            </div>
            <div>
                <h4 className="font-medium text-text">{title}</h4>
                <p className="text-sm text-text-muted mt-1">{description}</p>
            </div>
        </div>
    );
}

function PlatformIcon({platform, className}: { platform: string; className?: string }) {
    switch (platform) {
        case "mac":
            return <AppleIcon className={className}/>;
        case "windows":
            return <WindowsIcon className={className}/>;
        case "linux":
            return <LinuxIcon className={className}/>;
        default:
            return <JavaIcon className={className}/>;
    }
}

function DownloadIcon({className}: { className?: string }) {
    return (
        <svg className={className} fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
            <path strokeLinecap="round" strokeLinejoin="round" d="M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4"/>
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
            <path d="M12.504 0c-.155 0-.311.001-.465.003-.653.014-1.302.074-1.943.18-.763.126-1.513.32-2.237.577-.821.292-1.599.668-2.323 1.119-.726.452-1.39.979-1.981 1.566-.593.589-1.102 1.24-1.524 1.942-.422.701-.752 1.455-.986 2.24-.233.784-.362 1.598-.385 2.422-.022.824.066 1.652.26 2.461.193.809.491 1.595.882 2.343.391.747.874 1.451 1.435 2.094.561.643 1.197 1.22 1.892 1.716.695.496 1.448.905 2.24 1.221.792.315 1.619.533 2.463.647.844.114 1.7.122 2.547.024.847-.098 1.68-.301 2.481-.604.8-.302 1.562-.704 2.268-1.193.707-.489 1.354-1.068 1.924-1.719.57-.65 1.06-1.373 1.458-2.148.398-.774.699-1.597.896-2.447.197-.85.29-1.721.275-2.59-.015-.869-.14-1.732-.371-2.569-.23-.837-.563-1.644-.993-2.401-.43-.758-.954-1.461-1.56-2.093-.605-.632-1.288-1.187-2.032-1.653-.744-.466-1.546-.838-2.388-1.106-.842-.268-1.72-.429-2.61-.48-.223-.012-.446-.018-.67-.018zM12 3.99c4.405 0 8.01 3.605 8.01 8.01s-3.605 8.01-8.01 8.01-8.01-3.605-8.01-8.01S7.595 3.99 12 3.99z"/>
        </svg>
    );
}

function JavaIcon({className}: { className?: string }) {
    return (
        <svg className={className} fill="currentColor" viewBox="0 0 24 24">
            <path d="M8.851 18.56s-.917.534.653.714c1.902.218 2.874.187 4.969-.211 0 0 .552.346 1.321.646-4.699 2.013-10.633-.118-6.943-1.149M8.276 15.933s-1.028.761.542.924c2.032.209 3.636.227 6.413-.308 0 0 .384.389.987.602-5.679 1.661-12.007.13-7.942-1.218M13.116 11.475c1.158 1.333-.304 2.533-.304 2.533s2.939-1.518 1.589-3.418c-1.261-1.772-2.228-2.652 3.007-5.688 0-.001-8.216 2.051-4.292 6.573M19.33 20.504s.679.559-.747.991c-2.712.822-11.288 1.069-13.669.033-.856-.373.75-.89 1.254-.998.527-.114.828-.093.828-.093-.953-.671-6.156 1.317-2.643 1.887 9.58 1.553 17.462-.7 14.977-1.82M9.292 13.21s-4.362 1.036-1.544 1.412c1.189.159 3.561.123 5.77-.062 1.806-.152 3.618-.477 3.618-.477s-.637.272-1.098.587c-4.429 1.165-12.986.623-10.522-.568 2.082-1.006 3.776-.892 3.776-.892M17.116 17.584c4.503-2.34 2.421-4.589.968-4.285-.355.074-.515.138-.515.138s.132-.207.385-.297c2.875-1.011 5.086 2.981-.928 4.562 0-.001.07-.062.09-.118M14.401 0s2.494 2.494-2.365 6.33c-3.896 3.077-.889 4.832 0 6.836-2.274-2.053-3.943-3.858-2.824-5.539 1.644-2.469 6.197-3.665 5.189-7.627M9.734 23.924c4.322.277 10.959-.154 11.116-2.198 0 0-.302.775-3.572 1.391-3.688.694-8.239.613-10.937.168 0-.001.553.457 3.393.639"/>
        </svg>
    );
}

function GitHubIcon({className}: { className?: string }) {
    return (
        <svg className={className} fill="currentColor" viewBox="0 0 24 24">
            <path
                fillRule="evenodd"
                d="M12 2C6.477 2 2 6.484 2 12.017c0 4.425 2.865 8.18 6.839 9.504.5.092.682-.217.682-.483 0-.237-.008-.868-.013-1.703-2.782.605-3.369-1.343-3.369-1.343-.454-1.158-1.11-1.466-1.11-1.466-.908-.62.069-.608.069-.608 1.003.07 1.531 1.032 1.531 1.032.892 1.53 2.341 1.088 2.91.832.092-.647.35-1.088.636-1.338-2.22-.253-4.555-1.113-4.555-4.951 0-1.093.39-1.988 1.029-2.688-.103-.253-.446-1.272.098-2.65 0 0 .84-.27 2.75 1.026A9.564 9.564 0 0112 6.844c.85.004 1.705.115 2.504.337 1.909-1.296 2.747-1.027 2.747-1.027.546 1.379.202 2.398.1 2.651.64.7 1.028 1.595 1.028 2.688 0 3.848-2.339 4.695-4.566 4.943.359.309.678.92.678 1.855 0 1.338-.012 2.419-.012 2.747 0 .268.18.58.688.482A10.019 10.019 0 0022 12.017C22 6.484 17.522 2 12 2z"
                clipRule="evenodd"
            />
        </svg>
    );
}
