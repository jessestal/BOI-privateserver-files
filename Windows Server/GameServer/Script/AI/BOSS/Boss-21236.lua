	------------------------------------------
	--
	--		Copyright��PERFECT WORLD
	--		Modified��2010/08/04
	--		Author�����
	--		AIName��Monster_33088.lua
	--		AIID��BOSS�ٻ�-������
	--
	------------------------------------------

	function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --׷��6�����ɱ
            AI:Exit()
        end 
        
        if nIndex == 1 then
        	AI:PlayEffect("common\\vehicle\\gongchengdan\\tx_gongchengdan_hit.ini")
        	AI:AddSkill(2063,1)
        	AI:UseSkill(2063,1)
        end
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		local canDo = AI:GetArray(1)
		if canDo == 0 then
			AI:SetTimer(0 , 5000 , 1)--������ʧ��ʱ��
			AI:SetTimer(1 , 3000 , 1)--�ͷż���
	    	AI:SetArray(1,1)
	    end
	end
