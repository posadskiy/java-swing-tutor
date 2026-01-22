"use client";

import Link from "next/link";
import {Button} from "@/components/ui";
import {useTranslations} from "@/lib/translations/context";
import {addLocaleToPath} from "@/lib/i18n";

const SWING_COMPONENTS = [
    "JButton",
    "JLabel",
    "JTextField",
    "JTextArea",
    "JComboBox",
    "JList",
    "JTable",
    "JPanel",
    "JFrame",
    "JDialog",
    "JMenuBar",
    "JScrollPane",
];

export function ComponentGallery() {
    const {t, locale} = useTranslations();

    return (
        <section className="py-24 sm:py-32">
            <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
                {/* Header */}
                <div className="text-center max-w-3xl mx-auto mb-16">
                    <h2 className="text-3xl font-bold tracking-tight text-text sm:text-4xl">
                        {t.componentGallery.title}{" "}
                        <span className="text-primary">{t.componentGallery.titleHighlight}</span>
                    </h2>
                    <p className="mt-4 text-lg text-text-muted">
                        {t.componentGallery.subtitle}
                    </p>
                </div>

                {/* Component Grid */}
                <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6 gap-4">
                    {SWING_COMPONENTS.map((componentName) => {
                        const componentKey = componentName as keyof typeof t.componentGallery.components;
                        return (
                            <div
                                key={componentName}
                                className="group relative rounded-xl border border-border bg-surface p-4 hover:border-primary/50 hover:bg-surface/80 transition-all duration-300"
                            >
                                {/* Component icon mockup */}
                                <div className="w-full aspect-square rounded-lg bg-background border border-border mb-3 flex items-center justify-center overflow-hidden">
                                    <ComponentPreview name={componentName}/>
                                </div>
                                <h3 className="text-sm font-medium text-text truncate">
                                    {componentName}
                                </h3>
                                <p className="text-xs text-text-muted truncate mt-1">
                                    {t.componentGallery.components[componentKey]}
                                </p>
                            </div>
                        );
                    })}
                </div>

                {/* CTA */}
                <div className="mt-12 text-center">
                    <Link href={addLocaleToPath("/docs/lessons", locale)}>
                        <Button variant="outline" size="lg">
                            {t.componentGallery.cta}
                            <ArrowRightIcon className="ml-2 h-4 w-4"/>
                        </Button>
                    </Link>
                </div>
            </div>
        </section>
    );
}

function ComponentPreview({name}: { name: string }) {
    const previewClass = "text-xs text-text-muted";

    switch (name) {
        case "JButton":
            return (
                <div className="px-3 py-1.5 bg-primary/20 border border-primary/40 rounded text-xs text-primary font-medium">
                    Click Me
                </div>
            );
        case "JLabel":
            return <span className={previewClass}>Label Text</span>;
        case "JTextField":
            return (
                <div className="w-20 h-6 bg-background border border-border rounded px-2 flex items-center">
                    <span className="text-[10px] text-text-muted">Type here...</span>
                </div>
            );
        case "JTextArea":
            return (
                <div className="w-20 h-12 bg-background border border-border rounded p-1">
                    <div className="h-1 w-14 bg-text-muted/30 rounded mb-1"/>
                    <div className="h-1 w-12 bg-text-muted/30 rounded mb-1"/>
                    <div className="h-1 w-16 bg-text-muted/30 rounded"/>
                </div>
            );
        case "JComboBox":
            return (
                <div className="w-20 h-6 bg-background border border-border rounded px-2 flex items-center justify-between">
                    <span className="text-[10px] text-text-muted">Select...</span>
                    <ChevronDownIcon className="h-3 w-3 text-text-muted"/>
                </div>
            );
        case "JList":
            return (
                <div className="w-16 bg-background border border-border rounded overflow-hidden">
                    {[1, 2, 3].map((i) => (
                        <div key={i} className={`px-2 py-0.5 text-[10px] ${i === 1 ? "bg-primary/20 text-primary" : "text-text-muted"}`}>
                            Item {i}
                        </div>
                    ))}
                </div>
            );
        case "JTable":
            return (
                <div className="w-20 bg-background border border-border rounded overflow-hidden">
                    <div className="grid grid-cols-2 border-b border-border">
                        <div className="px-1 py-0.5 text-[8px] text-text-muted bg-surface">Col1</div>
                        <div className="px-1 py-0.5 text-[8px] text-text-muted bg-surface">Col2</div>
                    </div>
                    {[1, 2].map((i) => (
                        <div key={i} className="grid grid-cols-2 border-b border-border last:border-0">
                            <div className="px-1 py-0.5 text-[8px] text-text-muted">A{i}</div>
                            <div className="px-1 py-0.5 text-[8px] text-text-muted">B{i}</div>
                        </div>
                    ))}
                </div>
            );
        case "JPanel":
            return (
                <div className="w-16 h-12 border-2 border-dashed border-border rounded flex items-center justify-center">
                    <span className="text-[8px] text-text-muted">Panel</span>
                </div>
            );
        case "JFrame":
            return (
                <div className="w-20 bg-surface border border-border rounded overflow-hidden shadow">
                    <div className="flex items-center gap-1 px-1 py-0.5 bg-background border-b border-border">
                        <div className="w-1.5 h-1.5 rounded-full bg-red-500/60"/>
                        <div className="w-1.5 h-1.5 rounded-full bg-yellow-500/60"/>
                        <div className="w-1.5 h-1.5 rounded-full bg-green-500/60"/>
                    </div>
                    <div className="h-8"/>
                </div>
            );
        case "JDialog":
            return (
                <div className="w-16 bg-surface border border-border rounded overflow-hidden shadow-lg">
                    <div className="px-1 py-0.5 bg-background border-b border-border text-[8px] text-text-muted">Dialog</div>
                    <div className="p-1">
                        <div className="w-full h-4 bg-background rounded mb-1"/>
                        <div className="flex justify-end">
                            <div className="px-1.5 py-0.5 bg-primary/20 rounded text-[6px] text-primary">OK</div>
                        </div>
                    </div>
                </div>
            );
        case "JMenuBar":
            return (
                <div className="w-20 flex bg-surface border border-border rounded overflow-hidden">
                    <div className="px-2 py-0.5 text-[8px] text-text-muted hover:bg-background">File</div>
                    <div className="px-2 py-0.5 text-[8px] text-text-muted hover:bg-background">Edit</div>
                    <div className="px-2 py-0.5 text-[8px] text-text-muted hover:bg-background">Help</div>
                </div>
            );
        case "JScrollPane":
            return (
                <div className="w-16 h-12 relative border border-border rounded overflow-hidden">
                    <div className="absolute right-0 top-0 bottom-0 w-1.5 bg-background">
                        <div className="w-full h-4 bg-text-muted/30 rounded"/>
                    </div>
                </div>
            );
        default:
            return <span className={previewClass}>{name}</span>;
    }
}

function ArrowRightIcon({className}: { className?: string }) {
    return (
        <svg className={className} fill="none" viewBox="0 0 24 24" stroke="currentColor" strokeWidth={2}>
            <path strokeLinecap="round" strokeLinejoin="round" d="M17 8l4 4m0 0l-4 4m4-4H3"/>
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
