function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
        a = AI:GetArray(1)
        if a == 0 then
                AI:Say("Give heed to my beautiful song, heroes!")
                AI:AddSkill(9800,1)
                AI:UseSkill(9800,1)
                AI:AddSkill(9801,1)
                AI:UseSkill(9801,1)
                AI:SetTimer(0,45000,65535)
                AI:SetTimer(1,10000,65535)
                AI:SetArray(1,1)
        end
end

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    
    if nIndex == 0 then
    		AI:Say("Give heed to my beautiful song, heroes!")
    		AI:AddSkill(9800,1)
        AI:UseSkill(9800,1)
        AI:AddSkill(9801,1)
        AI:UseSkill(9801,1)
    end
    
    if nIndex == 1 then
        AI:Say("Evil will never triumph.")
        AI:AddSkill(8718,1)
        AI:UseSkill(8718,1)
    end
end

 
  