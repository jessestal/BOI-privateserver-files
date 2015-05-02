	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/03/21
	--		Author:???
	--		Class:	Monster-30538.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
			if nIndex == 0 then
				AI:ScreenText("Ringo: What the?! AHHH!",1)				
			end
			
			if nIndex == 1 then
				AI:ScreenText("The Blubbery Mollusk has swallowed Ringo whole!",1)
				AI:SelfMurder()
			end
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
			a = AI:GetArray(4)
	    if a == 0 then
	    	AI:ScreenText("Ringo: Captain! I will find you! Nothing can stop me now!",1)
				AI:SetArray(4,1)
			end
	    
	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
    
    map = AI:GetMapID()
    AI:AddSeekPos( map , 156 , 152 )
    
  end
  
  function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
    
    	if (( PosX == 156 ) and ( PosY == 152 )) then
        	AI:SetTimer(0,1000,1)
        	AI:SetTimer(1,5000,1)
					AI:SetAIState( 7 )
        	
      end
	end