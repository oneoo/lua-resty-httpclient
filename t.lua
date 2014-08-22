L = require('coevent')
local httprequest = require('lib.resty.httpclient').httprequest

L(function()
	print('start')

	local t,e = httprequest('https://www.google.com', {
		pool_size = 20, --keepalive
		data = io.open('t.lua')
	})

	for k,v in pairs(t) do
		print('',k,v)
	end
	
	print('end')
end)
