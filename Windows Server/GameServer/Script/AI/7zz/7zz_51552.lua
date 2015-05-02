--??
function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --????
        r = AI:GetRand(2)
        if r == 0 then
        	say = AI:GetArray(3)
        	if say == 0		then
        		AI:Say("Ant, do you see in the mirror how ugly you are?")
        		AI:SetArray(3,1)
        	end
        	if say == 1		then
        		AI:Say("You dare to fight against me?")
        		AI:SetArray(3,2)
        	end
        	AI:AddSkill(2010,1)
        	AI:UseSkill(2010,1)
        end
        if r == 1 then
        	say = AI:GetArray(4)
        	if say == 0		then
        		AI:Say("You are always the forgotten stone, what makes you brave enough to face me?")
        		AI:SetArray(4,1)
        	end
        	if say == 1		then
        		AI:Say("You are dog food.")
        		AI:SetArray(4,2)
        	end
        	AI:AddSkill(2011,1)
        	AI:UseSkill(2011,1)
        end
        if r == 2 then
        	say = AI:GetArray(5)
        	if say == 0		then
        		AI:Say("What are you thinking? Do you know what will happen if you stay?")
        		AI:SetArray(5,1)
        	end
        	if say == 1		then
        		AI:Say("Are all humans as foolish as you?")
        		AI:SetArray(5,2)
        	end
        	AI:AddSkill(2012,1)
        	AI:UseSkill(2012,1)
        end
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    
    --??
    b = AI:GetArray(2)
        if b == 0 then
        	AI:AddSkill(2018,1)
        	AI:UseSkill(2018,1)
        	AI:SetArray( 2 , 1 )
        end
        
    t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:SetArray(0,0)
        AI:SetArray(1,0)
        AI:SetArray(3,0)
        AI:SetArray(4,0)
        AI:SetArray(5,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
        
        a = AI:GetArray(1)
        if a == 0 then
        	if HP < HPMAX then
            AI:SetTimer(0,9000,65535)
            r = AI:GetRand(2)
        	if r == 0 then
        		say = AI:GetArray(3)
        		if say == 0		then
        			AI:Say("Ant, do you see in the mirror how ugly you are?")
        			AI:SetArray(3,1)
        		end
        		AI:AddSkill(2010,1)
        		AI:UseSkill(2010,1)
        	end
        	if r == 1 then
        		say = AI:GetArray(4)
        		if say == 0		then
        			AI:Say("You are always the forgotten stone, what makes you brave enough to face me?")
        			AI:SetArray(4,1)
        		end
        		AI:AddSkill(2011,1)
        		AI:UseSkill(2011,1)
        	end
        	if r == 2 then
        		say = AI:GetArray(5)
        		if say == 0		then
        			AI:Say("What are you thinking? Do you know what will happen if you stay?")
        			AI:SetArray(5,1)
        		end
        		AI:AddSkill(2012,1)
        		AI:UseSkill(2012,1)
        	end
            AI:SetArray(1,1)
          end
        end
    end
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
end