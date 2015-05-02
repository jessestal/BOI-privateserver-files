	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/24
	--		Author:张文宇
	--		Class:.Lua
	--		AIName:55511-nvwu.lua
	--		Remark:5层女巫
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--释放技能女巫咆哮
		AI:AddSkill(2230, 1)
		AI:UseSkill(2230, 1)
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	
	if a == 0 then
		HP = AI:GetHP()
		HPMAX = AI:GetHPMax()
		if HP < HPMAX then
			AI:AddSkill(2230, 1)
			AI:UseSkill(2230, 1)
			AI:SetArray(0,1)
			AI:SetTimer(0,4000,65535)
		end
	end
	
	mapid = AI:GetMapID()
	Dead1 = AI:GetEctypeVarShort(mapid,3)
	Dead2 = AI:GetEctypeVarShort(mapid,4)
	if Dead1 == 1 and Dead2 ==1 then
		AI:Exit()
	end
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
	
	R = AI:GetRand(99)
	n = AI:GetPosX()
	m = AI:GetPosY()
	if R <= 4 then
		AI:SummonMonsterByPos(55515, n, m)
	end
	
end