--???
function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --??
        r = AI:GetRand(1)
        if r == 0 then
        	AI:Say("Damn Alfsol.") 
        end
        if r == 1 then
        	AI:Say("Sorry, my friend, I can't control myself...") 
        end
        
        AI:AddSkill(2015,1)
        AI:UseSkill(2015,1)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    
    t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
        
        a = AI:GetArray(1)
        if a == 0 then
            AI:Say("Hyke, my son, I let you down.")
            AI:SetTimer(0,10000,65535)
            AI:SetArray(1,1)
        end
    end
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
        AI:Say("Hyke...")
end