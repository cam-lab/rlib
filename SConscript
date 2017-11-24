#-------------------------------------------------------------------------------
#
#     rlibs project build construction script
#

import os

#-------------------------------------------------------------------------------
#
#     General
#
Import('qtEnv')
env = qtEnv.Clone()

#-------------------------------------------------------------------------------
#
#     Build hierarchy
#
SConscript('src/bufpool/SConscript',
            exports = 'env',
            variant_dir = '#build/%s/%s' % (env['VARIANT'], 'rlibs/bufpool'), duplicate = 0)

SConscript('src/streamtester/SConscript',
            exports = 'env',
            variant_dir = '#build/%s/%s' % (env['VARIANT'], 'rlibs/streamtester'), duplicate = 0)


#-------------------------------------------------------------------------------

