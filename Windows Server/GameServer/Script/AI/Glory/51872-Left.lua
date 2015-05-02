

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
            AI:AddSkill(9510,1)
            AI:UseSkill(9510,1)  
          end
       end

				if nIndex == 3 then--????
				a = AI:GetArray(3)
				if a == 1 then
					AI:AddSkill(2109,1)
					AI:UseSkill(2109,1)
					AI:Say("Self-destruct activated.")
        end
		end--????end        
                
end
          
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()

		a = AI:GetArray(1)
		if a == 0 then --?????,????,????
			AI:SetTimer(1,1000,1)
			AI:SetArray(1,1)
		end

		a = AI:GetArray(2)
		if a == 0 then --????,????
			AI:SetTimer(2,2000,9999)
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