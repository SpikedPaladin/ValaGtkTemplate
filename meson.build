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

project_name = meson.project_name()
project_version = meson.project_version()
project_output = project_name.to_lower()

subdir('data')
subdir('src')

if host_machine.system() == 'windows'
	dist_script_conf = configuration_data()
	dist_script_conf.set_quoted('EXECUTABLE_NAME', project_output)

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
	installer_conf.set('PROJECT_NAME', project_name)
	installer_conf.set('EXECUTABLE_NAME', project_output)
	installer_conf.set('PROJECT_VERSION', project_version)

	installer = configure_file(
		input: 'build-aux/installer.nsi.in',
		output: 'installer.nsi',
		configuration: installer_conf
	)

	custom_target(
		'win-installer',
		input: installer,
		output: '@0@ Setup.exe'.format(project_name),
		command: [
			'makensis',
			'@INPUT@'
		],
		build_by_default: false,
		depends: win_dist
	)
endif