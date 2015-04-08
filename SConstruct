# -*- mode: python -*-
# SCons build file
import os

basename = 'MATH135'

env=Environment()
env.Replace(PDFLATEX='lualatex')
env.AppendUnique(PDFLATEXFLAGS='-synctex=1')
env.AppendUnique(PDFLATEXFLAGS='-shell-escape')
pdf = env.PDF(basename + '.tex')
env.Clean(pdf, basename + '.synctex.gz')
inst = env.Install('out',pdf)
Default(inst)
