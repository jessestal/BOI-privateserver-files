	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2010/08/31
	--		Author:???
	--		Class:	.Lua
	--		AIName:.lua
	--		Remark:???-????(??)
	----------------------------------------------------

	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		--????
		if nIndex == 0 then 
		    	AI:PlayAction("specialidle",500,0)
		    	AI:SetTimer(10,1000,1)
		end
		
		--????
		if nIndex == 1 then 
					AI:GetRandTarget()
					AI:AddSkill(2128,1)
		    	AI:UseSkill(2128,1)
		end
		
		--????
		if nIndex == 2 then 
		    	AI:PlayEffect("skill\\Monster\\titan\\niesuosi\\fire\\tx_mingjieguilai_fire.ini")
		end
		
		--????
		if nIndex == 3 then 
		    	AI:PlayEffect("skill\\Monster\\titan\\niesuosi\\fire\\tx_mingjieguilai_fire.ini")
		end
		
		--??,???
		if nIndex == 4 then 
					AI:AddSkill(2129,1)
		    	AI:UseSkill(2129,1)
		    	AI:SetTimer(9,1000,65535)
		end
		
		--??5?????
		if nIndex == 5 then 
					AI:Say("Kneel beneath my hooves!")
					AI:AddSkill(2127,1)
		    	AI:UseSkill(2127,1)
		    	AI:DelTimer(9)
					AI:SetTimer(0,2000,5)
					AI:SetTimer(9,12000,1)
					AI:SetTimer(9,13000,1)
					AI:SetTimer(9,14000,1)
					AI:SetTimer(6,15000,1)
		end
		
		--??2?????
		if nIndex == 6 then 
					AI:Say("Hey! You there! Hammer time! ")
					AI:SetTimer(1,1000,2)
					AI:SetTimer(9,4000,1)
					AI:SetTimer(9,5000,1)
					AI:SetTimer(9,6000,1)
					AI:SetTimer(9,7000,1)
					AI:SetTimer(9,8000,1)
					AI:SetTimer(7,9000,1)
		end
		
		--?????
		if nIndex == 7 then 
    	  	
    	  	AI:SummonMonsterByPos(52235, 49.7 , 241.2 )
    	  	AI:SummonMonsterByPos(52235, 60.5 , 251.7 )
    	  	AI:SummonMonsterByPos(52235, 69.1 , 239.4 )
    	  	AI:AddSkill(2127,1)
		    	AI:UseSkill(2127,1)
    	  	AI:SetTimer(3,1000,1)
    	  	AI:SetTimer(4,11000,1)
    	  	AI:SetTimer(8,24000,1)
		end
	
		--??2?????(???)
		if nIndex == 8 then 
					AI:Say("Hey! You there! Hammer time! ")
					AI:SetTimer(1,1000,2)
					AI:SetTimer(5,9000,1)
		end
		
		--????
		if nIndex == 9 then 
					AI:AddSkill(9504,1)
		    	AI:UseSkill(9504,1)
		    	AI:AddSkill(2123,1)
		    	AI:UseSkill(2123,1)
		end
		
		if nIndex == 10 then 
					AI:AddSkill(2126,1)
		    	AI:UseSkill(2126,1)
		end
		
end
	
		

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
     	t = AI:HaveAttackTarget()
    	if t == false then
        		AI:DelTimer(0)
        		AI:DelTimer(1)
        		AI:DelTimer(2)
        		AI:DelTimer(3)
        		AI:DelTimer(4)
        		AI:DelTimer(5)
        		AI:DelTimer(6)
        		AI:DelTimer(7)
        		AI:DelTimer(8)
        		AI:DelTimer(9)
        		AI:DelTimer(10)
        		AI:SetArray(1,0)
      else
        		HP = AI:GetHP()
        		HPMAX = AI:GetHPMax()
        		a = AI:GetArray(1)
        		
        if a == 0 then
          if HP < HPMAX then
            AI:Say("Do you even have the slightest chance of victory over the mighty centaurs? ")
            AI:SetTimer(5,10000,1)
            AI:SetTimer(9,1000,65535)
            AI:SetArray(1,1)
          end
			  end
			
		 end	
 	end
 	
 	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
	
	end