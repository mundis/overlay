#! /usr/bin/env python
# encoding: utf-8

def options(ctx):
    ctx.add_option('--avr-prefix', type='string', help='prefix for installation of avr related files', default=None)

def configure(ctx):
    import os
    if ctx.options.avr_prefix:
        prefix = os.path.abspath(ctx.options.avr_prefix)
    else:
        prefix = ctx.env.PREFIX + '/avr'

    # set avr prefix in default env
    ctx.env.AVR_PREFIX = prefix

    # create and set new environment for avr cross-compilation
    ctx.setenv('avr')
    ctx.env.INCLUDES=ctx.srcnode.abspath()

    ctx.env.env = dict(os.environ)
    # this variable may be set to host abi by package manager, so override it
    ctx.env.env['ABI'] = 'avr'

    # set avr prefix as default prefix in avr env, recalculate LIBDIR and BINDIR
    ctx.env.PREFIX = prefix
    ctx.env.LIBDIR = ctx.env.BINDIR = []
    ctx.prepare_env(ctx.env)

    ctx.find_program('avr-gcc', var='CC')
    ctx.find_program('avr-ar', var='AR')
    ctx.load('gcc')
    ctx.find_program('avr-objcopy', var='OBJCOPY')
    ctx.load('objcopy')

    # set default CFLAGS
    ctx.env.CFLAGS = ['-Wall', '-O2', '-std=gnu99', '-fpack-struct', '-fshort-enums']

    ctx.add_os_flags('CFLAGS_avr', 'CFLAGS')

    # restore default environment
    ctx.variant=''
    ctx.set_env(ctx.all_envs[''])

from waflib.Utils import def_attrs
from waflib.TaskGen import feature, before
@feature('avr')
@before('process_rule')
def set_environment(self):
    # set avr environment for task gen, if avr feature provided
    self.env = self.bld.all_envs['avr'].derive()

    # add mcu type to CFLAGS and LINKFLAGS
    def_attrs(self, mcu = self.env.MCU or None)
    if not self.mcu:
        self.bld.fatal("Couldn't determine AVR MCU type. It have to be set as mcu attribute or as MCU environment variable in avr environment.")
    self.mcu = '-mmcu=' + self.mcu
    self.env.append_value('CFLAGS', self.mcu)
    self.env.append_value('LINKFLAGS', self.mcu)
