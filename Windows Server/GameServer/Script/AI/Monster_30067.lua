	------------------------------------------
	--
	--		Copyright��PERFECT WORLD
	--		Modified��2010/09/13
	--		Author�����
	--		AIName��Monster_30067.lua
	--		AIID������
	--
	------------------------------------------

	function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --׷��6�����ɱ
            AI:Exit()
        end 
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		local canDo = AI:GetArray(1)
		if canDo == 0 then
			AI:SetTimer(0 , 6000 , 1)--������ʧ��ʱ��
			--���繥��
			AI:AddSkill(2077,1)
	    	AI:SetArray(1,1)
	    end
		
		local EnmityNum = AI:GetEnmityCount()
		if EnmityNum > 0 then
			local targetDis = AI:GetTargetDistance()--ȡ�õ�ǰ׷��Ŀ��ľ���
			if targetDis <= 1 then
				--�ͷż��ܲ���ʧ
				AI:UseSkill(2077,1)
				AI:Exit()
	    	end
	    end
	end