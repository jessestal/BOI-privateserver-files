function Event_ReadSeekPos(nAI)
				local AI = GetMonsterAI(nAI)
				
				Mapid = AI:GetMapID()
				AI:AddSeekPos( Mapid, 97, 169 )
				
end

function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
				local AI = GetMonsterAI(nAI)
				
				if ((PosX==97)and(PosY==169)) then
					a = AI:GetArray(1)
      		if a == 0 then
						AI:AddSkill(2136,1)
        		AI:UseSkill(2136,1)
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
    		AI:Exit()
    end
    
end