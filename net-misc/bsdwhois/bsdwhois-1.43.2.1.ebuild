# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=4

DESCRIPTION="FreeBSD Whois Client"
HOMEPAGE="http://www.freebsd.org/"
SRC_URI="http://utenti.gufi.org/~drizzt/codes/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 ~ppc x86 ~x86-fbsd ~amd64-linux ~x86-linux"
IUSE="userland_BSD"

src_install() {
	default

	if ! use userland_BSD; then
		mv "${ED}"/usr/share/man/man1/{whois,bsdwhois}.1
		mv "${ED}"/usr/bin/{whois,bsdwhois}
	fi
}
