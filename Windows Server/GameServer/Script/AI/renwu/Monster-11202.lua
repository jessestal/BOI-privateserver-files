	----------------------------------------------------
	--		Copyright£∫PERFECT WORLD
	--		Modified£∫2011/6/28
	--		Author£∫÷ÏΩ®≥º
	--		Class:	.Lua
	--		AIName£∫
	--		Remark£∫
	----------------------------------------------------
	
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			n = AI:GetRand(1)
			if n == 0 then			
				AI:PlayAction("skill\\Knight\\dantichaofeng\\fire\\tx_knight_dantichaofeng_fire.ini" ,0, 1 )
			end
		
			if n == 1 then
				AI:PlayAction("skill\\Knight\\wudi\\fire\\tx_knight_wudi_fire.ini" ,0, 1 )
			end
		end
	end
		
		function Event_Thinking(nAI)
			local AI = GetMonsterAI(nAI)
			
			a = AI:GetArray(1)
			b = math.random(10000,20000)
			--c = math.random(20000,30000)
			if a == 0 then
				AI:SetTimer(0,b,65535)
				--AI:SetTimer(1,c,65535)
				AI:SetArray(1,2)
			end
		end