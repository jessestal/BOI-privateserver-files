--ÓðÉßÉñµÄÍ¼ÌÚ 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
       if nIndex == 0 then
        --Îï·ÀÄ§·À 
        AI:AddSkill(8795,1)
        AI:UseSkill(8795,1)
    end
    if nIndex == 1 then
        --ÔªËØ·À 
        AI:AddSkill(8803,1)
        AI:UseSkill(8803,1)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    AI:SetTimer(0,1000,65535)
    AI:SetTimer(1,1000,65535)
    AI:SetArray(1,1)
    
end
