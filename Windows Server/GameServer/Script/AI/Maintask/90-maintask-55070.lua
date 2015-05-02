--MDmain 55070 

function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
    			if nIndex == 0 then	
    					AI:Say("Judgment of Serra! ")
						AI:AddSkill(9504,5)
 						AI:UseSkill(9504,5) 	
				end
    			if nIndex == 1 then	
    					AI:Say("Sela attack.")
						AI:AddSkill(9504,6)
 						AI:UseSkill(9504,6) 
				end								
		end


function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
   			skill = AI:GetArray(1) 
   			freeze = AI:GetArray(2) 
			n1	 = AI:GetPlayerIDByIndex(0)
			d1 = AI:GetPlayerDistance(n1)
			x = AI:GetPlayerX(n1)
			Y = AI:GetPlayerY(n1)
			M = AI:GetMapID()	
			HP = AI:GetHP()
        	HPMAX = AI:GetHPMax()
        	a = AI:GetArray(4)
        		
    t = AI:HaveAttackTarget()
    if t == false then
        AI:SetArray(4,0)
        AI:SetArray(2,0)	
		AI:SetArray(1,0)
		AI:DelTimer(0)
		AI:DelTimer(1)
    else      		
			if d1 < 5 then
					AI:SetArray(2,0)
			end								
			if d1 > 6 then
					if d1 < 10 then
							if freeze == 0 then
									AI:Say("Don't waste your time trying to escape my attack.")
									AI:AddStatus(n1,10308,1)	
									AI:SetTimer(1,1000,1)
 									AI:SetArray(2,1)
 							end
 					end
 			end 				  				
            if HP < HPMAX then
            		if skill == 0 then
							AI:SetTimer(0,8000,65535)
							AI:SetTimer(1,12000,65535)
   							AI:SetArray(1,1)
   					end
   			end  									            
                  
                                   

        if a == 0 then
            if HP < HPMAX then
                AI:Say("There are many traps outside the tribe, how did you come in?")
                AI:SetArray(4,1)    
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.75 then
                AI:Say("A stranger even appears in the most secure part of the camp, can't forgive the outside guards.")
                AI:SetArray(4,2)    
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.5 then
                AI:Say("Don't you think I am not cruel?")
                AI:SetArray(4,3)    
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.25 then
                AI:Say("Don't try to steal our ancient book!")
                AI:SetArray(4,4)
            end
        end
        if a == 4 then
            if HP < HPMAX * 0.1 then
                AI:Say("Believe Sela, you will be immortal.")
                AI:SetArray(4,5)
            end
        end
    end
end
function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
        		AI:SetArray(4,0)
      			AI:SetArray(2,0)	
				AI:SetArray(1,0)
				AI:DelTimer(0)
				AI:DelTimer(1)			
		end