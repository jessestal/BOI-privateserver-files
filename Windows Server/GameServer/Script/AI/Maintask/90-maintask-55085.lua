--		55085	????  ???--LX---

function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
				if nIndex == 0 then	
    					AI:Say("Sela power.")
						AI:AddSkill(9504,7)
 						AI:UseSkill(9504,7) 	
				end
    			if nIndex == 1 then	
    					AI:Say("Sela blade.")
						AI:AddSkill(9504,8)
 						AI:UseSkill(9504,8) 
				end
		end	

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
   			skill = AI:GetArray(1) 
			HP = AI:GetHP()
        	HPMAX = AI:GetHPMax()
        	a = AI:GetArray(1)
        		
    t = AI:HaveAttackTarget()
    if t == false then
        AI:SetArray(1,0)
		AI:DelTimer(0)
		AI:DelTimer(1)
    else      		              
        if a == 0 then
            if HP < HPMAX then
                AI:Say("Invader?")
                AI:SetTimer(0,8000,65535)
                AI:SetTimer(1,12000,65535)
                AI:SetArray(1,1)    
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.75 then
                AI:Say("Go to hell.")
                AI:SetArray(1,2)    
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.1 then
                AI:Say("Damn.")
                AI:SetArray(1,5)
            end
        end
    end
end
function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
        		AI:SetArray(1,0)
				AI:DelTimer(0)
				AI:DelTimer(1)			
		end