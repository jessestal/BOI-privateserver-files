-- ����ս��  �����뿪�Զ���ʧAI--

-- ----����ͳ��AI---

--	����1 ����a 	ͨ������
--	����2 ����b	�뿪λ����ɱ����

-- timer0 ����


function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)						
				if nIndex == 0 then	
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
		end
function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
				a = AI:GetArray(1)
				b = AI:GetArray(2)
				HP = AI:GetHP()
        		HPMAX = AI:GetHPMax()
        		t = AI:HaveAttackTarget() 
						if b == 2 then
								AI:SelfMurder()
						end    
						  			        			
    			if t == false then	
						AI:SetArray(2,0)
						AI:DelTimer(1)
						if b == 1 then
								AI:SetArray(2,2)
						end
    			else  
    					if b == 0 then
    							AI:SetArray(2,1)
    					end
    					       					
						if HP < HPMAX then
								if b == 0 then
									AI:SetTimer(0,3000,65535)	
									AI:SetArray(1,1)	
								end
						end		
				end				
		end

 				
function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
				AI:SetArray(1,0)
				AI:SetArray(2,0)
				AI:DelTimer(0)							
		end
				