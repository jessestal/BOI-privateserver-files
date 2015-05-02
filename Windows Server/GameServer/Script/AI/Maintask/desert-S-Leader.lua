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
						AI:Say("Warriors! Prepare to attack!")
						AI:SummonMonsterByPos(55135,201,202)		
						AI:SummonMonsterByPos(55136,204,202)								
						AI:SummonMonsterByPos(55137,207,202)								
						AI:SummonMonsterByPos(55138,210,202)								
						AI:SummonMonsterByPos(55134,213,202)								
						AI:SummonMonsterByPos(55139,216,202)								
						AI:SummonMonsterByPos(55140,219,202)								
						AI:SummonMonsterByPos(55141,222,202)								
						AI:SummonMonsterByPos(55142,225,202)								
						AI:SummonMonsterByPos(55143,228,202)								
						AI:SummonMonsterByPos(55144,231,202)									
							
						AI:SetTimer(1,1000,1)											
				end		
				if nIndex == 1 then	
						AI:Say("Long live Sela!")														
				end				

				if nIndex == 2 then	
						atc = AI:GetRand(2)
						if atc == 0 then					
								AI:AddSkill(9523,1)
 								AI:UseSkill(9523,1)		
						end
						if atc == 1 then					
								AI:AddSkill(9523,2)
 								AI:UseSkill(9523,2)		
						end						
						if atc == 2 then					
								AI:AddSkill(9523,3)
 								AI:UseSkill(9523,3)		
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
				