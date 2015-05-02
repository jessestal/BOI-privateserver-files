---------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/08
--		Author:??? ??
--		TaskName:HD-gongcheng-BOSS.lua
--		TaskID:??3?
-----------------------------------------------------

	function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
		
		-----------------------------------------??????start
		if nIndex == 1 then
			a = AI:GetArray(1)
			if a == 1 then
				rand = math.random(0,99)
				if rand < 20 then
					--2243	????
					AI:AddSkill(2243,1)
					AI:UseSkill(2243,1)
				end
				if rand >= 15 and rand < 30 then
					--2241	????
					AI:AddSkill(2241,1)
					AI:UseSkill(2241,1)
				end
				if rand >= 30 and rand < 50 then
					--1001	?????
					AI:AddSkill(1001,1)
					AI:UseSkill(1001,1)
				end
				if rand >= 50 and rand < 80 then
					--2368	????
					AI:AddSkill(2361,1)
					AI:UseSkill(2361,1)
				end
				if rand >= 80 and rand < 90 then
					--2368	??????
					AI:AddSkill(2368,1)
					AI:UseSkill(2368,1)
				end
				if rand >= 90 and rand < 98 then
					--2374	aoe??1?
					AI:AddSkill(2374,1)
					AI:UseSkill(2374,1)
				end
				if rand >= 98 then
					--2375	aoe??2?
					AI:AddSkill(2375,1)
					AI:UseSkill(2375,1)
				end
				
				rand2 = math.random(1,7)
				if rand2 == 1 then
					AI:Say("Human, get out of my way!")
				end
				if rand2 == 2 then
					AI:Say("Who says only Odin can control the order of the world?!")
				end
				if rand2 == 3 then
					AI:Say("This decrepit world should've been destroyed a long time ago!")
				end
				if rand2 == 4 then
					AI:Say("Odin, we'll never let you revive!")
				end
				if rand2 == 5 then
					AI:Say("This is all you've got?!")
				end
				if rand2 == 6 then
					AI:Say("I'm going to take back what is rightly mine!")
				end
				if rand2 == 7 then
					AI:Say("Back off!")
				end
			end
		end
		-----------------------------------------??????end

		-----------------------------------------????start
		if nIndex == 2 then
			--2361	????
			AI:AddSkill(2364,1)
			AI:UseSkill(2364,1)
		end
		-----------------------------------------????end
		
		-----------------------------------------????start
		if nIndex == 3 then
			a = AI:GetArray(3)
      HP = AI:GetHP()
      HPMAX = AI:GetHPMax()
      hppct = HP/HPMAX*1000
      hpline = 1000-a*25
--print(" | HP = "..tostring(HP).." | hppct = "..tostring(hppct).." | hpline = "..tostring(hpline).." | a = "..tostring(a))
			if hppct < hpline then
				monid = 0
				recoverHP = HPMAX / 100 * (2 + monid * 2)
				if hpline < 600 then
					AI:RestoreHPInstant(recoverHP)
				end
      	HP = AI:GetHP()
--print(" | HP = "..tostring(HP).." | recoverHP = "..tostring(recoverHP))
				Summon_monsterid_B(nAI)
				AI:AddSkill(2363,1)
				AI:UseSkill(2363,1)
				a = a + 1
				AI:SetArray(3,a)
				AI:ScreenText("I'll send you all to the hell!",2)
--print("- - - - - - - - - -")
			end
		end
		-----------------------------------------????end
		
		-----------------------------------------??start
		if nIndex == 4 then
			b = math.random(0,4)
			if b == 0 then
				AI:ScreenText("Dyse: Gods should never be on this world!",2)
			end
			if b == 1 then
				AI:ScreenText("Dyse: Let it all be destroyed!",2)
			end
			if b == 2 then
				AI:ScreenText("Dyse: Abyss and sin are the true faces of this world.",2)
			end
			if b == 3 then
				AI:ScreenText("Dyse: Human, do you really know what you're fighting for?",2)
			end
		
		end
		-----------------------------------------??end

		-----------------------------------------??start
		if nIndex == 5 then
			AI:ScreenText("Dyse has unexpectedly left the Sea of Atlantis! The menace of Atlantis is gone, for now.",2)
			AI:Exit()
		end
		-----------------------------------------??end
		
		-----------------------------------------??start
--		if nIndex == 6 then
--			HPMAX = AI:GetHPMax()
--			recoverHP = HPMAX / 500
--			AI:RestoreHPInstant(recoverHP)
----print(" | recoverHPnormal = "..tostring(recoverHP))
--		end
--		-----------------------------------------??end
	-----------------------------------------???
--if nIndex == 7 then
--    a = AI:GetArray(4)
--      HP = AI:GetHP()
--      HPMAX = AI:GetHPMax()
--      hppct = HP/HPMAX*1000
--      hpline = 1000-a*300
--		if hppct < hpline then	
--		posx = AI:GetPosX()
--		posy = AI:GetPosY()
--
--		monsterid_B = 32379
--
--		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy - 14)
--		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy - 14)
--		AI:SummonMonsterByPos( monsterid_B , posx  , posy - 14)
--		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy - 14)
--		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy - 14)
--		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy + 10)
--		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy + 10)
--		AI:SummonMonsterByPos( monsterid_B , posx  , posy + 10)
--		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy + 10)
--		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy + 10)
--		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy + 6)
--		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy + 6)
--		AI:SummonMonsterByPos( monsterid_B , posx  , posy + 6)
--		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy + 6)
--		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy + 6)
--		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy + 2)
--		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy + 2)
--		AI:SummonMonsterByPos( monsterid_B , posx  , posy + 2)
--		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy + 2)
--		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy + 2)
--		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy - 2)
--		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy - 2)
--		AI:SummonMonsterByPos( monsterid_B , posx  , posy - 2)
--		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy - 2)
--		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy - 2)
--		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy - 6)
--		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy - 6)
--		AI:SummonMonsterByPos( monsterid_B , posx  , posy - 6)
--		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy - 6)
--		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy - 6)
--		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy - 10)
--		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy - 10)
--		AI:SummonMonsterByPos( monsterid_B , posx  , posy - 10)
--		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy - 10)
--		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy - 10)
--		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy - 14)
--		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy - 14)
--		AI:SummonMonsterByPos( monsterid_B , posx  , posy - 14)
--		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy - 14)
--		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy - 14)
--				AI:SummonMonsterByPos( monsterid_B , posx - 10 , posy )
--		AI:SummonMonsterByPos( monsterid_B , posx - 10 , posy - 2)
--		AI:SummonMonsterByPos( monsterid_B , posx - 10  , posy - 4)
--		AI:SummonMonsterByPos( monsterid_B , posx - 10 , posy - 6)
--		AI:SummonMonsterByPos( monsterid_B , posx - 10 , posy - 8)
--		AI:SummonMonsterByPos( monsterid_B , posx + 10 , posy + 14)
--		AI:SummonMonsterByPos( monsterid_B , posx + 10 , posy + 8)
--		AI:SummonMonsterByPos( monsterid_B , posx + 10  , posy + 2)
--		AI:SummonMonsterByPos( monsterid_B , posx + 10 , posy + 4)
--		AI:SummonMonsterByPos( monsterid_B , posx + 10 , posy )
--    a = a + 1
--	  AI:SetArray(4,a)
--	  end
--		end
	-----------------------------------------???end		
		
	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		a = AI:GetArray(1)
		if a == 0 then
			--???
			AI:SetArray(1,1)
			--??????
			AI:SetTimer(1,5000,9999)
			--????
			AI:SetTimer(2,75000,9999)
			--????-??
			AI:SetTimer(3,5000,9999)
			--??
			AI:SetTimer(4,10000,9999)
			--??
			AI:SetTimer(5,16000000,1)
			--??
--			AI:SetTimer(6,5000,120)
      --???
--			AI:SetTimer(7,5000,9999)
			
		end
--		HP = AI:GetHP()
--		print(" | HP = "..tostring(HP))
	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		AI:Say( "Even if you stop me, Odin won't revive as you desire!")
		AI:ScreenText("Dyse: Even if you stop me, Odin won't revive as you desire!",2)
		posx = AI:GetPosX()
		posy = AI:GetPosY()

		monsterid_B = 32379
    a = AI:GetArray(5)
    
    if a == 0 then
    a = a + 1
    for a =1,4 do
		AI:SummonMonsterByPos( monsterid_B , posx - 2*a , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx - a , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx + a , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx + 2*a , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx - 2*a , posy + 10)
		AI:SummonMonsterByPos( monsterid_B , posx - a , posy + 10)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy + 10)
		AI:SummonMonsterByPos( monsterid_B , posx + a , posy + 10)
		AI:SummonMonsterByPos( monsterid_B , posx + 2*a , posy + 10)
		AI:SummonMonsterByPos( monsterid_B , posx - 2*a , posy + 6)
		AI:SummonMonsterByPos( monsterid_B , posx - a , posy + 6)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy + 6)
		AI:SummonMonsterByPos( monsterid_B , posx + a , posy + 6)
		AI:SummonMonsterByPos( monsterid_B , posx + 2*a , posy + 6)
		AI:SummonMonsterByPos( monsterid_B , posx - 2*a , posy + 2)
		AI:SummonMonsterByPos( monsterid_B , posx - a , posy + 2)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy + 2)
		AI:SummonMonsterByPos( monsterid_B , posx + a , posy + 2)
		AI:SummonMonsterByPos( monsterid_B , posx + 2*a , posy + 2)
		AI:SummonMonsterByPos( monsterid_B , posx - 2*a , posy - 2)
		AI:SummonMonsterByPos( monsterid_B , posx - a , posy - 2)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy - 2)
		AI:SummonMonsterByPos( monsterid_B , posx + a , posy - 2)
		AI:SummonMonsterByPos( monsterid_B , posx + 2*a , posy - 2)
		AI:SummonMonsterByPos( monsterid_B , posx - 2*a , posy - 6)
		AI:SummonMonsterByPos( monsterid_B , posx - a , posy - 6)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy - 6)
		AI:SummonMonsterByPos( monsterid_B , posx + a , posy - 6)
		AI:SummonMonsterByPos( monsterid_B , posx + 2*a , posy - 6)
		AI:SummonMonsterByPos( monsterid_B , posx - a , posy - 10)
		AI:SummonMonsterByPos( monsterid_B , posx - a , posy - 10)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy - 10)
		AI:SummonMonsterByPos( monsterid_B , posx + a , posy - 10)
		AI:SummonMonsterByPos( monsterid_B , posx + 2*a , posy - 10)
		AI:SummonMonsterByPos( monsterid_B , posx - 2*a , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx - a , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx + a , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx + 2*a , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx - 3*a , posy )
		AI:SummonMonsterByPos( monsterid_B , posx - 3*a , posy - 2)
		AI:SummonMonsterByPos( monsterid_B , posx - 3*a , posy - 4)
		AI:SummonMonsterByPos( monsterid_B , posx - 3*a , posy - 6)
		AI:SummonMonsterByPos( monsterid_B , posx - 3*a , posy - 8)
		AI:SummonMonsterByPos( monsterid_B , posx + 3*a , posy + 14)
		AI:SummonMonsterByPos( monsterid_B , posx + 3*a , posy + 8)
		AI:SummonMonsterByPos( monsterid_B , posx + 3*a , posy + 2)
		AI:SummonMonsterByPos( monsterid_B , posx + 3*a , posy + 4)
		AI:SummonMonsterByPos( monsterid_B , posx + 3*a , posy )
		end
		a = a + 1
		AI:SetArray(5,a)
		end
		AI:DelTimer(1)
		AI:DelTimer(2)
		AI:DelTimer(3)
		AI:DelTimer(4)
		AI:DelTimer(5)
--		AI:DelTimer(6)
	end


	function Summon_monsterid_B(nAI)
		local AI = GetMonsterAI(nAI)
		posx = AI:GetPosX()
		posy = AI:GetPosY()

		monsterid_B = 32388

		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy + 10)
		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy + 10)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy + 10)
		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy + 10)
		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy + 10)
		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy + 6)
		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy + 6)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy + 6)
		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy + 6)
		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy + 6)
		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy + 2)
		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy + 2)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy + 2)
		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy + 2)
		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy + 2)
		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy - 2)
		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy - 2)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy - 2)
		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy - 2)
		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy - 2)
		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy - 6)
		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy - 6)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy - 6)
		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy - 6)
		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy - 6)
		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy - 10)
		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy - 10)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy - 10)
		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy - 10)
		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy - 10)
		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy - 14)
		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy - 14)
	end