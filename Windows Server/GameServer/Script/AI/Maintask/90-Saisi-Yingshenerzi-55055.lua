	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/07
	--		Author:???
	--		Class:	.Lua
	--		AIName:Main-90-Yingshenerzi-55055.lua
	--		Backup:90???????
	----------------------------------------------------
	
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		-- 
			AI:Say("Hooray! Horus! ") 
		end
		
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		a = AI:GetArray(1)
		if a == 0 then
			AI:SetTimer(0,10000,1)
			AI:SetArray(1,1)
		end
    end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	    AI:AddSeekPos( 243 , 245 , 226 )
	   
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		if (( PosX == 245 ) and ( PosY == 230 )) then
	        AI:SetTimer(0,3000,1)
	        AI:SetAIState(0)
	        AI:ScreenText("Horus' Son are in a frenzy! ", 2 )
	    end	
	end
	