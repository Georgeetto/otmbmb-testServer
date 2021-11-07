function onUse(cid, item, pos)
	entrance = {x = 32667, y = 32135, z = 7, stackpos = 255}
	fail = {x = 32672, y = 32137, z = 7, stackpos = 255}
	if item.uid == 64699 and getPlayerItemCount(cid, 2523) >= 1 or getPlayerItemCount(cid, 2471) >= 1 then
		doTeleportThing(cid, entrance)
		doSendMagicEffect(entrance, 2)
		doPlayerSendTextMessage(cid, MESSAGE_EVENT_ADVANCE, "The entity inside the lamp whispers that you cannot leave the island with the gods equipment.")
	else
		doTeleportThing(cid, fail)
		doSendMagicEffect(fail, 12)
	end

	return true
end