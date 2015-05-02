----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:?-??????-?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
--??30278??15????????????:
--Effect\skill\Priest\linghunlianjie\fire\tx_priest_linghunlianjie_fire.ini
--?????,?20%??????????????:
--1.??!
--2.???????..
--3.??????

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then
				rand = AI:GetRand(100)
				if rand < 8 then
					AI:PlayAction("\\skill\\Priest\\linghunlianjie\\fire\\tx_priest_linghunlianjie_fire.ini",0,1)
					rand = AI:GetRand(100)
					if rand < 30 then
						rand = AI:GetRand(100)
						if rand < 33 then
							AI:Say("Out of my way!")
						else
							if rand < 66 then
								AI:Say("You can't hold your ground forever!")
							else
								AI:Say("For the New Order!")
							end
						end
					end
				end
			end
		end--????end

	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		-----------------------------------------------------------normal start
			a = AI:GetArray(2)
			if a == 0 then --????,????
				AI:SetTimer(2,3000,9999)
				AI:SetArray(2,1)
			end
			----------------------------------------------------------normal start


	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()




		--AI:ScreenText( "" , 2)

	end
	
	