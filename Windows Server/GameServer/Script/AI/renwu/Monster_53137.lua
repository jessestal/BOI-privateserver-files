	-----------------------------------------
	--
	--		Copyright��PERFECT WORLD
	--		Modified��2012/08/07
	--		Author���콨��
	--		AIName��Monster_53137.lua
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
				AI:PlayEffect("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini")	
				--���ױ�ը
				AI:PlayEffect("common\\shanguangzhadan\\fire\\tx_shanguangzhadan_fire.ini")
				
				--��ȡ������ȷ������
				local skill_id = 2356
				
				
		 		--AI:AddSkill(2316,skill_level)
            	--AI:UseSkill(2316,skill_level)
            	AI:AddSkill(skill_id,1)
            	AI:UseSkill(skill_id,1)
            	AI:SelfMurder()
        	end
        end				
	end 