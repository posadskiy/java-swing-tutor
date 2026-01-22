import {cn} from "@/lib/utils";
import {forwardRef, HTMLAttributes} from "react";

export interface BadgeProps extends HTMLAttributes<HTMLSpanElement> {
    variant?: "default" | "primary" | "accent" | "outline";
}

const Badge = forwardRef<HTMLSpanElement, BadgeProps>(
    ({className, variant = "default", ...props}, ref) => {
        return (
            <span
                ref={ref}
                className={cn(
                    "inline-flex items-center rounded-full px-2.5 py-0.5 text-xs font-medium transition-colors",
                    {
                        "bg-surface text-text-muted": variant === "default",
                        "bg-primary/10 text-primary": variant === "primary",
                        "bg-accent/10 text-accent": variant === "accent",
                        "border border-border text-text-muted": variant === "outline",
                    },
                    className
                )}
                {...props}
            />
        );
    }
);

Badge.displayName = "Badge";

export {Badge};
