	-----------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2012/07/30
	--		Author:???
	--		AIName:Monster_53000.lua
	--		AIID:53000 ????
	--
	-----------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
	  
	  if nIndex == 0 then
	  	AI:Say("Start with the Robot Guard! Find the Titan Beacon!") 
	  	AI:ScreenText("Start with the Robot Guard! Find the Titan Beacon!",2)
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
			AI:Say("According to the letter, an item called the Titans' Beacon has been lost to the Robot Guard! We've no way to recover it... it's the very item that we need!")
			AI:SetTimer(0,4000,1)
			AI:SetTimer(1,10000,1)
			AI:SetArray(1,1)
		end
	
	end
	   