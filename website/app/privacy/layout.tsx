import type {Metadata} from "next";

export const metadata: Metadata = {
    title: "Privacy Policy",
    description: "Privacy Policy for Java Swing Tutor - how we collect, use, and protect your information.",
};

export default function PrivacyLayout({
                                          children,
                                      }: {
    children: React.ReactNode;
}) {
    return <>{children}</>;
}
