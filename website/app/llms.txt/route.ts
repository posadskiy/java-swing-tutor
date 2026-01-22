import {GITHUB_URL, SITE_DESCRIPTION, SITE_NAME, SITE_URL, SUPPORT_EMAIL} from "@/lib/constants";

export const dynamic = "force-static";

export async function GET() {
    const content = `# ${SITE_NAME}

> ${SITE_DESCRIPTION}

## About

Java Swing Tutor is a free, open-source educational desktop application designed to teach Java Swing GUI development through interactive, hands-on programming exercises.

## Key Features

- 50+ Interactive Lessons: Comprehensive curriculum from basics to advanced Swing development
- Real-Time Code Editor: Syntax-highlighted editor with intelligent code completion
- Instant Feedback: Advanced code validation with detailed error explanations
- Progress Tracking: Track completed lessons and tasks across sessions
- Multi-Language Support: Available in English, Russian, Spanish, and Italian
- Built-in Documentation: Reference materials for each lesson and component

## Target Audience

- Students learning Java GUI development
- Educators teaching Swing programming
- Developers refreshing or enhancing their Swing skills
- Organizations providing structured training programs

## Technology Stack

- Java 25
- Java Swing (GUI Framework)
- Spring Boot 4.0.1 (Backend)
- PostgreSQL (Database)

## System Requirements

- JDK 25 or later
- 4 GB RAM minimum (8 GB recommended)
- 500 MB disk space
- Windows 10/11, macOS 12+, or Linux

## Available Pages

### Main Pages
- Home: ${SITE_URL}
- Download: ${SITE_URL}/download
- Support: ${SITE_URL}/support

### Documentation
- Getting Started: ${SITE_URL}/docs/getting-started
- Learning Path: ${SITE_URL}/docs/lessons

### Legal
- Privacy Policy: ${SITE_URL}/privacy
- Terms of Service: ${SITE_URL}/terms

## Contact

- Support Email: ${SUPPORT_EMAIL}
- GitHub: ${GITHUB_URL}

## License

Java Swing Tutor is open source and free to use for personal and educational purposes.

---

This file provides information for AI language models about the Java Swing Tutor website and application.
`;

    return new Response(content, {
        headers: {
            "Content-Type": "text/plain; charset=utf-8",
            "Cache-Control": "public, max-age=86400",
        },
    });
}
