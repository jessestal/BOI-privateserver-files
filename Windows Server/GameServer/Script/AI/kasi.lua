--?????AI
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        AI:Say("My servants, in the name of king, listen to my call! Become my tooth and claw!")
        --??3??????? 
        x = AI:GetArray(5)
        if x < 10 then
            AI:SummonMonster(10108,3)
            x = x + 1
            AI:SetArray(5,x) 
        end
    end
    if nIndex == 1 then
        --????
        AI:Say("Your sorrows will haunt you like chains!") 
        AI:AddSkill(8760,1)
        AI:UseSkill(8760,1)
    end
    if nIndex == 2 then
        --DOT
        AI:Say("My claw will rip into your vessels, bringing your soul away!") 
        AI:AddSkill(8824,1)
        AI:UseSkill(8824,1)
    end
    if nIndex == 3 then
        --????
        AI:Say("Mother earth, please bless me with your power, making my manes as solid as steel!") 
        AI:AddSkill(8822,1)
        AI:UseSkill(8822,1)
    end
    if nIndex == 4 then
        --????
        AI:Say("Mother earth, please bless me with your power, making my withstand all magic!") 
        AI:AddSkill(8823,1)
        AI:UseSkill(8823,1)
    end
    if nIndex == 5 then
        --30? 
        s = AI:GetArray(3)
        s = s + 1
        AI:SetArray(3,s) 
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
        AI:SetArray(4,0)
    else                   
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
                    
        a = AI:GetArray(4)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("I'm Wolfking Karth. The whole grassland belongs to me. How dare you challenge me!")
                AI:SetTimer(2,55000,65545)
                AI:SetArray(4,1)    
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.8 then
                AI:Say("Don't attempt to cast off the yoke of destiny, mortal! You are doomed!")
                --????,???? 
                AI:SummonMonster(10108,3)
                AI:AddSkill(8760,1)
                AI:UseSkill(8760,1)
                AI:SetTimer(0,50000,10)
                AI:SetTimer(1,80000,65535)
                AI:SetArray(4,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.5 then
                AI:Say("Mother earth, please, bless me with formidable power!")
                --????????? 
                AI:AddSkill(8822,2)
                AI:UseSkill(8822,2)
                AI:SetTimer(3,60000,65535)
                AI:SetTimer(5,30000,2)
                AI:SetArray(4,3)
            end
        end
        
        if a == 3 then
            s = AI:GetArray(3)
            if s == 2 then
                AI:SetTimer(4,60000,65535)
                AI:SetArray(4,4)
            end
        end
        
        if a == 4 then
            if HP < HPMAX * 0.1 then
                AI:Say("I'm Wolfking. You will never defeat me! Never!")
                --??BUFF
                AI:DelTimer(3)
                AI:DelTimer(4)
                AI:AddSkill(8825,1)
                AI:UseSkill(8825,1)
                AI:SetArray(4,5)
            end
        end
    end
end