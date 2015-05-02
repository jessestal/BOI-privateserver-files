
	--****************************************
	--
	--		Copyright：PERFECT WORLD
	--		Modified：2012/10/15
	--		Author：曹楚蒨
	--		Class: Lua
	--		AIName：Mon-youxuing-Halloween.lua
	--		Backup：万圣节游行怪
	--****************************************
--30秒一次，每次25只，600/25=24，24*30/60=12分钟，720秒

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


	  	 AI:AddSeekPos( 86 , 183 , 102 )
    	AI:AddSeekPos( 86 , 217 , 112 )
    	AI:AddSeekPos( 86 , 237 , 129 )
    	AI:AddSeekPos( 86 , 240 , 153 )
    	AI:AddSeekPos( 86 , 229 , 187 )
    	AI:AddSeekPos( 86 , 210 , 203 )
    	AI:AddSeekPos( 86 , 173 , 209 )
    	AI:AddSeekPos( 86 , 152 , 206 )
    	AI:AddSeekPos( 86 , 134 , 195 )
    	AI:AddSeekPos( 86 , 123 , 169 )
    	AI:AddSeekPos( 86 , 117 , 130 )
    	AI:AddSeekPos( 86 , 126 , 116 )
    	AI:AddSeekPos( 86 , 176 , 116 )
    	
		end

	end


	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		PosX = AI:GetPosX()
	  PosY = AI:GetPosY()

		if (( PosX == 176 ) and ( PosY == 116 )) then
		
			AI:Exit()
		end
	end

	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)


	end
