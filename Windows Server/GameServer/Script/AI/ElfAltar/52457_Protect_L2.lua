----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/08
--		Author:???
--		TaskName:?-????:II????-?  
--		TaskID:52457_Protect_L2.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		hpmax = AI:GetHPMax()
		hpunit = hpmax/100*8	
		
		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then--????
				hpn = AI:GetHP()
				hpmax = AI:GetHPMax()
				percent = hpmax/100
				unit = AI:GetEctypeVarShort(mapid,46)
				hplose = percent*4
				if unit >= 4 then
					AI:LoseHPInstant(hplose)
					AI:Say("Ice is quite powerful after all!")
					AI:SetEctypeVarShort(mapid,47,1)
				end
				if hpn < percent then--??
					AI:SelfMurder()
				else
					AI:LoseHPInstant(percent)
					rand = AI:GetRand(100)
					if rand < 15 then
						AI:Say("I can endure this icy torment!")
					end
				end--??end
			end--????end
		end--??????

			

	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*100
		-----------------------------------------------------------normal start
		a = AI:GetArray(1)
		if a == 0 then
			AI:SetTimer(1,1000,9999)
			AI:SetArray(1,1)
		end

			----------------------------------------------------------normal end

	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		AI:DelTimer(1)

	end

