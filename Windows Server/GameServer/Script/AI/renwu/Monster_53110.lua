	-----------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2012/07/30
	--		Author:???
	--		AIName:Monster_53110.lua
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
			AI:Say("Click on the fragments to combine them!")
			AI:ScreenText("Click on the fragments to combine them!",2)
			AI:SetTimer(0,10000,1)
			AI:SetArray(1,1)
		end
	
	end
	   