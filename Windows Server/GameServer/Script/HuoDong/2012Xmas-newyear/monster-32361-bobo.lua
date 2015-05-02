----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:?-??AI??????-?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--????
			a=AI:GetArray(1)
			if a == 1 then
--				AI:ChangeFaction(1)
--				AI:GetRandTarget()
--				AI:AddSkill(ID,lv)
--				AI:UseSkill(ID,lv)
--				AI:PlayAction("\\common\\shilian2\\51244-handR.ini",0,1)
--				AI:Say("")
--				AI:ScreenText("GUID:04837000000",2)
			end
			if a == 2 then
				AI:DelTimer(1)
				AI:SetArray(9,1)
			end
			a=a+1
			AI:SetArray(1,a)
		end--??????

		if nIndex == 2 then--????

			a = AI:GetArray(2)
			if a == 1 then--????
				rand = AI:GetRand(99)--(????0~99???)
				if rand < 33 then--??all-1--start
--2526	????
					AI:AddSkill(2526,1)
					AI:UseSkill(2526,1)
					rand = AI:GetRand(99)
					if rand < 33 then--??1??--start
						AI:ScreenText("Popo: Hasty Freezing!",2)
						AI:Say("Hasty Freezing!")
					elseif rand < 66 then
						AI:ScreenText("Popo: cold, huh?",2)
						AI:Say("Cold, huh?")
					else
--						AI:ScreenText("GUID:04837000005",2)
--						AI:Say("")
					end--??1??--end
				else--??1--end--??2--start
					if rand < 66 then
--2521	????
						AI:AddSkill(2521,1)
						AI:UseSkill(2521,1)
						rand = AI:GetRand(99)
						if rand < 33 then--??2??--start
							AI:ScreenText("Popo: Frozen Fruits Storm!",2)
							AI:Say("Frozen Fruits Storm!")
						elseif rand < 66 then
							AI:ScreenText("Popo: it's kind of hot here!",2)
							AI:Say("It's kind of hot here!")
						else
--							AI:ScreenText("GUID:04837000010",2)
--							AI:Say("")
						end--??2??--end
					end--??2--end
				end--??all--end
			end--????end
		end--????end
	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*1000

 		t = AI:HaveAttackTarget()--????
		if t == false then
			a = AI:GetArray(1)
			if a > 0 then
				if hpn == hpmax then
					CanBeShutDown = AI:GetArray(9)
					if CanBeShutDown == 1 then
						AI:DelTimer(1)
						AI:DelTimer(2)
						AI:DelTimer(3)
						AI:DelTimer(9)
						AI:SetArray(1,0)
						AI:SetArray(2,0)
						AI:SetArray(3,0)
						AI:SetArray(9,0)
--						AI:ChangeFaction(1)
					end
				end
			end
		else
		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then --?????,????,????
				AI:SetTimer(1,500,1)
				AI:SetArray(1,1)
--				AI:ChangeFaction(11)
		    AI:SetArray(9,0)
				AI:Say("I'm Popo! A Snowman from a faraway land!")
				AI:ScreenText("Popo: I'm Popo! A Snowman from a faraway land! ",2)
			end
			
			a = AI:GetArray(2)
			if a == 0 then --????,????
				AI:SetTimer(2,5000,9999)
				AI:SetArray(2,1)
			end
			
			a = AI:GetArray(3)
			if a == 0 then
				if hppct < 150 then
--					2364	?????????
					AI:AddSkill(2364,1)
					AI:UseSkill(2364,1)
					AI:ScreenText( "Snowman Popo is melting!" , 2)
					AI:Say("Oh, I feel so hot!")
					AI:SetArray(3,1)
				end
			end
			
			maxsize=8
			size=maxsize*(hppct/1000+0.1)
			AI:ChangeMonsterSize(size)
			
			----------------------------------------------------------normal end
		end
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


		AI:ScreenText("Popo is melted to water!!!",2)
		
		AI:DelTimer(1)
		AI:DelTimer(2)
		AI:DelTimer(3)
		AI:DelTimer(9)

	end

	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

--		if (( PosX == xx) and ( PosY == yy )) then
--			AI:Exit()
--		end

	end


	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

--		if nIndex == 1 then
--			xx=0
--			yy=0
--			AI:AddSeekPos(mapid,xx,yy)
--		end

	end