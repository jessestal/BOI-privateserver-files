	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-53147.lua
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
    AI:AddSeekPos( mapid , 156 , 98 )
    
  end
  
  function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
  	local AI = GetMonsterAI(nAI)
  	
  	if ((PosX == 156 ) and  (PosY == 98 )) then
			AI:SetAIState(0)
		end
		
	end
  
  function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		mapid = AI:GetMapID()
		
		n = AI:GetEctypeVarShort(mapid,4)
		n = n + 1
		AI:SetEctypeVarShort(mapid,4,n)
		if n == 2 then
			AI:ScreenText("My Queen! It's your turn now!",2)
			AI:SummonMonsterByPos(53148,163,88)
		end
		
	end