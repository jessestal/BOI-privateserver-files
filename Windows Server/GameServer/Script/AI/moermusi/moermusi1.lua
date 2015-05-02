--???? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --????
        AI:Say("Power of Light!") 
        AI:AddSkill(8757,1)
        AI:UseSkill(8757,1)
    end
    if nIndex == 1 then
        --????
        AI:Say("You can't escape!")
        AI:AddSkill(8760,1)
        AI:UseSkill(8760,1)
    end
    if nIndex == 2 then
        --???? 
        AI:Say("Come on, come on!") 
        AI:AddSkill(8761,1) 
        AI:UseSkill(8761,1)
        --AI:SetTimer(3,1000,5)
    end
    if nIndex == 3 then
        AI:Say("Ray of Heaven!") 
        AI:AddSkill(8762,1) 
        AI:UseSkill(8762,1)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:DelTimer(1)
        AI:DelTimer(2)
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
                    
        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("I've been waiting for a good fight!")
                --???? 
                AI:SetArray(3,HP)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.8 then 
                AI:Say("Destruction! Massacre! Death! War is my life!!")
                AI:AddSkill(8757,1)
                AI:UseSkill(8757,1)
                AI:SetTimer(0,300000,65535)
                AI:SetTimer(1,10000,65535)
                HPADD = AI:GetArray(3)
                if HPADD - HP > 100000 then
                    AI:SetArray(3,HP)
                    AI:Say("I will devour your lifeless body!")
                    AI:AddSkill(8762,1) 
                    AI:UseSkill(8762,1)
                    --??10???????AI 
                end
                AI:SetArray(1,2)
            end     
        end
        if a == 2 then
            if HP < HPMAX * 0.5 then
                AI:DelTimer(1)
                AI:Say("Go ahead! Kill me, you weakling!") 
                AI:AddSkill(8761,1)
                AI:UseSkill(8761,1)
                AI:SetTimer(2,30000,65535)
                AI:SetArray(1,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.1 then
                AI:Say("HAHAHA! Prepare to die!") 
                --AI:AddSkill(8763,1)
                --AI:UseSkill(8763,1)
                --AI:SetTimer(2,20000,65535)
                AI:SetArray(1,4)
            end
        end
    end
end

