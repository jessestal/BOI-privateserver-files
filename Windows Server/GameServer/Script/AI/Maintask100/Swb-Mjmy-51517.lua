	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2010/02/24
	--		Author:???
	--		Class:	.Lua
	--		AIName:Swb-Mjmy-51517.lua
	--		Remark:
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		-- 
			a = AI:GetArray(2)
			if a == 0 then
				AI:Say("Don't waste time, you can't help Tyr release the trap.")
				AI:SetArray(2,1)
			elseif a == 1 then
				AI:Say("You should look for Mjollnir, Thor's Hammer!")
				AI:SetArray(2,2)
			elseif a == 2 then
				AI:Say("Only with the help of Mjollnir, Thor's Hammer can you defeat Tyr.")
				AI:SetArray(2,3)
			elseif a == 3 then
				AI:SetAIState(0)
			end
		end
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
			
    end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    AI:AddSeekPos(254,147,131)
	    AI:AddSeekPos(254,155,122)  
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		if (( PosX == 147 ) and ( PosY == 131 )) then
			AI:SetTimer(0,5000,5)
			AI:PlayEffect("skill\\Monster\\yuansuhuan\\fire\\binghuan\\tx_binghuan_fire.ini")
			AI:SetAIState(7)
		elseif (( PosX == 155 ) and ( PosY == 122 )) then
			AI:AddNPC( 523 )
			AI:Exit()
		end
	end
	
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	
	end
	