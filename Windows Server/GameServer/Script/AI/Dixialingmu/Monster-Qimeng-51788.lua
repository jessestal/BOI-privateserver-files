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
			end
		end

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then
				rand = AI:GetRand(100)
				if rand < 60 then				
					AI:AddSkill(2164,1)
					AI:UseSkill(2164,1)
					if rand < 5 then
						AI:Say("Nightmares of the unforgettable horrors...")
					else
						if rand < 10 then
							AI:Say("It feels like a dream, but we cannot see each other...")
						else
							AI:Say("The birth and death of a thousand worlds... there is only misery...")
						end
					end
				end
			end
		end--????end
		
		if nIndex == 3 then--????
			a = AI:GetArray(3)
			if a == 1 then
				AI:GetRandTarget()
				ohp = AI:GetTargetHP()
				ohpm = AI:GetTargetHPMax()
				ohppct = ohp/ohpm*1000
--AI:Say("ohppct="..tostring(ohppct))
				if ohppct > 200 then
					AI:AddSkill(2165,1)
					AI:UseSkill(2165,1)
					rand = AI:GetRand(100)
					if rand < 100 then				
						AI:ScreenText( "Sky Bell! Hurt yourself!" , 2)
						AI:Say("Sky Bell! Hurt yourself!")
					end
				end
			end
		end--????end
	end
------------------------------------------------------------------------thinking
--2164	???	?2??50%??	10*aoe*10	??(????*0.5)???
--2165	??	hp<25,?5?	??1??,????hp????25%	??(??????*2)+2000???

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
				    AI:DelTimer(3)
		    		AI:SetArray(1,0)
		    		AI:SetArray(2,0)
		    		AI:SetArray(3,0)
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
				AI:Say("Ah--Am I already dead?")
				AI:ScreenText( "Ah--Am I already dead?" , 2)
			end
			a = AI:GetArray(2)
			if a == 0 then --????
				AI:SetTimer(2,2500,9999)
				AI:SetArray(2,1)
			end
			a = AI:GetArray(3)
			if a == 0 then --????
				if hppct < 250 then
					AI:SetTimer(3,8000,9999)
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




		AI:ScreenText( "Free..." , 2)

	end