	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/22
	--		Author:???
	--		Class:	55520-Spawn15th.Lua
	--		AIName:.lua
	--		Remark:15?????
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
		AI:Say("Be wary of the Darkshade Assassins. They're quick and can stun you!")
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
	
	if a == 1*2 then
		Spawn(nAI,1,15)
		Spawn(nAI,4,3)
		Spawn(nAI,5,2)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:Say("The Erthas do not seem to be weakening. I will call upon Odin's Wrath to aid you!")
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
		
	if a == 2*2 then
		Spawn(nAI,1,10)
		Spawn(nAI,4,7)
		Spawn(nAI,5,3)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
		
	if a == 3*2 then
		Spawn(nAI,1,20)
		Spawn(nAI,4,3)
		Spawn(nAI,5,2)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
		
	if a == 4*2 then
		Spawn(nAI,1,15)
		Spawn(nAI,4,6)
		Spawn(nAI,5,3)
		Spawn(nAI,11,1)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:Say("Odin is responding to my call!")
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
		
	if a == 5*2 then
		Spawn(nAI,1,25)
		Spawn(nAI,4,2)
		Spawn(nAI,5,3)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
		
	if a == 6*2 then
		Spawn(nAI,1,20)
		Spawn(nAI,4,6)
		Spawn(nAI,5,3)
		Spawn(nAI,11,1)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
		
	if a == 7*2 then
		Spawn(nAI,1,30)
		Spawn(nAI,4,2)
		Spawn(nAI,5,3)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
		
	if a == 8*2 then
		Spawn(nAI,1,25)
		Spawn(nAI,4,5)
		Spawn(nAI,5,4)
		Spawn(nAI,11,1)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:Say("Odin's Wrath is near!")
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
			
	if a == 9*2 then
		Spawn(nAI,1,35)
		Spawn(nAI,5,5)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
			
	if a == 10*2 then
		Spawn(nAI,1,30)
		Spawn(nAI,5,10)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
	end
	
	if a == 11*2 then
		Spawn(nAI,1,55)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
		AI:SummonMonsterByPos(55514, 153,193)
		AI:Say("Come to the middle! Odin's Wrath will destroy the Erthas!")
	end
	
	if a == 12*2 then
		Spawn(nAI,1,50)
		Spawn(nAI,5,3)
		Spawn(nAI,11,2)
		AI:ScreenText("The Erthas have launched wave " .. a/2 .. " of the invasion!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
		AI:SummonMonsterByPos(55514, 153,184)
		AI:SummonMonsterByPos(55514, 153,202)
		AI:SummonMonsterByPos(55514, 163,193)
		AI:SummonMonsterByPos(55514, 143,193)
		AI:Say("Odin's Wrath grows ever stronger!")
	end
	
	if a == 13*2 then
		Spawn(nAI,1,55)
		Spawn(nAI,5,8)
		Spawn(nAI,11,3)
		AI:ScreenText("The Erthas have launched the final wave!", 2)
		AI:SetEctypeVarShort(mapid, 99, a+1)
		AI:SummonMonsterByPos(55514, 171,189)
		AI:SummonMonsterByPos(55514, 171,199)
		AI:SummonMonsterByPos(55514, 159,209)
		AI:SummonMonsterByPos(55514, 146,209)
		AI:SummonMonsterByPos(55514, 134,197)
		AI:SummonMonsterByPos(55514, 134,187)
		AI:SummonMonsterByPos(55514, 145,175)
		AI:SummonMonsterByPos(55514, 158,175)
		AI:Say("Erthas, witness the chaos of Odin's wrath!")
	end
		
	if a == 17*2 then
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
		local x = AI:GetRand(46)
		local y = AI:GetRand(42)
		AI:SummonMonsterByPos(Gnum+55501, x+130, y+175)
		b = b+1
	end
	
end