--****************************************
	--
	--		Copyright��PERFECT WORLD
	--		Modified��2010/04/09
	--		Author���Ƴ�
	--		Class: Lua
	--		AIName��elinggubao-gaoyadianzhu-free.lua
	--		Backup������ű����ɹ�������
	--****************************************


function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        
        if nIndex == 0 then
        --׷��18�����ɱ
            AI:Exit()
        end 
end




function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	a = AI:GetArray(4)
	if a == 0 then
		AI:SetTimer(0,18000,1)--������ʧ��ʱ��
		AI:AddSkill(2047,1)
     		AI:SetArray(4,1)
    	end
	
	b = AI:GetTargetDistance()--ȡ�õ�ǰ׷��Ŀ��ľ���
	if b <= 2 then
		 --�ͷż��ܲ���ʧ
            	AI:UseSkill(2047,1)
            	AI:Exit()
        end
end

