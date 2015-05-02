----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:?-??monsterAI-?
--		TaskID:?????
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
				AI:ChangeFaction(1)
				AI:GetRandTarget()
				AI:SetArray(1,2)
				AI:SetArray(9,1)
			end
		end

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then
				AI:Say("Hades! My lord, please... please help... me...")
				AI:SelfMurder()
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
 		t = AI:HaveAttackTarget()
 		a = AI:GetArray(1)

		-----------------------------------------------------------normal start
			if a == 0 then --?????,????,????
				AI:SetTimer(1,500,1)
				AI:SetArray(1,1)
				AI:ChangeFaction(5)
		    AI:SetArray(9,0)
				AI:Say("My master, I've brought the Knell as you requested!")
			end
			a = AI:GetArray(2)
			if a == 0 then --????,????
				AI:SetTimer(2,21000,1)
				AI:SetArray(2,1)
			end
			----------------------------------------------------------normal start

	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()




		--AI:ScreenText( "" , 2)

	end
	
	