
	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/11/14
	--		Author:???
	--		Class:	.Lua
	--		AIName:baal.lua
	--		Remark:????-????
	----------------------------------------------------
	--????11-14:??????,15??????1,16??????1,21-24??????1,31-34npc?????1
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	gggg = AI:GetArray(2)
	if nIndex == 0 then
		--????
		timecount = AI:GetArray(13)
		AI:SetArray(13,timecount+1)
		if timecount == 1 then
			AI:SetTimer(1,1000,1)
		elseif timecount == 4 then
			AI:SetTimer(3,1000,1)
		elseif timecount == 7 then
			AI:SetTimer(1,1000,1)
		elseif timecount == 10 then
			AI:SetTimer(2,1000,1)
		elseif timecount == 11 then
			AI:SetArray(13,0)
			AI:Say("I control all the power in the world!")
--AI:Say("GUID:02581000001")
--print("GUID:02581000002")
			mapid = AI:GetMapID()
			Ele1 = AI:GetEctypeVarShort(mapid,11)
			Ele2 = AI:GetEctypeVarShort(mapid,12)
			Ele3 = AI:GetEctypeVarShort(mapid,13)
			Ele4 = AI:GetEctypeVarShort(mapid,14)
			i = 0
			while i < 1 do
				b = AI:GetArray(1)
				if b == 1 then
					Eleme = AI:GetRand(4)
					if Eleme == 0 then
						i = i + 1
						AI:SetArray(14,0)
					elseif Eleme == 1 and Ele1 ~= 0 then
						i = i + 1
						AI:SetArray(14,1)
					elseif Eleme == 2 and Ele2 ~= 0 then
						i = i + 1
						AI:SetArray(14,2)
					elseif Eleme == 3 and Ele3 ~= 0 then
						i = i + 1
						AI:SetArray(14,3)
					elseif Eleme == 4 and Ele4 ~= 0 then
						i = i + 1
						AI:SetArray(14,4)
					end
				else
					i = i + 1
					AI:SetArray(14,0)
				end
			end
			Eleme = AI:GetArray(14)
			if Eleme > 0 then
				AI:AddStatus(-1, 6456, 5)
				AI:SetTimer(4,1000,1)--???
			end
		end
	end
	
	if nIndex == 1 then
		--????
		Eleme = AI:GetArray(14)
		AI:AddSkill(2451, Eleme+1)
		AI:UseSkill(2451, Eleme+1)
--print("GUID:02581000003")
--AI:Say("GUID:02581000004")
		if Eleme == 0 then
			AI:Say("Dark Force will shock your soul!")
		elseif Eleme == 1	then
			AI:Say("God of War's Fury will burn your soul down!")
		elseif Eleme == 2	then
			AI:Say("Divine Light will evaporate your soul!")
		elseif Eleme == 3	then
			AI:Say("Thor's Lightning will crash your soul to nothing!")
		elseif Eleme == 4	then
			AI:Say("Soulreaper will take your soul away!")
		end
	end
	
	if nIndex == 2 then
		--????
		Eleme = AI:GetArray(14)
		AI:AddSkill(2452, Eleme+1)
		AI:UseSkill(2452, Eleme+1)
		mapid = AI:GetMapID()
		Def1 = AI:GetEctypeVarShort(mapid,21)
		Def2 = AI:GetEctypeVarShort(mapid,22)
		Def3 = AI:GetEctypeVarShort(mapid,23)
		Def4 = AI:GetEctypeVarShort(mapid,24)
--print(Def1.."-"..Def2.."-"..Def3.."-"..Def4)
--AI:Say(Def1.."-"..Def2.."-"..Def3.."-"..Def4)
		
		ttype = AI:GetTargetCharType()
		if Eleme == 0 then
			AI:Say("Dark Force will tear your soul to pieces!")
		elseif Eleme == 1	then
			if ttype == 2 then
				AI:AddSkill(2432, 4)
				AI:UseSkill(2432, 4)--??
--print("GUID:02581000011")
--AI:Say("GUID:02581000012")
				AI:Say("Only a hero deserves the chance to fight with me! You are not even worthy to look at me!")
			else
				if Def1 ~= 1 then
					AI:AddSkill(2432, 3)
					AI:UseSkill(2432, 3)--??
--print("GUID:02581000014")
--AI:Say("GUID:02581000015")
					AI:Say("Only the Ares' Might can resist the power of God of War!")
				end
			end
		elseif Eleme == 2	then
			if ttype == 2 then
				AI:AddSkill(2432, 4)
				AI:UseSkill(2432, 4)--??
--print("GUID:02581000017")
--AI:Say("GUID:02581000018")
				AI:Say("Only a hero deserves the chance to fight with me! You are not even worthy to look at me!")
			else
				if Def2 ~= 1 then
					AI:AddSkill(2432, 3)
					AI:UseSkill(2432, 3)--??
--print("GUID:02581000020")
--AI:Say("GUID:02581000021")
					AI:Say("Only the Divine Force can stop the power of Gods!")
				end
			end
		elseif Eleme == 3	then
			if ttype == 2 then
				AI:AddSkill(2432, 4)
				AI:UseSkill(2432, 4)--??
--print("GUID:02581000023")
--AI:Say("GUID:02581000024")
				AI:Say("Only a hero deserves the chance to fight with me! You are not even worthy to look at me!")
			else
				if Def3 ~= 1 then
					AI:AddSkill(2432, 3)
					AI:UseSkill(2432, 3)--??
--print("GUID:02581000026")
--AI:Say("GUID:02581000027")
					AI:Say("Only the Thunder Force can resist the power of Thor!")
				end
			end
		elseif Eleme == 4	then
			if ttype == 2 then
				AI:AddSkill(2432, 4)
				AI:UseSkill(2432, 4)--??
--print("GUID:02581000029")
--AI:Say("GUID:02581000030")
				AI:Say("Only a hero deserves the chance to fight with me! You are not even worthy to look at me!")
			else
				if Def4 ~= 1 then
					AI:AddSkill(2432, 3)
					AI:UseSkill(2432, 3)--??
--print("GUID:02581000032")
--AI:Say("GUID:02581000033")
					AI:Say("Only the Infernal Force can resist the power of Soulreaper!")
				end
			end
		end
	end
	
	if nIndex == 3 then
		--????
		Eleme = AI:GetArray(14)
		AI:AddSkill(2453, Eleme+1)
		AI:UseSkill(2453, Eleme+1)
--print("GUID:02581000035")
--AI:Say("GUID:02581000036")
		if Eleme == 0 then
			AI:Say("Fallen upon my majesty, human being!")
		elseif Eleme == 1	then
			AI:Say("Tremble under the God of War's Fury, human being!")
		elseif Eleme == 2	then
			AI:Say("Kneel down in the Divine Light, human being!")
		elseif Eleme == 3	then
			AI:Say("Twitch under the Thor's Lightning, human being!")
		elseif Eleme == 4	then
			AI:Say("Struggle under the Breath of Soulreaper, human being!")
		end
	end
	
	if nIndex == 4 then
		--????
		Eleme = AI:GetArray(14)
		AI:AddStatus(-1, 6456, Eleme)
--AI:Say("GUID:02581000042")
--print("GUID:02581000043")
		if Eleme == 0 then
			AI:Say("Darkness Devour!")
		elseif Eleme == 1	then
			AI:Say("God of War's Fury, show me the power!")
		elseif Eleme == 2	then
			AI:Say("Divine Light!")
		elseif Eleme == 3	then
			AI:Say("Thor's Lightning!")
		elseif Eleme == 4	then
			AI:Say("Breath of Soulreaper!")
		end
	end
	
	if nIndex == 5 then
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
	
	if nIndex == 6 then
		--??
		kuangbao = AI:GetArray(10)
		AI:SetArray(10,kuangbao+1)
		AI:AddSkill(2278,kuangbao+1)
		AI:UseSkill(2278,kuangbao+1)
	end
	
	if nIndex == 7 then
		--????
		talk = AI:GetArray(9)
		if talk == 0 then
			AI:Say("Finally I am free!")
			AI:ScreenText("Finally I am free!", 2)
			AI:SetArray(9,talk+1)
		elseif talk == 1 then
			AI:Say("Finally I am free!")
--			AI:ScreenText("Finally I am free!", 2)
			AI:SetArray(9,talk+1)
		elseif talk == 2 then
			AI:Say("Aesir, you will be dead soon!")
--			AI:ScreenText("Aesir, you will be dead soon!", 2)
			AI:SetArray(9,talk+1)
		elseif talk == 3 then
			AI:Say("A human being is trying to challenge me?")
--			AI:ScreenText("A human being is trying to challenge me?", 2)
			AI:SetArray(9,talk+1)
		end
	end
	
	if nIndex == 8 then
		--90??
		talk = AI:GetArray(8)
		if talk == 0 then
			AI:Say("A long time has passed but the four Immortal Weapons still have such incredible power.")
--			AI:ScreenText("A long time has passed but the four Immortal Weapons still have such incredible power.", 2)
			AI:SetArray(8,talk+1)
		elseif talk == 1 then
			AI:Say("Only the residual power of the four Immortal Weapons is enough to seal me!")
--			AI:ScreenText("Only the residual power of the four Immortal Weapons is enough to seal me!", 2)
			AI:SetArray(8,talk+1)
		elseif talk == 2 then
			AI:Say("I have controlled the power of the four Immortal Weapons.")
--			AI:ScreenText("I have controlled the power of the four Immortal Weapons.", 2)
			AI:SetArray(8,talk+1)
		elseif talk == 3 then
			AI:Say("I've never felt so powerful!")
--			AI:ScreenText("I've never felt so powerful!", 2)
			AI:SetArray(8,talk+1)
		end
	end
	
	if nIndex == 9 then
		--25??
		talk = AI:GetArray(7)
		if talk == 0 then
			AI:Say("Immortal Weapons, listen to my order! Expel the invaders!")
--			AI:ScreenText("Immortal Weapons, listen to my order! Expel the invaders!", 2)
			AI:SetArray(7,talk+1)
		elseif talk == 1 then
			AI:Say("Haha, you wouldn't expect that the power of the four Immortal Weapons would be controlled by me!")
--			AI:ScreenText("Haha, you wouldn't expect that the power of the four Immortal Weapons would be controlled by me!", 2)
			AI:SetArray(7,talk+1)
		elseif talk == 2 then
			AI:Say("Tremble before the power of Deity, human being!")
--			AI:ScreenText("Tremble before the power of Deity, human being!", 2)
			AI:SetArray(7,talk+1)
		elseif talk == 3 then
			AI:Say("With the protection of the four Immortal Weapons, I will be Invincible!")
--			AI:ScreenText("With the protection of the four Immortal Weapons, I will be Invincible!", 2)
			AI:SetArray(7,talk+1)
		end
	end
	
	if nIndex == 10 then
		--25??????
		talk = AI:GetArray(6)
		if talk == 0 then
			AI:Say("What?! The invincible immortal weapons have been defeated by a human being?!")
			AI:ScreenText("What?! The invincible immortal weapons have been defeated by a human being?!", 2)
			AI:SetArray(6,talk+1)
		elseif talk == 1 then
			AI:Say("I didn't expect that you could draw the residual Godforce from the Immortal Weapons.")
			AI:ScreenText("I didn't expect that you could draw the residual Godforce from the Immortal Weapons.", 2)
			AI:SetArray(6,talk+1)
		elseif talk == 2 then
			AI:Say("Breath out!")
			AI:ScreenText("Breath out!", 2)
			AI:SetArray(6,talk+1)
		elseif talk == 3 then
			AI:Say("Ah...")
			AI:ScreenText("Ah...", 2)
			AI:SetArray(6,talk+1)
		end
	end
	
end
	
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(0)
	HP = AI:GetHP()
	HPMAX = AI:GetHPMax()
	gggg = AI:GetArray(2)
--print(gggg) 
	if a == 0 then
		AI:SetTimer(0,3000,65535)
		AI:SetTimer(5,10000,65535)
		AI:SetTimer(6,600000,5)
		AI:SetTimer(7,10000,4)
		AI:SetArray(0,1)
		gggg = 1001
	end
	
	hppct=math.floor(HP/HPMAX*10000)/100
	mapid=AI:GetMapID()
	AI:SendMsgToMap(mapid,"[color=FFFF8000]90 of the Endless Stairs[/color]\n[color=FF00E000]Baal: [/color]"..tostring(hppct).."%")

	if a == 1 and HP <= HPMAX*0.9 then
		mapid = AI:GetMapID()
		AI:SetEctypeVarShort(mapid,11,1)
		AI:SetEctypeVarShort(mapid,12,1)
		AI:SetEctypeVarShort(mapid,13,1)
		AI:SetEctypeVarShort(mapid,14,1)
		AI:SetEctypeVarShort(mapid,15,1) --???????
		AI:SetTimer(8,10000,4)
		AI:SetArray(0 ,2)
		AI:SetArray(1 ,1)
--		AI:AddSkill(2512,1)
--		AI:UseSkill(2512,1)
--AI:ScreenText("GUID:02581000084",2)
----print("GUID:02581000085")
	end
	
	if a == 2 and HP <= HPMAX*0.25 then
		mapid = AI:GetMapID()
		AI:SetEctypeVarShort(mapid,16,1) --???????
		AI:SetTimer(9,10000,4)
		AI:AddSkill(2457,1)
		AI:UseSkill(2457,1)--??
		AI:SetArray(0 ,3)
		gggg = 1
		AI:Say("You'll be paralyzed!")
		AI:Say("You'll be paralyzed!!!")
	end
	
	if a == 3	then
		mapid = AI:GetMapID()
		Def1 = AI:GetEctypeVarShort(mapid,21)
		Def2 = AI:GetEctypeVarShort(mapid,22)
		Def3 = AI:GetEctypeVarShort(mapid,23)
		Def4 = AI:GetEctypeVarShort(mapid,24)
		if Def1 == 1 and Def2 == 1 and Def3 == 1 and Def4 == 1 then
			AI:AddSkill(2457,2)
			AI:UseSkill(2457,2)--????
			AI:SetTimer(10,10000,4)
			AI:SetArray(1 ,2)
			AI:SetArray(0 ,4)
		end
	end
	
	b = AI:GetArray(1)
	if b == 1 then
		Eleme = AI:GetArray(14)
		mapid = AI:GetMapID()
		Def1 = AI:GetEctypeVarShort(mapid,21)
		Def2 = AI:GetEctypeVarShort(mapid,22)
		Def3 = AI:GetEctypeVarShort(mapid,23)
		Def4 = AI:GetEctypeVarShort(mapid,24)
		AI:AddSkill(2455,1)
		AI:UseSkill(2455,1)
		AI:AddSkill(2454,1)
		AI:UseSkill(2454,1)--??
		if Eleme == 0 then
			AI:AddSkill(2455,2)
			AI:UseSkill(2455,2)
			AI:AddSkill(2454,2)
			AI:UseSkill(2454,2)--????
		elseif Eleme == 1	then
			if Def1 == 1 then
				AI:AddSkill(2455,2)
				AI:UseSkill(2455,2)--???
			elseif Def2 == 1 then
				AI:AddSkill(2454,2)
				AI:UseSkill(2454,2)--???
			end
		elseif Eleme == 2	then
			if Def2 == 1 then
				AI:AddSkill(2455,2)
				AI:UseSkill(2455,2)--???
			elseif Def3 == 1 then
				AI:AddSkill(2454,2)
				AI:UseSkill(2454,2)--???
			end
		elseif Eleme == 3	then
			if Def3 == 1 then
				AI:AddSkill(2455,2)
				AI:UseSkill(2455,2)--???
			elseif Def4 == 1 then
				AI:AddSkill(2454,2)
				AI:UseSkill(2454,2)--???
			end
		elseif Eleme == 4	then
			if Def4 == 1 then
				AI:AddSkill(2455,2)
				AI:UseSkill(2455,2)--???
			elseif Def1 == 1 then
				AI:AddSkill(2454,2)
				AI:UseSkill(2454,2)--???
			end
		end
	end
	
	SavedPid = AI:GetArray(11)
	if SavedPid == 0 then
		AI:GetRandTarget()
		isPornot = AI:GetTargetCharType()
		if isPornot == 1 then
			Targetpid = AI:GetTargetID()
			AI:SetArray(11,Targetpid)
		end
	end
	
	if gggg > 1000 then
		gggg=gggg+1
		if gggg > 100000 then
			gggg = 0
		end
		AI:SetArray(2,gggg)
	end
	
	if gggg < 1000 and gggg > 0 then
		gggg=gggg + 1
		
		AI:SetArray(2,gggg)
		gplayer = AI:GetArray(11)
		AI:AddPlayerStatus(gplayer,6512,1)
		--print("GUID:02581000088"..gggg)
--		AI:Say("GUID:02581000089"..gggg)
		AI:ScreenText("Ready to die:"..string.rep("X",math.floor(gggg/2))..string.rep("Y",math.floor((41-gggg)/2)),2)

		if gggg >= 40 then
			AI:AddSkill(2512,1)
			AI:UseSkill(2512,1)
			--print("GUID:02581000093")
			AI:Say("Lethal attack!!!")
--			nameplayer = AI:GetPlayerInfoStr(gplayer,"name")
			AI:ScreenText("Lethal attack! You should die!",2)
			gggg = 1001
			AI:SetArray(2,gggg)
		end
		
	
	end


end
	
function Event_OnDead(nAI)	
	local AI = GetMonsterAI(nAI)
	
	AI:Say("I wouldn't believe that a human being could resist such evil powers. I will not just let you go!")
	AI:ScreenText("I wouldn't believe that a human being could resist such evil powers. I will not just let you go!", 2)
	
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
--	AI:SetArray(0, 0)
--	AI:SetArray(1, 0)
--	AI:SetArray(6, 0)
--	AI:SetArray(7, 0)
--	AI:SetArray(8, 0)
--	AI:SetArray(9, 0)
--	AI:SetArray(10, 0)
--	AI:SetArray(11, 0)
--	AI:SetArray(12, 0)
--	AI:SetArray(13, 0)
--	AI:SetArray(14, 0)
	
end