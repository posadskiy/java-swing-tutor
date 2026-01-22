import type {Metadata} from "next";

export const metadata: Metadata = {
    title: "Terms of Service",
    description: "Terms of Service for Java Swing Tutor - rules and guidelines for using our educational platform.",
};

export default function TermsLayout({
                                        children,
                                    }: {
    children: React.ReactNode;
}) {
    return <>{children}</>;
}
