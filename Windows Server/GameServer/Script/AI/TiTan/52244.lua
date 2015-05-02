function Event_ReadSeekPos(nAI)
				local AI = GetMonsterAI(nAI)
				
				Mapid = AI:GetMapID()
				AI:AddSeekPos( Mapid, 85, 169 )
				
end

function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
				local AI = GetMonsterAI(nAI)
				
				if ((PosX==85)and(PosY==169)) then
					c = AI:GetArray(3)
      		if c == 0 then
						AI:AddSkill(2136,1)
        		AI:UseSkill(2136,1)
        		AI:SetTimer(0,2000,1)
        		AI:SetArray(3,1)
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