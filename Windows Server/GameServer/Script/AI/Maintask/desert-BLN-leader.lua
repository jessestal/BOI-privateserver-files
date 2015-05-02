-- ----????AI---

--	??1 ??a 	????
--	??2 ??b	????
--	??3 ??c	????????


-- timer0 ??
-- timer1 ??
-- timer2 ??
-- timer3 ????


function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
    			if nIndex == 0 then	
						AI:Say("Berni warrior! Attack!")
						AI:SummonMonsterByPos(55146,201,175)		
						AI:SummonMonsterByPos(55147,204,175)								
						AI:SummonMonsterByPos(55148,207,175)								
						AI:SummonMonsterByPos(55149,210,175)								
						AI:SummonMonsterByPos(55145,213,175)								
						AI:SummonMonsterByPos(55150,216,175)								
						AI:SummonMonsterByPos(55151,219,175)								
						AI:SummonMonsterByPos(55152,222,175)								
						AI:SummonMonsterByPos(55153,225,175)								
						AI:SummonMonsterByPos(55154,228,175)								
						AI:SummonMonsterByPos(55155,231,175)									
							
						AI:SetTimer(1,1000,1)											
				end		
				if nIndex == 1 then	
						AI:Say("Protect Berni!")														
				end				

				if nIndex == 2 then	
						atc = AI:GetRand(2)
						if atc == 0 then					
								AI:AddSkill(9523,4)
 								AI:UseSkill(9523,4)		
						end
						if atc == 1 then					
								AI:AddSkill(9523,5)
 								AI:UseSkill(9523,5)		
						end						
						if atc == 2 then					
								AI:AddSkill(9523,6)
 								AI:UseSkill(9523,6)		
						end	
				end		
		
				if nIndex == 3 then	
						AI:DelTimer(0)		
						AI:SetArray(1,0)											
				end				
				
														
		end
function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
				a = AI:GetArray(1)
				b = AI:GetArray(2)
				c = AI:GetArray(3)
				d = AI:GetArray(4)
				HP = AI:GetHP()
        		HPMAX = AI:GetHPMax()
        		t = AI:HaveAttackTarget()
 
        			
						if a == 0 then
								AI:SetTimer(0,30000,65535)
								AI:SetTimer(3,605000,1)
								AI:SetArray(1,1)
						end  
						if c == 2 then
								AI:SelfMurder()
						end    
						  			        			
    			if t == false then	
						AI:SetArray(2,0)
						AI:DelTimer(1)
						if c == 1 then
								AI:SetArray(3,2)
						end
    			else  
    					if c == 0 then
    							AI:SetArray(3,1)
    					end
    					       					
						if HP < HPMAX then
								if b == 0 then
									AI:SetTimer(2,8000,65535)	
									AI:SetArray(2,1)	
								end
						end		
				end				
		end

 				
function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
				AI:SetArray(1,0)
				AI:SetArray(2,0)
				AI:SetArray(3,0)
				AI:DelTimer(0)
				AI:DelTimer(1)		
				AI:DelTimer(2)
				AI:DelTimer(3)								
		end
				