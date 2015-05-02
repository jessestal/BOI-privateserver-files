

--????
function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0 then
		--??? 
		RandNum = AI:GetRand(99)
		if RandNum < 16 then
			AI:Say("Cleave.") 
			AI:AddSkill(1001,1)
			AI:UseSkill(1001,1)
		end
	end
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
				AI:SetArray(3,HP)
				HPADD = AI:GetArray(3)
				AI:Say("Invader, go back.")
				AI:SetTimer(0,1000,65535) 
				AI:SetArray(1,1)
			end
	        end
	
	        if a == 1 then
			if HP < HPMAX * 0.8 then
				AI:Say("Since you discovered our secret, you must die.") 
				AI:Say("Dwarf stunned.")
				AI:AddSkill(1000,1)
				AI:UseSkill(1000,1)
				AI:SetArray(1,2)
			end
	        end
	        
	        if a == 2 then
			if HP < HPMAX * 0.6 then
				AI:Say("Dwarf stunned.") 
				AI:AddSkill(1000,1)
				AI:UseSkill(1000,1)
				AI:SetArray(1,3)
			end
	        end
	        
	        if a == 3 then
			if HP < HPMAX * 0.4 then
				AI:Say("You are Minos's jackal! I must tell this to Brett.") 	               
				AI:Say("Dwarf stunned.")
				AI:AddSkill(1000,1)
				AI:UseSkill(1000,1)
				AI:SetArray(1,4)
			end
	        end
	        
	        if a == 4 then
			if HP < HPMAX * 0.2 then
				AI:Say("Dwarf stunned.")
				AI:AddSkill(1000,1)
				AI:UseSkill(1000,1)
				AI:SetArray(1,5)
			end
	        end
                
    	end
end