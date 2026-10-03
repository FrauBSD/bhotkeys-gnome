# bhotkeys-gnome: GNOME shortcuts, advertised in the panel.
# listen 0. GNOME owns the key. Shown only when the session is GNOME.
# RUN_DEPENDS bhotkeys.
#
PREFIX?=	/usr/local
PLUGDIR?=	${PREFIX}/share/bhotkeys/plugins.d

PLUGINS=	gnome-apps \
		gnome-display \
		gnome-help \
		gnome-lock \
		gnome-logout \
		gnome-media \
		gnome-message \
		gnome-minimize \
		gnome-mute \
		gnome-next \
		gnome-notify \
		gnome-play \
		gnome-prev \
		gnome-quick \
		gnome-rec \
		gnome-rotate \
		gnome-run \
		gnome-shot \
		gnome-shot-region \
		gnome-shot-window \
		gnome-vol-down \
		gnome-vol-up

install:
	mkdir -p ${DESTDIR}${PLUGDIR}
.for p in ${PLUGINS}
	install -m 644 plugins.d/${p} \
		${DESTDIR}${PLUGDIR}/${p}
.endfor

.PHONY: install
