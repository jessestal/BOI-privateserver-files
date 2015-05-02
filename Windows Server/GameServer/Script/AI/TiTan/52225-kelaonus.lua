	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2010/08/31
	--		Author:???
	--		Class:	.Lua
	--		AIName:.lua
	--		Remark:????-????(??)
	----------------------------------------------------

	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		--?????
		if nIndex == 0 then
	      	AI:Say("Ouch! That was quite a mosquito bite. ")
		end
		--?????
		if nIndex == 1 then
	      	AI:Say("See my shield? You bugs can't hope to hurt me! ") 
					AI:AddSkill(2130,1)
		    	AI:UseSkill(2130,1)
		    	AI:SetTimer(0,11000,1)
		    	AI:SetTimer(2,15000,1)
		end
		--?????
		if nIndex == 2 then
	      	AI:Say("Behold the Tornado of Bloodthirst! All shall be destroyed. ")
	      	AI:DelTimer(3)
					AI:AddSkill(2132,1)
		    	AI:UseSkill(2132,1)
		    	AI:SetTimer(4,8000,1)
		    	AI:SetTimer(1,12000,1)
		end
		--????
		if nIndex == 3 then
					AI:AddSkill(9504,1)
		    	AI:UseSkill(9504,1)
		    	AI:AddSkill(2124,1)
		    	AI:UseSkill(2124,1)
		end
		if nIndex == 4 then
					AI:SetTimer(3,1000,65535)
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
        		AI:SetArray(1,0)
      else
        		HP = AI:GetHP()
        		HPMAX = AI:GetHPMax()
        		a = AI:GetArray(1)
        		
        if a == 0 then
          if HP < HPMAX then
            AI:Say("Master! There are some cockroaches in your temple. ")
            AI:SetTimer(1,10000,1)
            AI:SetTimer(3,1000,65535)
            AI:SetArray(1,1)
          end
			  end
			
		 	end
 	end
 	
 	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)

	end