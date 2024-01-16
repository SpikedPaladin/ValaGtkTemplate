project_deps = [
    dependency('gtk4'),
    dependency('libadwaita-1'),
]

project_sources = files(
    'ui/main-window.vala',
    
    'app.vala',
)

executable(
    project_name,
    
    project_resources,
    project_sources,
    vala_args: [ '--gresourcesdir=data/' ],
    dependencies: project_deps,
    install: true,
)
