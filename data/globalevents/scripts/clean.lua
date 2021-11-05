function executeClean(interval)
	doCleanMap()
	doBroadcastMessage("Game map cleaned, next clean in " .. table.concat(string.timediff(interval / 1000)) .. ".")
	return true
end

function onThink(interval)
	doBroadcastMessage("Game map cleaning within 5 minutes, please pick up your items!")
	addEvent(executeClean, 300000, interval)
	return true
end
