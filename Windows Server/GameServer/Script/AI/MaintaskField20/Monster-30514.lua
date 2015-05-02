	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/10
	--		Author:???
	--		Class:	Monster-30514.lua
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

      map_id = AI:GetMapID()
      posx = AI:GetPosX()
			posy = AI:GetPosY()
			AI:ScreenText("The monster splits into pieces!",1)
			AI:SummonMonsterByPos( 30515 , posx+3 , posy )
			AI:SummonMonsterByPos( 30515 , posx-3 , posy )
		end