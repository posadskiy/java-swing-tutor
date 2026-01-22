import type {Config} from "tailwindcss";

const config: Config = {
    content: [
        "./app/**/*.{js,ts,jsx,tsx,mdx}",
        "./components/**/*.{js,ts,jsx,tsx,mdx}",
        "./mdx-components.tsx",
    ],
    theme: {
        extend: {
            colors: {
                background: "#0f172a",
                surface: "#1e293b",
                border: "#334155",
                primary: "#3b82f6",
                accent: "#22c55e",
                text: "#f8fafc",
                "text-muted": "#94a3b8",
            },
            fontFamily: {
                sans: ["var(--font-geist-sans)", "system-ui", "sans-serif"],
                mono: ["var(--font-geist-mono)", "monospace"],
            },
            animation: {
                "fade-in": "fadeIn 0.5s ease-out",
                "slide-up": "slideUp 0.5s ease-out",
                "pulse-slow": "pulse 3s cubic-bezier(0.4, 0, 0.6, 1) infinite",
            },
            keyframes: {
                fadeIn: {
                    "0%": {opacity: "0"},
                    "100%": {opacity: "1"},
                },
                slideUp: {
                    "0%": {opacity: "0", transform: "translateY(20px)"},
                    "100%": {opacity: "1", transform: "translateY(0)"},
                },
            },
        },
    },
    plugins: [],
};

export default config;
