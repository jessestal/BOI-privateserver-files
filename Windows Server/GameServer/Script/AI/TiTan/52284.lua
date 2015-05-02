----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2010/11/11
--		Author:???
--		Class:	.Lua
--		AIName:monster-51245.lua
--		Remark:??
----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 1 then
			a = AI:GetArray(1)
			if a == 1 then
				AI:SetArray(1,2)
				AI:ChangeFaction(1)
				AI:Say( "Who dares summon me! These human cowards?!" )
			end
		end
		
		-------------1??---
		if nIndex == 2 then
			a = AI:GetArray(2)
--AI:Say( "GUID:03211000001" )
			if a == 1 then
				AI:SetArray(2,2)
				AI:Say( "Hahaha! You can never kill me! " )
				AI:ScreenText("Hahaha! You can never kill me! ",2)
				AI:AddSkill(2085, 3)
				AI:UseSkillByID(-1, 2085, 3)
			end
		end
		
	----
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)

		a = AI:GetArray(1)
		if a == 0 then
			AI:SetTimer(1,3000,1)
			AI:SetArray(1,1)
			AI:ChangeFaction(5)
		end
		
		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax
		hppct = hppct*1000
		
		a = AI:GetArray(2)
		if a == 0 then
			if hppct < 500 then --??1??????
				AI:SetTimer(2,2000,1)
				AI:SetArray(2,1)
--AI:Say( "1" )
			end
		end

--AI:Say( "GUID:03211000004"..tostring(hppct))
	end
	
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		AI:Say( "Killed...?! By mortals...?!" )
		
	end
	