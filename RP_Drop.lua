menu.add_player_feature("RP drop", "toggle", 0, function(f, pid)
	while f.on do
		local RP = 1025210927
		if not streaming.has_model_loaded(RP) then
			streaming.request_model(RP)
		end
		local P = player.get_player_coords(pid) + v3(0,0,1)
		native.call(0x673966A0C0FD7171, 0x2C014CA6, P, 0, 1, RP, 0, 1)
		system.yield(0)
	end
end)