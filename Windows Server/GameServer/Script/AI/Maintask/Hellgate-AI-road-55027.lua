-- -----5527-----??AI-----
function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
    			if nIndex == 0 then	
						AI:AddSkill(8706,1)
 						AI:UseSkill(8706,1)	
				end		
				if nIndex == 1 then	
						AI:AddSkill(8706,1)
 						AI:UseSkill(8706,1)	
				end
				if nIndex == 2 then	
						AI:AddSkill(8706,1)
 						AI:UseSkill(8706,1)	
				end
				if nIndex == 3 then	
						AI:Exit()	
				end									
		end
function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		end


function Event_ReadSeekPos(nAI)
    	local AI = GetMonsterAI(nAI)
    			AI:AddSeekPos(217,104,162)
		end
	
function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
    	local AI = GetMonsterAI(nAI)
    			if ((PosX==104) and (PosY==162)) then
						x = AI:GetArray(1)
						if x == 0 then	
								AI:SetTimer(0,500,1)			
								AI:SetTimer(3,1000,1)
								AI:SetArray(1,1)					 						
 						end
 				end
 		end
 				
function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
				AI:ScreenText("Nemo: Hey! Stop that!",2)
		end
				