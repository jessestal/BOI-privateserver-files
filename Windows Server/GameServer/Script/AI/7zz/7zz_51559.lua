--Xŭ

function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --��ʧ�й�
        AI:Exit()
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    
    --�ڻ�
    b = AI:GetArray(2)
        if b == 0 then
        	AI:AddSkill(2018,1)
        	AI:UseSkill(2018,1)
        	AI:SetTimer(0,15000,1)
        	AI:SetArray( 2 , 1 )
        end
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
end
