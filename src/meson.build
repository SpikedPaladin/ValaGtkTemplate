deps = [
    dependency('libadwaita-1')
]

sources = files(
    'app.vala',
)

subdir('ui')

executable(
    output,
    
    resources,
    sources,
    dependencies: deps,
    win_subsystem: 'windows',
    install: true,
)
