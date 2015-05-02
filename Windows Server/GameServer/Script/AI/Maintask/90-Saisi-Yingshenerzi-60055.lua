	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/07
	--		Author:???
	--		Class:	.Lua
	--		AIName:Main-90-Yingshenerzi-60055.lua
	--		Backup:90???????
	----------------------------------------------------
	
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		-- 
			AI:SetAIState(0)
			AI:Say("Let's work, guys! ") 
		end
		
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		a = AI:GetArray(1)
		if a == 0 then
			AI:SetTimer(0,10000,1)
			AI:SetAIState(7)
			AI:SetArray(1,1)
		end
    end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	    AI:AddSeekPos( 243 , 245 , 225 )
	   
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
			
	end
	