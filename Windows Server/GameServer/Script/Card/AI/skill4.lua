	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/8/12
	--		Author:张文宇
	--		Class:	.Lua
	--		AIName:skill4.lua
	--		Remark:四圣兽卡牌技能
	----------------------------------------------------
	
function Event_OnTimer(nAI, nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		AI:AddSkill(2205, 2)
		AI:UseSkill(2205, 2)
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	
	if a == 0 then
		AI:AddSkill(2205, 1)
		AI:UseSkill(2205, 1)
		AI:ChangeFaction(9)
		AI:SetTimer(0,2000,1)
		AI:SetArray(0,1)
	end
	
end
	
function Event_ReadSeekPos(nAI)			
	local AI = GetMonsterAI(nAI)		
	
	px = AI:GetRand(327)
	py = AI:GetRand(327)
	
	AI:AddSeekPos( -1 , px , py )
	
end