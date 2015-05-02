----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:?-???-?
--		TaskID:
-----------------------------------------------------
--30400	???
--30401	??
--30402	???
--30403	??
--30404	??
--30405	??
--30406	??
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
				AI:GetRandTarget()
				AI:SetArray(1,2)
				AI:SetArray(9,1)
--				AI:PlayAction("\\common\\shilian2\\51244-handR.ini",0,1)
			end
		end

--5.???30401??????5???
--???:0 ???:???????????????????????????????!
--        5 ???:???????????!
--????:8 ????:?????????????????,??????????????????!
--	   11 ????:????,??????????!
--????????
--????:   14  ????:????????,???????????????,?..????!


		if nIndex == 2 then
			a = AI:GetArray(2)
			if a == 5 then
				AI:ScreenText("Poseidon: What possible reason could you have to impersonate an angel and defile this sacred place?",2)
			end
			if a == 8 then
				AI:ScreenText("Adrian: Your realm is the ocean, Poseidon! Don't think for a second you can understand my mot!",2)
			end
			if a == 11 then
				AI:ScreenText("Adrian: Do you realize what will become of this world?",2)
			end
			if a == 14 then
				AI:ScreenText("Adrian: Accept the truth, and await my judgment, friend!",2)
			end
			if a == 19 then
				AI:ScreenText("Adrian: I've lost so many men. I don't wish to find a replacement for you, too...",2)
			end
			if a == 20 then
--				AI:SelfMurder()
				posx = AI:GetPosX()
				posy = AI:GetPosY()
				AI:SummonMonsterByPos(30410,posx,posy)
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

 		a = AI:GetArray(1)
		-----------------------------------------------------------normal start
			if a == 0 then --?????,????,????
				AI:SetTimer(1,500,1)
				AI:SetArray(1,1)
		    AI:SetArray(9,0)
				AI:ScreenText("Poseidon: Was the Netherworld really that bad? Do you realize what you've done!?",2)
			end
			a = AI:GetArray(2)
			if a == 0 then --????,????
				AI:SetTimer(2,1000,9999)
				AI:SetArray(2,1)
			end
			----------------------------------------------------------normal start


	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		--AI:ScreenText("",2)
	end

