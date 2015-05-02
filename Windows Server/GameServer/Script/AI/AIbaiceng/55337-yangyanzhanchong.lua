	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/11/14
	--		Author:???
	--		Class:	.Lua
	--		AIName:55337-yangyanzhanchong.lua
	--		Remark:????
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		AI:PlayAction("skill\\Monster\\yuansuhuan\\fire\\huohuan\\tx_huohuan_fire.ini",1,1)
		AI:AddSkill(2295, 1)
		AI:UseSkill(2295, 1)
		AI:Say("You cannot kill an immortal.")
		AI:SetTimer(2,200,1)
	end
	
	if nIndex == 1 then
		b = AI:GetArray(1)
		AI:Say( tostring(3-b).."!")
		AI:SetArray(1,b+1)
		if b == 4 then
			AI:SetTimer(0,1000,1)
		end
	end
	
	if nIndex == 2 then
		AI:Exit()
	end
	
	if nIndex == 3 then
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
	mapid = AI:GetMapID()
	
	if a == 0 then
		AI:SetTimer(3,35000,65535)
		AI:SetArray(0 ,1)
	end
	
	if a == 1 then
		if HP < HPMAX * 0.3 then
			AI:SetTimer(1,1000,3)
			AI:SetArray(0 ,2)
		end
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
	
	AI:Say("No.I have failed.")
	AI:DelTimer(0)
	AI:DelTimer(1)
	AI:DelTimer(2)
	AI:SetArray(0, 0)
	AI:SetArray(1, 0)
	
end