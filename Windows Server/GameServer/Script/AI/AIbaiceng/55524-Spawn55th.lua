	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/22
	--		Author:???
	--		Class:	55524-Spawn55th.Lua
	--		AIName:.lua
	--		Remark:55?????
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
		AI:Say("Be wary of the Blinded Maidens. They're harmless until you attack them, but will cause nightmares.")
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
	
	if a == 1*2 then
		Spawn(nAI,1,30)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:Say("The Erthas do not seem to be weakening. I will call upon Odin's Wrath to aid you!")
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
		
	if a == 2*2 then
		Spawn(nAI,1,25)
		Spawn(nAI,4,2)
		Spawn(nAI,5,1)
		Spawn(nAI,7,1)
		Spawn(nAI,10,1)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
		
	if a == 3*2 then
		Spawn(nAI,1,20)
		Spawn(nAI,4,5)
		Spawn(nAI,5,2)
		Spawn(nAI,7,2)
		Spawn(nAI,10,1)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
		
	if a == 4*2 then
		Spawn(nAI,1,35)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
		
	if a == 5*2 then
		Spawn(nAI,1,30)
		Spawn(nAI,4,2)
		Spawn(nAI,5,1)
		Spawn(nAI,7,1)
		Spawn(nAI,10,1)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
		
	if a == 6*2 then
		Spawn(nAI,1,25)
		Spawn(nAI,4,4)
		Spawn(nAI,5,2)
		Spawn(nAI,7,2)
		Spawn(nAI,10,1)
		Spawn(nAI,11,1)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:Say("Odin is responding to my call!")
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
		
	if a == 7*2 then
		Spawn(nAI,1,40)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
		
	if a == 8*2 then
		Spawn(nAI,1,35)
		Spawn(nAI,4,1)
		Spawn(nAI,5,1)
		Spawn(nAI,7,1)
		Spawn(nAI,8,1)
		Spawn(nAI,10,1)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
		
	if a == 9*2 then
		Spawn(nAI,1,30)
		Spawn(nAI,4,3)
		Spawn(nAI,5,1)
		Spawn(nAI,7,2)
		Spawn(nAI,8,2)
		Spawn(nAI,10,1)
		Spawn(nAI,11,1)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
		
	if a == 10*2 then
		Spawn(nAI,1,45)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
		
	if a == 11*2 then
		Spawn(nAI,1,40)
		Spawn(nAI,4,1)
		Spawn(nAI,5,1)
		Spawn(nAI,7,1)
		Spawn(nAI,8,1)
		Spawn(nAI,10,1)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
		
	if a == 12*2 then
		Spawn(nAI,1,35)
		Spawn(nAI,4,2)
		Spawn(nAI,5,2)
		Spawn(nAI,7,2)
		Spawn(nAI,8,2)
		Spawn(nAI,10,1)
		Spawn(nAI,11,1)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:Say("Odin's Wrath is near!")
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
			
	if a == 13*2 then
		Spawn(nAI,1,50)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
			
	if a == 14*2 then
		Spawn(nAI,1,45)
		Spawn(nAI,5,1)
		Spawn(nAI,7,1)
		Spawn(nAI,8,2)
		Spawn(nAI,10,1)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
			
	if a == 15*2 then
		Spawn(nAI,1,40)
		Spawn(nAI,5,5)
		Spawn(nAI,7,3)
		Spawn(nAI,11,2)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
	
	if a == 16*2 then
		Spawn(nAI,1,65)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
		AI:SummonMonsterByPos(55514, 153,156)
		AI:Say("Come to the middle! Odin's Wrath will destroy the Erthas!")
	end
	
	if a == 17*2 then
		Spawn(nAI,1,60)
		Spawn(nAI,5,3)
		Spawn(nAI,11,2)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
		AI:SummonMonsterByPos(55514, 158,156)
		AI:SummonMonsterByPos(55514, 153,151)
		AI:SummonMonsterByPos(55514, 148,156)
		AI:SummonMonsterByPos(55514, 153,161)
		AI:Say("Odin's Wrath grows ever stronger!")
	end
	
	if a == 18*2 then
		Spawn(nAI,1,65)
		Spawn(nAI,5,5)
		Spawn(nAI,7,2)
		Spawn(nAI,11,3)
		AI:ScreenText("The Erthas have launched the final wave!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
		AI:SummonMonsterByPos(55514, 156,163)
		AI:SummonMonsterByPos(55514, 150,163)
		AI:SummonMonsterByPos(55514, 150,168)
		AI:SummonMonsterByPos(55514, 156,148)
		AI:SummonMonsterByPos(55514, 161,152)
		AI:SummonMonsterByPos(55514, 161,159)
		AI:SummonMonsterByPos(55514, 145,159)
		AI:SummonMonsterByPos(55514, 145,152)
		AI:Say("Erthas, witness the chaos of Odin's wrath!")
	end
		
	if a == 22*2 then
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
		local x = AI:GetRand(58)
		local y = AI:GetRand(60)
		AI:SummonMonsterByPos(Gnum+55501, x+122, y+125)
		b = b+1
	end
	
end