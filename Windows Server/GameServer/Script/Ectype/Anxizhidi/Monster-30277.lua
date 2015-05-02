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
--??30277??20????????????:
--Effect\skill\Knight\xisheng\fire\tx_knight_xisheng_fire.ini
--?????,?20%??????????????:
--1.??!
--2.???????
--3.?????????!
--4.??????!
		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then
				rand = AI:GetRand(100)
				if rand < 12 then
					AI:PlayAction("\\skill\\Knight\\xisheng\\fire\\tx_knight_xisheng_fire.ini",0,1)
					rand = AI:GetRand(100)
					if rand < 33 then
						rand = AI:GetRand(100)
						if rand < 25 then
							AI:Say("Stop!")
						else
							if rand < 50 then
								AI:Say("How could you reach this place?")
							else
								if rand < 75 then
									AI:Say("By Odin's Beard, you shall not pass!")
								else
									AI:Say("Leave this sacred place at once!")
								end
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
	
	