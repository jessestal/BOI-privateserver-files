function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 1 then
			mapid = AI:GetMapID()
			c = AI:GetArray(2)
			d = AI:GetArray(3)
			d = d - 17
			AI:AddSeekPos( mapid, c, d )
		end
		
end

function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
				local AI = GetMonsterAI(nAI)
				
				c = AI:GetArray(2)
				d = AI:GetArray(3)
				d = d - 17
				if ((PosX==c)and(PosY==d)) then
					a = AI:GetArray(1)
      		if a == 0 then
        		AI:SetTimer(0,1000,1)
        		AI:SetArray(1,1)
    			end	
				end
				
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
		
			AI:AddSkill(2141,1)
      AI:UseSkill(2141,1)
      
      b = AI:GetArray(4)
      if b == 0 then
      	Posx = AI:GetPosX()
      	Posy = AI:GetPosY()
      	AI:SetArray(2,Posx)
      	AI:SetArray(3,Posy)
      	AI:UpdateSeekPath(1)
      	AI:SetArray(4,1)
      end
      
end

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    
    if nIndex == 0 then
    		AI:Exit()
    end
    
end