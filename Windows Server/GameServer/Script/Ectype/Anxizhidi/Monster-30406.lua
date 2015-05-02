----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:?-??monsterAI-?
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
--3.??30406?????????5???
--??:0 ??,???????????!
--      5 ????????????????????????!
--10????
--??:10 ????????????!??????????!??..
--????30285:13 ????????????,????????!	

		if nIndex == 2 then
			a = AI:GetArray(2)
			if a == 5 then
				AI:ScreenText("Obsidian Turtle: You used all of us just to reach this place! And for what purpose!?",2)
			end
			if a == 10 then
				AI:ScreenText("Obsidian Turtle: You must know Odin expected this! This can only end with your death, Hades...",2)
			end
			if a == 15 then
				AI:ScreenText("Adrian: I will only die when I choose to! Nobody else, not even Odin, can say otherwise!",2)
			end
			if a == 20 then
				AI:SelfMurder()
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
				AI:ScreenText("Obsidian Turtle: Finally, I understand why things happened as they did!",2)
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
	
	