	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/8/12
	--		Author:???
	--		Class:	.Lua
	--		AIName:xiaobaihu.lua
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
		AI:AddSeekPos( -1 , 223 , 101 )
	end
	if aim == 2 then
		AI:AddSeekPos( -1 , 181 , 122 )
	end
	if aim == 3 then
		AI:AddSeekPos( -1 , 222 , 152 )
	end
	if aim == 4 then
		AI:AddSeekPos( -1 , 195 , 190 )
	end
	if aim == 5 then
		AI:AddSeekPos( -1 , 216 , 229 )
	end
	if aim == 6 then
		AI:AddSeekPos( -1 , 167 , 202 )
	end
	if aim == 7 then
		AI:AddSeekPos( -1 , 124 , 218 )
	end
	if aim == 8 then
		AI:AddSeekPos( -1 , 104 , 157 )
	end
	if aim == 9 then
		AI:AddSeekPos( -1 , 119 , 112 )
	end
	if aim == 10 then
		AI:AddSeekPos( -1 , 197 , 76 )
	end
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
	
	AI:Say("Aaaughh... you cruel, cruel mortals!...")
	AI:SetArray(0,0)
	AI:DelTimer(0)
	
end