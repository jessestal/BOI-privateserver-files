	------------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2010/09/19
	--		Author:??
	--		AIName:monster-51947.lua
	--		AIID:
	--
	------------------------------------------

	require ".\\Script\\AI\\jiazufuben\\id"

	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)

		if nIndex == 0 then
			AI:Say("You should be thankful to have the honor of dying by my hands!")
			AI:AddSkill(2062,1)
     		 AI:UseSkill(2062,1)
		end

		if nIndex == 1 then
			Shandian(nAI)
		end

		if nIndex == 2 then
			Shandian(nAI)
		end

		if nIndex == 3 then
		    Shandian(nAI)
		end

		if nIndex == 4 then
			Shandian(nAI)
		end

		if nIndex == 5 then
			Shandian(nAI)
		end

	end


	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
 		t = AI:HaveAttackTarget()
 		HP = AI:GetHP()
    		HPMAX = AI:GetHPMax()
    		a = AI:GetArray(1)
		if t == false then
			if a > 0 then
				if HP == HPMAX then
		    			AI:DelTimer(0)
		    			AI:DelTimer(1)
		    			AI:DelTimer(2)
		    			AI:DelTimer(3)
		    			AI:DelTimer(4)
		    			AI:DelTimer(5)
		    			AI:SetArray(1,0)
		    		end
	    		end
    		else
			if a == 0 then
				if HP < HPMAX then
					AI:Say("You mortals dare trespass on the territory of the black dragons?!")
					AI:AddSkill(2062,1)
	       				AI:UseSkill(2062,1)
					AI:SetTimer(0,60000,65534)
					AI:SetArray(1,1)
				end
			end
			if a == 1 then
				if HP < HPMAX * 0.9 then
					AI:Say("May you be doused in an endless rain of fire!")
					AI:SetTimer(1,500,6)
					AI:SetArray(1,2)
				end
			end
			if a == 2 then
				if HP < HPMAX * 0.7 then
					AI:Say("May you be doused in an endless rain of fire!")
					AI:SetTimer(1,500,6)
					AI:SetArray(1,3)
				end
			end
			if a == 3 then
				if HP < HPMAX * 0.5 then
					AI:Say("May you be doused in an endless rain of fire!")
					AI:SetTimer(2,500,8)
					AI:SetArray(1,4)
				end
			end
			if a == 4 then
				if HP < HPMAX * 0.4 then
					AI:Say("Die! Slowly...")
					AI:PlayEffect("common\\zhuiluozhendong\\tx_common_zhuiluozhendong.ini")
					AI:AddSkill(2061,1)
	       				AI:UseSkill(2061,1)
					AI:SetTimer(3,500,10)
					AI:SetArray(1,5)
				end
			end
			if a == 5 then
				if HP < HPMAX * 0.3 then
					AI:Say("You will pay for what you've done!")
					AI:PlayEffect("common\\zhuiluozhendong\\tx_common_zhuiluozhendong.ini")
					AI:AddSkill(2067,1)
	        			AI:UseSkill(2067,1)
					AI:SetArray(1,6)
				end
			end
			if a == 6 then
				if HP < HPMAX * 0.2 then
					AI:Say("Die! Slowly...")
					AI:PlayEffect("common\\zhuiluozhendong\\tx_common_zhuiluozhendong.ini")
					AI:AddSkill(2061,1)
	       				AI:UseSkill(2061,1)
					AI:SetTimer(4,500,10)
					AI:SetArray(1,7)
				end
			end
			if a == 7 then
				if HP < HPMAX * 0.1 then
					AI:Say("You will not escape! ")
					AI:PlayEffect("common\\zhuiluozhendong\\tx_common_zhuiluozhendong.ini")
					AI:AddSkill(2067,1)
	        			AI:UseSkill(2067,1)
					AI:SetArray(1,8)
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

	function Shandian(nAI)
		local AI = GetMonsterAI(nAI)
    		local posX = AI:GetPosX()
    		local posY = AI:GetPosY()

    		local n = 0
    		while n < 5 do
    			local x = AI:GetRand(20)
    			x = x + posX
    			x = x - 10
    			local y = AI:GetRand(20)
    			y = y + posY
    			y = y - 10
    			AI:SummonMonsterByPos(21236 , x , y)
    			n = n + 1
    		end
	end