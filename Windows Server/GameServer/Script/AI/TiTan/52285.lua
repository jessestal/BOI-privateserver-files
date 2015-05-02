----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2010/11/11
--		Author:???
--		Class:	.Lua
--		AIName:52285.lua
--		Remark:???
----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 1 then

			a = AI:GetArray(1)
			mapid = AI:GetMapID()
			stat = AI:GetEctypeVarShort(mapid, 10)
--AI:Say("1-stat-"..tostring(stat))
			if a == 1 then
		-----??????--------------------------------------------
				if stat == 1 then
					--?????
					AI:ScreenText("Athena: Heroes, welcome to the Titan Throne.",2)
					AI:SetTimer(9,9000,1)
					AI:SetArray(3,1)
				end
				if stat == 2 then
					--1???
					AI:Say("Follow me, heroes! ")
					AI:UpdateSeekPath(1)
				end
				if stat == 3 then
					--2???
					AI:Say("Keep fighting! ")
					AI:UpdateSeekPath(2)
				end
				if stat == 4 then
					--3???
					AI:Say("Finally, the grand battle! Please, be careful. ")
					AI:UpdateSeekPath(3)
				end
		-----end??????-----------------------------------------
			end
		end
		
		------------????---
		if nIndex == 2 then

			a = AI:GetArray(2)
			mapid = AI:GetMapID()
			stat = AI:GetEctypeVarShort(mapid, 10)--------?????
			stat_ori = AI:GetArray(9)
--AI:Say("2-stat-"..tostring(stat))
--AI:Say("2-stat-ori-"..tostring(stat_ori))
			if a == 1 then
		-----??????--------------------------------------------
			-------------------------????----------
--AI:Say("GUID:03212000004")
				hp = AI:GetTargetHP()
				mhp = AI:GetTargetHPMax()
				pcthp = hp/mhp
				pcthp = pcthp*100
				if pcthp < 27 then
					AI:AddSkill(2085, 1)
					AI:UseSkill(2085, 1)
				end
--AI:Say("2.1")
--				FighterCount = AI:GetAroundFighter(4)
--				for a=1 , FighterCount do
--					FighterID = AI:GetFighterIDByIndex( a-1 )
--					hp = AI:GetPlayerHP(FighterID)
--					mhp = AI:GetPlayerHPMax(FighterID)
--					pcthp = hp/mhp*100
--					AI:Say( "GUID:03212000005"..tostring(hp))
--					if pcthp < 40 then
--						rand = AI:GetRand(9)
--						AI:Say( "GUID:03212000006"..tostring(rand))
--						if rand < 2 then
--							AI:AddSkill(2085, 1)
--							AI:UseSkillByID(FighterID, 2084, 1)
--						end
--						if rand > 6 then
--							AI:AddSkill(2085, 2)
--							AI:UseSkillByID(FighterID, 2084, 2)
--						end
--					end
--				end
				----------------------????end----------
--AI:Say("2.2")
					if stat == 1 then
						--?????
					end
					if stat_ori == 2 then
						if stat == 3 then
							AI:SetTimer(9,1000,1)
							AI:SetArray(2,2)
							AI:SetArray(3,1)
						end
					end
					if stat_ori == 3 then
						if stat == 4 then
							AI:SetTimer(9,1000,1)
							AI:SetArray(2,2)
							AI:SetArray(3,1)
						end
					end
					if stat_ori == 4 then
						if stat == 5 then
							AI:ScreenText("Athena: It is time for me to leave. Be well.",2)
							AI:SetTimer(9,3000,1)
							AI:SetArray(2,2)
							AI:SetArray(3,1)
						end
					end
--AI:Say("2.3")
		-----end??????-----------------------------------------
			end
		end
		
		
		-------------????---
		if nIndex == 9 then
--AI:Say("9-stat-"..tostring(stat))
			a = AI:GetArray(3)
			mapid = AI:GetMapID()
			stat = AI:GetEctypeVarShort(mapid, 10)
			if a == 1 then
		-----??--------------------------------------------
				if stat == 1 then
					AI:SetEctypeVarShort(mapid, 10, 2)
					AI:ScreenText("Athena: Steel yourself!",2)
					AI:Exit()
				end
--				if stat == 2 then
--				--??2???1?,??3???????
--				end
				if stat == 3 then
					--??2?
					AI:SummonMonsterByPos(52285, 226, 85)
					AI:Exit()
				end
				if stat == 4 then
					--??3?
					AI:SummonMonsterByPos(52285, 265, 84)
					AI:Exit()
				end
				if stat == 5 then
					--3?????
					AI:SetEctypeVarShort(mapid, 10, 6)
					AI:Exit()
				end
		-----end??-----------------------------------------
			end
		end
		
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		mapid = AI:GetMapID()
		a = AI:GetArray(1)------------??????
		if a == 0 then
--AI:Say("01")
			AI:SetTimer(1,1000,1)
			AI:SetArray(1,1)
			AI:SetTimer(2,3000,9999)
			AI:SetArray(2,1)
			stat = AI:GetEctypeVarShort(mapid, 10)
			AI:SetArray(9, stat)
--AI:Say("02")
		end
			
--AI:Say( "GUID:03212000009"..tostring(a))
	end
	
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
	end
	
	
	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then
			AI:AddSeekPos( mapid, 228, 87 )
		end
		if nIndex == 2 then
			AI:AddSeekPos( mapid, 261, 87 )
		end
		if nIndex == 3 then
			AI:AddSeekPos( mapid, 244, 87 )
		end
	end

	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if (( PosX == 228) and ( PosY == 87 )) then
			AI:SetAIState(0)
		end
		if (( PosX == 261) and ( PosY == 87 )) then
			AI:SetAIState(0)
		end
		if (( PosX == 244) and ( PosY == 87 )) then
			AI:SetAIState(0)
		end
		
	end