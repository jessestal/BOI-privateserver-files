----------------------------------------------------
--		Copyright��PERFECT WORLD
--		Modified��2012/08
--		Author�����쳽
--		TaskName����-�����̳��BOSS-special-�����ƶ��Ļ�꡿
--		TaskID��52464_FireSoul_Lv1.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then--����ִ��
			a = AI:GetArray(1)
			if a == 1 then
				AI:UpdateSeekPath(1)
				AI:SetArray(1,2)
			end			
		end--����ִ�н���

	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*100
		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then --��ʼ��������������������������
				AI:SetTimer(1,500,1)
				AI:SetArray(1,1)
			end

			----------------------------------------------------------normal end
			
--		test=AI:GetEctypeVarShort(mapid,99)
--		if test = 1 then--����AI����
--			AI:Say("hppct="..tostring(hppct))
--			AI:SetEctypeVarShort(mapid,99,0)
--		end

	end--functionEvent_ThinkingEND
		
			
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		PosX = AI:GetPosX()
		PosY = AI:GetPosY()
		a = AI:GetArray(2)
		Arrive = AI:GetEctypeVarShort(mapid,46)
		if (( PosX == 174) and ( PosY == 240 )) then	
			if a == 0 then
				AI:SetEctypeVarShort(mapid,46,Arrive+1)
				AI:SetArray(2,1)	
				AI:SelfMurder()
			end
		end
		
	end
	
	
	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		if nIndex == 1 then
			AI:AddSeekPos(mapid,174,240)
		end
		
	end

------------------------------------------------------------------------dead	
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
			
			AI:DelTimer(1)


	end

