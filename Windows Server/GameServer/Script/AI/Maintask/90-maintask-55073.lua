--MD MAINTASK ????

function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
				if nIndex == 0 then	
						AI:AddSkill(9504,9)
 						AI:UseSkill(9504,9) 	
				end
    			if nIndex == 1 then	
						AI:AddSkill(9504,10)
 						AI:UseSkill(9504,10) 
				end
		end	

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
            HP = AI:GetHP()
        	HPMAX = AI:GetHPMax()
            a = AI:GetArray(4)     
			t = AI:HaveAttackTarget()
   			if t == false then
        			AI:SetArray(4,0)
					AI:DelTimer(0)
					AI:DelTimer(1)
    		else         
        			if a == 0 then
            				if HP < HPMAX then
                					AI:Say("Who are you, why are you here?")
               						AI:SetTimer(0,8000,65535)
                					AI:SetTimer(1,12000,65535)
                					AI:SetArray(4,1)    
            				end
        			end
       				if a == 1 then
							if HP < HPMAX * 0.75 then
									AI:Say("There are so many guards outside, how did you get in?")
									AI:SetArray(4,2)    
   					         end
        			end
       				 if a == 2 then
          					  if HP < HPMAX * 0.5 then
          						      AI:Say("You know too much.")
       				    		     AI:SetArray(4,3)    
        					    end
        			end
    			    if a == 3 then
       					     if HP < HPMAX * 0.25 then
        			   			     AI:Say("Tell me! Did Horus send you here?")
       				  			       AI:SetArray(4,4)
       					     end
       				 end
       				 if a == 4 then
       					     if HP < HPMAX * 0.1 then
        					        AI:Say("I can't let you destroy the totem!")
        					        AI:SetArray(4,5)
        				    end
        			end
    	end
end

function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
        		AI:SetArray(4,0)
				AI:DelTimer(0)
				AI:DelTimer(1)			
		end