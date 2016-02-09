# Copyright (c) 2016, Marc-Antoine Perennou <Marc-Antoine@Perennou.com>

m4_define([creds_version], [4])

# Build system requirements
m4_define([autoconf_required], [2.69])
m4_define([automake_required], [1.14])

AC_PREREQ(autoconf_required)
AC_INIT([creds], [creds_version], [Marc-Antoine@Perennou.com])

AC_SUBST([PACKAGE_NAME])
AC_SUBST([PACKAGE_VERSION])

AC_CONFIG_SRCDIR([src/])
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_AUX_DIR([build-aux])
AC_PREFIX_DEFAULT([/usr])

AM_INIT_AUTOMAKE(automake_required [subdir-objects check-news foreign no-dist-gzip dist-xz tar-ustar -Wall])
AM_SILENT_RULES([yes])

AC_PROG_SED
AC_PROG_MKDIR_P
AC_PROG_INSTALL

AC_PATH_PROG([XSLTPROC], [xsltproc])

CREDS_ENABLE([bash-completion], [Disable the bash completion], [yes])
CREDS_ENABLE([zsh-completion],  [Disable the zsh completion],  [yes])

AS_IF([test x${enable_bash_completion} = xyes], [
    CREDS_WITH([bashcompletiondir], [Bash completion directory], ['${datadir}/bash-completion/completions'])
])

AS_IF([test x${enable_zsh_completion} = xyes], [
    CREDS_WITH([zshcompletiondir], [Zsh completion directory], ['${datadir}/zsh/site-functions'])
])

AC_CONFIG_FILES([Makefile])
AC_CONFIG_FILES([src/bin/creds], [chmod +x src/bin/creds])
AC_OUTPUT
AC_MSG_RESULT([
    $PACKAGE_NAME $VERSION
    ===========

    prefix:                 ${prefix}
    exec_prefix:            ${exec_prefix}
    datarootdir:            ${datarootdir}
    datadir:                ${datadir}

    xsltproc:               ${XSLTPROC}
    xsltproc flags:         ${XSLTPROCFLAGS}

    Bash completion:        ${enable_bash_completion}
    Bash completion dir:    ${bashcompletiondir}

    Zsh completion:         ${enable_zsh_completion}
    Zsh completion dir:     ${zshcompletiondir}
])
