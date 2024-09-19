project(
    'example',
    
    ['c', 'vala'],
    version: '1.0',
    meson_version: '>= 0.50.0',
)

add_global_arguments([
	'-Wno-unused',
	'-Wno-discarded-qualifiers'
], language: 'c')

gnome = import('gnome')

project_name = meson.project_name()

subdir('data')
subdir('src')