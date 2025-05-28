# Documentation

[![Deploy website](https://github.com/Embroidermodder/website/actions/workflows/website.yml/badge.svg)](https://github.com/Embroidermodder/website/actions/workflows/website.yml)

WARNING: These are very incomplete and cover hundreds of pages so it will take some
time to complete them. We hope to lift this warning by 2026.

TODO: docs, coverage reports for each project

These are living documents: if there's an error first check that it is present
in the current live versions (the web links below) before reporting an error.
Note that every manual has a shortcode `EMRM`, `LEAPI` etc.

When reporting issues, please quote the date of the copy you have like this
"EMRM (26 May 2025)". They are housed in the repositories
for each of the projects they refer to and are under the GNU Free Documentation License,
the only gotcha is that the command line interface `embroider` is part of the
`libembroidery` repository and doesn't have it's own.

## Embroidermodder

![embroidermodder version](images/embroidermodder-version.svg)
![embroidermodder license](images/embroidermodder-license.svg)

|   |  GNU/Linux | Mac OS | Windows |
|---|---|----|----|
| build | [![embroidermodder build linux](https://github.com/Embroidermodder/website/actions/workflows/build-embroidermodder-[linux.yml/badge.svg)](https://github.com/Embroidermodder/website/actions/workflows/build-embroidermodder-linux.yml) | [![embroidermodder build macos](https://github.com/Embroidermodder/website/actions/workflows/build-embroidermodder-macos.yml/badge.svg)](https://github.com/Embroidermodder/website/actions/workflows/build-embroidermodder-macos.yml) | [![embroidermodder build windows](https://github.com/Embroidermodder/website/actions/workflows/build-embroidermodder-windows.yml/badge.svg)](https://github.com/Embroidermodder/website/actions/workflows/build-embroidermodder-windows.yml) |
| test | [![embroidermodder test linux](https://github.com/Embroidermodder/website/actions/workflows/test-embroidermodder-[linux.yml/badge.svg)](https://github.com/Embroidermodder/website/actions/workflows/test-embroidermodder-linux.yml) | [![embroidermodder test macos](https://github.com/Embroidermodder/website/actions/workflows/test-embroidermodder-macos.yml/badge.svg)](https://github.com/Embroidermodder/website/actions/workflows/test-embroidermodder-macos.yml) | [![embroidermodder test windows](https://github.com/Embroidermodder/website/actions/workflows/test-embroidermodder-windows.yml/badge.svg)](https://github.com/Embroidermodder/website/actions/workflows/test-embroidermodder-windows.yml) |

Embroidermodder Reference Manaul (`EMRM`)
* [html](embroidermodder/man)
* [A4](embroidermodder_2.pdf)
* [US letter](embroidermodder_2_us.pdf)

Embroidermodder API Manual (`EMAPI`)
* [html](embroidermodder/index.html)
* [A4](em2_current.pdf)
* [US letter](em2_current.pdf)

## libembroidery

![libembroidery version](images/libembroidery-version.svg)
![libembroidery license](images/libembroidery-license.svg)

|    | GNU/Linux | Mac OS | Windows |
|----|-----------|--------|---------|
| build | [![libembroidery build linux](https://github.com/Embroidermodder/website/actions/workflows/build-libembroidery-linux.yml/badge.svg)](https://github.com/Embroidermodder/website/actions/workflows/build-libembroidery-linux.yml) | [![libembroidery build macos](https://github.com/Embroidermodder/website/actions/workflows/build-libembroidery-macos.yml/badge.svg)](https://github.com/Embroidermodder/website/actions/workflows/build-libembroidery-macos.yml) | [![libembroidery build windows](https://github.com/Embroidermodder/website/actions/workflows/build-libembroidery-windows.yml/badge.svg)](https://github.com/Embroidermodder/website/actions/workflows/build-libembroidery-windows.yml) |
| test | [![libembroidery test linux](https://github.com/Embroidermodder/website/actions/workflows/test-libembroidery-linux.yml/badge.svg)](https://github.com/Embroidermodder/website/actions/workflows/test-libembroidery-linux.yml) | [![libembroidery test macos](https://github.com/Embroidermodder/website/actions/workflows/test-libembroidery-macos.yml/badge.svg)](https://github.com/Embroidermodder/website/actions/workflows/test-libembroidery-macos.yml) | [![libembroidery test windows](https://github.com/Embroidermodder/website/actions/workflows/test-libembroidery-windows.yml/badge.svg)](https://github.com/Embroidermodder/website/actions/workflows/test-libembroidery-windows.yml) |

For users of the libembroidery library, please use the developer manual.

Libembroidery API Manual (`LEAPI`)
* [html](libembroidery/api)
* [A4](em2_current.pdf)
* [US letter](em2_current.pdf)

## embroider

Statuses are shared with libembroidery above.

Man page:

* [plain text](embroider.txt)
* [PDF (A4)](embroider.pdf)
* [PDF (US letter)](embroider_us.pdf)

## EmbroideryMobile

![embroideryMobile version](images/embroiderymobile-version.svg)
![embroiderymobile license](images/libembroidery-license.svg)

|    | Android (`ubuntu-latest`) | iOS (`macos-latest`) |
|----|-----------|--------|
| build | [![embroideryMobile build android](https://github.com/Embroidermodder/website/actions/workflows/build-embroideryMobile-android.yml/badge.svg)](https://github.com/Embroidermodder/website/actions/workflows/build-embroideryMobile-android.yml) | [![embroideryMobile build ios](https://github.com/Embroidermodder/website/actions/workflows/build-embroideryMobile-ios.yml/badge.svg)](https://github.com/Embroidermodder/website/actions/workflows/build-embroideryMobile-ios.yml) |
| test | [![embroideryMobile test android](https://github.com/Embroidermodder/website/actions/workflows/test-embroideryMobile-anroid.yml/badge.svg)](https://github.com/Embroidermodder/website/actions/workflows/test-embroideryMobile-android.yml) | [![embroideryMobile test ios](https://github.com/Embroidermodder/website/actions/workflows/test-embroideryMobile-ios.yml/badge.svg)](https://github.com/Embroidermodder/website/actions/workflows/test-embroideryMobile-ios.yml) |

EmbroideryMobile Reference Manual (`MOBRM`)
* [html](embroideryMobile/man)
* [A4](embroideryMobile_1.pdf)
* [US letter](embroideryMobile_1_us.pdf)

EmbroideryMobile API Manual (`MOBAPI`)
* [html](docs/embroideryMobile/index.html)
* [A4](docs/em2_current.pdf)
* [US letter](docs/em2_current.pdf)


