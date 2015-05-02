function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
       -- AI:AddSkill(12029,5)
       -- AI:UseSkill(12029,5)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    a = AI:GetArray(1)
    if a == 0 then
        AI:AddSkill(12029,5)
        AI:UseSkill(12029,5)
        AI:SetArray(1,1)
 	AI:Say("Use the Meteor Storm skill.")
    end
end