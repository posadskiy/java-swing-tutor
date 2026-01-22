import {cn} from "@/lib/utils";
import {forwardRef, HTMLAttributes} from "react";

export interface CardProps extends HTMLAttributes<HTMLDivElement> {
    hover?: boolean;
}

const Card = forwardRef<HTMLDivElement, CardProps>(
    ({className, hover = false, children, ...props}, ref) => {
        return (
            <div
                ref={ref}
                className={cn(
                    "rounded-xl border border-border bg-surface p-6",
                    hover &&
                    "transition-all duration-300 hover:border-primary/50 hover:shadow-lg hover:shadow-primary/5 hover:-translate-y-1",
                    className
                )}
                {...props}
            >
                {children}
            </div>
        );
    }
);

Card.displayName = "Card";

const CardHeader = forwardRef<HTMLDivElement, HTMLAttributes<HTMLDivElement>>(
    ({className, ...props}, ref) => (
        <div ref={ref} className={cn("mb-4", className)} {...props} />
    )
);

CardHeader.displayName = "CardHeader";

const CardTitle = forwardRef<HTMLHeadingElement, HTMLAttributes<HTMLHeadingElement>>(
    ({className, ...props}, ref) => (
        <h3 ref={ref} className={cn("text-xl font-semibold text-text", className)} {...props} />
    )
);

CardTitle.displayName = "CardTitle";

const CardDescription = forwardRef<HTMLParagraphElement, HTMLAttributes<HTMLParagraphElement>>(
    ({className, ...props}, ref) => (
        <p ref={ref} className={cn("text-text-muted text-sm", className)} {...props} />
    )
);

CardDescription.displayName = "CardDescription";

const CardContent = forwardRef<HTMLDivElement, HTMLAttributes<HTMLDivElement>>(
    ({className, ...props}, ref) => (
        <div ref={ref} className={cn("", className)} {...props} />
    )
);

CardContent.displayName = "CardContent";

export {Card, CardHeader, CardTitle, CardDescription, CardContent};
