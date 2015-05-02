----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:?-??monsterAI-?
--		TaskID:???1
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
--				AI:ChangeFaction(1)
				AI:GetRandTarget()
				AI:SetArray(1,2)
				AI:SetArray(9,1)
				AI:SetEctypeVarShort(mapid,9,100)
				aistatus=AI:GetEctypeVarShort(mapid,7)
--AI:Say("aistatus="..tostring(aistatus))
				if aistatus == 0 then
					aistatus=1
					AI:SetEctypeVarShort(mapid,7,aistatus)
					AI:ScreenText( "Adrian: Surely you recognize me by now, don't you?" , 2)
					AI:Say("Surely you recognize me by now, don't you?")
					AI:PlayAction("\\common\\liuxingyu2\\keep\\tx_liuxingyu2_keep_01.ini",0,1)
				end
			end
			if a == 2 then
				AI:SetArray(1,3)
				AI:Say("It will be an honor to end your long and winding journey!")
				AI:ScreenText( "Adrian: It will be an honor to end your long and winding journey!" , 2)
			end
			if a == 3 then
				AI:SetArray(1,4)
				AI:Say("Maybe you should thank me! You'll be seeing Odin again very soon!")
				AI:ScreenText( "Adrian: Maybe you should thank me! You'll be seeing Odin again very soon!" , 2)
			end
		end

--30400	???
--30401	??
--30402	???
--30403	??
--30404	??
--30405	??
--30406	??
		if nIndex == 5 then--????
			rand = AI:GetRand(100)
			if rand < 80 then		
				AI:AddSkill(2243,1)
				AI:UseSkill(2243,1)
			else
				AI:AddSkill(2244,1)
				AI:UseSkill(2244,1)
			end
		end
		
		if nIndex == 2 then--????
			a = AI:GetArray(2)
			---------------------------------------------------??????
			skk=math.mod(a,2)
			if skk == 1 then
			rand = AI:GetRand(100)
				if rand < 10 then		
					AI:Say("Suffer! Struggle! Writhe in pain!")
				else
					if rand < 20 then
						AI:Say("My power knows no limits!")
					else				
						if rand < 25 then
							AI:Say("Not even the gods could stop me!")
						else		
							if rand < 30 then
								AI:Say("Haha! I can feel the fear in your heart!")
							end
						end
					end
				end
			end
			----------------------------------------------------??HP??
			aistatus=AI:GetEctypeVarShort(mapid,7)
			if aistatus == 1 then--??HP?
				hpmax=AI:GetHPMax()
				hpn=AI:GetHP()
				hpline=AI:GetEctypeVarShort(mapid,9)
				hpr=hpmax-hpn
				AI:RestoreHPInstant(hpr)
				hpl=(100-hpline)/100*hpmax
				AI:LoseHPInstant(hpr)
			end
			----------------------------------------------------????
			if a == 3 then	--??-????
				posx=AI:GetPosX()
				posy=AI:GetPosY()
				rr=math.random(11)
				posx=posx+rr-6
				rr=math.random(11)
				posx=posx+rr-6
				AI:SummonMonsterByPos(30403,posx,posy)
			end
			if a == 5 then	--????--hp97
				AI:SetEctypeVarShort(mapid,9,97)
--AI:Say("GUID:03790000010")
			end
			if a == 7 then	--??+????
				posx=AI:GetPosX()
				posy=AI:GetPosY()
				rr=math.random(11)
				posx=posx+rr-6
				rr=math.random(11)
				posx=posx+rr-6
				AI:SummonMonsterByPos(30404,posx,posy)
				posx=AI:GetPosX()
				posy=AI:GetPosY()
				rr=math.random(11)
				posx=posx+rr-6
				rr=math.random(11)
				posx=posx+rr-6
				AI:SummonMonsterByPos(30405,posx,posy)
			end
			if a == 9 then	--??+????--hp94
				AI:SetEctypeVarShort(mapid,9,94)
--AI:Say("GUID:03790000011")
			end
			if a == 11 then	--????
				posx=AI:GetPosX()
				posy=AI:GetPosY()
				rr=math.random(11)
				posx=posx+rr-6
				rr=math.random(11)
				posx=posx+rr-6
				AI:SummonMonsterByPos(30406,posx,posy)
			end
			if a == 15 then	--????-????--hp90
				AI:SetEctypeVarShort(mapid,9,90)
--AI:Say("GUID:03790000012")
			end
			if a == 17 then	--???????,????
				AI:ScreenText( "If the Knell is not destroyed within 20 seconds, Odin's heart will be destroyed!" , 2)
				AI:SummonMonsterByPos(30302,203,63)
				AI:SummonMonsterByPos(30308,208,65)
			end
			if a == 19 then	--????
				AI:SummonMonsterByPos(30305,216,57,180)
				AI:ScreenText("Agritt  has appeared!",2)
			end
			if a == 21 then	--??,??? ??? ??????
--AI:Say("GUID:03790000015")
			end
			if a == 23 then	--??????
				posx=AI:GetPosX()
				posy=AI:GetPosY()
				rr=math.random(11)
				posx=posx+rr-6
				rr=math.random(11)
				posx=posx+rr-6
				AI:SummonMonsterByPos(30401,posx,posy)
				AI:SummonMonsterByPos(30408,posx,posy)--??
			end
			if a == 27 then	--??????--hp87
				AI:SetEctypeVarShort(mapid,9,87)
--AI:Say("GUID:03790000016")
			end
			if a == 29 then	--?????
				posx=AI:GetPosX()
				posy=AI:GetPosY()
				rr=math.random(11)
				posx=posx+rr-6
				rr=math.random(11)
				posx=posx+rr-6
				AI:SummonMonsterByPos(30402,posx,posy)
				AI:SummonMonsterByPos(30408,posx,posy)--??
			end
			if a == 33 then	--?????--hp84
				AI:SetEctypeVarShort(mapid,9,84)
--AI:Say("GUID:03790000017")
			end
			if a == 35 then	--?????
				posx=AI:GetPosX()
				posy=AI:GetPosY()
				rr=math.random(11)
				posx=posx+rr-6
				rr=math.random(11)
				posx=posx+rr-6
				AI:SummonMonsterByPos(30400,posx,posy)
				AI:SummonMonsterByPos(30408,posx,posy)--??
			end
			if a == 42 then	--????? ????--hp80
				AI:SetEctypeVarShort(mapid,9,80)
--AI:Say("GUID:03790000018")
			end
			if a == 43 then	--???(40????80%HP)
				AI:SetEctypeVarShort(mapid,7,4)
				AI:ScreenText( "Hades reveals his true form!" , 2)
				posx = AI:GetPosX()
				posy = AI:GetPosY()
				AI:SummonMonsterByPos(30286,posx,posy)
				AI:SummonMonsterByPos(30407,posx,posy)--??
				AI:Exit()
			end
			a=a+1
			AI:SetArray(2,a)
		end--????end

	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*1000
 		t = AI:HaveAttackTarget()
 		a = AI:GetArray(1)
		if t == false then
			if a > 0 then
				if hpn == hpmax then
					CanBeShutDown = AI:GetArray(9)
					if CanBeShutDown == 1 then
				    AI:DelTimer(1)
				    AI:DelTimer(2)
				    AI:DelTimer(3)
		    		AI:SetArray(1,0)
		    		AI:SetArray(2,0)
		    		AI:SetArray(3,0)
		    		AI:SetArray(9,0)
						AI:ChangeFaction(1)
						AI:SetEctypeVarShort(mapid,7,0)
						AI:SetEctypeVarShort(mapid,8,0)
						AI:SetEctypeVarShort(mapid,9,100)
					end
				end
			end
		else
		-----------------------------------------------------------normal start
			if a == 0 then --?????
				AI:SetTimer(1,3500,5)
				AI:SetArray(1,1)
--				AI:ChangeFaction(5)
		    AI:SetArray(9,0)
				AI:Say("I can't believe they let you through! Useless, the whole lot of them!")
				AI:ScreenText( "Adrian: I can't believe they let you through! Useless, the whole lot of them!" , 2)
			end

			a = AI:GetArray(2)
			if a == 0 then --????
				AI:SetTimer(2,5000,9999)
				AI:SetArray(2,1)
			end

			a = AI:GetArray(5)
			if a == 0 then --????
				AI:SetTimer(5,5000,9999)
				AI:SetArray(5,1)
			end
			----------------------------------------------------------normal start
		end


	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()


	end
