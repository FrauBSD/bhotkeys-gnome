[//]: # ($FrauBSD: bhotkeys-gnome/README.md 2026-10-03 21:37:22 -0700 Devin Teske $)

# bhotkeys-gnome

GNOME's stock shortcuts as rows in the bhotkeys chord list.

GNOME Shell binds its own keys: `Super+A` for applications, `Alt+F2`
to run a command, `Super+L` to lock, the media keys, `Print`. This
package ships one [bhotkeys](https://github.com/FrauBSD/bhotkeys)
plugin per shortcut, each with `listen 0` and no command. bhotkeys
does not listen for them; GNOME still owns the key. The rows exist so
the chord list under GNOME shows every shortcut the session has, and
so a user can turn one off or move it from the same place as
everything else. `bhotkeys-gnome-apply` writes that choice to the
gsettings key named in each file, so GNOME's own keyboard settings
agree.

The plugins are hidden (`session 0`) and off under every other
window manager.

Home: [FrauBSD/bhotkeys-gnome](https://github.com/FrauBSD/bhotkeys-gnome)

## Requirements

- `bhotkeys`
- GNOME Shell and gsettings at run time

## Build / install

```sh
make install    # PREFIX=/usr/local by default
```

Installs 22 plugin files into `${PREFIX}/share/bhotkeys/plugins.d`.

## Rows

| id | chord | GNOME action |
|---|---|---|
| gnome-apps | Super+a | Show applications |
| gnome-run | Alt+F2 | Run command |
| gnome-help | Super+F1 | Help |
| gnome-lock | Super+l | Lock screen |
| gnome-logout | Ctrl+Alt+Delete | Log out |
| gnome-minimize | Super+h | Minimize |
| gnome-message | Super+m | Message list |
| gnome-notify | Super+n | Notification |
| gnome-quick | Super+s | Quick settings |
| gnome-display | Super+p | Switch display |
| gnome-rotate | Super+o | Rotation lock |
| gnome-shot | Print | Screenshot |
| gnome-shot-region | Shift+Print | Region screenshot |
| gnome-shot-window | Alt+Print | Window screenshot |
| gnome-rec | Ctrl+Shift+Alt+r | Screen recording |
| gnome-vol-up | XF86AudioRaiseVolume | Volume up |
| gnome-vol-down | XF86AudioLowerVolume | Volume down |
| gnome-mute | XF86AudioMute | Mute |
| gnome-play | XF86AudioPlay | Play |
| gnome-next | XF86AudioNext | Next track |
| gnome-prev | XF86AudioPrev | Previous track |
| gnome-media | XF86AudioMedia | Media |

Each file carries a `# gsettings <schema> <key> <default>` comment
that the apply script reads; bhotkeys itself ignores it.
