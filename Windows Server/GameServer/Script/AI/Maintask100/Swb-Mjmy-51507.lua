	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/07
	--		Author:???
	--		Class:	.Lua
	--		AIName:Swb-Mjmy-51507.lua
	--		Remark:???
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		-- 
		end
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
			a = AI:GetArray(1)
			if a == 0 then
				AI:SetArray(1,1)
			end
    end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	    AI:AddSeekPos(254,129,199)
	    AI:AddSeekPos(254,122,177)  --
	    AI:AddSeekPos(254,122,151)  --
	    AI:AddSeekPos(254,112,145)  --
	    AI:AddSeekPos(254,100,140)  --
	    AI:AddSeekPos(254,99,124)  --??
	    AI:AddSeekPos(254,98,111)  --
	    
	    
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		
		if (( PosX == 129 ) and ( PosY == 199 )) then
			AI:Say("Let me take you to meet Ammit.")
		elseif (( PosX == 122 ) and ( PosY == 177 )) then
			AI:Say("The place ahead is Hell.")
		elseif (( PosX == 122 ) and ( PosY == 151 )) then
			AI:Say("You will see countless ghosts come to hell, enter the gate of eternity......")
		elseif (( PosX == 112 ) and ( PosY == 145 )) then
			AI:Say("They can reach the place they want to go through here.")
		elseif (( PosX == 100 ) and ( PosY == 140 )) then
			AI:Say("I will help you open this gate, Ammit lives behind this gate.")
		elseif (( PosX == 99 ) and ( PosY == 124 )) then
			AI:OpenMapMask(3)
		elseif (( PosX == 98 ) and ( PosY == 111 )) then	
			AI:AddNPC( 510 )
			AI:SelfMurder()
		end
	end
	
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	
	end
	