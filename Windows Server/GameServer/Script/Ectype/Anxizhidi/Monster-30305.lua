----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:?-??monsterAI-?
--		TaskID:??1
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
--				AI:AddSkill(ID,lv)
--				AI:UseSkill(ID,lv)
			end
		end
		
--2245	????	??

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then
				rand = AI:GetRand(100)
				AI:AddSkill(2245,1)
				AI:UseSkill(2245,1)
				isdead=AI:GetEctypeVarShort(mapid,8)
				if isdead == 0 then
					AI:Say("Do not use such despicable trickery!")
					AI:ScreenText("Agritt launched a God Splitting Cut!",2)
				end
			end
		end--????end
		
		if nIndex == 3 then--????
			a = AI:GetArray(3)
			if a == 1 then
--				AI:AddSkill(ID,lv)
--				AI:UseSkill(ID,lv)
--				AI:ScreenText( " " , 2)
--				AI:Say("")
			end
		end--????end
	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*1000
 		a = AI:GetArray(1)
		-----------------------------------------------------------normal start
			if a == 0 then --?????,????,????
				AI:SetTimer(1,500,1)
				AI:SetArray(1,1)
--				AI:ChangeFaction(5)
		    AI:SetArray(9,0)
				AI:Say("Hades! How could you be so vile!")
			end
			a = AI:GetArray(2)
			if a == 0 then
				AI:SetTimer(2,9000,1)
				AI:SetArray(2,1)
			end
			aistatus=AI:GetEctypeVarShort(mapid,7)
			if aistatus > 3 then
				posx = AI:GetPosX()
				posy = AI:GetPosY()
				AI:SummonMonsterByPos(30306,posx,posy)
				AI:Exit()
			end
			----------------------------------------------------------normal start

	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()




		--AI:ScreenText( "" , 2)

	end
	
	
	