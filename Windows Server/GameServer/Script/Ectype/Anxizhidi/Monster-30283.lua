----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:?-???-?
--		TaskID:30283	??? ?

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
				aistatus=AI:GetEctypeVarShort(mapid,6)
--AI:Say("aistatus="..tostring(aistatus))
				if aistatus == 0 then
					aistatus=1
					AI:SetEctypeVarShort(mapid,6,aistatus)
					AI:ScreenText( "Raphael: Good to see you again! Still as tenacious as ever, I see!" , 2)
					AI:Say("Good to see you again! Still as tenacious as ever, I see!")
				end
				if aistatus == 6 then
					aistatus=7
					AI:SetEctypeVarShort(mapid,6,aistatus)
					AI:ScreenText( "Raphael: Fool! Did you really think destroying that crystal would do anything!?" , 2)
					AI:Say("Fool! Did you really think destroying that crystal would do anything!?")
					hpmax=AI:GetHPMax()
					dhp=hpmax*0.2
					AI:LoseHPInstant(dhp)
				end
			end
		end
		
--2240	????	???  30283		5????


		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then
				rand = AI:GetRand(100)
				AI:AddSkill(2240,1)
				AI:UseSkill(2240,1)
				if rand < 20 then
					AI:ScreenText( "Raphael: Crack of Dawn!" , 2)
					AI:Say("Crack of Dawn!")
				else				
					if rand < 40 then
						AI:ScreenText( "Raphael: Let me show you the true power of the light!" , 2)
						AI:Say("Let me show you the true power of the light!")
					end
				end
			end
		end--????end
		
		if nIndex == 3 then--????
			a = AI:GetArray(3)
			if a == 1 then
				
			end
			
			
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
--AI:Say("hppct="..tostring(hppct))
		if t == false then
			if a > 0 then
				if hpn == hpmax then
					CanBeShutDown = AI:GetArray(9)
					if CanBeShutDown == 1 then
				    AI:DelTimer(0)
				    AI:DelTimer(1)
				    AI:DelTimer(2)
		    		AI:SetArray(1,0)
		    		AI:SetArray(2,0)
		    		AI:SetArray(9,0)
--						AI:ChangeFaction(1)
					end
				end
			end
		else
		-----------------------------------------------------------normal start
			if a == 0 then --?????
				AI:SetTimer(1,500,1)
				AI:SetArray(1,1)
--				AI:ChangeFaction(5)
		    AI:SetArray(9,0)
--				AI:Say("")
--				AI:ScreenText( "" , 2)
			end
			a = AI:GetArray(2)
			if a == 0 then --????
				AI:SetTimer(2,5000,9999)
				AI:SetArray(2,1)
			end
			a = AI:GetArray(3)
			if a == 0 then --????
			--------------------------------------------------------------
				aistatus=AI:GetEctypeVarShort(mapid,6)
				test=AI:GetEctypeVarShort(mapid,99)
				if test == 1 then
					AI:Say("aistatus="..tostring(aistatus))
					AI:Say("hppct="..tostring(hppct))
					AI:SetEctypeVarShort(mapid,99,0)
				end
				if aistatus == 1 then
					if hppct < 950 then--95%???
						aistatus=2
						AI:SetEctypeVarShort(mapid,6,aistatus)
						AI:ScreenText( "The light from the Crystal Pillar reveals Raphael's true form!" , 2)
						posx = AI:GetPosX()
						posy = AI:GetPosY()
						AI:SummonMonsterByPos(30304,88,154)
					end
				end
				if aistatus == 2 then--??95%
					hpmax=AI:GetHPMax()
					hpn=AI:GetHP()
					hpr=hpmax*0.95-hpn
					AI:RestoreHPInstant(hpr)
				end
				if aistatus == 3 then--????
					posx = AI:GetPosX()
					posy = AI:GetPosY()
					AI:SummonMonsterByPos(30301,posx,posy)
					AI:SummonMonsterByPos(30407,posx,posy)--???
					aistatus=4
					AI:SetEctypeVarShort(mapid,6,aistatus)
					AI:Exit()
				end
				if aistatus == 7 then--70%???
					if hppct < 700 then
						aistatus=8
						AI:SetEctypeVarShort(mapid,6,aistatus)
						AI:ScreenText( "Raphael's Avatar" , 2)
						AI:SummonMonsterByPos(30312,96,144)
						AI:SummonMonsterByPos(30408,96,144)--???
						AI:SummonMonsterByPos(30312,96,159)
						AI:SummonMonsterByPos(30408,96,159)--???
						AI:SummonMonsterByPos(30312,88,152)
						AI:SummonMonsterByPos(30408,88,152)--???
						AI:SummonMonsterByPos(30312,103,153)
						AI:SummonMonsterByPos(30408,103,153)--???
						AI:Exit()
					end
				end
			--------------------------------------------------------------
			end
			----------------------------------------------------------normal start
		end


	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

	end
