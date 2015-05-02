
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


	  	AI:AddSeekPos( 86 , 182 , 119 )
    	AI:AddSeekPos( 86 , 169 , 87  )
    	AI:AddSeekPos( 86 , 135 , 103 )
    	AI:AddSeekPos( 86 , 107 , 174 )
    	AI:AddSeekPos( 86 , 142 , 209 )


  
		end                   

	end

---------------------------------------------------------------------------
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		PosX = AI:GetPosX()
	   	PosY = AI:GetPosY()

		if (( PosX == 142 ) and ( PosY == 209 )) then
		 
			AI:SelfMurder()
		end
	end
---------------------------------------------------------------------------
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
	    x = AI:GetPosX()
	   	y = AI:GetPosY()
	   	MonsterID = 
	    AI:SummonMonsterByPos(MonsterID,x,y)
	end
