script.on_event({defines.events.on_rocket_launched}, function(event)
	local rocket = event.rocket
	if rocket.get_item_count("orbital-capsule") > 0 then
		-- This baby is going to space!

	end
end)


-- When a player walks at the bottom of a rocket, put them inside!

-- borrow ideas from factorissimo for entering the rocket (like a factory),
-- and from orbital ion cannon for entering the vehicle


script.on_event(defines.events.on_tick, function(event)
	-- PLAYER TRANSFER
	for _, player in pairs(game.players) do
		if player.connected and player.character and player.vehicle == nil then
			try_enter_capsule(player)
			try_leave_capsule(player)
		end
	end

end)

function get_rocket_beneath(player)
	local entities = player.surface.find_entities_filtered{
		type = "rocket-silo-rocket"},
		area = {{player.position.x-0.2, player.position.y-0.3},{player.position.x+0.2, player.position.y}}
	}
	for _, rocket in pairs(entities) do
		if rocket.get_item_count("orbital-capsule") > 0  then
			-- there is a rocket ready to launch, and the player is standing beneath it
			return rocket
		end
	end
	return nil
end

function try_enter_rocket(player)
	local rocket = get_rocket_beneath(player)
	if rocket and math.abs(rocket.position.x-player.position.x) < 0.6 then
		-- put the player into the rocket
	end
end

function try_leave_factory(player)
	local exit_building = get_exit_beneath(player)
	if exit_building then
		local exit_pos = get_exit(player.surface)
		if exit_pos then
			player.teleport({exit_pos.x, exit_pos.y}, exit_pos.surface)
			return
		end
	end
end
