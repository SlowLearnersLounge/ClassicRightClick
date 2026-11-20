# ClassicRightClick

Always open the **classic (Windows 10-style) context menu** in File Explorer and on the desktop in Windows 11 — no registry edits, no feature flags.

## Why

The November 2026 update (KB5132061) stopped Windows 11 from honoring the well-known registry tweak
(`{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32`) that restored the classic menu.
**Shift + right-click** still opens the classic menu, so this script simply sends Shift + right-click
whenever you right-click in File Explorer or on the desktop.

## Features

- Works only in File Explorer windows and on the desktop. The taskbar and other apps are not affected.
- Right-drag (the "Copy here / Move here" menu) still works.
- Changes nothing in Windows. Stop the script and everything is back to normal.

## Requirements

- Windows 11
- [AutoHotkey v2.0](https://www.autohotkey.com/) (v1.x will not work)

Tested on Windows 11 26H2, build 26300.9974.

## Install

1. Install AutoHotkey v2.0.
2. Download `ClassicRightClick.ahk` and double-click it. A green "H" icon appears in the system tray.
3. To start it automatically at sign-in, press `Win + R`, type `shell:startup`, and put a shortcut to the script in that folder.

## Usage

- Right-click a file, a folder, or the desktop → the classic menu opens.
- To use the new menu temporarily: right-click the tray icon → **Suspend Hotkeys**.
- To stop it: right-click the tray icon → **Exit**, and remove the shortcut from `shell:startup`.

## Known limitations

- Does not work over File Explorer windows running as administrator unless AutoHotkey also runs as administrator.
- File Open / Save dialogs are not targeted. To include them, add `"#32770", 1` to `TargetClasses` in the script.

## License

[MIT](LICENSE)

---

## 日本語

Windows 11のエクスプローラーとデスクトップで、右クリックを常に旧（クラシック）メニューにするAutoHotkey v2スクリプトです。
2026年11月の更新（KB5132061）でレジストリによる方法が効かなくなったため、右クリックをShift＋右クリックに変換して旧メニューを開きます。
Windowsの設定は一切変更しません。導入方法は上の「Install」を参照してください。
