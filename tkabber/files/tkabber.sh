#!/bin/sh
#
# $NetBSD$

exec @PREFIX@/bin/wish @DATADIR@/tkabber.tcl -name tkabber "$$@"
