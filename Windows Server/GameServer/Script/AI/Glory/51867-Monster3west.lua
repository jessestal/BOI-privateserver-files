

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
       
       if nIndex == 1 then
        a = AI:GetArray(1)
        	if a == 1 then
            rand = AI:GetRand(100)
        		if rand < 5 then
            	AI:Say("Which bastard interrupted me! I'll break your legs!") 
            	AI:GetRandTarget()
           	end 
           end
       end
                
       if nIndex == 2 then
        a = AI:GetArray(2)
        	if a == 1 then
        		rand = AI:GetRand(100)
        		if rand < 5 then
            	AI:Say("Watch my Ice Spear!") 
            	AI:AddSkill(2243,1)
            	AI:UseSkill(2243,1)  
            elseif rand < 10 then
            	AI:Say("Watch your back!") 
            	AI:AddSkill(2239,1)
            	AI:UseSkill(2239,1)
            ----??????
            end
          end
       end
                
end
          
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		a = AI:GetArray(1)
		if a == 0 then --?????,????,????
			AI:SetTimer(1,1000,1)
			AI:SetArray(1,1)
		end

		a = AI:GetArray(2)
		if a == 0 then --????,????
			AI:SetTimer(2,12000,3)
			AI:SetArray(2,1)
		end

		
end

	function Event_ReadSeekPos(nAI)
	  local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()	
			
		a = AI:GetArray(3)    
		if a == 0 then 
	    AI:AddSeekPos(mapid,130,224)-- Mask1??
	    AI:SetArray(3,1)
	   end
end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		
		if (( PosX == 130 ) and ( PosY == 224 )) then
			
		end
		
end




	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)

    	
end