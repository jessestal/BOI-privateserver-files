

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
        if nIndex == 1 then
        a = AI:GetArray(1)
        	if a == 1 then
            AI:GetRandTarget()
           end
        end
                
        if nIndex == 2 then
        a = AI:GetArray(2)
        	if a == 1 then          	
           AI:AddSkill(2240,1)
            AI:UseSkill(2240,1)  
            rand = AI:GetRand(100)
        			if rand < 10 then
        				AI:Say("Don't think about leaving here alive.") 
            ----??????
            	end
           end
        end

				if nIndex == 3 then--????
				a = AI:GetArray(3)
				if a == 1 then
					AI:AddSkill(2183,1)
					AI:UseSkill(2183,1)
					rand = AI:GetRand(100)
					if rand < 10 then
						AI:Say("You've angered me!")
					end
        end
		end--????end        


end
          
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*1000

		a = AI:GetArray(1)
		if a == 0 then --?????,????,????
			AI:SetTimer(1,1000,1)
			AI:SetArray(1,1)
		end

		a = AI:GetArray(2)
		if a == 0 then --????,????
			AI:SetTimer(2,10000,10)
			AI:SetArray(2,1)
		end

			a = AI:GetArray(3)
			if a == 0 then --????,????
				hppct = hpn/hpmax*1000
				if hppct < 200 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,1)
				end
			end

end


	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	
	end