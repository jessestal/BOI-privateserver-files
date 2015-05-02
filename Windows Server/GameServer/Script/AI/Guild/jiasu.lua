--释放加速技能怪
    
function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
        a = AI:GetArray(1)
        if a == 0 then
            AI:AddSkill(3557 , 1)
        		AI:UseSkill(3557 , 1)
        		AI:SelfMurder()
            AI:SetArray(1,1)
        end
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
end        