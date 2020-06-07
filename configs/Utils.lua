Utils = {}

function Utils.mergeTable(main_table, sub_table)
	for k,v in pairs(sub_table) do
		main_table[k] = v
	end
end

function Utils.makeFont(font, size)
	return "${font " .. font .. ":size=" .. size .. "}"
end

-- [[
-- Borrowed from
-- https://vincenttam.gitlab.io/post/2019-08-08-network-interface-name-detection-in-conky/
-- ]]
function Utils.findInterface()
	local handle = io.popen('ip a | grep "state UP" | cut -d: -f2 | tr -d " "')
	local result = handle:read('*a'):gsub('\n$','')
	handle:close()
	return result
end

-- [[
-- Borrowed from
-- https://stackoverflow.com/questions/10975935/lua-function-check-if-ipv4-or-ipv6-or-string
-- ]]
function Utils.getIpType(ip)
	local R = {ERROR = "ERROR", IPV4 = "IPv4", IPV6 = "IPv6", STRING = "STRING"}
 	if type(ip) ~= "string" then return R.ERROR end

	-- check for format 1.11.111.111 for ipv4
	local chunks = {ip:match("^(%d+)%.(%d+)%.(%d+)%.(%d+)$")}
	if #chunks == 4 then
		for _,v in pairs(chunks) do
			if tonumber(v) > 255 then return R.STRING end
		end
		return R.IPV4
	end

  	-- check for ipv6 format, should be 8 'chunks' of numbers/letters
  	-- without leading/trailing chars
  	-- or fewer than 8 chunks, but with only one `::` group
  	local chunks = {ip:match("^"..(("([a-fA-F0-9]*):"):rep(8):gsub(":$","$")))}
  	if #chunks == 8
  		or #chunks < 8 and ip:match('::') and not ip:gsub("::","",1):match('::') then
    		for _,v in pairs(chunks) do
      			if #v > 0 and tonumber(v, 16) > 65535 then return R.STRING end
    		end
    		return R.IPV6
  	end

	return R.STRING
end

