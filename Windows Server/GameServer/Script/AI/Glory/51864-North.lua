

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
        if nIndex == 1 then
        a = AI:GetArray(1)
        	if a == 1 then
            AI:Say("My body was made of iron, why would someone like you want to hurt me?") 
            AI:AddSkill(9510,1)
            AI:UseSkill(9510,1)
            AI:SetArray(1,2)
            AI:SetArray(9,1)
           end
        end

				if nIndex == 3 then--????
				a = AI:GetArray(3)
				if a == 1 then
					AI:AddSkill(2111,1)
					AI:UseSkill(2111,1)
					AI:ScreenText( "Open the guardian shield." , 2)
					AI:Say("Open the guardian shield.")
        end
		end--????end        
end
          
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
 		t = AI:HaveAttackTarget()
 		a = AI:GetArray(1)

 		t = AI:HaveAttackTarget()--????
		if t == false then
			if a > 0 then
				if hpn == hpmax then
					CanBeShutDown = AI:GetArray(9)
					if CanBeShutDown == 1 then
				    AI:DelTimer(1)
		    		AI:SetArray(1,0)
		    		AI:SetArray(9,0)
					end
				end
			end
		else
		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then --?????,????,????
				AI:SetTimer(1,500,1)
				AI:SetArray(1,1)
		    AI:SetArray(9,0)
			end

			a = AI:GetArray(3)
			if a == 0 then --????,????
				hppct = hpn/hpmax*1000
				if hppct < 600 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,1)
				end
			end

		end
end


	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	AI:ScreenText("We found the bomb that will be used to destroy the protective devices.",2)
    	x = AI:GetPosX()
    	y = AI:GetPosY()
    	AI:SummonMonsterByPos(51876 ,x,y)
    	
    	
	end
