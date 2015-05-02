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
			end
		end

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then
				rand = AI:GetRand(100)
				if rand < 25 then
					AI:AddSkill(2168,1)
					AI:UseSkill(2168,1)
					AI:ScreenText( "The weak are unworthy!" , 2)
					AI:Say("The weak are unworthy!")
				else
					if rand < 50 then
						AI:GetRandTarget()
						AI:AddSkill(2169,1)
						AI:UseSkill(2169,1)
						AI:ScreenText( "Do not take your purpose lightly." , 2)
						AI:Say("Do not take your purpose lightly.")
					else
						if rand < 75 then
							AI:SetTimer(3,1100,3)
							AI:SetArray(3,1)
							AI:ScreenText( "Know the burden of power!" , 2)
							AI:Say("Know the burden of power!")
						else
							AI:ScreenText( "Nobody can get the Pangaea Sword!" , 2)
							AI:Say("Nobody can get the Pangaea Sword!")
						end
					end
				end
			end
		end--????end
		
		if nIndex == 3 then--????
			AI:AddSkill(2170,1)
			AI:UseSkill(2170,1)
		end
		
	end
------------------------------------------------------------------------thinking
--2168	???	5?????25%	10*aoe*3	??(????*1)???,???8??(??+????)
--2169	???	5?????25%	??1??	??9999???
--2170	???	5?????25%	15*aoe*10(??????3?)	??999???,???????60%,??8?

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
		    		AI:SetArray(3,0)
		    		AI:SetArray(4,0)
		    		AI:SetArray(9,0)
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
				AI:Say("Prove you are worthy of the sacred blade!")
				AI:ScreenText( "Pangaea Spirit: Prove you are worthy of the sacred blade!" , 2)
			end
			a = AI:GetArray(2)
			if a == 0 then --????
				AI:SetTimer(2,6000,999)
				AI:SetArray(2,1)
			end
			a = AI:GetArray(4)
			if a == 0 then --????
				if hppct < 25 then
--					AI:SetTimer(4,1000,1)
					AI:SetArray(4,1)
					AI:Say("The Emperor's will is eternal!")
					AI:ScreenText( "The Emperor's will is eternal!" , 2)
					-------------------123123123
				end
			end
			----------------------------------------------------------normal start
		end


	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()




		AI:ScreenText( "Congratulations. You are worthy..." , 2)

	end
-----------------------------------------------