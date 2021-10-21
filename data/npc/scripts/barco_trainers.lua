--------------------By Jpkulik!---------------------------- 
local keywordHandler = KeywordHandler:new() 
local npcHandler = NpcHandler:new(keywordHandler) 
NpcSystem.parseParameters(npcHandler) 



-- OTServ event handling functions start 
function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid) end 
function onCreatureDisappear(cid)             npcHandler:onCreatureDisappear(cid) end 
function onCreatureSay(cid, type, msg)     npcHandler:onCreatureSay(cid, type, msg) end 
-- Set the greeting message. 
npcHandler:setMessage(MESSAGE_GREET, HelloText) 
function onThink()                         npcHandler:onThink() end 
-- OTServ event handling functions end 

---------------------------------------MENSAGES CONFIG-------------------------------------------- 
local HelloText = 'Welcome on board, |PLAYERNAME|, I can take you to Trainer Island.' 
local HelpText = 'Do you need help?I can tell you some {destinations}.' 
local DestinationText = 'I can take you to {Trainer Island}.'            
local CitysText = 'I can take you to {Trainer Island}.'  
local JobText = 'Im an Captain, and this is my Boat.'                                                                  
---------------------------------------END MENSAGES CONFIG---------------------------------------- 



---------------------------------------TRAINER ISLAND CONFIG---------------------------------------------- 
local TrainerzPosition = {x=32232, y=32239, z=7}              ----> Destination from Trainer Island Boat <---- 
local TrainerzCost = 0                          ----> Cost to Travel for Trainer Island    <---- 
trainerz = true                                            ---->TRUE:Working/FALSE:Not Working<---- 
---------------------------------------END TRAINER ISLAND CONFIG------------------------------------------ 


---TRAINER ISLAND----------------------------------------------------------------------------------------------------------------------------------------- 
local TrainerzText = 'You sure look weak. So you want to go to trainer island eh? I can take you there for 0 gold coins.' 
local TrainerzTextNo = 'Ok, come back when you want then!' 
local NoTravel = 'Sorry, i do not travel to this city..' 
local TrainerzLvl = 8 
local TrainerzPremium = true --True/false 

--Trainer Island-- 
if trainerz == true then 
local travelNode = keywordHandler:addKeyword({'trainer'},  
StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = TrainerzText }) 
travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = TrainerzPremium, level = TrainerzLvl, cost = TrainerzCost, destination = TrainerzPosition }) 
travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = TrainerTextNo }) 
else 
local travelNode = keywordHandler:addKeyword({'trainer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = NoTravel }) 
end 
--End Trainer Island-- 


--------------------------------------------------------------------------------------------------------------------------------------------------- 


--------------------------------------------------------------------------------------------------------------------------------------------------- 



keywordHandler:addKeyword({'destination'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = DestinationText }) 
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = JobText }) 
keywordHandler:addKeyword({'citys'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = CityText }) 
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = HelpText }) 

-- Makes sure the npc reacts when you say hi, bye etc. 
npcHandler:addModule(FocusModule:new())

