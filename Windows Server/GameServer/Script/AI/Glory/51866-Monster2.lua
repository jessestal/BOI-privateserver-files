
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
        if nIndex == 1 then
        a = AI:GetArray(1)
        	if a == 1 then
        		rand = AI:GetRand(100)
        		if rand < 5 then
            	AI:Say("This is your funeral!") 
            	AI:GetRandTarget()
           	end
          end
        end
                
        if nIndex == 2 then
        a = AI:GetArray(2)
        	if a == 1 then
        		rand = AI:GetRand(100)
        		if rand < 5 then
            	AI:Say("Don't leave, let's fight until dawn!") 
            	AI:AddSkill(2087,1)
            	AI:UseSkill(2087,1)  
            else
            	if rand < 10 then
            		AI:Say("I'll fight you to the end!")
            ----??????
            	end
            end
           end
        end
end

          
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		a = AI:GetArray(1)
		if a == 0 then --?????,????,????
			AI:SetTimer(1,500,1)
			AI:SetArray(1,1)
		end

		a = AI:GetArray(2)
		if a == 0 then --????,????
			AI:SetTimer(2,10000,2)
			AI:SetArray(2,1)
		end

end


	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	local mapid = AI:GetMapID()
    	x = AI:GetPosX()
    	y = AI:GetPosY()
    	n = AI:GetEctypeVarShort(mapid, 3)
    	AI:SummonMonsterByPos(51875 ,x,y)
    	
    	if n == 8 then
    		AI:ScreenText("Rose Guard Captain: stop there, weeds of the wilderness; go back, you may be able to see next year's winter jasmine.",2)
    	end
	end
	
	



          