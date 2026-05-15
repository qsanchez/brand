# Q

Personal brand assets — logo and favicon

<picture>
  <source media="(prefers-color-scheme: dark)" srcset="logo/q-light.svg">
  <img src="logo/q-dark.svg" width="120">
</picture>

## Files

### `logo/`

| File | Description |
|------|-------------|
| `q.drawio` | Source file (draw.io) |
| `q-dark.svg` | Dark mark — for use on light backgrounds |
| `q-light.svg` | Light mark — for use on dark backgrounds |
| `q-dark.png` | Dark mark, raster export |
| `q-light.png` | Light mark, raster export |

### `favicon/`

| File | Description |
|------|-------------|
| `favicon.ico` | Multi-size ICO bundle |
| `favicon-32.png` | 32×32 PNG |
| `favicon-16.png` | 16×16 PNG |

## Usage

Embed the SVG logo in a webpage with automatic light/dark switching:

```html
<picture>
  <source media="(prefers-color-scheme: dark)" srcset="logo/q-light.svg">
  <img src="logo/q-dark.svg" alt="Q" width="120">
</picture>
```

Wire up the favicon in `<head>`:

```html
<link rel="icon" type="image/x-icon" href="favicon/favicon.ico">
<link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32.png">
<link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16.png">
```

## License

[CC BY-ND 4.0](LICENSE) © Quique Sanchez
