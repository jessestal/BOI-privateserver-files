--?????
function Event_OnTimer(nAI, nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        AI:Say("You ignore my presence? Star Shard belongs to Void Observer. Pay for what you did now!")  
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
        
        a = AI:GetArray(4)
        if a == 0 then
            AI:SetTimer(0,1000,1)
            AI:SetArray(4,1)
        end

        if a == 1 then		
        		if HP < HPMAX * 0.1 then
                AI:Say("The Void Emperor will haunt your dreams, and his grasp on you will leave you unable to breathe.")
                AI:SetArray(4,2)
            end
        end
end