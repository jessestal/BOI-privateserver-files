----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:??2??
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
				--AI:ChangeFaction(1)
				AI:GetRandTarget()
				AI:SetArray(1,2)
				AI:SetArray(9,1)
--				AI:AddSkill(ID,lv)
--				AI:UseSkill(ID,lv)
			end
		end

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 7 then
				AI:Say("Say goodbye to this world!")
				end
			if a == 6 then
				AI:Say("Prepare to die!")
				a = a+1
				AI:SetArray(2,a)
			end
			if a == 5 then
				AI:Say("I vow to kill every living person I see!")
				a = a+1
				AI:SetArray(2,a)
			end
			if a == 4 then
				AI:Say("I can accept this ending")
				a = a+1
				AI:SetArray(2,a)
			end
			if a == 3 then
				AI:Say("I was killed by my partner.")
				a = a+1
				AI:SetArray(2,a)
			end
			if a == 2 then
				AI:Say("I am a Tomb Reaver. But...")
				a = a+1
				AI:SetArray(2,a)
			end
			if a == 1 then
				AI:Say("Why is everything so expensive!?")
				a = a+1
				AI:SetArray(2,a)
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
--				AI:Say("")
					AI:ScreenText( "Are you here to steal my drinks!?" , 2)
			end
			a = AI:GetArray(2)
			if a == 0 then --????
				AI:SetTimer(2,6000,10)
				AI:SetArray(2,1)
			end
--			----------------------------------------------------------normal start
		end


	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()



		SetEctypeVarShort(mapid,67,4)
		AI:ScreenText("Am I just an illusion of myself?", 2)

	end
	
	
	
	
	
