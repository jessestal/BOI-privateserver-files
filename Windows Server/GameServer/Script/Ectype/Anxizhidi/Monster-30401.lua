----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:?-??-?
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

--4.????30402??????????5???	
--??:0 ?????!??????????????????	
--      10 ???????,??????!?????????????!	
--????30285:13 ??,????????????????????????	
--	    16 ???????????????,??????????
--	    19 ??????????!???????????--?????????!
--????????	
--????:????????,?????????????????????	


		if nIndex == 2 then
			a = AI:GetArray(2)
			if a == 10 then
				AI:ScreenText("Thor: An evil such as yours cannot be left unchecked. I will end this with my hammer!",2)
			end
			if a == 13 then
				AI:ScreenText("Adrian: You must be joking! Do you truly believe that good can overcome evil?",2)
			end
			if a == 16 then
				AI:ScreenText("Adrian: Do you really think you can do anything to me with that rusty hunk of iron?",2)
			end
			if a == 19 then
				AI:ScreenText("Adrian: That hammer will be your headstone! I'll even engrave your epitaph upon it. Thor, the loyal servant of Mjollnir!",2)
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
				AI:ScreenText("Thor: Even you are bound by our rules! How could you even consider pointing your weapon at Odin?",2)
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
	
	