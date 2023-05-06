fx_version 'cerulean'
game 'gta5'

author 'AweosmeGaming'
description 'An Advanced ATM Robbery System For QBCore Framework'

shared_script('Config.lua');

server_scripts({
    'server.lua'
});

client_scripts({
    'palert.lua',
    'client.lua'
});
