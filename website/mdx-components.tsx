import type {MDXComponents} from "mdx/types";
import Link from "next/link";

export function useMDXComponents(components: MDXComponents): MDXComponents {
    return {
        // Headings
        h1: ({children}) => (
            <h1 className="text-4xl font-bold text-text mt-8 mb-4 first:mt-0">{children}</h1>
        ),
        h2: ({children}) => (
            <h2 className="text-2xl font-semibold text-text mt-8 mb-4 pb-2 border-b border-border">
                {children}
            </h2>
        ),
        h3: ({children}) => (
            <h3 className="text-xl font-semibold text-text mt-6 mb-3">{children}</h3>
        ),
        h4: ({children}) => (
            <h4 className="text-lg font-medium text-text mt-4 mb-2">{children}</h4>
        ),

        // Paragraphs and text
        p: ({children}) => (
            <p className="text-text-muted leading-relaxed mb-4">{children}</p>
        ),
        strong: ({children}) => (
            <strong className="font-semibold text-text">{children}</strong>
        ),
        em: ({children}) => <em className="italic">{children}</em>,

        // Links
        a: ({href, children}) => {
            const isExternal = href?.startsWith("http");
            if (isExternal) {
                return (
                    <a
                        href={href}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="text-primary hover:underline"
                    >
                        {children}
                    </a>
                );
            }
            return (
                <Link href={href || "#"} className="text-primary hover:underline">
                    {children}
                </Link>
            );
        },

        // Lists
        ul: ({children}) => (
            <ul className="list-disc list-inside space-y-2 mb-4 text-text-muted">{children}</ul>
        ),
        ol: ({children}) => (
            <ol className="list-decimal list-inside space-y-2 mb-4 text-text-muted">{children}</ol>
        ),
        li: ({children}) => <li className="leading-relaxed">{children}</li>,

        // Code
        code: ({children}) => (
            <code className="bg-surface px-1.5 py-0.5 rounded text-sm font-mono text-primary">
                {children}
            </code>
        ),
        pre: ({children}) => (
            <pre className="bg-surface border border-border rounded-lg p-4 overflow-x-auto mb-4 text-sm">
        {children}
      </pre>
        ),

        // Blockquote
        blockquote: ({children}) => (
            <blockquote className="border-l-4 border-primary pl-4 py-2 my-4 bg-primary/5 rounded-r-lg">
                {children}
            </blockquote>
        ),

        // Horizontal rule
        hr: () => <hr className="border-border my-8"/>,

        // Tables
        table: ({children}) => (
            <div className="overflow-x-auto mb-4">
                <table className="w-full border-collapse">{children}</table>
            </div>
        ),
        thead: ({children}) => <thead className="bg-surface">{children}</thead>,
        tbody: ({children}) => <tbody>{children}</tbody>,
        tr: ({children}) => (
            <tr className="border-b border-border">{children}</tr>
        ),
        th: ({children}) => (
            <th className="px-4 py-2 text-left text-text font-semibold">{children}</th>
        ),
        td: ({children}) => (
            <td className="px-4 py-2 text-text-muted">{children}</td>
        ),

        ...components,
    };
}
