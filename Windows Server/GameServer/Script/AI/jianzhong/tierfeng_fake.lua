--???????(??) 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --???? 
        AI:Say("Demon Shock!") 
        AI:AddSkill(2000,1)
        AI:UseSkill(2000,1)
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
    n = AI:GetEnmityCount()
    if n < 1 then
        AI:DelTimer(0)
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax() 
        HPADD = AI:GetArray(3)
        
        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("Become a part of my body, you should be happy.")
                --????
                AI:SetArray(3,HP)
                HPADD = AI:GetArray(3)
                AI:SetTimer(0,20000,65535) 
                AI:SetArray(1,1)
            end
        end

        if HPADD - HP > 50000 then
            AI:Say("You want to defeat me?")
            AI:AddSkill(2002,1)
            AI:UseSkill(2002,1)
            AI:SetArray(3,HP)
            --??5???????AI 
        end
        
        if a == 1 then
            if HP < HPMAX * 0.8 then
                --AI:Say("GUID:02817000003") 
                AI:AddSkill(2001,1)
                AI:UseSkill(2001,1)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.6 then
                AI:Say("Pride, Jealousy, Sloth, Greed, Gluttony and Lust, let's swallow him.") 
                AI:AddSkill(2001,1)
                AI:UseSkill(2001,1)
                AI:SetArray(1,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.4 then
                --AI:Say("GUID:02817000005") 
                AI:AddSkill(2001,1)
                AI:UseSkill(2001,1)
                AI:SetArray(1,4)
            end
        end
        if a == 4 then
            if HP < HPMAX * 0.2 then
                AI:Say("You are more capable than I imaged, but you can't kill me.") 
                AI:AddSkill(2001,1)
                AI:UseSkill(2001,1)
                AI:SetArray(1,5)
            end
        end
    end
end
    
function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
end       
    
    