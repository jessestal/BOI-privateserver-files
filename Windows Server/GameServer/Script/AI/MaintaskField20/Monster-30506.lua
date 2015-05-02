	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/03/13
	--		Author:???
	--		Class:	Monster-30506.lua
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
      AI:ScreenText( "My daughter, where is she?!", 1 )
      AI:Say("My daughter, where is she?!")
	end      