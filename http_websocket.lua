local websocket = require "http.websocket"

local ws = websocket.new_from_uri("wss://echo.websocket.org")
assert(ws:connect())
assert(ws:send("koo-eee!"))

local data = assert(ws:receive())
assert(data == "koo-eee!")
assert(ws:close())
