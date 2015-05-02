	----------------------------------------------------
	--		Copyright：PERFECT WORLD
	--		Modified：2010/03/17
	--		Author：司文博
	--		Class:	.Lua
	--		AIName：Swb-Mjmy-51510.lua
	--		Remark：特效
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
		-- 
			a = AI:GetArray(2)
			if a == 0 then
				AI:SummonMonsterByPos( 51534 , 199 , 99 )
				AI:PlayEffect("common\\leitingzhili\\fire\\tx_leitingzhili_fire.ini")
				AI:SetArray(2,1)
			elseif a == 1 then
				AI:SummonMonsterByPos( 55124 , 199 , 96 )
				AI:SummonMonsterByPos( 55124 , 199 , 101 )
				AI:SummonMonsterByPos( 55124 , 193 , 99 )
				AI:SummonMonsterByPos( 55124 , 205 , 99 )
				
				AI:SummonMonsterByPos( 51536 , 199 , 96 )
				AI:SummonMonsterByPos( 51536 , 199 , 101 )
				AI:SummonMonsterByPos( 51536 , 193 , 99 )
				AI:SummonMonsterByPos( 51536 , 205 , 99 )
				AI:PlayEffect("common\\leitingzhili\\fire\\tx_leitingzhili_fire.ini")
				AI:SetArray(2,2)
			elseif a == 2 then
			
				AI:SummonMonsterByPos( 55124 , 199 , 93 )
				AI:SummonMonsterByPos( 55124 , 199 , 105 )
				AI:SummonMonsterByPos( 55124 , 187 , 99 )
				AI:SummonMonsterByPos( 55124 , 211 , 99 )
				
				AI:SummonMonsterByPos( 51536 , 199 , 93 )
				AI:SummonMonsterByPos( 51536 , 199 , 105 )
				AI:SummonMonsterByPos( 51536 , 187 , 99 )
				AI:SummonMonsterByPos( 51536 , 211 , 99 )
				AI:PlayEffect("common\\leitingzhili\\fire\\tx_leitingzhili_fire.ini")
				AI:SetArray(2,3)
			end
		end
		
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
			a = AI:GetArray(1)
			if a == 0 then
				AI:SetTimer(0 , 4000 , 4 )
				AI:PlayEffect("common\\leitingzhili\\fire\\tx_leitingzhili_fire.ini")
				AI:SetArray(1,1)
			end
    end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)

	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
	end
	
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	
	end
	