	----------------------------------------------------
	--		Copyright：PERFECT WORLD
	--		Modified：2009/11/07
	--		Author：司文博
	--		Class:	.Lua
	--		AIName：Swb-Mjmy-51522.lua
	--		Remark：隐形的灵魂者
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
				
				AI:AddSkill(2018,1)
	    	AI:UseSkill(2018,1)
	    	AI:SetArray(1,1)
			end
    end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	     AI:AddSeekPos(254,122,167)
	     AI:AddSeekPos(254,122,144)
	     
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
			if (( PosX == 122 ) and ( PosY == 144 )) then
			AI:SelfMurder()
		end
	end
	
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	
	end
	