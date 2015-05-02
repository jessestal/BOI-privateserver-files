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

--??:0 ????!!???!!???????!!
--      5 ?..!!!
--5???
--????:6 ???????????????30285

		if nIndex == 2 then
			a = AI:GetArray(2)
			if a == 5 then
				AI:ScreenText("Scarlet Phoenix: Aaah!!",2)
			end
			if a == 7 then
				AI:ScreenText("Adrian: How dare you stand in my way! Know your place, you little turkey!",2)
			end
			if a == 10 then
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
				AI:ScreenText("Scarlet Phoenix: You! You did this! You won't get away with this!!",2)
--				AI:Say("GUID:03804000003")
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
	
	