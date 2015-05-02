--?? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --??
        AI:Say("My sin is erased finally. I'm sorry about Karina. My beloved, please forgive me.")  
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
        a = AI:GetArray(4)
        if a == 0 then
            AI:SetTimer(0,2000,1)
            AI:SetArray(4,1)
        end
end