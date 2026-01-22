import {DocsSidebar, MobileDocsNav} from "@/components/layout/DocsSidebar";
import type {Metadata} from "next";

export const metadata: Metadata = {
    title: "Documentation",
    description: "Learn Java Swing with comprehensive documentation, tutorials, and component references.",
};

export default function DocsLayout({
                                       children,
                                   }: {
    children: React.ReactNode;
}) {
    return (
        <div className="mx-auto max-w-7xl px-4 py-12 sm:px-6 lg:px-8">
            <div className="flex gap-12">
                <DocsSidebar/>
                <main className="flex-1 min-w-0">
                    <MobileDocsNav/>
                    <article className="prose max-w-none">{children}</article>
                </main>
            </div>
        </div>
    );
}
