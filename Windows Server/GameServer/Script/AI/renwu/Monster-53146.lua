	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-53146.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      

      
  end
  
  function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
		
			t = AI:HaveAttackTarget()
 			HP = AI:GetHP()
    	HPMAX = AI:GetHPMax()
    	a = AI:GetArray(1)
--    	
--    	if a == 0 then
--				if HP < HPMAX * 0.3 then
--					AI:ScreenText("GUID:03083000000",2)
--					AI:SummonMonsterByPos(53147,156,81)
--					AI:SetArray(1,1)
--				end
--			end
		
	

	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
    
    mapid = AI:GetMapID()
    AI:AddSeekPos( mapid , 159 , 99 )
    
  end
  
  function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
  	local AI = GetMonsterAI(nAI)
  	
  	if ((PosX == 159 ) and  (PosY == 99 )) then
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
			AI:ScreenText("Is that the enemy Queen? Look out, she's tough!",2)
			AI:SummonMonsterByPos(53148,163,88)
		end
		
	end