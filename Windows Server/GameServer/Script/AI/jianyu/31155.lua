    --??BOSS AI 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
    	--????
    	rand = AI:GetRand(10)
        if rand == 9 then
               	AI:Say("See my Freezing Bomb!") 
               	AI:AddSkill(8726,1)
        	AI:UseSkill(8726,1)
        end
    end
end


function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:DelTimer(1)
        AI:DelTimer(2)
        AI:DelTimer(3)
        AI:SetArray(1,0)
    else
        a = AI:GetArray(1)
        //???????
        if a == 0 then
            	AI:SetTimer(0,2000,65535)
                AI:SetArray(1,1)
        end
    end
end
