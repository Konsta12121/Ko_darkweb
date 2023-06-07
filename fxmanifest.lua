fx_version "adamant"
game "gta5"

lua54 'yes'

author "Konsta#7709"

description "Ko_DarkWeb"

version "2.4.0"

shared_script '@ox_lib/init.lua'

dependencies {
  'ox_lib',
  'ox_target',
  ' ox_inventory'
}

client_scripts {
  "cl/cl.lua",
  "cl/cl_*.lua"
}

server_script {
  "sv/sv.lua"
}
