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
				AI:GetRandTarget()
				AI:SetArray(1,2)
				AI:SetArray(9,1)
			end
		end
		
--2239	????	??   30279		5????

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then
				rand = AI:GetRand(100)
				AI:AddSkill(2239,1)
				AI:UseSkill(2239,1)
				if rand < 20 then
					AI:ScreenText( "Devastator: Light Speed!" , 2)
					AI:Say("Light Speed!")
				else				
					if rand < 40 then
						AI:ScreenText( "Devastator: Thunderbolt!" , 2)
						AI:Say("Thunderbolt!")
					end
				end
			end
		end--????end
		
	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
 		a = AI:GetArray(1)
		-----------------------------------------------------------normal start
			if a == 0 then --?????,????,????
				AI:SetTimer(1,500,1)
				AI:SetArray(1,1)
		    AI:SetArray(9,0)
				AI:ScreenText("The enemy leader has appeared near the gate into the Sepulcher! Stop him, quickly!", 2)
			end
			a = AI:GetArray(2)
			if a == 0 then --????,????
				AI:SetTimer(2,5000,9999)
				AI:SetArray(2,1)
			end

	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()




		--AI:ScreenText( "" , 2)

	end
	
	
