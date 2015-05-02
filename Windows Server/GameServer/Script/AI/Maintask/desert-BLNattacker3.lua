-- ----????????AI---

function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
    			if nIndex == 0 then	
						AI:Say("Guard Berni!")
				end		
				if nIndex == 1 then	
						atc = AI:GetRand(3)
						if atc == 0 then	
								AI:Say("For Berni!")				
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
    			if nIndex == 2 then	    					
						AI:SelfMurder()
				end																	
		end
function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
				x = AI:GetArray(1)
				y = AI:GetArray(2)
				HP = AI:GetHP()
        		HPMAX = AI:GetHPMax()
        		t = AI:HaveAttackTarget()
        			
						if x == 0 then
								AI:SetTimer(0,1000,1)
								AI:SetArray(1,1)
						end      
						  			        			
    			if t == false then	
						AI:SetArray(2,0)
						AI:DelTimer(1)
    			else         					
						if HP < HPMAX then
								if y == 0 then
									AI:SetTimer(1,3000,65535)	
									AI:SetArray(2,1)	
								end
						end		
				end				
		end


function Event_ReadSeekPos(nAI)
    	local AI = GetMonsterAI(nAI)
    			AI:AddSeekPos(245,207,185)
		end
	
function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
    	local AI = GetMonsterAI(nAI)
    			if ((PosX==207) and (PosY==185)) then
						AI:Say("Go!")			
						AI:SetAIState(0)		 						
 				end
 		end
 				
function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
				AI:Say("For... Berni!")
				AI:SetArray(2,0)
				AI:SetArray(1,0)
				AI:DelTimer(0)
				AI:DelTimer(1)										
		end
				