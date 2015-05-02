----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:?-??monsterAI-?
--		TaskID:?
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
--		if nIndex == 1 then--????
--			a = AI:GetArray(1)
--			if a == 1 then
--				AI:AddSkill(2053,1)
--				AI:UseSkill(2053,1)
--			end
--		end
--		if nIndex == 2 then--????
--			a = AI:GetArray(2)
--			if a == 2 then
--				AI:AddSkill(2090,1)
--				AI:UseSkill(2090,1)
--			end
--		end

	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

-- 		a = AI:GetArray(1)
--		if a == 0 then
--			AI:SetArray(1,1)
--			AI:SetTimer(1,4500,9999)
--		end
--
-- 		a = AI:GetArray(2)
--		if a == 0 then
--			AI:SetArray(2,1)
--			AI:SetTimer(2,2000,9999)
--		end

			idd=AI:GetAttackTargetPro()
			if idd == 0 then
				AI:GetRandTarget()
			end


	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()



		posx = AI:GetPosX()
		posy = AI:GetPosY()
		AI:SummonMonsterByPos(30282,posx,posy)
		AI:ScreenText( "The fireballs cannot be completely destroyed." , 2)

	end
------------------------------------------------------------------------seekpos
	