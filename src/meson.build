deps = [
    dependency('libadwaita-1')
]

sources = files(
    'app.vala',
)

subdir('ui')

app = executable(
    output,
    
    resources,
    sources,
    dependencies: deps,
    win_subsystem: 'windows',
    install: true,
)
