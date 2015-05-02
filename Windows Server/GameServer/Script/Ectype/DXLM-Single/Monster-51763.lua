----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:?????

--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
				AI:GetRandTarget()
				AI:SetArray(1,2)
				AI:SetArray(9,1)
			end
		end

	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*1000
 		t = AI:HaveAttackTarget()
 		a = AI:GetArray(1)
		if t == false then
			if a > 0 then
				if hpn == hpmax then
					CanBeShutDown = AI:GetArray(9)
					if CanBeShutDown == 1 then
				    AI:DelTimer(0)
				    AI:DelTimer(1)
				    AI:DelTimer(2)
		    		AI:SetArray(1,0)
		    		AI:SetArray(2,0)
		    		AI:SetArray(9,0)
					end
				end
			end
		else
		-----------------------------------------------------------normal start
			if a == 0 then --?????
				AI:SetTimer(1,1500,1)
				AI:SetArray(1,1)
				--AI:ChangeFaction(5)
		    AI:SetArray(9,0)
		    AI:Say("Where is my mojito!?")
			end

--			a = AI:GetArray(3)
--			if a == 0 then --????
--				if hppct < 100 then
--					AI:SetTimer(3,1000,1)
--					AI:SetArray(3,1)
--				end
--			end
--			----------------------------------------------------------normal start
		end


	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		getvaroo = AI:GetEctypeVarShort(mapid,67)
		if getvaroo == 1 then
			PosX=AI:GetPosX()
			PosY=AI:GetPosY()
			AI:SummonMonsterByPos(51763,PosX,PosY,0)
			AI:ScreenText("The ghost is bound to the ether by some device...", 2)
		end
		if getvaroo == 2 then
			PosX=AI:GetPosX()
			PosY=AI:GetPosY()
			AI:SummonMonsterByPos(51762,PosX,PosY,0)
			AI:ScreenText("The true Nice has appeared!", 2)
			AI:SetEctypeVarShort(mapid,67,3)
		end




	end
	
	
	
	
	
