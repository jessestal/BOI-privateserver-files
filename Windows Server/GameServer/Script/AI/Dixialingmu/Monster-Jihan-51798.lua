	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/08/02
	--		Author:???
	--		Class:	.Lua
	--		AIName:Monster-Jihan-51798.lua
	--		Remark:????
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then
			--??
			AI:GetRandTarget()
			AI:AddSkill(2156,1)
      AI:UseSkill(2156,1)
			AI:Say("Ice Fist!")
		end
		if nIndex == 1 then
			--?????
			AI:AddSkill(2157,1)
      AI:UseSkill(2157,1)
			AI:ScreenText("Ice and Fire Fist!!",2)
	    AI:SetArray(2,0)
		end
 end

  function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
 		t = AI:HaveAttackTarget()
 		HP = AI:GetHP()
    HPMAX = AI:GetHPMax()
    mapid = AI:GetMapID()
    a = AI:GetArray(1)
		if t == false then
					if a > 0 then
						if HP == HPMAX then
		    				AI:DelTimer(0)
		    				AI:DelTimer(1)
		    			AI:SetArray(1,0)
		    		end
	    		end
    	else	
			
			lieyan = AI:GetEctypeVarInteger(mapid, 119 )
			d1 = AI:GetDistance(lieyan)
			if d1 < 50 then
				--????3,???????
				bb=AI:GetArray(2)
				if bb ==0 then
	      	AI:SetTimer(1,2000,1)
	      	AI:SetArray(2,1)
      	end
      end
			
			if a == 0 then
				if HP < HPMAX then
					--????
					AI:Say("Absolute Cold General is here!!")
					AI:SetArray(1,1)
				end
			end
			if a == 1 then
				if HP < HPMAX * 0.9 then
					AI:GetRandTarget()
					AI:AddSkill(2156,1)
      		AI:UseSkill(2156,1)
      		AI:SetTimer(0,8000,65535)
					AI:SetArray(1,2)
				end
			end
--			if a == 2 then
--				if HP < HPMAX * 0.5 then
--					AI:AddSkill(2157,1)
--     		AI:UseSkill(2157,1)
--     		AI:SetTimer(1,12000,65535)
--					AI:SetArray(1,3)
--				end
--			end
   end
end
    	
    			
    
	
	function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
    local mapid = AI:GetMapID()

		AI:SetEctypeVarInteger(mapid, 118 , 0 )
		AI:ScreenText("No! I cannot die now!",2)

	end