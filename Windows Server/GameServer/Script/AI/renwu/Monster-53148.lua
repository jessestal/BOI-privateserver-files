	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-53148.lua
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
    AI:AddSeekPos( mapid , 158 , 99 )
    
  end
  
  function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
  	local AI = GetMonsterAI(nAI)
  	
  	if ((PosX == 158 ) and  (PosY == 99 )) then
			AI:SetAIState(0)
		end
		
	end
	
  function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		mapid = AI:GetMapID()
		
			AI:ScreenText("Are you sure you can defend against my King?",2)
			AI:SummonMonsterByPos(53129,163,88)
		
		
	end