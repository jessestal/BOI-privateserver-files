--»º…’¥Ûµÿ
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        AI:AddSkill(8826,1)
        AI:UseSkill(8826,1)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
        a = AI:GetArray(4)
        if a == 0 then
            AI:SetTimer(0,2000,65535)
            AI:SetArray(4,1)
        end
end