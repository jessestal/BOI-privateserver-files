
--???
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
	        
	        if HPADD - HP > 30000 then
			AI:Say("Go to hell.")
			AI:Say("Power of ice!")
			AI:AddSkill(1002,1)
			AI:UseSkill(1002,1)
			AI:SetArray(3,HP)
			--??3???????AI 
	        end
	        
	        if a == 0 then
			if HP < HPMAX then
			--????
				AI:SetArray(3,HP)
				AI:Say("Go to hell.")
				HPADD = AI:GetArray(3)
				AI:SetArray(1,1)
			end
	        end
	
	        if a == 1 then
			if HP < HPMAX * 0.2 then
				AI:Say("Fury of ice!") 
				AI:AddSkill(1003,1)
				AI:UseSkill(1003,1)
				AI:SetArray(1,2)
			end
	        end
	
    	end
end