----------------------------------------------------
--		Copyright��PERFECT WORLD
--		Modified��2012-3
--		Author��������
--		Class:	.Lua
--		AIName��51239
--		Remark����ԨС��
----------------------------------------------------
--20	�����������
--21	��Ԩ���ﳡ�ϴ�����
--22	��һ����Ԩ����������������
--23	�ܹ���������Ԩ����
--24	�Ƿ���ˢ��ʱ��

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		
		if nIndex == 2 then
			status=AI:GetEctypeVarShort(mapid,24)
			if status == 0
				posx = AI:GetPosX()
				posy = AI:GetPosY()
				AI:SummonMonsterByPos(30410,posx,posy)
				AI:Exit()
			end
		end

	end


	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		a = AI:GetArray(1)
		if a == 0 then
			AI:SetTimer(2,1000,99)
		end

	end

------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		AI:DelTimer(2)
		AI:Exit()
		
	end
