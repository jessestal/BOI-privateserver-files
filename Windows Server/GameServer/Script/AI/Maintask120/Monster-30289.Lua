	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/8/09
	--		Author:???
	--		Class:	Monster-30289.Lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex,nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
			if nIndex == 0 then
				--5?
				AI:ScreenText("Hephaestus: After all the sacrifice you've seen, you still insist? I'm afraid it's too late.",1)
			end
			
			if nIndex == 1 then
				--10?
				AI:ScreenText("Chiron: Only through Odin's return can we prevent even greater losses!",1)
			end
			
			if nIndex == 2 then
				--15?
				AI:ScreenText("Hephaestus: No, it has always been futile. Perhaps with Charlotte gone, you too will see.",1)
			end
			
			if nIndex == 3 then
				--20?
				AI:ScreenText("Artemis: I hoped you might finally understand, but it seems an agreement is impossible. Goodbye.",1)
				AI:PlayAction("skill\\Monster\\boss\\shenshengguangyao\\fire\\tx_boss_shenshengguangyao_fire.ini" , 0, 1)
			end
						
			if nIndex == 4 then
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
				AI:SetTimer(0,5000,1)
				AI:SetTimer(1,10000,1)
				AI:SetTimer(2,15000,1)
				AI:SetTimer(3,20000,1)
				AI:SetTimer(4,22000,1)
				AI:SetArray(1,1)
			end
		end
			
  