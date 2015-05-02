	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/14
	--		Author:???
	--		Class:	.Lua
	--		AIName:55357-cankutianshi.lua
	--		Remark:????
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--????????
		r = AI:GetRand(50)
		if  r == 0 then
			AI:Say("The Angels of Virtue will punish your sins!")
			AI:UseSkill(2201, 1)
		end
	end
	
	if nIndex == 1 then
		--????
		Ttyp = AI:GetTargetCharType()
		Tid = AI:GetTargetID()
		Peid = AI:GetPlayerIDByIndex(0)
		if Ttyp == 2 and Peid == Tid then
			HPMAX = AI:GetHPMax()
			SavedPid = AI:GetArray(11)
			AI:AddCharToEnmityList(SavedPid, HPMAX/3)
		end
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	HP = AI:GetHP()
	HPMAX = AI:GetHPMax()
	a = AI:GetArray(0)
	
	if a == 0 then
		mapid = AI:GetMapID()
		renshu = AI:GetEctypeVarShort(mapid, 95)
		AI:SetEctypeVarShort(mapid, 95,renshu + 1)
		AI:PlayAction("specialidle", 1, 0)
		AI:PlayAction("skill\\Common\\fuhuo\\fire\\tx_common_fuhuo_fire.ini", 1, 1)
		AI:AddSkill(2201, 1)
		AI:SetTimer(0,3000,65535)
		AI:SetTimer(1,35000,65535)
		AI:SetArray(0,1)
	end
	
	dead1 = AI:GetEctypeVarShort(mapid,3)
	dead2 = AI:GetEctypeVarShort(mapid,4)
	if dead1 == 1 and dead2 == 1 then
		AI:Exit()
	end
	
	SavedPid = AI:GetArray(11)
	if  SavedPid == 0 then
		AI:GetRandTarget()
		isPornot = AI:GetTargetCharType()
		if isPornot == 1 then
			Targetpid = AI:GetTargetID()
			AI:SetArray(11,Targetpid)
		end
	end
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
	
	mapid = AI:GetMapID()
	renshu = AI:GetEctypeVarShort(mapid, 95)
	AI:SetEctypeVarShort(mapid, 95,renshu - 1)
	AI:SetArray(0,0)
	AI:DelTimer(0)
	
end