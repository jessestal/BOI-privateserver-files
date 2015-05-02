
	--****************************************
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2012/10/15
	--		Author:???
	--		Class: Lua
	--		AIName:Mon-youxuing-Halloween.lua
	--		Backup:??????
	--****************************************
--

	function Event_OnTimer(nAI,nIndex, nCount)
    	local AI = GetMonsterAI(nAI)
---------------------------------------------------------------
    if nIndex == 1 then
    
      x = AI:GetPosX()
	   	y = AI:GetPosY()


	  	
		end
---------------------------------------------------------------------------
		if nIndex == 2 then
	
	        posx = AI:GetPosX()
		     	posy = AI:GetPosY()
		     	x = math.ceil(posx)
		     	y = math.ceil(posy)
		     	AI:ScreenText("The Halloween parading procession is near the Sea of Atlantis!"..tostring(x)..","..tostring(y).."!",2)
--	   r = math.random(1,3)
--	   	
--          	
--          
--          	if r == 1 then
--          		AI:PlayEffect("common\\transmit\\colorfulring\\fire\\colorfulring_fire.ini")
--          	end
--          	if r == 2 then
--          		AI:PlayEffect("common\\Yanhua\\tx_ptyanhua\\tx_hhyanhua_03.ini")
--          	end
--          	if r == 3 then
--          		AI:PlayEffect("common\\Yanhua\\tx_ptyanhua\\tx_hhyanhua_01.ini")
--          	end
--         
--        
--        
     
	 end
---------------------------------------------------------------------------
        if nIndex == 3 then
        AI:ScreenText("A group of Clowns appeared trying to take away our gifts. Warriors, let's drive them away and get our gifts back!",2)
           posx = AI:GetPosX()
		     	posy = AI:GetPosY()
		     x1 = posx + 3
		     	x2 = posx - 3
		     	y1 = posy + 3
		     	y2 = posy - 3
		     	
		     	MonsterID = 32301
		     	r = math.random(0,2)
		     	n = AI:GetArray(1)
		    
		     	a = 0
		     	for a =1,5 do
		     	AI:SummonMonsterByPos(MonsterID,x1+r,posy+r)
		     	end
		     	a = 0
		     	for a =1,5 do
		     	AI:SummonMonsterByPos(MonsterID,x2+r,posy+r)
		     	end
		     	a = 0
		     	for a =1,5 do
		     	AI:SummonMonsterByPos(MonsterID,posx+r,y1+r)
		     	end
		     	a = 0
		     	for a =1,5 do
		     	AI:SummonMonsterByPos(MonsterID,posx+r,y2+r)
		     	end
		    
		    
        end   
---------------------------------------------------------------------------
        if nIndex == 4 then
        AI:ScreenText("A group of Clowns appeared trying to take away our gifts. Warriors, let's drive them away and get our gifts back!",2)
           posx = AI:GetPosX()
		     	posy = AI:GetPosY()
		     x1 = posx + 3
		     	x2 = posx - 3
		     	y1 = posy + 3
		     	y2 = posy - 3
		     	
		     	MonsterID = 32301
		     	r = math.random(0,2)
		     	n = AI:GetArray(1)
		    
		     	a = 0
		     	for a =1,5 do
		     	AI:SummonMonsterByPos(MonsterID,x1+r,posy+r)
		     	end
		     	a = 0
		     	for a =1,5 do
		     	AI:SummonMonsterByPos(MonsterID,x2+r,posy+r)
		     	end
		     	a = 0
		     	for a =1,5 do
		     	AI:SummonMonsterByPos(MonsterID,posx+r,y1+r)
		     	end
		     	a = 0
		     	for a =1,5 do
		     	AI:SummonMonsterByPos(MonsterID,posx+r,y2+r)
		     	end
		    
		    
        end   
end
------------------------------------------------------------
        
        
    function Event_Thinking(nAI)
      local AI = GetMonsterAI(nAI)
			posx = AI:GetPosX()
			posy = AI:GetPosY()
			
		n = AI:GetArray(3)
		if n == 0 then 
		        AI:ScreenText("The Halloween Parade has already started! You can join the parade in the Sea of Atlantis (180,109)!",2)
				AI:SetTimer(1,1000,999)
				AI:SetTimer(4,10000,1)
				AI:SetTimer(2,60000,10)
				AI:SetTimer(3,78000,9)
		
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
		AI:ScreenText("Goodbye my friends! Enjoy your Halloween!",2)
		 AI:Say("Goodbye my friends! Enjoy your Halloween!")     
		 
			AI:Exit()
	                                                                         

		end
	end

	function Event_OnDead(nAI)
    	  local AI = GetMonsterAI(nAI)    
	end  