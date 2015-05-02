	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/11/14
	--		Author:???
	--		Class:	.Lua
	--		AIName:GrandTeam.lua
	--		Remark:??????
	----------------------------------------------------
	
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--???
		P = AI:GetRand(3)
		if P == 0 then
			mapid = AI:GetMapID()
			id = AI:GetTargetID()
			Xo = AI:GetPlayerX(id)
			Yo = AI:GetPlayerY(id)
			if mapid <= 21100 then
				AI:SummonMonsterByPos(55288, Xo, Yo)
			elseif mapid > 21100 then
				AI:SummonMonsterByPos(55362, Xo, Yo)
			end
			AI:Say("Reinforcements!")
		end
	end
	
	if nIndex == 1 then
		--????
		P = AI:GetRand(3)
		if P == 0 then
			AI:AddSkill(2416, 1)
			AI:UseSkill(2416, 1)
			AI:Say("Invincible Bastion!")
		end
	end
	
	if nIndex == 2 then
		--???
		P = AI:GetRand(3)
		if P == 0 then
			AI:AddSkill(2417, 1)
			AI:UseSkill(2417, 1)
			AI:Say("Web Shroud!")
		end
	end
	
	if nIndex == 3 then
		--??
		P = AI:GetRand(3)
		if P == 0 then
			AI:AddSkill(2418, 1)
			AI:UseSkill(2418, 1)
			AI:Say("Incarceration!")
		end
	end
	
	if nIndex == 4 then
		--????
		P = AI:GetRand(3)
		if P == 0 then
			AI:AddSkill(2419, 1)
			AI:UseSkill(2419, 1)
			AI:Say("Arcane Missiles!")
		end
	end
	
	if nIndex == 5 then
		--????
		P = AI:GetRand(3)
		if P == 0 then
			AI:AddSkill(2420, 1)
			AI:UseSkill(2420, 1)
			AI:Say("War Stomp!")
		end
	end
	
	if nIndex == 6 then
		--??
		P = AI:GetRand(3)
		if P == 0 then
			AI:AddSkill(2421, 1)
			AI:UseSkill(2421, 1)
			AI:Say("Spell Curse!")
		end
	end
	
	if nIndex == 7 then
		--?????
		P = AI:GetRand(3)
		if P == 0 then
			AI:AddSkill(2432, 1)
			AI:UseSkill(2432, 1)
			AI:AddSkill(2433, 1)
			AI:UseSkill(2433, 1)
			AI:Say("Kiss of Dracula!")
		end
	end
	
	if nIndex == 8 then
		--????
		P = AI:GetRand(3)
		if P == 0 then
			id = AI:GetTargetID()
			Xo = AI:GetPlayerX(id)
			Yo = AI:GetPlayerY(id)
			Xi = AI:GetPosX()
			Yi = AI:GetPosY()
			ARad = math.atan2(Yo-Yi,Xo-Xi)
			i = 0
			while i < 10 do
				x0 = math.cos(ARad)
				y0 = math.sin(ARad)
				x1 = math.cos(ARad+0.35)
				y1 = math.sin(ARad+0.35)
				x2 = math.cos(ARad-0.35)
				y2 = math.sin(ARad-0.35)
				AI:SummonMonsterByPos(55412, Xi + 2*i*x0, Yi + 2*i*y0)
				AI:SummonMonsterByPos(55412, Xi + 2*i*x1, Yi + 2*i*y1)
				AI:SummonMonsterByPos(55412, Xi + 2*i*x2, Yi + 2*i*y2)
				i = i + 1
			end
		end
	end
	
	if nIndex == 9 then
		--????
		P = AI:GetRand(3)
		if P == 0 then
			id = AI:GetTargetID()
			Xo = AI:GetPlayerX(id)
			Yo = AI:GetPlayerY(id)
			AI:SummonMonsterByPos(55413, Xo, Yo)
			AI:Say("Ghost Area!")
		end
	end
	
	if nIndex == 10 then
		--???
		P = AI:GetRand(3)
		if P == 0 then
			AI:AddSkill(2427, 1)
			AI:UseSkill(2427, 1)
			AI:Say("Black Death!")
		end
	end
	
	if nIndex == 11 then
		--???
		P = AI:GetRand(3)
		if P == 0 then
			Xi = AI:GetPosX()
			Yi = AI:GetPosY()
			mapid = AI:GetMapID()
			if mapid > 15100 and mapid <= 16100	then 
				AI:SummonLevelMonsterByPos(55287,91,128, Xi, Yi)     
				AI:SummonLevelMonsterByPos(55287,91,128, Xi+1, Yi+1) 
				AI:SummonLevelMonsterByPos(55287,91,128, Xi+1, Yi)   
				AI:SummonLevelMonsterByPos(55287,91,128, Xi+1, Yi-1) 
				AI:SummonLevelMonsterByPos(55287,91,128, Xi, Yi+1)   
				AI:SummonLevelMonsterByPos(55287,91,128, Xi, Yi)     
				AI:SummonLevelMonsterByPos(55287,91,128, Xi, Yi-1)   
				AI:SummonLevelMonsterByPos(55287,91,128, Xi-1, Yi+1) 
				AI:SummonLevelMonsterByPos(55287,91,128, Xi-1, Yi)   
				AI:SummonLevelMonsterByPos(55287,91,128, Xi-1, Yi-1)
			elseif mapid > 16100 and mapid <= 17100	then 
				AI:SummonLevelMonsterByPos(55287,92,128, Xi, Yi)     
				AI:SummonLevelMonsterByPos(55287,92,128, Xi+1, Yi+1) 
				AI:SummonLevelMonsterByPos(55287,92,128, Xi+1, Yi)   
				AI:SummonLevelMonsterByPos(55287,92,128, Xi+1, Yi-1) 
				AI:SummonLevelMonsterByPos(55287,92,128, Xi, Yi+1)   
				AI:SummonLevelMonsterByPos(55287,92,128, Xi, Yi)     
				AI:SummonLevelMonsterByPos(55287,92,128, Xi, Yi-1)   
				AI:SummonLevelMonsterByPos(55287,92,128, Xi-1, Yi+1) 
				AI:SummonLevelMonsterByPos(55287,92,128, Xi-1, Yi)   
				AI:SummonLevelMonsterByPos(55287,92,128, Xi-1, Yi-1)
			elseif mapid > 17100 and mapid <= 18100	then 
				AI:SummonLevelMonsterByPos(55287,93,128, Xi, Yi)     
				AI:SummonLevelMonsterByPos(55287,93,128, Xi+1, Yi+1) 
				AI:SummonLevelMonsterByPos(55287,93,128, Xi+1, Yi)   
				AI:SummonLevelMonsterByPos(55287,93,128, Xi+1, Yi-1) 
				AI:SummonLevelMonsterByPos(55287,93,128, Xi, Yi+1)   
				AI:SummonLevelMonsterByPos(55287,93,128, Xi, Yi)     
				AI:SummonLevelMonsterByPos(55287,93,128, Xi, Yi-1)   
				AI:SummonLevelMonsterByPos(55287,93,128, Xi-1, Yi+1) 
				AI:SummonLevelMonsterByPos(55287,93,128, Xi-1, Yi)   
				AI:SummonLevelMonsterByPos(55287,93,128, Xi-1, Yi-1)
			elseif mapid > 18100 and mapid <= 19100	then 
				AI:SummonLevelMonsterByPos(55287,94,128, Xi, Yi)     
				AI:SummonLevelMonsterByPos(55287,94,128, Xi+1, Yi+1) 
				AI:SummonLevelMonsterByPos(55287,94,128, Xi+1, Yi)   
				AI:SummonLevelMonsterByPos(55287,94,128, Xi+1, Yi-1) 
				AI:SummonLevelMonsterByPos(55287,94,128, Xi, Yi+1)   
				AI:SummonLevelMonsterByPos(55287,94,128, Xi, Yi)     
				AI:SummonLevelMonsterByPos(55287,94,128, Xi, Yi-1)   
				AI:SummonLevelMonsterByPos(55287,94,128, Xi-1, Yi+1) 
				AI:SummonLevelMonsterByPos(55287,94,128, Xi-1, Yi)   
				AI:SummonLevelMonsterByPos(55287,94,128, Xi-1, Yi-1)
			elseif mapid > 19100 and mapid <= 20100	then 
				AI:SummonLevelMonsterByPos(55287,95,128, Xi, Yi)     
				AI:SummonLevelMonsterByPos(55287,95,128, Xi+1, Yi+1) 
				AI:SummonLevelMonsterByPos(55287,95,128, Xi+1, Yi)   
				AI:SummonLevelMonsterByPos(55287,95,128, Xi+1, Yi-1) 
				AI:SummonLevelMonsterByPos(55287,95,128, Xi, Yi+1)   
				AI:SummonLevelMonsterByPos(55287,95,128, Xi, Yi)     
				AI:SummonLevelMonsterByPos(55287,95,128, Xi, Yi-1)   
				AI:SummonLevelMonsterByPos(55287,95,128, Xi-1, Yi+1) 
				AI:SummonLevelMonsterByPos(55287,95,128, Xi-1, Yi)   
				AI:SummonLevelMonsterByPos(55287,95,128, Xi-1, Yi-1)
			elseif mapid > 20100 and mapid <= 21100	then 
				AI:SummonLevelMonsterByPos(55287,96,128, Xi, Yi)     
				AI:SummonLevelMonsterByPos(55287,96,128, Xi+1, Yi+1) 
				AI:SummonLevelMonsterByPos(55287,96,128, Xi+1, Yi)   
				AI:SummonLevelMonsterByPos(55287,96,128, Xi+1, Yi-1) 
				AI:SummonLevelMonsterByPos(55287,96,128, Xi, Yi+1)   
				AI:SummonLevelMonsterByPos(55287,96,128, Xi, Yi)     
				AI:SummonLevelMonsterByPos(55287,96,128, Xi, Yi-1)   
				AI:SummonLevelMonsterByPos(55287,96,128, Xi-1, Yi+1) 
				AI:SummonLevelMonsterByPos(55287,96,128, Xi-1, Yi)   
				AI:SummonLevelMonsterByPos(55287,96,128, Xi-1, Yi-1)
			elseif mapid > 21100 and mapid <= 22100	then 
				AI:SummonLevelMonsterByPos(55361,97,128, Xi, Yi)     
				AI:SummonLevelMonsterByPos(55361,97,128, Xi+1, Yi+1) 
				AI:SummonLevelMonsterByPos(55361,97,128, Xi+1, Yi)   
				AI:SummonLevelMonsterByPos(55361,97,128, Xi+1, Yi-1) 
				AI:SummonLevelMonsterByPos(55361,97,128, Xi, Yi+1)   
				AI:SummonLevelMonsterByPos(55361,97,128, Xi, Yi)     
				AI:SummonLevelMonsterByPos(55361,97,128, Xi, Yi-1)   
				AI:SummonLevelMonsterByPos(55361,97,128, Xi-1, Yi+1) 
				AI:SummonLevelMonsterByPos(55361,97,128, Xi-1, Yi)   
				AI:SummonLevelMonsterByPos(55361,97,128, Xi-1, Yi-1)
			elseif mapid > 22100 and mapid <= 23100	then 
				AI:SummonLevelMonsterByPos(55361,98,128, Xi, Yi)     
				AI:SummonLevelMonsterByPos(55361,98,128, Xi+1, Yi+1) 
				AI:SummonLevelMonsterByPos(55361,98,128, Xi+1, Yi)   
				AI:SummonLevelMonsterByPos(55361,98,128, Xi+1, Yi-1) 
				AI:SummonLevelMonsterByPos(55361,98,128, Xi, Yi+1)   
				AI:SummonLevelMonsterByPos(55361,98,128, Xi, Yi)     
				AI:SummonLevelMonsterByPos(55361,98,128, Xi, Yi-1)   
				AI:SummonLevelMonsterByPos(55361,98,128, Xi-1, Yi+1) 
				AI:SummonLevelMonsterByPos(55361,98,128, Xi-1, Yi)   
				AI:SummonLevelMonsterByPos(55361,98,128, Xi-1, Yi-1)
			end
			AI:Say("Darkness Summon!")
		end
	end
	
	if nIndex == 12 then
		--????
		mw = AI:GetArray(6)
		AI:SetArray(6,mw+1)
		if mw % 2 == 0 then
			AI:AddSkill(2430, 1)
			AI:UseSkill(2430, 1)
		else
			AI:AddSkill(2430, 2)
			AI:UseSkill(2430, 2)
		end
	end
	
	if nIndex == 13 then
		--????
		Ttyp = AI:GetTargetCharType()
		if Ttyp == 2 then
			HPMAX = AI:GetHPMax()
			SavedPid = AI:GetArray(11)
			AI:AddCharToEnmityList(SavedPid, HPMAX/3)
			petcheat = AI:GetArray(12)
			petcheat = petcheat + 1
			AI:SetArray(12 ,petcheat)
			if petcheat >= 5 then
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
	
	if nIndex == 14 then
		--??
		kuangbao = AI:GetArray(10)
		AI:SetArray(10,kuangbao+1)
		AI:AddSkill(2278,kuangbao+1)
		AI:UseSkill(2278,kuangbao+1)
	end
	
	if nIndex == 15 then
		--???
		mapid = AI:GetMapID()
		xingcun = AI:GetEctypeVarShort(mapid,35)
		if xingcun > 0 then
			if xingcun < 7 then
				AI:AddSkill(2305,xingcun)
				AI:AddSkill(2306,xingcun)
				AI:AddSkill(2307,xingcun)
				AI:AddSkill(2308,xingcun)
				AI:AddSkill(2309,xingcun)
				AI:AddSkill(2310,xingcun)
				AI:UseSkill(2305,xingcun)
				AI:UseSkill(2306,xingcun)
				AI:UseSkill(2307,xingcun)
				AI:UseSkill(2308,xingcun)
				AI:UseSkill(2309,xingcun)
				AI:UseSkill(2310,xingcun)
			end
		end
	end
	
	if nIndex == 16 then
		--????
		AI:ScreenText(SpString, 2)
	end
	
	if nIndex == 17 then
		--????
		HPMAX = AI:GetHPMax()
		AI:RestoreHPInstant(HPMAX)
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	
	if a == 0 then
		mapid = AI:GetMapID()
		kuangbaotime = AI:GetEctypeVarShort(mapid,33)
		AI:SetTimer(14,kuangbaotime*1000,5)
		SpNum = AI:GetEctypeVarShort(mapid,11)
		SpString = " "
		i = 0
		while i < SpNum do
			SpKind = AI:GetEctypeVarShort(mapid,12+i)
			if SpKind == 10 then
				SpString = SpString.."Scout"
				AI:SetTimer(0,20000,65535)
			elseif SpKind == 11 then
				SpString = SpString.."Invincible Bastion"
				AI:SetTimer(1,10000,65535)
			elseif SpKind == 12 then
				SpString = SpString.."Web Shroud"
				AI:SetTimer(2,14000,65535)
			elseif SpKind == 13 then
				SpString = SpString.."Incarceration!"
				AI:SetTimer(3,13000,65535)
			elseif SpKind == 14 then
				SpString = SpString.."Arcane Missiles"
				AI:SetTimer(4,2000,65535)
			elseif SpKind == 15 then
				SpString = SpString.."War Stomp"
				AI:SetTimer(5,2000,65535)
			elseif SpKind == 16 then
				SpString = SpString.."Spell Curse"
				AI:SetTimer(6,11000,65535)
			elseif SpKind == 17 then
				SpString = SpString.."Kiss of Dracula"
				AI:SetTimer(7,22000,65535)
			elseif SpKind == 18 then
				SpString = SpString.."Haste"
				AI:AddSkill(2422, 1)
				AI:UseSkill(2422, 1)
				AI:Say("Haste!")
			elseif SpKind == 19 then
				SpString = SpString.."Revenge of Heaven"
				AI:AddSkill(2423, 1)
				AI:UseSkill(2423, 1)
				AI:Say("Revenge of Heaven!")
			elseif SpKind == 20 then
				SpString = SpString.."Legion"
				AI:Say("Legion gather!")
			elseif SpKind == 21 then
				SpString = SpString.."Fire Dragon's Breath"
				AI:SetTimer(8,21000,65535)
			elseif SpKind == 22 then
				SpString = SpString.."Ghost Area"
				AI:SetTimer(9,19000,65535)
			elseif SpKind == 23 then
				SpString = SpString.."Black Death"
				AI:SetTimer(10,27000,65535)
			elseif SpKind == 24 then
				SpString = SpString.."Sorcerer"
				AI:SetTimer(11,18000,65535)
			elseif SpKind == 25 then
				SpString = SpString.."Sacrifice"
				AI:SetArray(1 ,1)
				AI:Say("Sacrifice!")
			elseif SpKind == 26 then
				SpString = SpString.."Counterattack"
				AI:SetArray(2 ,1)
				AI:Say("Counterattack!")
			elseif SpKind == 27 then
				SpString = SpString.."Survivor"
				AI:SetTimer(15,2000,65535)
				AI:SetArray(3 ,1)
				AI:Say("Survivor!")
			elseif SpKind == 28 then
				SpString = SpString.."Titan blood!"
				AI:AddSkill(2429, 1)
				AI:UseSkill(2429, 1)
				AI:Say("Take the attack from Titans!")
				AI:SetTimer(17,500,1)
			elseif SpKind == 29 then
				SpString = SpString.."Magic and Martial Arts"
				AI:AddSkill(2430, 2)
				AI:UseSkill(2430, 2)
				AI:SetTimer(12,31000,65535)
				AI:Say("I'll let you see the combined power of Magic and Martial Arts!")
			elseif SpKind == 30 then
				SpString = SpString..""
				AI:SetArray(4 ,1)
				AI:Say("")
			elseif SpKind == 31 then
				SpString = SpString.."Gaia's Protection"
				mapid = AI:GetMapID()
				MonNum = AI:GetEctypeVarShort(mapid,34)
				gaiyanum = AI:GetEctypeVarShort(mapid,37)
				if gaiyanum < MonNum - 1 then
					AI:AddSkill(2431, 1)
					AI:UseSkill(2431, 1)
					AI:SetEctypeVarShort(mapid,37,gaiyanum+1)
				end
				AI:Say("Gaia's Protection!")
			end
			i = i + 1
		end
		AI:ScreenText(SpString, 2)
		AI:SetTimer(13,10000,65535)
		AI:SetTimer(16,15000,65535)
		AI:SetArray(0 ,1)
	end
	
	c = AI:GetArray(2)
	if c == 1 then
		--????
		HP = AI:GetHP()
		HPMAX = AI:GetHPMax()
		if HP <= HPMAX*0.25 then
			kuangbao = AI:GetArray(10)
			AI:SetArray(10,kuangbao+1)
			AI:AddSkill(2278,kuangbao+1)
			AI:UseSkill(2278,kuangbao+1)
			AI:SetArray(2, 2)
		end
	end
	
	e = AI:GetArray(4)
--	if e == 1 then
--		--????
--		HP = AI:GetHP()
--		HPMAX = AI:GetHPMax()
--		HPold = AI:GetArray(13)
--		if HPold == 0 then
--			HPold = HP
--		end
--		AI:SetArray(13 ,HP)
--		mapid = AI:GetMapID()
--		MonNum = AI:GetEctypeVarShort(mapid,34)
--		TotalD = AI:GetEctypeVarInteger(mapid,110)
--		TotalD = TotalD + HPold - HP 
--		if TotalD < 0 then
--			TotalD = 0
--		end
--		AI:SetEctypeVarInteger(mapid,110,TotalD )
--		AcD = TotalD/MonNum + HP - HPMAX
--		if AcD >= 0 then
--			if AcD < HP then
--				AI:LoseHPInstant(AcD)
--			else
--				AI:LoseHPInstant(HP - 1)
--			end
--		else
--			AcD = math.abs(AcD)
--			AI:RestoreHPInstant(AcD)
--		end
--	end
	
		--????
	mapid = AI:GetMapID()
	gaiya = AI:GetEctypeVarShort(mapid,36)
	if gaiya == 1 then
		AI:AddSkill(2431, 2)
		AI:UseSkill(2431, 2)
		AI:SetEctypeVarShort(mapid,36,0)
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
	
	b = AI:GetArray(1)
	if b == 1 then
		--??
		Xi = AI:GetPosX()
		Yi = AI:GetPosY()
		AI:SummonMonsterByPos(55414, Xi, Yi)
	end
	
	d = AI:GetArray(3)
	if d == 1 then
		--???
		mapid = AI:GetMapID()
		xingcun = AI:GetEctypeVarShort(mapid,35)
		AI:SetEctypeVarShort(mapid,35,xingcun + 1)
	end
	
	--????
	mapid = AI:GetMapID()
	AI:SetEctypeVarShort(mapid,36,1)
	
	AI:DelTimer(0)
	AI:DelTimer(1)
	AI:DelTimer(2)
	AI:DelTimer(3)
	AI:DelTimer(4)
	AI:DelTimer(5)
	AI:DelTimer(6)
	AI:DelTimer(7)
	AI:DelTimer(8)
	AI:DelTimer(9)
	AI:DelTimer(10)
	AI:DelTimer(11)
	AI:DelTimer(12)
	AI:DelTimer(13)
	AI:DelTimer(14)
	AI:DelTimer(15)
	AI:DelTimer(16)
	AI:DelTimer(17)
	AI:SetArray(0, 0)
	AI:SetArray(1, 0)
	AI:SetArray(2, 0)
	AI:SetArray(3, 0)
	AI:SetArray(4, 0)
	AI:SetArray(10, 0)
	AI:SetArray(11, 0)
	AI:SetArray(12, 0)
	
end