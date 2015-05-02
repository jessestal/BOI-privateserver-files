	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/22
	--		Author:???
	--		Class:	55513-Spawn5th.Lua
	--		AIName:.lua
	--		Remark:5?????
	----------------------------------------------------

function Event_OnTimer(nAI, nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--????,?30??????99??????
		local mapid = AI:GetMapID()
		local a = AI:GetEctypeVarShort(mapid, 99)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	local mapid = AI:GetMapID()
	local a = AI:GetEctypeVarShort(mapid, 99)
	
	if a == 0 then
		AI:SetTimer(0,30000,65535)
		AI:ScreenText("Odin has supplied you with his armor to fight against the Erthas. Quickly, get in!", 2)
		AI:Say("Be wary of the Flame Walkers. They're immune to fire attacks!")
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
	
	if a == 1*2 then
		Spawn(nAI,1,15)
		Spawn(nAI,4,5)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:Say("The Erthas do not seem to be weakening. I will call upon Odin's Wrath to aid you!")
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
		
	if a == 2*2 then
		Spawn(nAI,1,10)
		Spawn(nAI,4,10)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
		
	if a == 3*2 then
		Spawn(nAI,1,20)
		Spawn(nAI,4,5)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
		
	if a == 4*2 then
		Spawn(nAI,1,15)
		Spawn(nAI,4,9)
		Spawn(nAI,11,1)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:Say("Odin is responding to my call!")
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
		
	if a == 5*2 then
		Spawn(nAI,1,25)
		Spawn(nAI,4,5)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
		
	if a == 6*2 then
		Spawn(nAI,1,20)
		Spawn(nAI,4,9)
		Spawn(nAI,11,1)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
		
	if a == 7*2 then
		Spawn(nAI,1,30)
		Spawn(nAI,4,5)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
		
	if a == 8*2 then
		Spawn(nAI,1,25)
		Spawn(nAI,4,9)
		Spawn(nAI,11,1)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:Say("Odin's Wrath is near!")
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
			
	if a == 9*2 then
		Spawn(nAI,1,40)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
			
	if a == 10*2 then
		Spawn(nAI,1,48)
		Spawn(nAI,11,2)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
		AI:SummonMonsterByPos(55514, 72,70)
		AI:Say("Come to the middle! Odin's Wrath will destroy the Erthas!")
	end
	
	if a == 11*2 then
		Spawn(nAI,1,53)
		Spawn(nAI,11,2)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
		AI:SummonMonsterByPos(55514, 64,70)
		AI:SummonMonsterByPos(55514, 81,70)
		AI:SummonMonsterByPos(55514, 72,62)
		AI:SummonMonsterByPos(55514, 72,78)
		AI:Say("Odin's Wrath grows ever stronger!")
	end
	
	if a == 12*2 then
		Spawn(nAI,1,62)
		Spawn(nAI,11,3)
		AI:ScreenText("The Erthas have launched the final wave!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
		AI:SummonMonsterByPos(55514, 75,85)
		AI:SummonMonsterByPos(55514, 70,85)
		AI:SummonMonsterByPos(55514, 57,72)
		AI:SummonMonsterByPos(55514, 57,67)
		AI:SummonMonsterByPos(55514, 70,55)
		AI:SummonMonsterByPos(55514, 75,55)
		AI:SummonMonsterByPos(55514, 88,67)
		AI:SummonMonsterByPos(55514, 88,72)
		AI:Say("Erthas, witness the chaos of Odin's wrath!")
	end
		
	if a == 16*2 then
		mapid = AI:GetMapID()
		AI:SetEctypeVarShort(mapid, 3, 1)
		AI:SetEctypeVarShort(mapid, 4, 1)
		AI:Exit()
	end
	
end
	
function Spawn(nAI, Gnum, Bnum)
	local AI = GetMonsterAI(nAI)
	local b = 0
	while b<Bnum do
		local x = AI:GetRand(48)
		local y = AI:GetRand(48)
		AI:SummonMonsterByPos(Gnum+55501, x+47, y+47)
		b = b+1
	end
	
end