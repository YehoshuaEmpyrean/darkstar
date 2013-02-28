-----------------------------------
-- Area: The Shrine of Ru'Avitau
-- NPC:  ??? (Spawn Kirin)
-- @pos -81 32 2 178
-----------------------------------
package.loaded["scripts/zones/The_Shrine_of_RuAvitau/TextIDs"] = nil;
-----------------------------------

require("scripts/zones/The_Shrine_of_RuAvitau/TextIDs");

-----------------------------------
-- onTrade Action
-----------------------------------

function onTrade(player,npc,trade)
	
	-- Trade seal of genbu, seal of seiryu, seal of byakko, seal of suzaku
	if(GetMobAction(17506670) == 0 and trade:hasItemQty(1404,1) and trade:hasItemQty(1405,1) and 
	trade:hasItemQty(1406,1) and trade:hasItemQty(1407,1) and trade:getItemCount() == 4) then 
		player:tradeComplete();
		SpawnMob(17506670,180):updateEnmity(player);
		player:showText(npc,KIRIN_OFFSET);
		Kirin_PetsCalled = 0;
	end
	
end;

-----------------------------------
-- onTrigger Action
-----------------------------------

function onTrigger(player,npc)
	player:startEvent(0x0064);
end;

-----------------------------------
-- onEventUpdate
-----------------------------------

function onEventUpdate(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;

-----------------------------------
-- onEventFinish
-----------------------------------

function onEventFinish(player,csid,option)
--printf("CSID: %u",csid);
--printf("RESULT: %u",option);
end;