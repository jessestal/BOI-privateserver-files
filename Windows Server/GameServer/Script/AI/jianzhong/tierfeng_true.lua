--???????(??) 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --???? 
        AI:Say("Demon Shock!") 
        AI:AddSkill(2000,2)
        AI:UseSkill(2000,2)
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
                AI:Say("Do you know why you can't kill me? As long as Evil, Pride, Jealousy, Sloth, Greed, Gluttony and Lust exist in this world, they will become my power and make me become immortal.")
                --????
                AI:SetArray(3,HP)
                HPADD = AI:GetArray(3)
                AI:SetTimer(0,20000,65535)
                AI:SetArray(1,1)
            end
        end

        if HPADD - HP > 50000 then
            --AI:Say("GUID:02818000002")
            AI:AddSkill(2002,1)
            AI:UseSkill(2002,1)
            AI:SetArray(3,HP)
            --??5???????AI 
        end
        
        if a == 1 then
            if HP < HPMAX * 0.8 then
                AI:Say("Gramr sword, you have been my enemy since Odin first created us.") 
                AI:SummonMonster(59127,1)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.6 then
                --AI:Say("GUID:02818000004") 
                AI:SummonMonster(59127,1)
                AI:SetArray(1,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.4 then
                --AI:Say("GUID:02818000005") 
                AI:SummonMonster(59127,1)
                AI:SetArray(1,4)
            end
        end
        if a == 4 then
            if HP < HPMAX * 0.35 then
                AI:Say("What's this? Holy Force? I am absorbing evil power even though I am cut off.") 
                AI:AddSkill(2001,2)
                AI:UseSkill(2001,2)
                AI:SetArray(1,5)
            end
        end
        if a == 5 then
            if HP < HPMAX * 0.25 then
                --AI:Say("GUID:02818000007") 
                AI:AddSkill(2001,2)
                AI:UseSkill(2001,2)
                AI:SetArray(1,6)
            end
        end
        if a == 6 then
            if HP < HPMAX * 0.15 then
                --AI:Say("GUID:02818000008") 
                AI:AddSkill(2001,2)
                AI:UseSkill(2001,2)
                AI:AddSkill(2003,1)
                AI:UseSkill(2003,1)
                AI:SetArray(1,7)
            end
        end
    end
end 
   
function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
    		AI:Say("Ah......I am defeated by humans......maybe this is fate. Well, you defeated me, you are my master from today.") 
end       
    
    