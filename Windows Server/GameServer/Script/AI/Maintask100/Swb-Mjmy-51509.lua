	----------------------------------------------------
	--		Copyright��PERFECT WORLD
	--		Modified��2009/11/07
	--		Author��˾�Ĳ�
	--		Class:	.Lua
	--		AIName��Swb-Mjmy-51509.lua
	--		Remark������
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
			
    end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	    AI:AddSeekPos(254,199,99)
	    
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		
		if (( PosX == 199 ) and ( PosY == 99 )) then
			AI:SelfMurder()
		end
	end
	
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	
	end
	