--??????? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --???? 
        AI:Say("I've got my eye on you!") 
        AI:AddSkill(8744,1)
        AI:UseSkill(8744,1)
    end
    if nIndex == 1 then
        --?? 
        AI:Say("The earth itself cannot withstand my rage! You're toast, human!")
        AI:AddSkill(8745,1)
        AI:UseSkill(8745,1)
    end
    if nIndex == 2 then
        --???? 
        AI:Say("My power is too great for the likes of you!") 
        AI:AddSkill(8746,1)
        AI:UseSkill(8746,1)
    end
    if nIndex == 3 then
        --?????  
        AI:AddSkill(8747,1)
        AI:UseSkill(8747,1)
    end
    if nIndex == 4 then
        --?????????? 
        AI:Say("I will get my revenge on the one who imprisoned me...") 
        AI:SummonMonster(51178,1)
    end
    if nIndex == 5 then
        --?????? 
        AI:Say("Indeed, Razill is just one of my tools!") 
        AI:SummonMonster(51189,1)
    end
    if nIndex == 6 then
        --???? 
        AI:Say("I will reduce you to cinders!") 
        AI:AddSkill(8749,1)
        AI:UseSkill(8749,1)
    end
    if nIndex == 7 then
        --?????? 
        AI:Say("Grr... I'm getting impatient! Die, already!") 
        AI:AddSkill(8750,1)
        AI:UseSkill(8750,1)
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
        AI:DelTimer(7)
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()

        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("Either you are very brave... or very stupid!")
                --??ID 
                AI:AddSkill(8745,1)
                AI:UseSkill(8745,1)
                AI:SetTimer(0,44000,65535)
                AI:SetTimer(1,70000,65535)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.9 then
                AI:Say("Life in a furnace has made my skin as strong as steel!")
                --??????????ID 
                AI:AddSkill(8745,1)
                AI:UseSkill(8745,1)
                AI:AddSkill(8746,1)
                AI:UseSkill(8746,1)
                AI:SetTimer(2,60000,65535)
                AI:SetTimer(3,60000,65535)
                AI:Say("I will get my revenge on the one who imprisoned me...") 
                AI:SummonMonster(51178,1)
                AI:SetTimer(4,20000,65535)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.6 then
                AI:Say("You have such power! Join me, and we will conquer this world!") 
                AI:DelTimer(2)
                AI:DelTimer(3)
                AI:DelTimer(4)
                AI:Say("Indeed, Razill is just one of my tools!") 
                AI:SummonMonster(51189,1)
                AI:SetTimer(5,80000,65535)
                AI:SetTimer(6,24000,65535)
                AI:SetArray(1,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.2 then
                AI:Say("Won't cooperate, eh?! Die!") 
                AI:DelTimer(5)
                AI:AddSkill(8750,1)
                AI:UseSkill(8750,1)
                AI:SetTimer(7,600000,65535)
                AI:SetArray(1,4)
            end
        end
    end
end 
  