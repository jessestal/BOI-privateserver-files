	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/14
	--		Author:???
	--		Class:	.Lua
	--		AIName:55339-caixiayichong.lua
	--		Remark:????
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		AI:UseSkill(2296, 1)
		AI:Say("Let me taint your blood. Just for a second?")
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
	
	a = AI:GetArray(0)
	mapid = AI:GetMapID()
	
	if a == 0 then
		AI:AddSkill(2296, 1)
		AI:SetTimer(0,29000,65535)
		AI:SetTimer(1,35000,65535)
		AI:SetArray(0 ,1)
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
	
	AI:Say("Could I have one last drop of blood?")
	AI:DelTimer(0)
	AI:SetArray(0, 0)
	
end