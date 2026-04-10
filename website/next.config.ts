import type {NextConfig} from "next";
import createMDX from "@next/mdx";
import FaroSourceMapUploaderPlugin from "@grafana/faro-webpack-plugin";

/** Must match Frontend Observability app name in Grafana Cloud. */
const FARO_APP_NAME = "java-swing-tutor";
const FARO_SOURCEMAP_ENDPOINT =
    "https://faro-api-prod-eu-west-2.grafana.net/faro/api/v1";
const FARO_APP_ID = "5501";
const FARO_STACK_ID = "1586681";

const faroSourcemapUploadEnabled = Boolean(
    process.env.GRAFANA_OBSERVABILITY_FARO_TOKEN,
);

const nextConfig: NextConfig = {
    pageExtensions: ["js", "jsx", "md", "mdx", "ts", "tsx"],
    output: "export",
    images: {
        unoptimized: true,
    },
    // Emit browser source maps only when uploading to Faro (see Grafana source map docs).
    productionBrowserSourceMaps: faroSourcemapUploadEnabled,
    webpack: (config, {isServer, dev}) => {
        const token = process.env.GRAFANA_OBSERVABILITY_FARO_TOKEN;

        if (!isServer && !dev && token) {
            config.plugins.push(
                new FaroSourceMapUploaderPlugin({
                    appName: FARO_APP_NAME,
                    endpoint: FARO_SOURCEMAP_ENDPOINT,
                    apiKey: token,
                    appId: FARO_APP_ID,
                    stackId: FARO_STACK_ID,
                    gzipContents: true,
                    verbose: true,
                    nextjs: true,
                }),
            );
        }
        return config;
    },
};

const withMDX = createMDX({
    extension: /\.mdx?$/,
    options: {
        remarkPlugins: [],
        rehypePlugins: [],
    },
});

export default withMDX(nextConfig);
