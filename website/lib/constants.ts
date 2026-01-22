export const SITE_NAME = "Java Swing Tutor";
export const SITE_DESCRIPTION =
    "An interactive desktop application for learning Java Swing GUI development through hands-on, task-based programming exercises.";
export const SITE_URL = "https://javaswingtutor.com";

export const SUPPORT_EMAIL = "support@posadskiy.com";

export const GITHUB_URL = "https://github.com/posadskiy/java-swing-tutor";
export const GITHUB_RELEASES_URL = `${GITHUB_URL}/releases/latest`;

export const DOWNLOAD_LINKS = {
    mac: `${GITHUB_RELEASES_URL}/download/java-swing-tutor-mac.dmg`,
    windows: `${GITHUB_RELEASES_URL}/download/java-swing-tutor-windows.exe`,
    linux: `${GITHUB_RELEASES_URL}/download/java-swing-tutor-linux.tar.gz`,
    jar: `${GITHUB_RELEASES_URL}/download/java-swing-tutor.jar`,
};

export const NAV_LINKS = [
    {href: "/", label: "Home"},
    {href: "/docs", label: "Docs"},
    {href: "/download", label: "Download"},
    {href: "/support", label: "Support"},
];

export const FOOTER_LINKS = {
    product: [
        {href: "/download", label: "Download"},
        {href: "/docs", label: "Documentation"},
        {href: "/docs/getting-started", label: "Getting Started"},
        {href: "/docs/lessons", label: "Lessons"},
    ],
    resources: [
        {href: "/docs/components", label: "Component Gallery"},
        {href: GITHUB_URL, label: "GitHub", external: true},
        {href: "/support", label: "Support"},
    ],
    legal: [
        {href: "/privacy", label: "Privacy Policy"},
        {href: "/terms", label: "Terms of Service"},
    ],
};

export const FEATURES = [
    {
        title: "50+ Interactive Lessons",
        description:
            "Comprehensive curriculum covering Java Swing from basics to advanced topics with hands-on exercises.",
        icon: "book",
    },
    {
        title: "Real-Time Code Editor",
        description:
            "Syntax-highlighted editor with intelligent code completion. Write, compile, and run your code instantly.",
        icon: "code",
    },
    {
        title: "Instant Feedback",
        description:
            "Advanced code validation provides immediate feedback on your solutions with detailed error explanations.",
        icon: "check",
    },
    {
        title: "Progress Tracking",
        description:
            "Monitor your learning journey with completed task tracking and visual progress indicators.",
        icon: "chart",
    },
    {
        title: "Multi-Language Support",
        description:
            "Available in English, Russian, Spanish, and Italian. Learn in your preferred language.",
        icon: "globe",
    },
    {
        title: "Built-in Documentation",
        description:
            "Reference documentation for each lesson with examples and best practices.",
        icon: "document",
    },
];

export const LEARNING_PATH = [
    {
        category: "Basics",
        lessons: ["Introduction to Swing", "Creating Windows", "Basic Components"],
    },
    {
        category: "Layouts",
        lessons: ["Layout Managers", "BorderLayout", "GridLayout", "FlowLayout"],
    },
    {
        category: "Components",
        lessons: ["Buttons & Labels", "Text Fields", "Combo Boxes", "Lists"],
    },
    {
        category: "Events",
        lessons: ["Event Handling", "Action Listeners", "Mouse Events"],
    },
    {
        category: "Advanced",
        lessons: ["Custom Components", "Graphics & Painting", "Menus & Dialogs"],
    },
];

export const SYSTEM_REQUIREMENTS = {
    os: ["Windows 10/11", "macOS 12+", "Linux (Ubuntu 20.04+, Fedora 35+)"],
    java: "JDK 25 or later",
    ram: "4 GB minimum, 8 GB recommended",
    disk: "500 MB free space",
};
