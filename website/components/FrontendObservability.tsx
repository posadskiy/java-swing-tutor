"use client";

import {
    faro,
    getWebInstrumentations,
    initializeFaro,
} from "@grafana/faro-web-sdk";
import {TracingInstrumentation} from "@grafana/faro-web-tracing";
import packageJson from "../package.json";

/** Grafana Cloud Frontend Observability — collector `url` for this app (fixed; no env overrides). */
const FARO_COLLECT_URL =
    "https://faro-collector-prod-eu-west-2.grafana.net/collect/b2bd68a63e58bf620cf69648d42e5d83";

/** Must match Grafana app name and `next.config` Faro source-map `appName`. */
const FARO_APP_NAME = "java-swing-tutor";

const faroUrl =
    process.env.NODE_ENV === "production" ? FARO_COLLECT_URL : undefined;

/**
 * Browser RUM via Grafana Faro. Active in production builds only (`next dev` skips).
 */
export function FrontendObservability(): null {
    if (!faroUrl || faro.api) {
        return null;
    }

    try {
        initializeFaro({
            url: faroUrl,
            app: {
                name: FARO_APP_NAME,
                version: packageJson.version,
                environment: process.env.NODE_ENV,
            },
            sessionTracking: {
                samplingRate: 1.0,
            },
            instrumentations: [
                ...getWebInstrumentations({
                    captureConsole: true,
                    enablePerformanceInstrumentation: true,
                }),
                new TracingInstrumentation(),
            ],
        });
    } catch {
        // Avoid breaking the app if Faro fails (e.g. strict browser extensions)
    }

    return null;
}
