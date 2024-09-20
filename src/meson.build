project_deps = [
    dependency('gtk4'),
    dependency('libadwaita-1'),
]

project_sources = files(
    'ui/main-window.vala',
    
    'app.vala',
)

app = executable(
    project_output,
    
    project_resources,
    project_sources,
    vala_args: [ '--gresourcesdir=data/' ],
    dependencies: project_deps,
    win_subsystem: 'windows',
    install: true,
)
