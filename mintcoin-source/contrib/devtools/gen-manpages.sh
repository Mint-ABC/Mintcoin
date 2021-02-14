#!/usr/bin/env bash

export LC_ALL=C
TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
BUILDDIR=${BUILDDIR:-$TOPDIR}

BINDIR=${BINDIR:-$BUILDDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

MINTCOIND=${MINTCOIND:-$BINDIR/mintcoind}
MINTCOINCLI=${MINTCOINCLI:-$BINDIR/mintcoin-cli}
MINTCOINTX=${MINTCOINTX:-$BINDIR/mintcoin-tx}
MINTCOINQT=${MINTCOINQT:-$BINDIR/qt/mintcoin-qt}

[ ! -x $MINTCOIND ] && echo "$MINTCOIND not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
MTCVER=($($MINTCOINCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for mintcoind if --version-string is not set,
# but has different outcomes for mintcoin-qt and mintcoin-cli.
echo "[COPYRIGHT]" > footer.h2m
$MINTCOIND --version | sed -n '1!p' >> footer.h2m

for cmd in $MINTCOIND $MINTCOINCLI $MINTCOINTX $MINTCOINQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${MTCVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${MTCVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
