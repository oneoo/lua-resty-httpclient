L = require('coevent')
local httprequest = require('httpclient')

ff = io.open('t.lua')
print(L(function()
	print('start')

	local t,e = httprequest('http://www.google.com:8080', {
				pool_size = 20,
			})

	print('readed:', #t, 'Bytes', t)
	
end
))
print('end')
