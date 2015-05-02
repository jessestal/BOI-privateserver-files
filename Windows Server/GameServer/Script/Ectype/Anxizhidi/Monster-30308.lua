----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:?-??monsterAI-?
--		TaskID:??
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
--				AI:ChangeFaction(1)
				AI:GetRandTarget()
				AI:SetArray(1,2)
				AI:SetArray(9,1)
--				AI:AddSkill(ID,lv)
--				AI:UseSkill(ID,lv)
			end
		end

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then
				AI:SelfMurder()
			end
		end--????end
		
--0-idle
--1-attack1
--2-specialidle
--3-attack2
--4-dead
		
		if nIndex == 3 then--????2
			a = AI:GetArray(3)
			if a <= 2 then
				AI:PlayAction("idle",0,0)
				AI:Say("zi~")
			else
				if a <= 4 then
					AI:PlayAction("attack1",0,0)
					AI:Say("zi~zi~ ~")
				else
					if a <= 6 then
						AI:PlayAction("specialidle",0,0)
						AI:Say("zi~pa~kong~kong~")
					else
						if a <= 8 then
							AI:PlayAction("attack2",0,0)
							AI:Say("Crack... crack...")
						else
							AI:PlayAction("dead",0,0)
							AI:Say("Snap... crackle... pop...")
						end
					end
				end
			end
			
			a=a+1
			AI:SetArray(3,a)
		end--????end
		
	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*1000
 		t = AI:HaveAttackTarget()
 		a = AI:GetArray(1)

		-----------------------------------------------------------normal start
			if a == 0 then --?????,????,????
				AI:SetTimer(1,500,1)
				AI:SetArray(1,1)
--				AI:ChangeFaction(5)
		    AI:SetArray(9,0)
--				AI:Say("zi~zi~zi~ ~")
			end
			a = AI:GetArray(2)
			if a == 0 then --????,????
				AI:SetTimer(2,21000,1)
				AI:SetArray(2,1)
			end
			a = AI:GetArray(3)
			if a == 0 then --????,????
				AI:SetTimer(3,2000,9999)
				AI:SetArray(3,1)
			end
			----------------------------------------------------------normal start


	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

--		AI:Say("zi~zi~zi~ ~ ~pa!")
		--AI:ScreenText( "" , 2)
		AI:SetEctypeVarShort(mapid,8,1)
		AI:Exit()
		
	end
	
	