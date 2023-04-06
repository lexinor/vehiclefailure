fx_version 'cerulean'
game 'gta5'

description 'VehicleFailure'
version '1.2.2'

shared_scripts {
    '@es_extended/imports.lua',
    '@ox_lib/init.lua',
    'locales/en.lua',
    'locales/*.lua',
    'config.lua'
}

client_script 'client.lua'
server_script 'server.lua'

lua54 'yes'
