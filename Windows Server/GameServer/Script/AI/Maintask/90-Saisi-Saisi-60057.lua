	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/07
	--		Author:???
	--		Class:	.Lua
	--		AIName:Main-90-Saisi-60057.lua
	--		Backup:90???????
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		-- 
			AI:Say("You are stronger than before, young one!") 
			AI:SetTimer(1,3000,1)
		end
		if nIndex == 1 then
		--
			AI:Say("Don't ask why! Look instead to the one beside you!")
		end
     	if nIndex == 4 then
		--
			AI:Say("Let's fight! ")
			AI:ChangeFaction(1)
			AI:SetAIState(0)
		end
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		a = AI:GetArray(1)
		if a == 0
			AI:SetTimer(0,3000,1)
			
			AI:SetArray(1,1)
		end
    end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    	 
	    AI:AddSeekPos( 243 , 245 , 212)
	    AI:AddSeekPos( 243 , 245 , 220 )
	    AI:AddSeekPos( 243 , 245 , 225 )
	   
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
	    
	    if (( PosX == 245 ) and ( PosY == 212 )) then
			AI:Say("You think you are worthy? ")
	    end
	    if (( PosX == 245 ) and ( PosY == 220 )) then
	    	AI:SetAIState(7)
	        AI:Say("OK, guards, come out now! ")
	        AI:SummonMonsterByPos( 60058 , 243 , 220 )
	        AI:SummonMonsterByPos( 60058 , 245 , 220)
	        AI:SummonMonsterByPos( 60058 , 247 , 220 )
	        AI:SetTimer(4,50000,1)
		end
		if (( PosX == 245 ) and ( PosY == 225 )) then
	       	AI:Exit()
	    end
	    	
	end
	