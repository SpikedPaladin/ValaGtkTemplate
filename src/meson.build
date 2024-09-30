deps = [
    dependency('gtk4'),
    dependency('libadwaita-1'),
]

sources = files(
    'ui/main-window.vala',
    
    'app.vala',
)

app = executable(
    output,
    
    resources,
    sources,
    dependencies: deps,
    win_subsystem: 'windows',
    install: true,
)
