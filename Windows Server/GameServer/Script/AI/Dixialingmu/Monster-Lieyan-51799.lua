	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/08/02
	--		Author:???
	--		Class:	.Lua
	--		AIName:Monster-Lieyan-51799.lua
	--		Remark:????
	----------------------------------------------------

	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)

		if nIndex == 0 then
			--??
			AI:GetRandTarget()
			AI:AddSkill(2158,1)
      AI:UseSkill(2158,1)
			AI:Say("Fire Fist!")
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
		    			AI:SetArray(2,0)
		    		end
	    		end
    	else
			jihan = AI:GetEctypeVarInteger(mapid, 118 )
			d2 = AI:GetDistance(jihan)
--AI:Say( ""..tostring(d2))
			if d2 < 50 then
				bb=AI:GetArray(2)
				if bb ==0 then
					--????3,???????
	      	AI:SetTimer(1,2000,1)
	      	AI:SetArray(2,1)
      	end
      end

			if a == 0 then
				if HP < HPMAX then
					--????
					AI:Say("Flame Rider is here!!")
					AI:SetArray(1,1)
				end
			end
			if a == 1 then
				if HP < HPMAX * 0.9 then
					AI:GetRandTarget()
					AI:AddSkill(2158,1)
      		AI:UseSkill(2158,1)
      		AI:SetTimer(0,8000,65535)
					AI:SetArray(1,2)
				end
			end
--			if a == 2 then
--				if HP < HPMAX * 0.5 then
--					AI:AddSkill(2157,1)
--      		AI:UseSkill(2157,1)
--      		AI:SetTimer(1,12000,65535)
--					AI:SetArray(1,3)
--				end
--			end
   end
end





	function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
    local mapid = AI:GetMapID()

		AI:SetEctypeVarInteger(mapid, 119 , 0 )
		AI:ScreenText("No! I cannot die now!",2)

	end