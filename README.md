# FnF Vs Cord V1 public source code
 
![](https://github.com/FixedData/fnf-vs-cord-V1-public/blob/main/art/vs_cord_banner.png)
Its a bit rough ngl but here anyway

This is based on psych 0.7.2

Primarily coded by [data5](https://x.com/_data5) and [RoseCord](https://x.com/Cordium_)

## Besides downloading the general prerequisites, run these commands and it should compile

- haxelib install hxpkg
- haxelib run hxpkg install
- lime test windows

## Mobile controls

Mobile gameplay includes four-lane touch hitboxes. The main menu and Freeplay include a directional pad with **A** to confirm and **B** to go back; Credits has left/right movement and **A** to jump. Their visibility can be toggled in **Options > Visuals and UI > Mobile Hitboxes**; controls are visible by default. Touch input uses this repository's HaxeFlixel touch API rather than copying the guide's external Android control classes.

The game uses a 1280x720 (16:9) virtual canvas and stays in landscape on mobile, fitting wider or taller screens without cropping the play area. The title screen can be started by tapping anywhere.

Select **Options > Language** to choose English or Spanish. The settings UI and title prompt have Spanish strings; dialogue uses locale sidecars when supplied and otherwise falls back to the original text. For Spanish dialogue, put a translated file under an `es` subfolder beside its source (for example, `mods/data/nine-lives/es/dialogue.json` or `assets/shared/data/freeplay/es/intro.json`). Pixel-stage dialogue supports the same layout with `.txt` files. No dialogue translations are bundled.

The **Android APK** workflow builds a debug APK on pull requests to `main` and pushes to `main`; it can also be started manually from the Actions tab. Download the `vs-cord-android-debug` artifact from a successful run to install and test on a device. Android builds have not yet been validated in this repository.

The supplied Android porting guide credits:

- Hayato Kawajiri — hitbox and pad designer
- Saw (M.A. Jigsaw) — supporting code, utilities, and pad buttons
- luckydog7 — original Android controls
