--??????
 
function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
t = AI:HaveAttackTarget()
    if t == false then
        AI:SetArray(4,0)
    else             
        a = AI:GetArray(4)
        if a == 0 then
            AI:Say("Ah, the one Caroll loves is you? If you die, she must choose me!")     
            AI:SetArray(4,1) 
        end
    end
end