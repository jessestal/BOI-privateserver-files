	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/14
	--		Author:张文宇
	--		Class:	.Lua
	--		AIName:55335-lightingmark.lua
	--		Remark:闪电标记
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--召唤闪电
		x = AI:GetPosX()
		y = AI:GetPosY()
		AI:SummonMonsterByPos(55336,x,y)
	end
	
	if nIndex == 1 then
		--消失
		AI:Exit()
	end
	
	if nIndex == 2 then
		--蛇状闪电
		x = AI:GetPosX()
		y = AI:GetPosY()
		r1 = AI:GetRand(2)
		r2 = AI:GetRand(2)
		r1 = (r1-1)*2
		r2 = (r2-1)*2
		AI:SummonMonsterByPos(55335,x+r1,y+r2)
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	mapid = AI:GetMapID()
	
	if a == 0 then
		AI:SetTimer(0,3000,1)
		AI:SetTimer(1,4500,1)
		AI:SetArray(0 ,1)
		snake = AI:GetEctypeVarShort(mapid,94)
		if snake == 1 then
			AI:SetTimer(2,1000,1)
		end
	end
	
	dead1 = AI:GetEctypeVarShort(mapid,3)
	dead2 = AI:GetEctypeVarShort(mapid,4)
	if dead1 == 1 and dead2 == 1 then
		AI:Exit()
	end
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
	
end