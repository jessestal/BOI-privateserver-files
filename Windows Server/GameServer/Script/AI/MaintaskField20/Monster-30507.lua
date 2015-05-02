	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/03/13
	--		Author:???
	--		Class:	Monster-30507.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
	end
	
	function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)     
      AI:ScreenText( "We're got to save as many animals as we can!", 1 )
      AI:Say("We're got to save as many animals as we can!")
	end      