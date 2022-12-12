fx_version "cerulean"
game "gta5"
lua54 "yes"

author "Cuchi#3120"
version "0.0.0"
name "cuchi_poll"
description "In-Game poll system."
url "https://github.com/Cu-chi/cuchi_poll"

shared_script "config.lua"

client_scripts {
    "client/main.lua",
}

server_scripts {
    "server/*.lua"
}

ui_page "ui/index.html"

files {
    "ui/*"
}
