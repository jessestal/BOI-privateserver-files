----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012-8
--		Author:???
--		TaskName:?-??AI??????-?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--???1--start
			a=AI:GetArray(1)
			if a == 1 then
				AI:Say("Allow me to show you my true power!")
				AI:AddSkill(2364,1)
				AI:UseSkill(2364,1)
				AI:AddSkill(2365,1)
				AI:UseSkill(2365,1)
			end
		end--???1--------------------end
		
		if nIndex == 2 then--???2--start
			a=AI:GetArray(2)
			if a == 1 then--????
--				exist = AI:GetEctypeVarShort(mapid,8)
				rand = AI:GetRand(99)--(????0~99???)
				if rand < 33 then--??all-1--start
					AI:AddSkill(2361,1)
					AI:UseSkill(2361,1)
					rand = AI:GetRand(99)
					if rand < 15 then--??1??--start
						AI:ScreenText("Eurus: You worthless little fools!",2)
						AI:Say("You worthless little fools!")
					elseif rand < 30 then
						AI:ScreenText("Eurus: I'm not afraid of some lousy humans!",2)
						AI:Say("I'm not afraid of some lousy humans!")
					elseif rand < 45 then
						AI:ScreenText("Eurus: Hahaha! Are you scared?!",2)
						AI:Say("Hahaha! Are you scared?!")
					end--??1??--end
				else--??1--end--??2--start
					if rand < 66 then
						AI:AddSkill(2368,1)
						AI:UseSkill(2368,1)
						rand = AI:GetRand(99)
						if rand < 20 then--??2??--start
							AI:ScreenText("Eurus: You worthless little fools!",2)
							AI:Say("You worthless little fools!")
						elseif rand < 40 then
							AI:ScreenText("Eurus: I'm not afraid of some lousy humans!",2)
							AI:Say("I'm not afraid of some lousy humans!")
						elseif rand < 60 then
							AI:ScreenText("Eurus: Hahaha! Are you scared?!",2)
							AI:Say("Hahaha! Are you scared?!")
						end--??2??--end
					end--??2--end
				end--??all--end
				
				
				dead = AI:GetEctypeVarShort(mapid,9)
				rand = AI:GetRand(99)--(????0~99???)
				if rand < 5 then
					if dead < 10 then
						AI:Say("Come forth, my servants! Die for me!")
						AI:ScreenText("Eurus: Come forth, my servants! Die for me!",2)
						dead=dead+1
						AI:SetEctypeVarShort(mapid,9,dead)
						creatmonster(nAI)
					end
				end
				
			end--????end
		end--???2--------------------end
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		-----------------------------------------------------------normal start
			a = AI:GetArray(2)
			if a == 0 then
				AI:SetTimer(2,5000,9999)
				AI:SetArray(2,1)
				AI:Say("I'll never let you enter the Throne of Boreas!")
			end
			hpn = AI:GetHP()
			hpmax = AI:GetHPMax()
			hppct = hpn/hpmax*1000
			a = AI:GetArray(1)
			if a == 0 then --????,????
				if hppct < 300 then
					AI:SetTimer(1,1000,1)
					AI:SetArray(1,1)
				end
			end			
			----------------------------------------------------------normal end

--		test=AI:GetEctypeVarShort(mapid,99)
--		if test == 1 then--??AI??
--			AI:Say("hppct="..tostring(hppct))
--			AI:SetEctypeVarShort(mapid,99,0)
--		end

	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
--??	??????	
--1	10	5
--2	8	4
--3	8	4
--4	8	4
--5	6	3
--6	6	3
--7	6	3
--8	6	3

		AI:DelTimer(1)
		AI:DelTimer(2)
		PosX,PosY = AI:GetPosX(),AI:GetPosY()
		if PosX < 122 then PosX = 122 end
		if PosX > 210 then PosX = 210 end
		if PosY < 137 then PosY = 137 end
		if PosY > 215 then PosY = 215 end
		
		rank = AI:GetEctypeVarShort(mapid,4)
--print (rank)
		if rank > 0 then
			if rank <= 8 then
				AI:SummonMonsterByPos(53246,PosX,PosY,0)
				AI:SummonMonsterByPos(53246,PosX+3,PosY,0)
				AI:SummonMonsterByPos(53246,PosX-3,PosY,0)
			end
			if rank <= 4 then
				AI:SummonMonsterByPos(53246,PosX,PosY+3,0)
				AI:ScreenText("The portal to the Throne of Boreas has appeared in the center of the Eurus' Wasteland!",2)
				AI:AddNPC(866)
			end
			if rank <= 1 then
				AI:SummonMonsterByPos(53246,PosX,PosY-3,0)
				AI:ScreenText("The portal to the Throne of Boreas has appeared in the center of the Eurus' Wasteland!",2)
				AI:AddNPC(866)
			end
		end
		
		
		
	end

	function creatmonster(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

					level = AI:GetEctypeVarShort(mapid,5)
					fieldlevel = AI:GetEctypeVarShort(mapid,6)
					if fieldlevel > 0 then
						MonsterFieldAttrRateID = 233
						xx,yy=AI:GetPosX(),AI:GetPosY()
						AI:CreateFieldMonster(53245,MonsterFieldAttrRateID,fieldlevel,6,mapid,xx,yy,8)
					else
						MonsterAttrRateID = 233
						xx,yy=AI:GetPosX(),AI:GetPosY()
						ssx=xx-8+math.random(0,16)
						ssy=yy-8+math.random(0,16)
						AI:SummonLevelMonsterByPos(53245,MonsterAttrRateID,level,ssx,ssy)
						ssx=xx-8+math.random(0,16)
						ssy=yy-8+math.random(0,16)
						AI:SummonLevelMonsterByPos(53245,MonsterAttrRateID,level,ssx,ssy)
						ssx=xx-8+math.random(0,16)
						ssy=yy-8+math.random(0,16)
						AI:SummonLevelMonsterByPos(53245,MonsterAttrRateID,level,ssx,ssy)
						ssx=xx-8+math.random(0,16)
						ssy=yy-8+math.random(0,16)
						AI:SummonLevelMonsterByPos(53245,MonsterAttrRateID,level,ssx,ssy)
						ssx=xx-8+math.random(0,16)
						ssy=yy-8+math.random(0,16)
						AI:SummonLevelMonsterByPos(53245,MonsterAttrRateID,level,ssx,ssy)
						ssx=xx-8+math.random(0,16)
						ssy=yy-8+math.random(0,16)
						AI:SummonLevelMonsterByPos(53245,MonsterAttrRateID,level,ssx,ssy)
					end

						
	end