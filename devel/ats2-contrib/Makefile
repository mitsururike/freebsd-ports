# Created by: Mitsuru Y <mitsururike@gmail.com>
# $FreeBSD$

PORTNAME=	ats2
PORTVERSION=	${ATS_VER}
CATEGORIES=	devel
MASTER_SITES=	SF
MASTER_SITE_SUBDIR=	ats2-lang-contrib/ats2-lang-contrib
PKGNAMESUFFIX=	-contrib
DISTNAME=	${PORTNAME:tu}-${ATS_IMPL:C/^(.).*/\1/:tu}${ATS_IMPL:C/^.(.*)/\1/}${PKGNAMESUFFIX}-${PORTVERSION}

MAINTAINER=	mitsururike@gmail.com
COMMENT=	Extensions and enhancements to the ATS2 libraries

LICENSE=	GPLv3

ONLY_FOR_ARCHS=	i386 amd64

USES=		tar:tgz

ATS_IMPL=	postiats
ATS_VER=	0.1.7

ATS_LIBDIR_REL=	lib/ats2-${ATS_IMPL}-${ATS_VER}
ATS_LIBDIR=	${LOCALBASE}/${ATS_LIBDIR_REL}

PLIST_SUB+=	ATS_LIBDIR="${ATS_LIBDIR_REL}"

RUN_DEPENDS+=	${LOCALBASE}/bin/patscc:${PORTSDIR}/lang/ats2

NO_BUILD=	yes

.include <bsd.port.pre.mk>

do-install:
	${MKDIR} ${STAGEDIR}${ATS_LIBDIR}/contrib
	cd ${INSTALL_WRKSRC}/contrib && \
	${COPYTREE_SHARE} . ${STAGEDIR}${ATS_LIBDIR}/contrib

.include <bsd.port.post.mk>
