function onUse(cid, item, pos)
	entrance = {x = 32667, y = 32135, z = 7, stackpos = 255}
	fail = {x = 32672, y = 32137, z = 7, stackpos = 255}
	if item.uid == 64699 and getPlayerItemCount(cid, 2137) >= 1 then
		doTeleportThing(cid, entrance)
		doSendMagicEffect(entrance, 12)
	else
		doTeleportThing(cid, fail)
		doSendMagicEffect(fail, 2)
	end

	return true
end