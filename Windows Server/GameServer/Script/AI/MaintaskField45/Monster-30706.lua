	----------------------------------------------------
	--		Copyright£∫PERFECT WORLD
	--		Modified£∫2012/7/25
	--		Author£∫÷ÏΩ®≥º
	--		Class:	.lua
	--		AIName£∫Monster-30706.lua
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
		mapid = AI:GetMapID()
		shu = AI:GetEctypeVarShort(mapid,1)
		shu = shu + 1
		AI:SetEctypeVarShort(mapid,1,shu)
		
		if shu == 5 then
			x = AI:GetPosX()
			y = AI:GetPosY()
			AI:SummonMonsterByPos(30726,x,y)
		end
		
	end