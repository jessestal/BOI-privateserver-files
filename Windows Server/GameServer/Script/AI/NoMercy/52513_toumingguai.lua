----------------------------------------------------
--		Copyright��PERFECT WORLD
--		Modified��2012-8
--		Author��������
--		TaskName����-�׶�����3-��
--		TaskID��
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--��ʱ��1--start
			a=AI:GetArray(1)
			if a == 1 then
				AI:Exit()
			end
		end--��ʱ��1--------------------end
		
		if nIndex == 2 then--��ʱ��2--start
			a=AI:GetArray(2)
			if a == 1 then
				randombuff=math.random(1,2)
				if randombuff == 1 then
					AI:ChangeMonsterSkin("a")
				else
					AI:ChangeMonsterSkin("c")
				end
			end
		end--��ʱ��2--------------------end
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then
				timer=math.random(18000,26000)
				AI:SetTimer(1,timer,1)
				AI:SetArray(1,1)
				AI:ChangeFaction(11)
			end
			----------------------------------------------------------normal end
			a = AI:GetArray(2)
			if a == 0 then
				AI:SetTimer(2,3000,9999)
				AI:SetArray(2,1)
			end
--		test=AI:GetEctypeVarShort(mapid,99)
--		if test == 1 then--����AI����
--			AI:Say("hppct="..tostring(hppct))
--			AI:SetEctypeVarShort(mapid,99,0)
--		end

	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		AI:DelTimer(1)
		AI:DelTimer(2)

	end

	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

--		if (( PosX == xx) and ( PosY == yy )) then
--			AI:Exit()
--		end

	end

	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

--		if nIndex == 1 then
--			xx,yy=0,0
--			AI:AddSeekPos(mapid,xx,yy)
--		end

	end