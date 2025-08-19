deps = [
    dependency('libadwaita-1')
]

sources = files(
    'app.vala',
) + configure_file(
    input: 'build.vala.in',
    output: 'build.vala',
    configuration: config
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
