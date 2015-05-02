	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/10
	--		Author:张文宇
	--		Class:	.Lua
	--		AIName:55317-IceAndFire.lua
	--		Remark:冰火(冰火法皇的冰魔法)
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--释放冰魔法
		AI:AddSkill(2204, 1)
		AI:UseSkill(2204, 1)
	end
	
	if nIndex == 1 then
		--自杀
		AI:Exit()
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	if a == 0 then
		AI:AddSkill(2204, 1)
		AI:UseSkill(2204, 1)
		AI:SetTimer(0,1000,3)
		AI:SetTimer(1,3500,1)
		AI:SetArray(0,1)
	end
	
end