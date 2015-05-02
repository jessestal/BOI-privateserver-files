----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:???monsterAI?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)

		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
				AI:ChangeFaction(1)
				AI:ScreenText( "Ocksin: How dare you intrude into my territory! No one will leave alive!" , 2)
			end
		end

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then
				rand = AI:GetRand(100)
				if rand < 33 then
					AI:Say("I will set you free from pain now")
				else
					AI:Say("How dare you fight with me?")
				end
			end
		end--????end

	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)

		a = AI:GetArray(1)
		if a == 0 then --?????
			AI:SetTimer(1,3000,1)
			AI:SetArray(1,1)
			AI:ChangeFaction(5)
			AI:ScreenText( "Ocksin: Coward! I am here!" , 2)
		end

		a = AI:GetArray(2)
		if a == 0 then --????
			AI:SetTimer(2,7000,999)
			AI:SetArray(2,1)

		end


	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		PosX=AI:GetPosX()
		PosY=AI:GetPosY()
		AI:SummonMonsterByPos(51819,PosX,PosY,0)
		AI:Say("Ah!")


		--AI:ScreenText( "" , 2)

	end
