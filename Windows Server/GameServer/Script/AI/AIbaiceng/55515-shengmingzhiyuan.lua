	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/23
	--		Author:张文宇
	--		Class:.Lua
	--		AIName:55515-shengmingzhiyuan.lua
	--		Remark:5层生命之源
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		AI:Exit()
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetTargetDistance()
	b = AI:GetArray(0)
	
	if a <= 1 and b == 0 then
		AI:AddSkill(2236, 1)
		AI:UseSkill(2236, 1)
		AI:SetTimer(0,1000,1)
		AI:SetArray(0,1)
	end
	
end