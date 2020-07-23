-- Copyright 2011 Jo-Philipp Wich <jow@openwrt.org>
-- Licensed to the public under the Apache License 2.0.

local sys = require "luci.sys"
local dsp = require "luci.dispatcher"
local ft  = require "luci.tools.firewall"

local m, s, o

arg[1] = arg[1] or ""

m = Map("firewall",
	translate("Firewall - Port Forwards"),
	translate("This page allows you to change advanced properties of the port \
	           forwarding entry. In most cases there is no need to modify \
			   those settings."))



if m.uci:get("firewall", arg[1]) ~= "redirect" then
	luci.http.redirect(m.redirect)
	return
else
	local name = m:get(arg[1], "name") or m:get(arg[1], "_name")
	if not name or #name == 0 then
		name = translate("(Unnamed Entry)")
	end
	m.title = "%s - %s" %{ translate("Firewall - Port Forwards"), name }
end

s = m:section(NamedSection, arg[1], "redirect", "")
s.anonymous = true
s.addremove = false

ft.opt_enabled(s, Button)
ft.opt_name(s, Value, translate("Name"))


o = s:option(Value, "proto", translate("Protocol"))
o:value("tcp udp", "TCP+UDP")
o:value("tcp", "TCP")
o:value("udp", "UDP")


function o.cfgvalue(...)
	local v = Value.cfgvalue(...)
	if not v or v == "tcpudp" then
		return "tcp udp"
	end
	return v
end











o:depends("proto", "tcp")
o:depends("proto", "udp")
o:depends("proto", "tcp udp")
o:depends("proto", "tcpudp")

o = s:option(Value, "src_dip",
	translate("External IP address"),
	translate("Only match incoming traffic directed at the given IP address."))

luci.sys.net.ipv4_hints(function(ip, name)
	o:value(ip, "%s (%s)" %{ ip, name })
end)


o.rmempty = true
o.datatype = "neg(ipmask4)"
o.placeholder = translate("any")


o = s:option(Value, "src_dport", translate("External port"),
	translate("Match incoming traffic directed at the given " ..
		"destination port or port range on this host"))
o.datatype = "neg(portrange)"

o:depends("proto", "tcp")
o:depends("proto", "udp")
o:depends("proto", "tcp udp")
o:depends("proto", "tcpudp")




o = s:option(Value, "dest_ip", translate("Internal IP address"),
	translate("Redirect matched incoming traffic to the specified \
		internal host"))
o.datatype = "ipmask4"

luci.sys.net.ipv4_hints(function(ip, name)
	o:value(ip, "%s (%s)" %{ ip, name })
end)


o = s:option(Value, "dest_port",
	translate("Internal port"),
	translate("Redirect matched incoming traffic to the given port on \
		the internal host"))
o.placeholder = translate("any")
o.datatype = "portrange"

o:depends("proto", "tcp")
o:depends("proto", "udp")
o:depends("proto", "tcp udp")
o:depends("proto", "tcpudp")


o.default = o.enabled
o.cfgvalue = function(...)
	return Flag.cfgvalue(...) or "1"
end




return m
