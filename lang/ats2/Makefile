# Created by: Mitsuru Y <mitsururike@gmail.com>
# $FreeBSD$

PORTNAME=	ats2
PORTVERSION=	${ATS_VER}
CATEGORIES=	lang
MASTER_SITES=	SF
MASTER_SITE_SUBDIR=	${PORTNAME}-lang/${PORTNAME}-lang/${PORTNAME}-${ATS_IMPL}-${PORTVERSION}
DISTNAME=	${PORTNAME:tu}-${ATS_IMPL:C/^(.).*/\1/:tu}${ATS_IMPL:C/^.(.*)/\1/}-${PORTVERSION}

MAINTAINER=	mitsururike@gmail.com
COMMENT=	Language with a type system rooted in the Applied Type System

LICENSE=	GPLv3

STRIP=	#none

ONLY_FOR_ARCHS=	i386 amd64
USES=		gmake tar:tgz
GNU_CONFIGURE=	yes
CFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

MAKE_JOBS_UNSAFE=yes

OPTIONS_DEFINE=		EXAMPLES GMP
OPTIONS_DEFAULT=	EXAMPLES GMP

ATS_IMPL=	postiats
ATS_VER=	0.1.9

ATS_LIBDIR_REL=	lib/ats2-${ATS_IMPL}-${ATS_VER}
ATS_LIBDIR=	${LOCALBASE}/${ATS_LIBDIR_REL}

PLIST_SUB+=	ATS_LIBDIR="${ATS_LIBDIR_REL}"

.include <bsd.port.pre.mk>

.if ${ARCH} == amd64
PLIST_SUB+=	LIBDIR="lib64"
.else
PLIST_SUB+=	LIBDIR="lib"
.endif

.if ${PORT_OPTIONS:MGMP}
LIB_DEPENDS+=	libgmp.so:${PORTSDIR}/math/gmp
.endif

post-configure:
.if empty(PORT_OPTIONS:MGMP)
	${SED} -i '' -e '/HAVE_GMP_H/d' ${WRKSRC}/config.h
.endif

post-install:
.if ${PORT_OPTIONS:MEXAMPLES}
	${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	${CP} -R ${WRKSRC}/doc/EXAMPLE/* ${STAGEDIR}${EXAMPLESDIR}
.endif

.include <bsd.port.post.mk>
