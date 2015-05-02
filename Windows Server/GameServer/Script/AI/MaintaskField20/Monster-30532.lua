	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/03/30
	--		Author:???
	--		Class:	Monster-30532.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
		function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
			if nIndex == 0 then
				AI:SelfMurder()
			end
		
		end
		
		function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
			a = AI:GetArray(4)
	    if a == 0 then
				AI:SetTimer(0,12000,1)
				AI:SetArray(4,1)
			end
	    
		end 
		
		function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
    
    map = AI:GetMapID()
    AI:AddSeekPos( map , 94 , 125 )
    
    end
    
    function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
    
    	if (( PosX == 94 ) and ( PosY == 125 )) then
        	--AI:Say("GUID:02953000000")
					AI:SetAIState( 7 )
        	
      end
		end
		
		function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		end