--????? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --??? 
        AI:Say("Ha! You and your faith. Go to hell!")
        AI:AddSkill(8881,4)
        AI:UseSkill(8881,4)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:SetArray(1,0)
    else
        a = AI:GetArray(1)
        if a == 0 then
            AI:Say("My power never fails!  Never!!") 
            AI:AddSkill(8881,4)
            AI:UseSkill(8881,4)
            AI:SetTimer(0,30000,65535)
            AI:SetArray(1,1)
        end
    end
end 
  