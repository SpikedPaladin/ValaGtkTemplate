project(
    'Example',
    
    ['c', 'vala'],
    version: '1.0',
    meson_version: '>= 0.50.0',
)

add_global_arguments([
	'-Wno-unused',
	'-Wno-discarded-qualifiers'
], language: 'c')

gnome = import('gnome')

name = meson.project_name()
version = meson.project_version()
output = name.to_lower()

subdir('data')
subdir('src')

# Windows related build targets
if host_machine.system() == 'windows'
	dist_script_conf = configuration_data()
	dist_script_conf.set_quoted('EXECUTABLE_NAME', output)

	dist_script = configure_file(
		input: 'build-aux/win_dist.sh.in',
		output: 'win_dist.sh',
		configuration: dist_script_conf
	)

	win_dist = custom_target(
		'win-dist',
		input: dist_script,
		output: 'some.txt',
		command: [
			'sh',
			'@INPUT@'
		],
		build_by_default: false,
		depends: app
	)

	installer_conf = configuration_data()
	installer_conf.set('PROJECT_NAME', name)
	installer_conf.set('EXECUTABLE_NAME', output)
	installer_conf.set('PROJECT_VERSION', version)

	installer = configure_file(
		input: 'build-aux/installer.nsi.in',
		output: 'installer.nsi',
		configuration: installer_conf
	)

	custom_target(
		'win-installer',
		input: installer,
		output: '@0@ Setup.exe'.format(name),
		command: [
			'makensis',
			'@INPUT@'
		],
		build_by_default: false,
		depends: win_dist
	)
endif