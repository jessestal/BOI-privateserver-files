	-----------------------------------------
	--
	--		Copyright��PERFECT WORLD
	--		Modified��2012/08/07
	--		Author���콨��
	--		AIName��Monster_53139.lua
	--		AIID������
	--
	-----------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
	    local AI = GetMonsterAI(nAI)
	end
	
	function Event_Thinking(nAI)
	    local AI = GetMonsterAI(nAI)
	    local ectypeID = AI:GetMapID()
	    local targetID = AI:GetTargetID() --ȡ��Ŀ��
	    if targetID ~= 4294967295 then
			local targetDistance = AI:GetTargetDistance() --ȡ�õ�ǰ׷��Ŀ��ľ���
			if targetDistance <= 2 then
				--��Ļ����Ч
				AI:PlayEffect("skill\Monster\boss\buff_fennu\fire\tx_boss_guangzhifennu_fire.ini")	
				--���ױ�ը
				--AI:PlayEffect("common\\shanguangzhadan\\fire\\tx_shanguangzhadan_fire.ini")
				
				--��ȡ������ȷ������
				local skill_id = 2358
				
				
		 		--AI:AddSkill(2316,skill_level)
            	--AI:UseSkill(2316,skill_level)
            	AI:AddSkill(skill_id,1)
            	AI:UseSkill(skill_id,1)
            	AI:SelfMurder()
        	end
        end				
	end 