	------------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2010/09/19
	--		Author:??
	--		AIName:monster-51927.lua
	--		AIID:
	--
	------------------------------------------

	require ".\\Script\\AI\\jiazufuben\\id"

	--?????AI
	function Event_OnTimer(nAI, nIndex, nCount)
	    local AI = GetMonsterAI(nAI)
	    if nIndex == 0 then
	        AI:Say("Repent your sins, mortal!")
	        --??,?BOSS??6????????,????2?
	        AI:AddSkill(8616,6)
	        AI:UseSkill(8616,6)
	    end
	    if nIndex == 1 then
	        AI:Say("Darkness is my power!")
	        --?BOSS??????HP
	        AI:AddSkill(8752,1)
	        AI:UseSkill(8752,1)
	    end
	end

	function Event_Thinking(nAI)
	    local AI = GetMonsterAI(nAI)
	t = AI:HaveAttackTarget()
	    if t == false then
	        AI:DelTimer(0)
	        AI:DelTimer(1)
	        AI:SetArray(4,0)
	    else
	        HP = AI:GetHP()
	        HPMAX = AI:GetHPMax()

	        a = AI:GetArray(4)
	        if a == 0 then
	            if HP < HPMAX then
	                AI:Say("Who dares bother me?")
	                AI:SetTimer(0,20000,65535)
	                AI:SetTimer(1,35000,65535)
	                AI:SetArray(4,1)
	            end
	        end
	        if a == 1 then
	            if HP < HPMAX * 0.8 then
	                AI:Say("Let's play!")
	                --????Lv2,??360?5??????????
	                AI:AddSkill(8777,1)
	                AI:UseSkill(8777,1)
	                AI:SetArray(4,2)
	            end
	        end
	        if a == 2 then
	            if HP < HPMAX * 0.6 then
	                AI:Say("That's what you deserve!")
	                --????Lv3,??360?5??????????,?Lv2??
	                AI:AddSkill(8776,1)
	                AI:UseSkill(8776,1)
	                AI:SetArray(4,3)
	            end
	        end
	        if a == 3 then
	            if HP < HPMAX * 0.4 then
	                AI:Say("I curse you!")
	                --????,????????DOT??
	                AI:AddSkill(8766,1)
	                AI:UseSkill(8766,1)
	                AI:SetArray(4,4)
	            end
	        end
	        if a == 4 then
	            if HP < HPMAX * 0.2 then
	                AI:Say("The Ashura King has never tasted defeat!")
	                --??BUFF,??BOSS?????
	                AI:AddSkill(8763,1)
	                AI:UseSkill(8763,1)
	                AI:SetArray(4,5)
	            end
	        end
	    end
	end

	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)

		local posX = AI:GetPosX()
		local posY = AI:GetPosY()
		local map_id = AI:GetMapID()

		--????
		local wave_num = AI:GetEctypeVarShort( map_id , 0 )
		local kill_num = AI:GetEctypeVarShort( map_id , 1 )
		kill_num = kill_num + 1
		AI:SetEctypeVarShort( map_id , 1 , kill_num )
		if kill_num == monster_id[wave_num][2] then
			AI:SetEctypeVarShort( map_id , 1 , 0 )
			AI:SetEctypeVarShort( map_id , 2 , 1 )
		end
		AI:ScreenText("Monster eliminated: "..tostring(kill_num).." / "..tostring(monster_id[wave_num][2]),2)

	end