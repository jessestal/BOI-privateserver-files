function Event_ReadSeekPos(nAI)
				local AI = GetMonsterAI(nAI)

        AI:AddSeekPos( 250, 143, 210 )
end

function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
				local AI = GetMonsterAI(nAI)
				
				if ((PosX==143)and(PosY==210)) then
					a = AI:GetArray(1)
      		if a == 0 then
						AI:AddSkill(9818,2)
        		AI:UseSkill(9818,2)
        		AI:SetTimer(0,2000,1)
        		AI:SetArray(1,1)
    			end	
				end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
		
end

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    
    if nIndex == 0 then
    		AI:SelfMurder()
    end
end