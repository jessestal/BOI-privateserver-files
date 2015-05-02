	----------------------------------------------------
	--		Copyright£∫PERFECT WORLD
	--		Modified£∫2012/7/25
	--		Author£∫÷ÏΩ®≥º
	--		Class:	.lua
	--		AIName£∫Monster-53007.lua
	--		Remark£∫
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
   
  end
  
  function Event_Thinking(nAI)
			local AI = GetMonsterAI(nAI)
			
	end
	
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		mapid = AI:GetMapID()
		x = AI:GetPosX()
		y = AI:GetPosY()
		--AI:SummonMonsterByPos( 53008, posX , posY)
		
	 end