--���� 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --�ٻ����� 
        AI:SummonMonster(32172,10)
    end
    if nIndex == 1 then
        --�����̻� 
        AI:AddSkill(8746,3)
        AI:UseSkill(8746,3)
    end
    if nIndex == 2 then
        --���ż�ʱ��1 
        AI:SetTimer(1,10000,65535)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:DelTimer(1)
        AI:DelTimer(2)
        AI:SetArray(1,0)
    else
        
        a = AI:GetArray(1)
        if a == 0 then

                AI:SetTimer(0,10000,65535)
                AI:SetTimer(2,5000,1)
                AI:SetArray(1,1)

        end
    end
end
