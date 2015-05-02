	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/11/14
	--		Author:ÕÅÎÄÓî
	--		Class:	.Lua
	--		AIName:55384-huoyanxianjing.lua
	--		Remark:100-»ðÑæÏÝÚå¹Ö
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--ÁÒÈÕÖ®Ñ×
		AI:AddSkill(2471, 1)
		AI:UseSkill(2471, 1)
		b = AI:GetArray(1)
		AI:SetArray(1,b+1)
	end
	
	if nIndex == 1 then
		--½¥±ä
		mapid = AI:GetMapID()
		zisha = AI:GetEctypeVarShort(mapid,99)
		if zisha == 1 then
			AI:Exit()
		end
		b = AI:GetArray(1)
		if b >= 20 then
			mapid = AI:GetMapID()
			xianjing = AI:GetEctypeVarInteger(mapid,119)
			if xianjing < 100 then
				radlimit = 35
			elseif xianjing < 200 then
				radlimit = 30
			elseif xianjing < 300 then
				radlimit = 25
			elseif xianjing < 400 then
				radlimit = 20
			elseif xianjing < 500 then
				radlimit = 15
			elseif xianjing < 600 then
				radlimit = 10
			elseif xianjing < 700 then
				radlimit = 7
			elseif xianjing < 800 then
				radlimit = 5
			elseif xianjing < 900 then
				radlimit = 3
			elseif xianjing < 1000 then
				radlimit = 1
			end
			P = AI:GetRand(radlimit)
			if P == 0 then
				AI:SetTimer(0,500,20)
				AI:SetArray(1,0)
			end
		end
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	
	if a == 0 then
		AI:SetTimer(1,1000,65535)
		AI:SetArray(0,1)
	end
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
	
	AI:DelTimer(0)
	AI:DelTimer(1)
	AI:SetArray(0,0)
	AI:SetArray(1,0)
	
end