----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012-8
--		Author:???
--		TaskName:?-??????-?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--???1--start
			a=AI:GetArray(1)
			if a == 1 then
				AI:Say("Watch this!")
			end
		end--???1--------------------end
		
		if nIndex == 2 then--???2--start
			a=AI:GetArray(2)
			if a == 1 then
				randombuff = math.random(0,99)
				if randombuff < 7 then
					AI:Say("I've been ordered to guard this area!")
				elseif randombuff < 14 then
					AI:Say("We protect the western winds!")
				elseif randombuff < 21 then
					AI:Say("Intruders aboard The Zephyr!")
				elseif randombuff < 28 then
					AI:Say("We have failed!")
				end
				randombuff = math.random(0,99)
				if randombuff < 30 then
					AI:AddSkill(2374,1)
					AI:UseSkill(2374,1)
				elseif randombuff < 60 then
					AI:AddSkill(2361,1)
					AI:UseSkill(2361,1)
				end
			end
		end--???2--------------------end
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then
				AI:SetTimer(1,1000,1)
				AI:SetArray(1,1)
			end
			a = AI:GetArray(2)
			if a == 0 then
				AI:SetTimer(2,5000,9999)
				AI:SetArray(2,1)
			end
			statusEctype = AI:GetEctypeVarShort(mapid,1)
			if statusEctype == 9 then
				AI:Exit()
			end
			----------------------------------------------------------normal end

--		test=AI:GetEctypeVarShort(mapid,99)
--		if test == 1 then--??AI??
--			AI:Say("hppct="..tostring(hppct))
--			AI:SetEctypeVarShort(mapid,99,0)
--		end

	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		randombuff = math.random(0,99)
		if randombuff < 60 then
			AI:Say("Why-y-y...!")
		else
			AI:Say("We couldn't protect.the..ship.")
		end
		AI:DelTimer(1)
		AI:DelTimer(2)

	end
--
--	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
--		local AI = GetMonsterAI(nAI)
--		local mapid = AI:GetMapID()
--
----		if (( PosX == xx) and ( PosY == yy )) then
----			AI:Exit()
----		end
--
--	end
--
--	function Event_UpdateSeekPos(nAI,nIndex)
--		local AI = GetMonsterAI(nAI)
--		local mapid = AI:GetMapID()
--
--		if nIndex == 1 then
--			xx,yy=0,0
--			AI:AddSeekPos(mapid,xx,yy)
--		end
--
--	end