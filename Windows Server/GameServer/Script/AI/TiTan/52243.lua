function Event_ReadSeekPos(nAI)
				local AI = GetMonsterAI(nAI)
				
				Mapid = AI:GetMapID()
				AI:AddSeekPos( Mapid, 91, 181 )
				
end

function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
				local AI = GetMonsterAI(nAI)
				
				if ((PosX==91)and(PosY==181)) then
					b = AI:GetArray(2)
      		if b == 0 then
						AI:AddSkill(2136,1)
        		AI:UseSkill(2136,1)
        		AI:SetTimer(0,2000,1)
        		AI:SetArray(2,1)
    			end	
				end
				
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
		
end

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    
    if nIndex == 0 then
    		AI:Exit()
    end
    
end