	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/11/14
	--		Author:张文宇
	--		Class:	.Lua
	--		AIName:55382-yanjiang.lua
	--		Remark:100-岩浆怪
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--烈日之炎
		AI:AddSkill(2471, 1)
		AI:UseSkill(2471, 1)
		mapid = AI:GetMapID()
		zisha = AI:GetEctypeVarShort(mapid,99)
		if zisha == 1 then
			AI:Exit()
		end
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	
	if a == 0 then
		AI:SetTimer(0,500,65535)
		AI:SetArray(0,1)
	end
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
	
	AI:DelTimer(0)
	AI:SetArray(0, 0)
	
end