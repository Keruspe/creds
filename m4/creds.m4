dnl Copyright (c) 2016, Marc-Antoine Perennou <Marc-Antoine@Perennou.com>

dnl CREDS_WITH([directory], [help string], [default value])
dnl Check if we override a directory and define it
AC_DEFUN([_CREDS_WITH], [
    AC_ARG_WITH([$1],
                AS_HELP_STRING([--with-$1=DIR], [$2]),
                [],
                [with_$4=$3])
    AC_SUBST([$1], [$with_$4])
])
AC_DEFUN([CREDS_WITH], [_CREDS_WITH([$1],[$2],[$3],AS_TR_SH([$1]))])

dnl CREDS_ENABLE([feature], [help string], [default value])
dnl Check if we enable a feature and define it
AC_DEFUN([_CREDS_ENABLE], [
    AC_ARG_ENABLE([$1],
                  AS_HELP_STRING([--$5-$1], [$2]),
                  [],
                  [enable_$4=$3])
    AM_CONDITIONAL(AS_TR_CPP(ENABLE_$1), [test x$enable_$4 = xyes])
])
AC_DEFUN([CREDS_ENABLE], [_CREDS_ENABLE([$1],[$2],[$3],AS_TR_SH([$1]),m4_if([$3],[no],[enable],[disable]))])
