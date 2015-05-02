----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:?-????-?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
				AI:ChangeFaction(1)
				AI:GetRandTarget()
				AI:SetArray(1,2)
				AI:SetArray(9,1)
--				AI:AddSkill(ID,lv)
--				AI:UseSkill(ID,lv)
			end
		end

--2242	????	????  30284		5????

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then
				rand = AI:GetRand(100)
				AI:AddSkill(2242,1)
				AI:UseSkill(2242,1)
				if rand < 20 then
					AI:ScreenText( "Eceras: Dark Baptism!" , 2)
					AI:Say("Dark Baptism!")
				else				
					if rand < 40 then
						AI:ScreenText( "Eceras: Writhe in pain, you pitiful little creature!" , 2)
						AI:Say("Writhe in pain, you pitiful little creature!")
					end
				end
			end
		end--????end
		
		if nIndex == 3 then--????
			a = AI:GetArray(3)
			if a == 1 then
--				AI:AddSkill(ID,lv)
--				AI:UseSkill(ID,lv)
--				AI:ScreenText( " " , 2)
--				AI:Say("")
			end
		end--????end
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
--AI:Say("hppct="..tostring(hppct))
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
						AI:ChangeFaction(1)
					end
				end
			end
		else
		-----------------------------------------------------------normal start
			if a == 0 then --?????
				AI:SetTimer(1,500,1)
				AI:SetArray(1,1)
				AI:ChangeFaction(5)
		    AI:SetArray(9,0)
				AI:Say("If you want to reach the gate, you'll have to go through me!")
				AI:ScreenText( "Eceras: If you want to reach the gate, you'll have to go through me!" , 2)
			end
			a = AI:GetArray(2)
			if a == 0 then --????
				AI:SetTimer(2,5000,9999)
				AI:SetArray(2,1)
			end
--			a = AI:GetArray(3)
--			if a == 0 then --????
--				if hppct < 0 then
--					AI:SetTimer(3,1000,1)
--					AI:SetArray(3,1)
--				end
--			end
			----------------------------------------------------------normal start
		end


	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()


		AI:Say("It's already too late! Adrian's dream is about to come true!")
		AI:ScreenText( "Eceras: It's already too late! Adrian's dream is about to come true!" , 2)

	end
	
	