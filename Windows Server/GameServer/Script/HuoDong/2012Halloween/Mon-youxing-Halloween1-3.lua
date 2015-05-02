
	--****************************************
	--
	--		Copyright：PERFECT WORLD
	--		Modified：2012/10/16
	--		Author：曹楚蒨
	--		Class: Lua
	--		AIName：AI_longdichuansong01.lua
	--		Backup：万圣节游行怪
	--****************************************


	function Event_OnTimer(nAI,nIndex, nCount)
    	local AI = GetMonsterAI(nAI)
---------------------------------------------------------------
    if nIndex == 1 then
 
      x = AI:GetPosX()
	   	y = AI:GetPosY()


	  	
		end

end
------------------------------------------------------------
        
        
    function Event_Thinking(nAI)
      local AI = GetMonsterAI(nAI)
			posx = AI:GetPosX()
			posy = AI:GetPosY()
			
		n = AI:GetArray(3)
		if n == 0 then 
		
			AI:SetTimer(1,1000,999)
		  AI:UpdateSeekPath(1)
				
      end
      AI:SetArray (3, 1)
    end
---------------------------------------------------------------------------

	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then
	   	x = AI:GetPosX()
	   	y = AI:GetPosY()
  AI:AddSeekPos( 86 , 181, 103 )  
AI:AddSeekPos( 86 , 220, 106 )       
AI:AddSeekPos( 86 , 243, 150 )       
AI:AddSeekPos( 86 , 215, 206 )       
AI:AddSeekPos( 86 , 153, 207 )       
    
    
    
                                     
		end                  

	end

---------------------------------------------------------------------------
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		PosX = AI:GetPosX()
	   	PosY = AI:GetPosY()

		if (( PosX == 153 ) and ( PosY == 207 )) then
		 MonsterID = 32324
	    AI:SummonMonsterByPos(MonsterID,x,y)
			AI:Exit()
		end
	end
---------------------------------------------------------------------------
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
	  
	end
