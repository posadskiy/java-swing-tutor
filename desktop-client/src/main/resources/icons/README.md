# Application Icons

This directory should contain platform-specific application icons:

- `app-icon.icns` - macOS icon (required for .dmg builds)
- `app-icon.ico` - Windows icon (required for .exe builds)
- `app-icon.png` - Linux icon (required for .deb/.app-image builds)

## Creating Icons

### macOS (.icns)

You can create a .icns file from a PNG using:

```bash
# Create iconset directory
mkdir app-icon.iconset

# Create different sizes (required for .icns)
sips -z 16 16     logo.png --out app-icon.iconset/icon_16x16.png
sips -z 32 32     logo.png --out app-icon.iconset/icon_16x16@2x.png
sips -z 32 32     logo.png --out app-icon.iconset/icon_32x32.png
sips -z 64 64     logo.png --out app-icon.iconset/icon_32x32@2x.png
sips -z 128 128   logo.png --out app-icon.iconset/icon_128x128.png
sips -z 256 256   logo.png --out app-icon.iconset/icon_128x128@2x.png
sips -z 256 256   logo.png --out app-icon.iconset/icon_256x256.png
sips -z 512 512   logo.png --out app-icon.iconset/icon_256x256@2x.png
sips -z 512 512   logo.png --out app-icon.iconset/icon_512x512.png
sips -z 1024 1024 logo.png --out app-icon.iconset/icon_512x512@2x.png

# Convert to .icns
iconutil -c icns app-icon.iconset
```

Or use online tools like:

- https://cloudconvert.com/png-to-icns
- https://iconverticons.com/online/

### Windows (.ico)

You can create a .ico file using:

- Online tools: https://convertio.co/png-ico/ or https://icoconvert.com/
- ImageMagick: `convert logo.png -define icon:auto-resize=256,128,64,48,32,16 app-icon.ico`

### Linux (.png)

Use a 512x512 PNG image. You can convert from SVG:

```bash
# Using Inkscape (if installed)
inkscape logo.svg --export-filename=app-icon.png --export-width=512 --export-height=512

# Or use online tools
```

## Temporary Placeholder

Until proper icons are created, you can use any 512x512 PNG for all platforms (jpackage will handle conversion for
macOS/Windows).
