project(
    'com.github.rippieuk.valaoop',
    'vala', 'c',
)

gnome = import('gnome')

executable(
    meson.project_name(),
    'main.vala',
    'src/Person.vala',
    'src/Cat.vala',
    'src/Dog.vala',
    'src/Rabbit.vala',
    dependencies: [
        dependency('glib-2.0'),
        dependency('gobject-2.0')
    ],
    install: true
)