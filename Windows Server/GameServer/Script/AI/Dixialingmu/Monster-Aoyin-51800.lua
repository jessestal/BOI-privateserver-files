----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:?-??-?
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
				AI:Say("Too frightened to talk?")
			end
		end--????end

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then
				AI:GetRandTarget()
				AI:AddSkill(2166,1)
				AI:UseSkill(2166,1)
				rand = AI:GetRand(100)
				if rand < 22 then
					AI:ScreenText( "Aoman: I am above all!" , 2)
					AI:Say("Death Whirl!")
				else
					AI:Say("No one can challenge me!")
				end
			end
		end--????end
		
		if nIndex == 3 then--????
			a = AI:GetArray(3)
			if a == 1 then
				AI:ScreenText( "Aoman is enraged!" , 2)
				AI:Say("It seems I need to fight with my best!")
				AI:AddSkill(2167,1)
				AI:UseSkill(2167,1)
			end
		end--????end

	end
------------------------------------------------------------------------thinking
--2166	????	?6?	5*aoe*3	??(????*2)???
--2167	????	hp??40	??	??+200%,??+200%,????,????1%??

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
					Add99 = AI:GetArray(9)
					if Add99 == 1 then
				    AI:DelTimer(0)
				    AI:DelTimer(1)
				    AI:DelTimer(2)
		    		AI:SetArray(1,0)
		    		AI:SetArray(2,0)
					end
				end
			end
		else
		-----------------------------------------------------------normal start
			if a == 0 then --?????
				AI:SetTimer(1,1500,1)
				AI:SetArray(1,1)
				AI:ChangeFaction(5)
				AI:SetArray(9,0)
				AI:Say("Aoman: You cannot deny your very nature!")
				AI:ScreenText( "Aoman: You cannot deny your very nature!" , 2)
			end
			a = AI:GetArray(2)
			if a == 0 then --????
				AI:SetTimer(2,7000,999)
				AI:SetArray(2,1)
			end
			a = AI:GetArray(3)
			if a == 0 then --????
				if hppct < 400 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(3,1)
				end
			end			
			----------------------------------------------------------normal start
		end


	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()




		AI:ScreenText( "I...lost" , 2)

	end