--[[
─────────────────────────────────────────────────────────────────
─██████──────────██████─██████████─██████─────────████████████───
─██░░██──────────██░░██─██░░░░░░██─██░░██─────────██░░░░░░░░████─
─██░░██──────────██░░██─████░░████─██░░██─────────██░░████░░░░██─
─██░░██──────────██░░██───██░░██───██░░██─────────██░░██──██░░██─
─██░░██──██████──██░░██───██░░██───██░░██─────────██░░██──██░░██─
─██░░██──██░░██──██░░██───██░░██───██░░██─────────██░░██──██░░██─
─██░░██──██░░██──██░░██───██░░██───██░░██─────────██░░██──██░░██─
─██░░██████░░██████░░██───██░░██───██░░██─────────██░░██──██░░██─
─██░░░░░░░░░░░░░░░░░░██─████░░████─██░░██████████─██░░████░░░░██─
─██░░██████░░██████░░██─██░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░████─
─██████──██████──██████─██████████─██████████████─████████████───
─────────────────────────────────────────────────────────────────
]]--

resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

dependency "vrp"

client_scripts {
    "lib/Proxy.lua",
    "lib/Tunnel.lua",
    "config.lua",
    "client.lua",
}
server_scripts {
    "config.lua",
    "@vrp/lib/utils.lua",
    "server.lua",
}