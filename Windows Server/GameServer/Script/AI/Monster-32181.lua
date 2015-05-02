	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/07
	--		Author:???
	--		Class:	.Lua
	--		AIName:Monster-32181.lua
	--		Remark:????
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
	end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	    AI:AddSeekPos(0,114,136)  
	    AI:AddSeekPos(0,120,137)  
	    AI:AddSeekPos(0,127,138)
	    AI:AddSeekPos(0,135,134)  
	    AI:AddSeekPos(0,141,129)
	    AI:AddSeekPos(0,140,122)
	    AI:AddSeekPos(0,153,113)
	    AI:AddSeekPos(0,165,104)
	    AI:AddSeekPos(0,164,94)  
	    AI:AddSeekPos(0,158,87)  
	    AI:AddSeekPos(0,161,80)  
	    AI:AddSeekPos(0,163,75)

	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		if (( PosX == 114 ) and ( PosY == 136 )) then
			AI:Say("I am going to ask for information on the World Tree. If you are interested, come with me.")
		elseif (( PosX == 141 ) and ( PosY == 129 )) then
			AI:Say("This is a pleasant walk.")
		elseif (( PosX == 161 ) and ( PosY == 80 )) then
			AI:Say("Almost there.")
		end
	end
	
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
	end
	