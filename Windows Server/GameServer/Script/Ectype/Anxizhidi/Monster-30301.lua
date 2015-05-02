----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:?-??monsterAI-?
--		TaskID:???  ?
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
				if aistatus == 4 then
					aistatus=5
					AI:SetEctypeVarShort(mapid,6,aistatus)
					AI:ScreenText( "Raphael: What?! My illusion... how is this possible!?" , 2)
					AI:Say("What?! My illusion... how is this possible!?")
				end
				aistatus=AI:GetEctypeVarShort(mapid,6)
				if aistatus == 12 then
					aistatus=13
					AI:SetEctypeVarShort(mapid,6,aistatus)
					AI:ScreenText( "Raphael: You even saw through my illusion... I underestimated you!" , 2)
					AI:Say("You even saw through my illusion... I underestimated you!")
					hpmax=AI:GetHPMax()
					dhp=hpmax*0.3
					AI:LoseHPInstant(dhp)
				end
--				AI:AddSkill(ID,lv)
--				AI:UseSkill(ID,lv)
			end
		end
		
--2241	????	???  30301		8????

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 1 then
				rand = AI:GetRand(100)
				AI:AddSkill(2241,1)
				AI:UseSkill(2241,1)
				if rand < 20 then
					AI:ScreenText( "Raphael: Dark Orb!" , 2)
					AI:Say("Dark Orb!")
				else				
					if rand < 40 then
						AI:ScreenText( "Raphael: Descend into darkness!" , 2)
						AI:Say("Descend into darkness!")
					end
				end
			end
		end--????end
		
		if nIndex == 3 then--????
			a = AI:GetArray(3)
			if a == 1 then
--				AI:AddSkill(ID,lv)
--				AI:UseSkill(ID,lv)
--				AI:ScreenText( " " , 2)
--				AI:Say("")
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
				AI:SetTimer(2,8000,9999)
				AI:SetArray(2,1)
			end
			a = AI:GetArray(3)
			if a == 0 then --????
				aistatus=AI:GetEctypeVarShort(mapid,6)
				test=AI:GetEctypeVarShort(mapid,99)
				if test == 1 then
					AI:Say("aistatus="..tostring(aistatus))
					AI:Say("hppct="..tostring(hppct))
					AI:SetEctypeVarShort(mapid,99,0)
				end
				if aistatus == 5 then--hp<80%????
					if hppct < 800 then
						posx = AI:GetPosX()
						posy = AI:GetPosY()
						AI:SummonMonsterByPos(30283,posx,posy)
						AI:SummonMonsterByPos(30408,posx,posy)
						aistatus=6
						AI:SetEctypeVarShort(mapid,6,aistatus)
						AI:Exit()
					end
				end
				if aistatus == 13 then--hp<50%??,??
					if hppct < 500 then
						aistatus=14
						AI:SetEctypeVarShort(mapid,6,aistatus)
						posx = AI:GetPosX()
						posy = AI:GetPosY()
						AI:SummonMonsterByPos(30409,posx,posy)
						AI:SelfMurder()
						AI:Exit()
					end
				end
			end
			----------------------------------------------------------normal start
		end


	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()



		AI:ScreenText( "Raphael: No matter, I've done just as my master said. Goodbye!" , 2)
		AI:Say("No matter, I've done just as my master said. Goodbye!")

	end
	
	
	