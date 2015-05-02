--??20%
function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --???? 
        AI:Say("Go to hell.") 
        AI:AddSkill(2006,1)
        AI:UseSkill(2006,1)
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
            AI:AddSkill(2018,1)
        	AI:UseSkill(2018,1)
        	HP = AI:GetHP()
        	HPMAX = AI:GetHPMax()
            losehp = HPMAX * 0.8
            AI:LoseHPInstant(losehp)
            AI:Say("My rage is leaving me, I just want silence...") 
            AI:SetTimer(0,8000,65535)
            AI:SetArray(1,1)
        end
    end
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
end