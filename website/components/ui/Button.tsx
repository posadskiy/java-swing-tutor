import {cn} from "@/lib/utils";
import {ButtonHTMLAttributes, forwardRef} from "react";

export interface ButtonProps extends ButtonHTMLAttributes<HTMLButtonElement> {
    variant?: "primary" | "secondary" | "outline" | "ghost";
    size?: "sm" | "md" | "lg";
}

const Button = forwardRef<HTMLButtonElement, ButtonProps>(
    ({className, variant = "primary", size = "md", children, ...props}, ref) => {
        return (
            <button
                ref={ref}
                className={cn(
                    "inline-flex items-center justify-center font-medium transition-all duration-200 rounded-lg focus:outline-none focus-visible:ring-2 focus-visible:ring-primary focus-visible:ring-offset-2 focus-visible:ring-offset-background disabled:opacity-50 disabled:cursor-not-allowed",
                    {
                        "bg-primary text-white hover:bg-primary/90 shadow-lg shadow-primary/25":
                            variant === "primary",
                        "bg-accent text-white hover:bg-accent/90 shadow-lg shadow-accent/25":
                            variant === "secondary",
                        "border border-border bg-transparent text-text hover:bg-surface":
                            variant === "outline",
                        "bg-transparent text-text-muted hover:text-text hover:bg-surface":
                            variant === "ghost",
                    },
                    {
                        "px-3 py-1.5 text-sm": size === "sm",
                        "px-4 py-2 text-base": size === "md",
                        "px-6 py-3 text-lg": size === "lg",
                    },
                    className
                )}
                {...props}
            >
                {children}
            </button>
        );
    }
);

Button.displayName = "Button";

export {Button};
