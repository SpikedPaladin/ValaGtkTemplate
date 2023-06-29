project(
    'example',
    
    ['c', 'vala'],
    version: '1.0',
    meson_version: '>= 0.50.0',
)

pkg = import('pkgconfig')
gnome = import('gnome')

project_name = meson.project_name()

subdir('data')
subdir('src')