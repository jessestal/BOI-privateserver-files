--??????
function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --?? 
        r = AI:GetRand(1)
        if r == 0 then
        	AI:Say("I can't do that.") 
        end
        if r == 1 then
        	AI:Say("He has aided the Gravekeepers. I will help him reach the Weeping Wall. You may control my body, but you cannot stop this.") 
        end 
        
        AI:AddSkill(2016,1)
        AI:UseSkill(2016,1)
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
            AI:SayAdvance("Leave here. You can't defeat Alfsol." , 0 , 0)
            AI:SetTimer(0,5000,65535)
            AI:SetArray(1,1)
        end
    end
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
        AI:Say("Released?") 
end