--???? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --???? 
        AI:Say("Mortal, you're unable to shake the position of gods!") 
        AI:AddSkill(8785,1)
        AI:UseSkill(8785,1)
    end
    if nIndex == 1 then
        --????
        AI:Say("I shall draw your fear out of the heart!") 
        AI:AddSkill(8788,1)
        AI:UseSkill(8788,1)
    end
    if nIndex == 2 then
        --????
        AI:Say("Death always appears when you least expect it. In that case, you'd better face me rather than idle your life!") 
        AI:AddSkill(8786,1)
        AI:UseSkill(8786,1)
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
        HPADD = AI:GetArray(3)

        if HPADD - HP > 100000 then
            AI:Say("Feel the fear of death!")
            AI:AddSkill(8787,1)
            AI:UseSkill(8787,1)
            AI:SetArray(3,HP) 
        end
        
        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("Lord Loki is the king of all gods. The universe can merely maintain stable beneath his light.")
                --???? 
                AI:SetTimer(0,360000,65535)
                AI:SetTimer(1,120000,65535)
                AI:SetTimer(2,180000,65535)
                AI:AddSkill(8785,1)
                AI:UseSkill(8785,1)
                HPADD = HPMAX
                AI:SetArray(3,HPADD) 
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.8 then
                AI:Say("Come out! My warrior! Kill them all!")
                AI:SummonMonster(30115,4)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.5 then
                AI:Say("My priests, it's time to show your respect!")
                AI:SummonMonster(30116,4)
                AI:SetArray(1,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.2 then
                AI:Say("My loyal servants, your hose need you now!")
                AI:SummonMonster(30117,4)
                AI:SetArray(1,4)
            end
        end
        if a == 4 then
            if HP < HPMAX * 0.1 then
                AI:Say("Game is over though your persistence shocked me.")
                AI:AddSkill(8791,1)
                AI:UseSkill(8791,1)
                AI:SetArray(1,5)
            end
        end
        if a == 5 then
            if HP < HPMAX * 0.01 then
                AI:Say("Incredible, your mighty approaches Deity's! But I have no more time to waste. Something important is waiting for me.")
                AI:SetArray(1,6)
            end
        end
    end
end 
  