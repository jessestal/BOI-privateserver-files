function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
		t = AI:HaveAttackTarget()
    if t == false then
    		b = AI:GetArray(2)
    		if b == 0 then
    			AI:SetTimer(2,6000,65535)
    			AI:SetArray(2,1)
    		end
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
        TargetLv = AI:GetTargetLevel()
        
				b = AI:GetArray(2)
    		if b == 1 then
    			AI:DelTimer(2)
    			AI:SetArray(2,0)
    		end
    		
        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX * 0.8 then
                AI:Say("I'm impressed you've made it this far! But, all your troubles have lead you to your death!")
                AI:AddSkill(9807,1)
                AI:UseSkill(9807,1)
                AI:AddSkill(9808,1)
                AI:UseSkill(9808,1)
                AI:SummonMonster(51394, 20)
                AI:SetTimer(0,21000,2)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.1 then
                AI:Say("Worms! You will learn the difference between recklessness and bravery! ")
                if TargetLv >= 70 then
                	if TargetLv < 80 then
                		AI:AddSkill(8871,6)
               			AI:UseSkill(8871,6)
               		end	
                end
                if TargetLv >= 80 then
                	if TargetLv < 100 then
                		AI:AddSkill(8871,7)
               			AI:UseSkill(8871,7)
               		end	
                end
                if TargetLv >= 100 then
                		AI:AddSkill(8871,8)
               			AI:UseSkill(8871,8)
                end
                AI:AddSkill(8861,27)
                AI:UseSkill(8861,27)
                AI:SetTimer(1,8000,9)
                AI:DelTimer(0)
                AI:SetArray(1,2)
            end
        end
    end
end

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    
    if nIndex == 0 then
    		AI:AddSkill(9807,1)
        AI:UseSkill(9807,1)
        AI:AddSkill(9808,1)
        AI:UseSkill(9808,1)
        AI:SummonMonster(51394, 20)
    end
    
    if nIndex == 1 then
        a = AI:GetArray(2)
        if a == 0 then
        	AI:Say("Well done!  Is that all?")
        	AI:AddSkill(8861,28)
        	AI:UseSkill(8861,28)
        	AI:SetArray(2,1)
        end
        if a == 1 then
        	AI:Say("If you insist!")
        	AI:AddSkill(8861,29)
        	AI:UseSkill(8861,29)
        	AI:SetArray(2,2)
        end
        if a == 2 then
        	AI:Say("This will only end in your death.")
        	AI:AddSkill(8861,30)
        	AI:UseSkill(8861,30)
        	AI:SetArray(2,3)
        end
        if a == 3 then
        	AI:Say("You have my respect!  That's why I'm going to kill you personally!")
        	AI:AddSkill(8861,31)
        	AI:UseSkill(8861,31)
        	AI:SetArray(2,4)
        end
        if a == 4 then
        	AI:Say("Your death awaits!")
        	AI:AddSkill(8861,32)
        	AI:UseSkill(8861,32)
        	AI:SetArray(2,5)
        end
        if a == 5 then
        	AI:Say("Aww... did that hurt?  Hahaha!")
        	AI:AddSkill(8861,33)
        	AI:UseSkill(8861,33)
        	AI:SetArray(2,6)
        end
        if a == 6 then
        	AI:Say("You dare threaten me?! Why?!")
        	AI:AddSkill(8861,34)
        	AI:UseSkill(8861,34)
        	AI:SetArray(2,7)
        end
        if a == 7 then
        	AI:Say("Die, worms!")
        	AI:AddSkill(8861,35)
        	AI:UseSkill(8861,35)
        	AI:SetArray(2,8)
        end
        if a == 8 then
        	AI:Say("Die, die, die! HAHAHAHAHA!!")
        	AI:AddSkill(8861,36)
        	AI:UseSkill(8861,36)
        	AI:SetArray(2,9)
        end
    end
    
    if nIndex == 2 then
    		HPR = AI:GetHPMax()
    		MPR = AI:GetMPMax()
        AI:DelTimer(0)
        AI:DelTimer(1)
        AI:SetArray(1,0)
        AI:RestoreHPInstant(HPR)
        AI:RestoreMPInstant(MPR)
    end
end

 
  