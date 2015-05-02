

--????
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
end

function Event_Thinking(nAI)
    	local AI = GetMonsterAI(nAI)
                  
	t = AI:HaveAttackTarget()
    	if t == false then
		AI:DelTimer(0)
		AI:SetArray(1,0)
    	else

	        HP = AI:GetHP()
	        HPMAX = AI:GetHPMax() 
	        HPADD = AI:GetArray(3)
	                               
	        a = AI:GetArray(1)
	        
	        if a == 0 then
			if HP < HPMAX then
			--????
				AI:Say("Become one of us.") 
				AI:SetArray(3,HP)
				HPADD = AI:GetArray(3)
				AI:SetArray(1,1)
			end
	        end
	
	        if a == 1 then
	            if HP < HPMAX * 0.75 then
	                AI:Say("Become one of us.") 
	                AI:Say("Evils are trapped!")
	                AI:AddSkill(1004,6)
	                AI:UseSkill(1004,6)
	                AI:SetArray(1,2)
	            end
	        end
	        
	        if a == 2 then
	            if HP < HPMAX * 0.5 then
	                AI:Say("Become Tyr's power!") 
	                AI:Say("Evils are trapped!")
	                AI:AddSkill(1004,6)
	                AI:UseSkill(1004,6)
	                AI:SetArray(1,3)
	            end
	        end
	        
	        if a == 3 then
	            if HP < HPMAX * 0.25 then
	                AI:Say("If you resist, you must die.") 
	                AI:Say("Evils are trapped!")
	                AI:AddSkill(1004,6)
	                AI:UseSkill(1004,6)
	                AI:SetArray(1,4)
	            end
	        end
	
    	end
end