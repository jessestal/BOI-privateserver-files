	-----------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2012/07/30
	--		Author:???
	--		AIName:Monster_53112.lua
	--		AIID:53112 ????
	--
	-----------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
	  
	  if nIndex == 0 then
	  	AI:Say("He's got the Titans' Beacon!") 
	  	AI:ScreenText("He's got the Titans' Beacon!",2)
	  end
	  
	  if nIndex == 1 then
	  	AI:SelfMurder()
	  end
	
	end
	
	function Event_Thinking(nAI)
	  local AI = GetMonsterAI(nAI)
	  
	  a = AI:GetArray(1)
		if a == 0 then
			AI:PlayAction("skill\\Monster\\boss\\shenshengguanzhu\\fire\\shenshengguanzhu_fire.ini" , 0, 1)
			AI:SetTimer(0,2000,1)
			AI:SetTimer(1,10000,1)
			AI:SetArray(1,1)
		end
	
	end
	   