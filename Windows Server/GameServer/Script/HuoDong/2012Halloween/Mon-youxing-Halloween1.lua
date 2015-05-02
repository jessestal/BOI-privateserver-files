
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
--------------------------------------------------
		
 --------------------------------------------------------
		 if nIndex == 3 then
        
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
		
			AI:SetTimer(1,1000,999)
			
			AI:SetTimer(3,76000,10)
		  AI:UpdateSeekPath(1)
				
      end
      AI:SetArray (3, 1)
    end
---------------------------------------------------------------------------

	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)

		if nIndex == 1 then
	
	  AI:AddSeekPos( 86 , 181, 103 )
    	AI:AddSeekPos( 86 , 220, 106 )
    	AI:AddSeekPos( 86 , 243, 150 )
    	AI:AddSeekPos( 86 , 215, 206 )
    	AI:AddSeekPos( 86 , 153, 207 )
    	AI:AddSeekPos( 86 , 119, 176 )
    	AI:AddSeekPos( 86 , 121, 110 )
    	AI:AddSeekPos( 86 , 176, 116 )
    

	end                  

	end

---------------------------------------------------------------------------
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		PosX = AI:GetPosX()
	   	PosY = AI:GetPosY()

		if (( PosX == 176 ) and ( PosY == 116 )) then
	--	 r = math.random(1,3)                                                                   
 	--                                                                                      
  --    	                                                                                
  --                                                                                      
  --    	if r == 1 then                                                                  
  --    		AI:PlayEffect("common\\transmit\\colorfulring\\fire\\colorfulring_fire.ini")  
  --    	end                                                                             
  --    	if r == 2 then                                                                  
  --    		AI:PlayEffect("common\\Yanhua\\tx_aixin\\tx_aixin.ini")              
  --    	end                                                                             
  --    	if r == 3 then                                                                  
  --    		AI:PlayEffect("common\\Yanhua\\tx_ptyanhua\\tx_hhyanhua_01.ini")              
  --    	end    
			AI:Exit()
		end
	end
---------------------------------------------------------------------------
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
	
	end
