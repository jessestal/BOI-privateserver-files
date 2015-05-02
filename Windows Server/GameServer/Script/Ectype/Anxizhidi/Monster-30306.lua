----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:
--		TaskID:??2

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

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then
				rand = AI:GetRand(100)
				if rand < 30 then
					AI:AddSkill(2245,1)
					AI:UseSkill(2245,1)
				else
					if rand < 65 then
						AI:AddSkill(2244,1)
						AI:UseSkill(2244,1)
					else
						AI:AddSkill(2243,1)
						AI:UseSkill(2243,1)
					end
				end
			end

		end--????end
		
		if nIndex == 3 then
			a = AI:GetArray(3)
			if a == 1 then
				AI:Say( "You only have yourself to blame for this punishment.")
				AI:ScreenText( "Agritt: You only have yourself to blame for this punishment." , 2)
			end
			if a == 3 then
				posx = AI:GetPosX()
				posy = AI:GetPosY()
				AI:SummonMonsterByPos(30408,posx,posy)
				AI:Exit()
			end
			a = a + 1
			AI:SetArray(3,a)
		end

	
		if nIndex == 4 then
			a = AI:GetArray(4)
			if a == 1 then
				AI:AddSkill(2245,1)
				AI:UseSkill(2245,1)
				AI:Say("Still you resist? Your arrogance will be the end of you!")
				AI:ScreenText("Agritt launched a God Splitting Cut!",2)
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
 		a = AI:GetArray(1)
		-----------------------------------------------------------normal start
			if a == 0 then --?????,????,????
				AI:SetTimer(1,500,1)
				AI:SetArray(1,1)
--				AI:ChangeFaction(5)
		    AI:SetArray(9,0)
				AI:Say("Hades, this ends here!")
--				AI:ScreenText( "" , 2)
			end
			a = AI:GetArray(2)
			if a == 0 then --????,????
				AI:SetTimer(2,4000,9999)
				AI:SetArray(2,1)
			end
			a = AI:GetArray(3)
			if a == 0 then --????,????
				aistatus=AI:GetEctypeVarShort(mapid,7)
				if aistatus == 7 then
					AI:SetTimer(3,5000,3)
					AI:SetArray(3,1)
				end
			end
			a = AI:GetArray(4)
			if a == 0 then
				AI:SetTimer(4,29000,1)
				AI:SetArray(4,1)
				posx = AI:GetPosX()
				posy = AI:GetPosY()
				AI:SummonMonsterByPos(30408,posx,posy)
			end
			----------------------------------------------------------normal start
			


	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()




		--AI:ScreenText( "" , 2)

	end
	
	