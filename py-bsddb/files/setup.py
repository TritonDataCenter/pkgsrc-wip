# $NetBSD: setup.py,v 1.1 2002/03/14 17:58:50 wiz Exp $

import distutils
from distutils.core import setup, Extension

blprefix= '@BLPREFIX@'
blincl = blprefix + '/include'
bllib = blprefix + '/lib'
dbrtprefix = '@DBRTPREFIX@'
dbrtlib = dbrtprefix + '/lib'
dbprefix = '@DBPREFIX@'
dbincl = dbprefix + '/include/db4'
dblib = dbprefix + '/lib'

setup(
	ext_modules = [
		Extension(
			'_bsddb',
			['Modules/_bsddb.c'],
			include_dirs=[blincl, dbincl],
			library_dirs=[bllib, dblib],
			runtime_library_dirs=[dbrtlib],
			libraries=['db4']
		)
	]
)
