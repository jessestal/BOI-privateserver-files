	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/8/12
	--		Author:???
	--		Class:	.Lua
	--		AIName:xiaozhuque.lua
	--		Remark:??????
	----------------------------------------------------
	
function Event_OnTimer(nAI, nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		AI:Say("Oh no, the shield's gone! Quick prawns, run!")
		AI:AddSkill(2205, 2)
		AI:UseSkill(2205, 2)
		AI:ChangeFaction(1)
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	
	if a == 0 then
		AI:Say("Run away, run for your lives! They've come back!")
		AI:AddSkill(2205, 1)
		AI:UseSkill(2205, 1)
		AI:ChangeFaction(9)
		AI:SetTimer(0,100000,1)
		AI:SetArray(0,1)
	end
	
end
	
function Event_ReadSeekPos(nAI)			
	local AI = GetMonsterAI(nAI)		
	
	aim = AI:GetRand(10)
	if aim == 1 then
		AI:AddSeekPos( -1 , 81 , 261 )
	end
	if aim == 2 then
		AI:AddSeekPos( -1 , 144 , 250 )
	end
	if aim == 3 then
		AI:AddSeekPos( -1 , 183 , 245 )
	end
	if aim == 4 then
		AI:AddSeekPos( -1 , 236 , 233 )
	end
	if aim == 5 then
		AI:AddSeekPos( -1 , 235 , 171 )
	end
	if aim == 6 then
		AI:AddSeekPos( -1 , 218 , 108 )
	end
	if aim == 7 then
		AI:AddSeekPos( -1 , 83 , 58 )
	end
	if aim == 8 then
		AI:AddSeekPos( -1 , 72 , 152 )
	end
	if aim == 9 then
		AI:AddSeekPos( -1 , 172 , 187 )
	end
	if aim == 10 then
		AI:AddSeekPos( -1 , 157 , 112 )
	end
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
	
	AI:Say("Aaaughh... you cruel, cruel mortals!...")
	AI:SetArray(0,0)
	AI:DelTimer(0)
	
end