############################################################ LICENSE
#
# SPDX-License-Identifier: BSD-2-Clause
#
# Copyright (c) 2026 Devin Teske <dteske@FreeBSD.org>
#
############################################################ IDENT(1)
#
# $Title: bhotkeys-gnome - GNOME panel shortcuts $
# $Copyright: 2026 Devin Teske. All rights reserved. $
# $FrauBSD: bhotkeys-gnome/Makefile 2026-10-03 21:46:56 -0700 Devin Teske $
#
############################################################ PATHS

PREFIX?=	/usr/local
PLUGDIR?=	${PREFIX}/share/bhotkeys/plugins.d

############################################################ FILES

# listen 0. GNOME owns the key. Shown only when the session is GNOME.
# RUN_DEPENDS bhotkeys.
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

############################################################ TARGETS

.PHONY: install

install:
	mkdir -p ${DESTDIR}${PLUGDIR}
.for p in ${PLUGINS}
	install -m 644 plugins.d/${p} \
		${DESTDIR}${PLUGDIR}/${p}
.endfor

################################################################################
# END
################################################################################
