--??????? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --???? 
        AI:Say("That's all you got? Pity...") 
        AI:AddSkill(8740,1)
        AI:UseSkill(8740,1)
    end
    if nIndex == 1 then
        --????Lv1 
        AI:Say("Closer... let me feed from you...")
        AI:AddSkill(8741,1)
        AI:UseSkill(8741,1)
    end
    if nIndex == 2 then
        --???? 
        AI:Say("You move around too much. A little binding never hurt anybody.") 
        AI:AddSkill(8739,1)
        AI:UseSkill(8739,1)
    end
    if nIndex == 3 then
        --????Lv2 
        AI:Say("I simply must have another bite...")
        AI:AddSkill(8741,2)
        AI:UseSkill(8741,2)
    end
    if nIndex == 4 then
        --??
        AI:Say("Oh!  I'm sorry, did that hurt?") 
        AI:AddSkill(8742,1)
        AI:UseSkill(8742,1)
    end
    if nIndex == 5 then
        --????Lv3 
        AI:Say("Oh, but you just taste so good!")
        AI:AddSkill(8741,3)
        AI:UseSkill(8741,3)
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
        AI:DelTimer(4)
        AI:DelTimer(5)
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()

        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("How did you get my feather?! Give it back!")
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.85 then
                AI:Say("Show me all your might! I'm more woman than you can handle!")
                --?????? 
                AI:AddSkill(8735,1)
                AI:UseSkill(8735,1)
                AI:AddSkill(8736,1)
                AI:UseSkill(8736,1)
                AI:SetTimer(0,20000,65535)
                AI:SetTimer(1,30000,65535)
                AI:AddSkill(8740,1)
                AI:UseSkill(8740,1)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.65 then
                AI:Say("You need to be patient! Take your time!") 
                --??????
                AI:DelTimer(0)
                AI:DelTimer(1) 
                AI:AddSkill(8737,1)
                AI:UseSkill(8737,1)
                AI:AddSkill(8738,1)
                AI:UseSkill(8738,1)
                AI:SetTimer(2,30000,65535)
                AI:AddSkill(8739,1)
                AI:UseSkill(8739,1)
                AI:SetArray(1,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.5 then
                AI:Say("Ah, I feel much better!") 
                --?????? 
                AI:DelTimer(2)
                AI:AddSkill(8735,2)
                AI:UseSkill(8735,2)
                AI:AddSkill(8736,2)
                AI:UseSkill(8736,2)
                AI:SetTimer(0,20000,65535)
                AI:SetTimer(3,30000,65535)
                AI:AddSkill(8740,1)
                AI:UseSkill(8740,1)
                AI:SetArray(1,4)
            end
        end
        if a == 4 then
            if HP < HPMAX * 0.3 then
                AI:Say("Wait! Let me rest a little! I'm exhausted...") 
                --?????? 
                AI:DelTimer(3)
                AI:DelTimer(0)
                AI:AddSkill(8737,1)
                AI:UseSkill(8737,1)
                AI:AddSkill(8738,2)
                AI:UseSkill(8738,2)
                AI:SetTimer(2,30000,65535)
                AI:AddSkill(8739,1)
                AI:UseSkill(8739,1)
                AI:SetArray(1,5)
            end
        end
        if a == 5 then
            if HP < HPMAX * 0.15 then
                AI:Say("Surely, you have more power than that!") 
                --?????? 
                AI:DelTimer(2)
                AI:AddSkill(8735,3)
                AI:UseSkill(8735,3)
                AI:AddSkill(8736,3)
                AI:UseSkill(8736,3)
                AI:SetTimer(0,20000,65535)
                AI:SetTimer(5,60000,65535)
                AI:SetTimer(4,60000,65535)
                AI:AddSkill(8742,1)
                AI:UseSkill(8742,1)
                AI:SetArray(1,6)
            end
        end   
    end
end 
  