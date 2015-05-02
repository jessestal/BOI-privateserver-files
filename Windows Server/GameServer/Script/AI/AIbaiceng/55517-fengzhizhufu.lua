	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/23
	--		Author:???
	--		Class:.Lua
	--		AIName:55517-fengzhizhufu.lua
	--		Remark:30???2
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		AI:Say("Reincarnation!")
		AI:ScreenText("Reincarnation!",2)
		mapid = AI:GetMapID()
		x1 = AI:GetEctypeVarShort(mapid , 91)
		y1 = AI:GetEctypeVarShort(mapid , 92)
		AI:SummonMonsterByPos(55314, x1, y1)
		AI:SetEctypeVarShort(mapid, 97, 2)
		x2 = AI:GetEctypeVarShort(mapid , 93)
		y2 = AI:GetEctypeVarShort(mapid , 94)
		AI:SummonMonsterByPos(55315, x2, y2)
		AI:SetEctypeVarShort(mapid, 98, 2)
		x3 = AI:GetEctypeVarShort(mapid , 95)
		y3 = AI:GetEctypeVarShort(mapid , 96)
		AI:SummonMonsterByPos(55316, x3, y3)
		AI:SetEctypeVarShort(mapid, 99, 2)
		AI:SummonMonsterByPos(55516, 149, 157)
		AI:Exit()
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	b = AI:GetArray(0)
	
	if b == 0 then
		AI:SetTimer(0,90000,1)
		AI:SetArray(0,1)
	end
	
end