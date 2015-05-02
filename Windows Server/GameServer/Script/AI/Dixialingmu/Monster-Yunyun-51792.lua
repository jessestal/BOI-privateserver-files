----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:??1
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
--		if nIndex == 1 then--????
--			a = AI:GetArray(1)
--			if a == 1 then
--			
--			end
--		end
--		
--		if nIndex == 2 then--????
--			a = AI:GetArray(2)
--			if a == 1 then				
--				
--			end
--		end--????end
		
	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)

--		a = AI:GetArray(1)
--		if a == 0 then --?????
--			AI:SetTimer(1,1000,1)
--			AI:SetArray(1,1)
--			
--			--AI:Say("")
--			--AI:ScreenText( "" , 2)
--		end
--
--		a = AI:GetArray(2)
--		if a == 0 then --????
--			AI:SetTimer(2,5000,999)
--			AI:SetArray(2,1)
--			
--			--AI:Say("")
--			--AI:ScreenText( "" , 2)
--		end
		
		
	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)		
		local mapid = AI:GetMapID()
		
		PosX=AI:GetPosX()
		PosY=AI:GetPosY()
		AI:SummonMonsterByPos(51793,PosX,PosY,0)
		AI:SummonMonsterByPos(51803,PosX,PosY,0)
		
		rand = AI:GetRand(100)
		if rand < 40 then
			AI:Say("Sin is an eternal aspect of existence...")
		end

		
	end
