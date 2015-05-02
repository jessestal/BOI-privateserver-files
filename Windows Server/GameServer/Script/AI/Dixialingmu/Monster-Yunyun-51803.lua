----------------------------------------------------
--		Copyright£ºPERFECT WORLD
--		Modified£º2011/08
--		Author£ººú±óÌÎ
--		TaskName£º¡¾Í¨ÓÃmonsterAI¡¿
--		TaskID£º
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		
	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)

		AI:SelfMurder()
		
		
	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)		
		local mapid = AI:GetMapID()
		



		--AI:ScreenText( "" , 2)
		
	end
-----------------------------------------------------