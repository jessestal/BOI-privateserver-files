	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/8/09
	--		Author:???
	--		Class:	Monster-30290.Lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex,nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 0 then
			--20?
			AI:PlayAction("skill\\Monster\\boss\\shenshengguangyao\\fire\\tx_boss_shenshengguangyao_fire.ini" , 0, 1)
		end

		if nIndex == 1 then
			--22?
			AI:SelfMurder()
		end
	end
		
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
			
		a = AI:GetArray(1)
		if a == 0 then
			AI:ScreenText("Artemis: Hephaestus, stop! That ring is the key to reviving Odin!", 1)
			AI:PlayAction("skill\\Monster\\boss\\shenshengguangyao\\fire\\tx_boss_shenshengguangyao_fire.ini" , 0, 1)
			AI:SetTimer(0,20000,1)
			AI:SetTimer(1,22000,1)
			AI:SetArray(1,1)
		end
	end
		