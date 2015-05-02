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

		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
--				AI:ChangeFaction(1)
--				AI:GetRandTarget()
				AI:Say("You really came here to disturb my tea party?")
				AI:ScreenText("Darknight Rose: Some people actually came here to disturb my tea party?",2)
			end
			if a == 6 then
				AI:Say("Precisely, black tea coupled with blood will become tastier.")
				AI:ScreenText("Darknight Rose: just black tea accompanied by blood will become tastier.",2)
			end
			if a == 11 then
				AI:Say("Let's play the game!")
				AI:ScreenText("Darknight Rose: Let's play the game first!",2)
			end
			if a == 12 then
				AI:SetArray(2,1)
				AI:SetArray(9,1)
				AI:DelTimer(1)
			end
			a=a+1
			AI:SetArray(1,a)
		end

		if nIndex == 2 then--777
			a = AI:GetArray(2)
			if a == 1 then
				AI:AddSkill(2283,1)
				AI:UseSkill(2283,1)
			end
			if a == 2 then
				AI:AddSkill(2283,1)
				AI:UseSkill(2283,1)
			end
			if a == 3 then
				AI:DelTimer(2)
			end
			a=a+1
			AI:SetArray(2,a)
		end--777end
		
		if nIndex == 3 then--????
			AI:AddSkill(2163,1)
			AI:UseSkill(2163,1)
			AI:Say("You have angered me!")
		end--????end
		
	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*1000

 		t = AI:HaveAttackTarget()--????
		if t == false then
 			a = AI:GetArray(1)
			if a > 0 then
				if hpn == hpmax then
					CanBeShutDown = AI:GetArray(9)
					if CanBeShutDown == 1 then
				    AI:DelTimer(1)
				    AI:DelTimer(2)
				    AI:DelTimer(3)
		    		AI:SetArray(1,0)
		    		AI:SetArray(2,0)
		    		AI:SetArray(3,0)
		    		AI:SetArray(4,0)
		    		AI:SetArray(5,0)
		    		AI:SetArray(6,0)
		    		AI:SetArray(7,0)
		    		AI:SetArray(8,0)
		    		AI:SetArray(9,0)
--		    		AI:ChangeFaction(1)
					end
				end
			end
		else
		-----------------------------------------------------------normal start
 			a=AI:GetArray(1)
			if a == 0 then --?????,????,????
--				AI:ChangeFaction(11)
				AI:SetTimer(1,500,99)
				AI:SetArray(1,1)
		    AI:SetArray(9,0)
			end
			a=AI:GetArray(2)
			if a > 0 then
				a=a+1
				AI:SetArray(2,a)
				if a < 100 then--????
					--?????
					if a == 99 then--??99???????
						rda=math.random(1,6)
						rdb=math.random(1,6)
						rdc=math.random(1,6)
						rst=0
						if rda == rdb then
							rst=rst+1
						end
						if rdb == rdc then
							rst=rst+1
						end
						if rdc == rda then
							rst=rst+1
						end
						stat=AI:GetArray(6)
						if stat > 1 then
							if rst < 1 then--??????????
								rda=math.random(1,6)
								rdb=math.random(1,6)
								rdc=math.random(1,6)
							end
						end
						if stat > 2 then
							if rst < 2 then--??????????
								rda=math.random(1,6)
								rdb=math.random(1,6)
								rdc=math.random(1,6)
							end
						end
						if stat > 3 then
							if rst < 3 then--?????????????
								rdo=math.random(0,9)
								if rdo == 7 then
									rda=math.random(1,6)
									rdb=rda
									rdc=rda
								end
							end
						end
						AI:SetArray(3,rda)
						AI:SetArray(4,rdb)
						AI:SetArray(5,rdc)
					end--??99?????????
				else
					if a < 105 then
						rda=math.random(1,6)
						rdb=math.random(1,6)
						rdc=math.random(1,6)
						AI:ScreenText("Bright-Dream  -| "..tostring(rda).." |-  -| "..tostring(rdb).." |-  -| "..tostring(rdc).." |- ",2)
						if a == 104 then
							PosX=AI:GetPosX()
							PosY=AI:GetPosY()
							rr=math.random(7)
							PosXc=PosX+rr-4
							rr=math.random(7)
							PosYc=PosY+rr-4
							rda=AI:GetArray(3)
							monid=52300+rda
							AI:SummonMonsterByPos(monid,PosXc,PosYc,1)
						end
					else
						if a < 130 then
							rda=AI:GetArray(3)
							rdb=math.random(1,6)
							rdc=math.random(1,6)
							AI:ScreenText("Bright-Dream  =| "..tostring(rda).." |=  -| "..tostring(rdb).." |-  -| "..tostring(rdc).." |- ",2)
							if a == 129 then
								PosX=AI:GetPosX()
								PosY=AI:GetPosY()
								rr=math.random(7)
								PosXc=PosX+rr-4
								rr=math.random(7)
								PosYc=PosY+rr-4
								rdb=AI:GetArray(4)
								monid=52300+rdb
								AI:SummonMonsterByPos(monid,PosXc,PosYc,1)
							end
						else
							if a < 155 then
								rda=AI:GetArray(3)
								rdb=AI:GetArray(4)
								rdc=math.random(1,6)
								AI:ScreenText("Bright-Dream  =| "..tostring(rda).." |=  =| "..tostring(rdb).." |=  -| "..tostring(rdc).." |- ",2)
								if a == 154 then
									PosX=AI:GetPosX()
									PosY=AI:GetPosY()
									rr=math.random(7)
									PosXc=PosX+rr-4
									rr=math.random(7)
									PosYc=PosY+rr-4
									rdc=AI:GetArray(5)
									monid=52300+rdc
									AI:SummonMonsterByPos(monid,PosXc,PosYc,1)
								end
							else
								if a < 170 then
									rda=AI:GetArray(3)
									rdb=AI:GetArray(4)
									rdc=AI:GetArray(5)
									rst=0
									if rda == rdb then
										rst=rst+1
									end
									if rdb == rdc then
										rst=rst+1
									end
									if rdc == rda then
										rst=rst+1
									end
									if rst == 0 then
										AI:ScreenText("Bright-Dream  =| "..tostring(rda).." |=  =| "..tostring(rdb).." |=  =| "..tostring(rdc).." |= ",2)
									end
									if rst == 1 then
										AI:ScreenText("Bright-Dream  =| "..tostring(rda).." |=  =| "..tostring(rdb).." |=  =| "..tostring(rdc).."ÿ| = One pair!",2)
									end
									if rst == 3 then
										AI:ScreenText("Bright-Dream  =| "..tostring(rda).." |=  =| "..tostring(rdb).." |=  =| "..tostring(rdc).."ÿ| = Three phases!",2)
									end
								end
							end
						end
					end
				end
				if a == 180 then
--2280	????
--2281	????
--2282	????
--2283	????
--2163  ??
					rda=AI:GetArray(3)
					rdb=AI:GetArray(4)
					rdc=AI:GetArray(5)
					rst=0
					AI:SetArray(2,1)
					if rda == rdb then
						rst=rst+1
					end
					if rdb == rdc then
						rst=rst+1
					end
					if rdc == rda then
						rst=rst+1
					end
					if rst == 0 then
						AI:Say("Decaying Poison!")
						AI:ScreenText("Darknight Rose: Decaying Poison!",2)
						AI:AddSkill(2280,1)
						AI:UseSkill(2280,1)
					end
					if rst == 1 then
						AI:Say("One pair! Crimson Windflow!")
						AI:ScreenText("Darknight Rose: Crimson Windflow!",2)
						AI:AddSkill(2281,1)
						AI:UseSkill(2281,1)
					end
					if rst == 3 then
						if rda == 6 then
							AI:Say("| 6 | - | 6 | - | 6 | Shapeless Vanish!")
							AI:ScreenText("Darknight Rose: | 6 | - | 6 | - | 6 | Shapeless Vanish!",2)
							AI:SetTimer(2,1000,5)
						else
							AI:Say("Three phases! Oblivious Bud!")
							AI:ScreenText("Darknight Rose: Three phases! Oblivious Bud!",2)
							AI:AddSkill(2282,1)
							AI:UseSkill(2282,1)
						end
					end
				end
			end
			
			hpn = AI:GetHP()
			hpmax = AI:GetHPMax()
			hppct = hpn/hpmax*100
			a=AI:GetArray(6)
			if a < 4 then
				if hppct < 20 then
					AI:SetTimer(3,1000,1)
					AI:SetArray(6,4)
				else
					if hppct < 40 then
						AI:SetArray(6,3)
					else
						if hppct < 60 then
							AI:SetArray(6,2)
						else
							if hppct < 80 then
								AI:SetArray(6,1)
							end
						end
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

		AI:Say("Sister...forgive me...")
		AI:ScreenText("Darknight Rose: Sister...forgive me",2)

	end



