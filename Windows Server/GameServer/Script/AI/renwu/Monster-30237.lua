	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/6/28
	--		Author:???
	--		Class:	.Lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
			if nIndex == 0 then
				a = AI:GetArray(1)
				if a == 1 then
				AI:SelfMurder()
				AI:Exit()
				end
			end
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		a = AI:GetArray(1)
		if a == 0 then
			AI:ScreenText("Hades came and took Ansurine's soul!",1)
			AI:PlayAction("skill\\Priest\\anshang\\fire\\tx_priest_anshang_fire.ini",0,1)
			AI:PlayAction("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini",0,1)
			AI:SetArray(1,2)
			AI:SetTimer(0,4000,1)
		end
	end