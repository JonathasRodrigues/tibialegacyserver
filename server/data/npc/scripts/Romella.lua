dofile(getDataDir() .. 'libs/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addSellableItem({'two handed sword'}, 					ID_twohandedsword, 450)
shopModule:addSellableItem({'battle axe'}, 					ID_battleaxe, 80)
shopModule:addSellableItem({'dagger'}, 					ID_dagger, 2)
shopModule:addSellableItem({'hand axe'}, 					ID_handaxe, 4)
shopModule:addSellableItem({'halberd'}, 					ID_halberd, 400)
shopModule:addSellableItem({'rapier'}, 					ID_rapier, 5)
shopModule:addSellableItem({'sabre'}, 					ID_sabre, 12)
shopModule:addSellableItem({'axe'}, 					ID_axe, 7)
shopModule:addSellableItem({'spear'}, 					ID_spear, 3)
shopModule:addSellableItem({'morning star'}, 					ID_morningstar, 90)
shopModule:addSellableItem({'mace'}, 					ID_mace, 30)
shopModule:addSellableItem({'short sword'}, 					ID_shortsword, 10)
shopModule:addSellableItem({'battle hammer'}, 					ID_battlehammer, 120)
shopModule:addSellableItem({'sword'}, 					ID_sword, 25)
shopModule:addBuyableItem({'dagger'}, 					ID_dagger, 5)
shopModule:addBuyableItem({'hand axe'}, 					ID_handaxe, 8)
shopModule:addBuyableItem({'spear'}, 					ID_spear, 10)
shopModule:addBuyableItem({'rapier'}, 					ID_rapier, 15)
shopModule:addBuyableItem({'axe'}, 					ID_axe, 20)
shopModule:addBuyableItem({'sabre'}, 					ID_sabre, 35)
shopModule:addBuyableItem({'sword'}, 					ID_sword, 85)
shopModule:addBuyableItem({'mace'}, 					ID_mace, 90)
shopModule:addBuyableItem({'battle hammer'}, 					ID_battlehammer, 350)
shopModule:addBuyableItem({'machete'}, 					ID_machete, 35)
shopModule:addBuyableItem({'throwing knife'}, 					ID_throwingknife, 25)
 
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Romella, and I will be serving you today."})
keywordHandler:addKeyword({'shop'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Romella, and I will be serving you today."})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Romella, and I will be serving you today."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The only royal thing we feel here is the royal tax."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The only royal thing we feel here is the royal tax."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Our warehouse is the main supplier of the local garrison."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Make sure to buy some extra weapons before facing that one."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I heard the amazons are after it."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It says the amazons are looking for a certain magical weapon in this area."})
keywordHandler:addKeyword({'amazon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I wonder how they finance themselves. I bet they are secretly trading in some strange stuff."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The weapons we sell are all help you need."})
keywordHandler:addKeyword({'monster'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Just buy enough weapons and you don't have to fear them."})
keywordHandler:addKeyword({'swamp'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Don't go exploring without weapons. Especially you'll need a machete."})
keywordHandler:addKeyword({'thank'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You are welcome."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell several weapons."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell several weapons."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I sell several weapons."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have hand axes, axes, spears, maces, battle hammers, swords, rapiers, daggers, sabres, and machetes. What's your choice?"})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It is |TIME|."})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())