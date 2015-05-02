	-----------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2012/07/30
	--		Author:???
	--		AIName:Monster_53109.lua
	--		AIID:53109 ????
	--
	-----------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
	  
	  
	  if nIndex == 0 then
	  	AI:SelfMurder()
	  end
	
	end
	
	function Event_Thinking(nAI)
	  local AI = GetMonsterAI(nAI)
	  
	  a = AI:GetArray(1)
		if a == 0 then
			AI:PlayAction("skill\\Monster\\boss\\shenshengguanzhu\\fire\\shenshengguanzhu_fire.ini" , 0, 1)
			AI:Say("One of the Giant Slave Elites must be carrying the other fragment of the Titans' Beacon!")
			AI:ScreenText("One of the Giant Slave Elites must be carrying the other fragment of the Titans' Beacon!",2)
			AI:SetTimer(0,10000,1)
			AI:SetArray(1,1)
		end
	
	end
	   