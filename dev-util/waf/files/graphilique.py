#!/usr/bin/python
# Grygoriy Fuchedzhy 2011

"""
Compile graphilique files. Use the 'graphilique' feature in conjuction with the 'c' feature.
"""

from waflib import Task
from waflib.TaskGen import extension

class graphilique(Task.Task):
	color   = 'BLUE'
	ext_out = ['.h']
	run_str = '${GRAPHILIQUE} ${SRC} ${TGT}'

@extension('.glq')
def graphilique(self, node):
	"""add the .glq to the source list; the c file generated will be compiled when possible"""
	c = node.change_ext('.c')
	h = node.change_ext('.h')
	self.create_task('graphilique', node, [c, h])

	if 'c' in self.features:
		self.source.append(c)

def configure(ctx):
	ctx.find_program('graphilique', var='GRAPHILIQUE')
	# copy GRAPHILIQUE to avr env
	ctx.all_envs['avr'].append_value('GRAPHILIQUE', ctx.env.GRAPHILIQUE)
