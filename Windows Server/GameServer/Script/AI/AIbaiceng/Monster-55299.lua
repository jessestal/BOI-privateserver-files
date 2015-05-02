	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/08
	--		Author:???
	--		Class:	Monster-55299.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
		function Event_OnTimer(nAI,nIndex, nCount)
			local AI = GetMonsterAI(nAI)
			
			if nIndex == 0 then
				AI:Say("The landslides will take you to hell!")
				AI:AddSkill(2186,1)
				AI:UseSkill(2186,1)
			end
		end
		
		function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
 			HP = AI:GetHP()
    	HPMAX = AI:GetHPMax()
    	a = AI:GetArray(1)
    	
    	if a == 0 then
    		if HP < HPMAX then
    			AI:AddSkill(2186,1)
    			AI:UseSkill(2186,1)
    			AI:SetTimer(0,20000,65535)
    			AI:SetArray(1,1)
    		end
    	end
    end
    
    function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
      	AI:DelTimer(0)
      	AI:SetArray(1,0)
      	AI:Say("Lord Best! I hope I have served you..well.")
      	posx = AI:GetPosX()
				posy = AI:GetPosY()
				AI:SummonMonsterByPos( 55300 , posx , posy )
		end   
			