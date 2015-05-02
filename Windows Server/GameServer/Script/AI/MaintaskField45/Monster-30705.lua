	----------------------------------------------------
	--		Copyright£∫PERFECT WORLD
	--		Modified£∫2012/7/25
	--		Author£∫÷ÏΩ®≥º
	--		Class:	.lua
	--		AIName£∫Monster-30705.lua
	--		Remark£∫
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      

      
  end
  
  function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	

	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        

	end
	 
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		ectype_id = AI:GetMapID()
		x = AI:GetPosX()
		y = AI:GetPosY()
		
		shu = AI:GetEctypeVarShort(ectype_id,2)
		shu = shu + 1
		AI:SetEctypeVarShort(ectype_id,2,shu)
		
		if shu == 4 then
			AI:SummonMonsterByPos(30727,x,y)
		end
				
				
		
		
	end