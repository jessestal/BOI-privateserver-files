	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/08
	--		Author:???
	--		Class:	Monster-55297.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
		function Event_OnTimer(nAI,nIndex, nCount)
			local AI = GetMonsterAI(nAI)
			
			if nIndex == 0 then
				--AI:Say("GUID:02616000000")
				AI:AddSkill(2184,1)
				AI:UseSkill(2184,1)		
			end
			
			if nIndex == 1 then
				AI:SelfMurder()
			end
		end
		
		function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
 			HP = AI:GetHP()
    	HPMAX = AI:GetHPMax()
    	a = AI:GetArray(1)
    	
    	if a == 0 then
    		--if HP < HPMAX then
    			AI:AddSkill(2184,1)
    			AI:UseSkill(2184,1)
    			AI:SetTimer(0,10000,65535)
    			AI:SetTimer(1,90000,1)
    			AI:SetArray(1,1)
    		--end
    	end
    end
    
		function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
      	AI:DelTimer(0)
      	AI:SetArray(1,0)
      	--AI:Say("GUID:02616000001")
      	posx = AI:GetPosX()
				posy = AI:GetPosY()
				AI:SummonMonsterByPos( 55298 , posx , posy )
		end   