	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-53144.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      

      
  end
  
  function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	

	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
    
    mapid = AI:GetMapID()
    AI:AddSeekPos( mapid , 159 , 100 )
    
  end
  
  function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
  	local AI = GetMonsterAI(nAI)
  	
  	if ((PosX == 159 ) and  (PosY == 100 )) then
			AI:SetAIState(0)
		end
		
	end
  
  function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		mapid = AI:GetMapID()
		
		n = AI:GetEctypeVarShort(mapid,3)
		n = n + 1
		AI:SetEctypeVarShort(mapid,3,n)
		if n == 3 then
			AI:ScreenText("Looks like I'll need faster chess pieces to defeat you!",2)
			AI:SummonMonsterByPos(53146,171,90)
			AI:SummonMonsterByPos(53147,156,81)
		end
		
	end