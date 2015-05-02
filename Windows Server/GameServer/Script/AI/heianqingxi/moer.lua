--?????? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --???? 
        AI:Say("Let me trap your soul!") 
        AI:AddSkill(8728,1)
        AI:UseSkill(8728,1)
    end
    if nIndex == 1 then
        --???? 
        AI:Say("Destruction! ")
        AI:AddSkill(8729,1)
        AI:UseSkill(8729,1)
    end
    if nIndex == 2 then
        --???? 
        AI:Say("Stun your body and heart!") 
        AI:AddSkill(8730,1)
        AI:UseSkill(8730,1)
    end
    if nIndex == 3 then
        --???? 
        AI:Say("You missed the target!") 
        AI:AddSkill(8731,1)
        AI:UseSkill(8731,1)
    end
    if nIndex == 4 then
        --????
        AI:Say("Offer me your essences!") 
        AI:AddSkill(8732,1)
        AI:UseSkill(8732,1)
    end
    if nIndex == 5 then
        --?????? 
        AI:Say("Destruction! ") 
        AI:AddSkill(8733,1)
        AI:UseSkill(8733,1)
    end
    if nIndex == 6 then
        --???? 
        AI:Say("Pay for my anger!") 
        AI:AddSkill(8734,1)
        AI:UseSkill(8734,1)
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
        AI:DelTimer(6)
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()

        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("Fools!  How dare you damage my Requiem Pillars!")
                AI:SetTimer(0,15000,65535)
                AI:SetTimer(1,40000,65535)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.8 then
                AI:Say("Hordes of my minions will stream forth from Requiem Pillars... cutting a swath through your homeland and eviscerating your families!")
                --????ID 
                AI:AddSkill(8731,1)
                AI:UseSkill(8731,1)
                AI:SetTimer(2,38000,65535)
                AI:SetTimer(3,45000,65535)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.45 then
                AI:Say("You dare doubt Khar's power?! We will crush you like the worms you are!") 
                --????ID 
                AI:DelTimer(1)
                AI:AddSkill(8732,1)
                AI:UseSkill(8732,1)
                AI:SetTimer(4,35000,65535)
                AI:SetTimer(5,40000,65535)
                AI:SetArray(1,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.1 then
                AI:Say("Filthy mortals! Pay the price for my anger!") 
                --????ID
                AI:AddSkill(8734,1)
                AI:UseSkill(8734,1) 
                AI:SetTimer(6,600000,65535)
                AI:SetArray(1,4)
            end
        end
    end
end 
  