local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) 			end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) 		end
function onCreatureSay(cid, type, msg) 		npcHandler:onCreatureSay(cid, type, msg) 	end
function onThink() 							npcHandler:onThink() 						end
function onPlayerEndTrade(cid)				npcHandler:onPlayerEndTrade(cid)			end
function onPlayerCloseChannel(cid)			npcHandler:onPlayerCloseChannel(cid)		end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addBuyableItem({'spellbook'}, 2175, 150,'spellbook')
shopModule:addBuyableItem({'magic lightwand'}, 2163, 400, 'magic lightwand')

shopModule:addBuyableItem({'mana fluid', 'manafluid'}, 2006, 100, 7, 'mana fluid')
shopModule:addBuyableItem({'life fluid', 'lifefluid'}, 2006, 100, 10, 'life fluid')
shopModule:addBuyableItem({'amulet of loss', 'aol'}, 2173, 50000, 'amulet of loss')

shopModule:addBuyableItemContainer({'bp mf'}, 2000, 2006, 2000, 7, 'backpack of mana fluids')
shopModule:addBuyableItemContainer({'bp lf'}, 2000, 2006, 2000, 10, 'backpack of life fluids')

shopModule:addBuyableItem({'animate dead'}, 2316, 375, 2, 'animate dead rune')
shopModule:addBuyableItem({'blank rune'}, 2260, 10, 2, 'blank rune')
shopModule:addBuyableItem({'desintegrate'}, 2310, 26, 6, 'desintegrate rune')
shopModule:addBuyableItem({'energy bomb'}, 2262, 162, 4, 'energy bomb rune')
shopModule:addBuyableItem({'fireball'}, 2302, 30, 6, 'fireball rune')
shopModule:addBuyableItem({'holy missile'}, 2295, 16, 1, 'holy missile rune')
shopModule:addBuyableItem({'icicle'}, 2271, 30, 1, 'icicle rune')
shopModule:addBuyableItem({'magic wall'}, 2293, 400, 6, 'magic wall rune')
shopModule:addBuyableItemContainer({'bp mwall'}, 2000, 2293, 8020, 6, 'backpack of magic wall rune')
shopModule:addBuyableItem({'paralyze'}, 2278, 700, 2, 'paralyze rune')
shopModule:addBuyableItem({'poison bomb'}, 2286, 85, 4, 'poison bomb rune')
shopModule:addBuyableItem({'soulfire'}, 2308, 46, 4, 'soulfire rune')
shopModule:addBuyableItem({'stone shower'}, 2288, 37, 4, 'stone shower rune')
shopModule:addBuyableItem({'thunderstorm'}, 2315, 37, 4, 'thunderstorm rune')
shopModule:addBuyableItem({'wild growth'}, 2269, 160, 4, 'wild growth rune')

shopModule:addBuyableItem({'avalanche'}, 2274, 45, 4, 'avalanche rune')
shopModule:addBuyableItem({'antidote'}, 2266, 65, 2, 'antidote rune')
shopModule:addBuyableItem({'chameleon'}, 2291, 210, 2, 'chameleon rune')
shopModule:addBuyableItem({'convince creature'}, 2290, 80, 2, 'convince creature rune')
shopModule:addBuyableItem({'destroy field'}, 2261, 60, 6, 'destroy field rune')
shopModule:addBuyableItem({'energy field'}, 2277, 40, 6, 'energy field rune')
shopModule:addBuyableItem({'energy wall'}, 2279, 120, 8, 'energy wall rune')
shopModule:addBuyableItem({'explosion rune'}, 2313, 190, 6, 'explosion rune')
shopModule:addBuyableItemContainer({'bp explosion'}, 2000, 2313, 1520, 6, 'backpack of explosion rune')
shopModule:addBuyableItem({'fire bomb'}, 2305, 117, 4, 'fire bomb rune')
shopModule:addBuyableItem({'fire field'}, 2301, 28, 6, 'fire field rune')
shopModule:addBuyableItem({'fire wall'}, 2303, 61, 8, 'fire wall rune')
shopModule:addBuyableItem({'great fireball'}, 2304, 125, 4, 'great fireball rune')
shopModule:addBuyableItem({'heavy magic missile'}, 2311, 75, 10, 'heavy magic missile rune')
shopModule:addBuyableItemContainer({'bp hmm'}, 2000, 2311, 1520, 10, 'backpack of heavy magic missile rune')
shopModule:addBuyableItem({'intense healing'}, 2265, 80, 2, 'intense healing rune')
shopModule:addBuyableItem({'light magic missile'}, 2287, 20, 10, 'light magic missile rune')
shopModule:addBuyableItemContainer({'bp lmm'}, 2000, 2287, 420, 10, 'backpack of light magic missile rune')
shopModule:addBuyableItem({'poison field'}, 2285, 21, 6, 'poison field rune')
shopModule:addBuyableItem({'poison wall'}, 2289, 52, 8, 'poison wall rune')
shopModule:addBuyableItem({'stalagmite'}, 2292, 12, 1, 'stalagmite rune')
shopModule:addBuyableItem({'sudden death'}, 2268, 200, 2, 'sudden death rune')
shopModule:addBuyableItemContainer({'bp sd'}, 2000, 2268, 4020, 2, 'backpack of sudden death rune')
shopModule:addBuyableItem({'ultimate healing'}, 2273, 110, 2, 'ultimate healing rune')
shopModule:addBuyableItemContainer({'bp uh'}, 2000, 2273, 2220, 2, 'backpack of ultimate healing rune')
shopModule:addBuyableItemContainer({'bp gfb'}, 2000, 2304, 2520, 4, 'backpack of adori mas flam rune')


shopModule:addBuyableItem({'wand of vortex', 'vortex'}, 2190, 500, 'wand of vortex')
shopModule:addBuyableItem({'wand of dragonbreath', 'dragonbreath'}, 2191, 1000, 'wand of dragonbreath')
shopModule:addBuyableItem({'wand of plague', 'plague'}, 2188, 5000, 'wand of plague')
shopModule:addBuyableItem({'wand of cosmic energy', 'cosmic energy'}, 2189, 10000, 'wand of cosmic energy')
shopModule:addBuyableItem({'wand of inferno', 'inferno'}, 2187, 15000, 'wand of inferno')

shopModule:addBuyableItem({'snakebite rod', 'snakebite'}, 2182, 500, 'snakebite rod')
shopModule:addBuyableItem({'moonlight rod', 'moonlight'}, 2186, 1000, 'moonlight rod')
shopModule:addBuyableItem({'volcanic rod', 'volcanic'}, 2185, 5000, 'volcanic rod')
shopModule:addBuyableItem({'quagmire rod', 'quagmire'}, 2181, 10000, 'quagmire rod')
shopModule:addBuyableItem({'tempest rod', 'tempest'}, 2183, 15000, 'tempest rod')

shopModule:addSellableItem({'vial', 'flask'}, 2006, 25, 'vial')

shopModule:addSellableItem({'wand of vortex', 'vortex'}, 2190, 100, 'wand of vortex')
shopModule:addSellableItem({'wand of dragonbreath', 'dragonbreath'}, 2191, 200, 'wand of dragonbreath')
shopModule:addSellableItem({'wand of plague', 'plague'}, 2188, 1000, 'wand of plague')
shopModule:addSellableItem({'wand of cosmic energy', 'cosmic energy'}, 2189, 2000, 'wand of cosmic energy')
shopModule:addSellableItem({'wand of inferno', 'inferno'}, 2187, 3000, 'wand of inferno')

shopModule:addSellableItem({'snakebite rod', 'snakebite'}, 2182, 100, 'snakebite rod')
shopModule:addSellableItem({'moonlight rod', 'moonlight'}, 2186, 200, 'moonlight rod')
shopModule:addSellableItem({'volcanic rod', 'volcanic'}, 2185, 1000, 'volcanic rod')
shopModule:addSellableItem({'quagmire rod', 'quagmire'}, 2181, 2000, 'quagmire rod')
shopModule:addSellableItem({'tempest rod', 'tempest'}, 2183, 3000, 'tempest rod')

local items = {[1] = 2190, [2] = 2182, [5] = 2190, [6] = 2182}
function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end

	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
	if(msgcontains(msg, 'first rod') or msgcontains(msg, 'first wand')) then
		if(isSorcerer(cid) or isDruid(cid)) then
			if(getPlayerStorageValue(cid, 50111) <= 0) then
				selfSay('So you ask me for a ' .. getItemNameById(items[getPlayerVocation(cid)]) .. ' to begin your advanture?', cid)
				talkState[talkUser] = 1
			else
				selfSay('What? I have already gave you one ' .. getItemNameById(items[getPlayerVocation(cid)]) .. '!', cid)
			end
		else
			selfSay('Sorry, you aren\'t a druid either a sorcerer.', cid)
		end
	elseif(msgcontains(msg, 'yes')) then
		if(talkState[talkUser] == 1) then
			doPlayerAddItem(cid, items[getPlayerVocation(cid)], 1)
			selfSay('Here you are young adept, take care yourself.', cid)
			setPlayerStorageValue(cid, 50111, 1)
		end
		talkState[talkUser] = 0
	elseif(msgcontains(msg, 'no') and isInArray({1}, talkState[talkUser])) then
		selfSay('Ok then.', cid)
		talkState[talkUser] = 0
	end

	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
