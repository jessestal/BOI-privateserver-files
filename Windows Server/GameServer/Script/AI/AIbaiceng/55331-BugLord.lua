	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/03/14
	--		Author:???
	--		Class:	.Lua
	--		AIName:55331-BugLord.lua
	--		Remark:????-???
	----------------------------------------------------
	
	--????99:????
	--????98:????
	--????97,96:Boss??
	--????95:???Buff??
	--????94:??????
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--????????
		AI:Say("Ice Piercing!")
		AI:UseSkill(2291, 1)	
	end
	
	if nIndex == 1 then
		--????????
		AI:Say("Frozen Storm!")
		AI:UseSkill(2292, 1)
		AI:UseSkill(2277, 4)
	end
	
	if nIndex == 2 then
		--?60???
		AI:Say("Pledge your fealty! Followers, fight for your lord!")
		AI:SummonMonster(55337,2)
		AI:SummonMonster(55338,1)
		AI:SummonMonster(55339,1)
		mapid = AI:GetMapID()
		AI:SetEctypeVarShort(mapid,98,1)
		HP = AI:GetHP()
		HPMAX = AI:GetHPMax()
		if HP <= HPMAX*0.75 and HP > HPMAX*0.5 then
			AI:SetEctypeVarShort(mapid,95,1)
		end
		if HP <= HPMAX*0.5 and HP > HPMAX*0.25 then
			AI:SetEctypeVarShort(mapid,95,2)
		end
		if HP <= HPMAX*0.25 then
			AI:SetEctypeVarShort(mapid,95,3)
		end
		AI:SetEctypeVarInteger(mapid,110,HP)
		AI:SetArray(0, 0)
		AI:Exit()
	end
	
	if nIndex == 3 then
		--????
		Ttyp = AI:GetTargetCharType()
		if Ttyp == 2 then
			HPMAX = AI:GetHPMax()
			SavedPid = AI:GetArray(11)
			AI:AddCharToEnmityList(SavedPid, HPMAX/3)
			petcheat = AI:GetArray(12)
			petcheat = petcheat + 1
			AI:SetArray(12 ,petcheat)
			if petcheat >= 4 then
				AI:RestoreHPInstant(HPMAX)
				AI:Say("Hahaha! Run, you coward! I'm invincible!")
				AI:ScreenText("Hahaha! Run, you coward! I'm invincible!", 2)
			end
		end
		if Ttyp == 1 then
			petcheat = AI:GetArray(12)
			petcheat = petcheat - 1
			AI:SetArray(12 ,petcheat)
			if petcheat < 0 then
				AI:SetArray(12 ,0)
			end
		end
	end
	
	if nIndex == 4 then
		--??????
		AI:Say("Pledge your fealty! Followers, fight for your lord!")
		AI:SummonMonster(55337,1)
		AI:SummonMonster(55338,1)
		AI:SummonMonster(55339,1)
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	mapid = AI:GetMapID()
	kuangbaolv = AI:GetEctypeVarShort(mapid,99)
	
	if a == 0 then
		isalive = AI:GetEctypeVarShort(mapid,98)
		if isalive == 0 then
			AI:Say("Pitiful creature, you dare try and face me?")
			AI:ScreenText("Pitiful creature, you dare try and face me?", 2)
		elseif  isalive == 3 then
			AI:SetEctypeVarShort(mapid,98,0)
			HP = AI:GetHP()
			Memory = AI:GetEctypeVarInteger(mapid,110)
			if HP > Memory then
				AI:LoseHPInstant( HP - Memory )
			end
		end
		AI:PlayAction("Common\\guangquan3\\tx_guangquan3_1_Extened.ini", 1, 1)
		AI:AddSkill(2291, 1)
		AI:SetTimer(0,14000,65535)
		AI:AddSkill(2292, 1)
		AI:UseSkill(2292, 1)
		AI:AddSkill(2277, 4)
		AI:SetTimer(1,19000,65535)
		--??????Buff
		Bufflv = AI:GetEctypeVarShort(mapid,95)
		if Bufflv == 2 then
			AI:Say("Not all insects are easy to squash. You are an exception to that.")
			AI:ScreenText("Not all insects are easy to squash. You are an exception to that.", 2)
			AI:AddSkill(2297, 1)
			AI:UseSkill(2297, 1)
		end
		if Bufflv == 3 then
			AI:Say("You anger me! I will show you my true form!")
			AI:ScreenText("You anger me! I will show you my true form!", 2)
			AI:AddSkill(2298, 1)
			AI:UseSkill(2298, 1)
			AI:SetTimer(4,30000,65535)
		else
			AI:SetTimer(2,60000,1)
		end
		AI:SetTimer(3,10000,65535)
		AI:SetArray(0 ,1)
	end
		
	if a == 1 and kuangbaolv == 1 then
		AI:AddSkill(2278,1)
		AI:UseSkill(2278,1)
		AI:SetArray(0 ,2)
	end
		
	if a == 2 and kuangbaolv == 2 then
		AI:AddSkill(2278,2)
		AI:UseSkill(2278,2)
		AI:SetArray(0 ,3)
	end
		
	if a == 3 and kuangbaolv == 3 then
		AI:AddSkill(2278,3)
		AI:UseSkill(2278,3)
		AI:SetArray(0 ,4)
	end
	
		
	if a == 4 and kuangbaolv == 4 then
		AI:AddSkill(2278,4)
		AI:UseSkill(2278,4)
		AI:SetArray(0 ,5)
	end
	
		
	if a == 5 and kuangbaolv == 5 then
		AI:AddSkill(2278,5)
		AI:UseSkill(2278,5)
		AI:SetArray(0 ,6)
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
	
	x = AI:GetPosX()
	y = AI:GetPosY()
	AI:SetEctypeVarShort(mapid,96,x)
	AI:SetEctypeVarShort(mapid,97,y)
	
end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
	
	AI:Say("The insects will avenge me...")
	AI:DelTimer(0)
	AI:DelTimer(1)
	AI:DelTimer(2)
	AI:DelTimer(3)
	AI:DelTimer(4)
	AI:SetArray(0, 0)
	
end