----------------------------------------------------
--		Copyright��PERFECT WORLD
--		Modified��2011/08
--		Author��������
--		TaskName����ͨ��monsterAI��
--		TaskID��
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