----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012/08
--		Author:???
--		TaskName:?-BOSSH-Lv2:????-?
--		TaskID:52489_BOSSH_L2.lua
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then
			a = AI:GetArray(1)
			if a == 1 then
				AI:SetArray(1,2)
				AI:SetArray(9,1)
			end
		end

		if nIndex == 2 then
			a = AI:GetArray(2)
			if a == 1 then
				AI:AddSkill(2522,3)
				AI:UseSkill(2522,3)
				local talk = math.random(1,100)
				if talk < 10 then
					AI:Say("I see Raidne has lured more souls for feasting.")
				elseif talk < 20 then
					AI:Say("With enough souls, I will be the ruler of the Infernal Depths.")
				elseif talk < 30 then
					AI:Say("I believe I only need one more soul to rule the Infernal Depths.")
				elseif talk < 40 then
					AI:Say("Only I was clever enough to capture a Siren to use for my bidding.")
				elseif talk < 50 then
					AI:Say("I promised Raidne that she would be my queen if I were to become lord. She chose to be here.")
				elseif talk < 60 then
					AI:Say("She tricks people into thinking she wants freedom so they can lower their guards.")
				elseif talk < 70 then
					AI:Say("Raidne is just as corrupt as I am.")
				elseif talk < 80 then
					AI:Say("Soon, all of the Infernal Depths will become part of Heartless Canyon.")
				elseif talk < 90 then
					AI:Say("If you let me have your soul, you can have the honor of being a servant in the castle.")
				else
					AI:Say("Achelous: I only wish to turn the desolate Infernal Depths into a gleaming oasis, with you as my servant.")
				end
				AI:PlayEffect("common\\xiwadeshouhu\\fire\\tx_xiwadeshouhu_fire.ini")
			end--????end
		end--????end

		if nIndex == 3 then
			a = AI:GetArray(3)
			if a == 6 then
				AI:ScreenText("I.need more souls.I'm losing power.",2)
				AI:ChangeMonsterSize(2.5)
				a=a+1
				AI:SetArray(3,a)
			end
			if a == 5 then
				AI:AddSkill(2245,1)
				AI:UseSkill(2245,1)
				AI:AddSkill(2173,2)
				AI:UseSkill(2173,2)
				AI:AddSkill(6528,10)
				AI:UseSkill(6528,10)
				AI:ScreenText("Strike of souls!",2)
				a=a+1
				AI:SetArray(3,a)
			end
			if a < 5 then
				AI:AddSkill(2240+a,1)
				AI:UseSkill(2240+a,1)
				AI:ScreenText(a.."Dual slash of souls!",2)
				a=a+1
				AI:SetArray(3,a)
			end
		end


	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hplose = hpmax - hpn
		hppct = hpn/hpmax*100
		t = AI:HaveAttackTarget()
 		a = AI:GetArray(1)

		if t == false then
				if a > 0 then
					if hpn == hpmax then
						CanBeShutDown = AI:GetArray(9)
						if CanBeShutDown == 1 then
--					    AI:DelTimer(1)
--					    AI:DelTimer(2)
--					    AI:DelTimer(3)
--							AI:SetArray(1,0)
--							AI:SetArray(2,0)
--							AI:SetArray(3,0)
--							AI:SetArray(4,0)
--							AI:SetArray(5,0)
--							AI:SetArray(6,0)
--							AI:SetArray(7,0)
--							AI:SetArray(8,0)
--							AI:SetArray(9,0)
--							AI:SetEctypeVarShort(mapid,50,0)
--							AI:SetEctypeVarShort(mapid,51,0)
						end
					end
				end
		else
		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then
				AI:SetTimer(1,1000,1)
				AI:SetArray(1,1)
		    AI:SetArray(9,0)
				status = AI:GetEctypeVarShort(mapid,50)
				if status > 0 then
					hpmax=AI:GetHPMax()
					losthp=hpmax*status/100
					AI:LoseHPInstant(losthp)
				else
					AI:Say("Raidne has given me a beautiful final soul.")
					AI:ScreenText("Achelous: I feel your soul seething through.",2)
				end
				
			end
			a = AI:GetArray(2)
			if a == 0 then
				AI:SetTimer(2,5000,9999)
				AI:SetArray(2,1)
			end
			a = AI:GetArray(3)
			if a == 0 then
				status=AI:GetEctypeVarShort(mapid,50)
				modtime=7
				ultraline=10
				----????,????
				modx=math.floor((95-ultraline)/modtime)+1
				if status < (95-ultraline) then
					----------------------------------------------------------???1
					loop=1+math.floor(status/modx)----??
					hpline=100-loop*modx----??
--	print("hppct = "..hppct.." | hpline = "..hpline.." | status = "..status)
					if hppct < hpline then
						t,cmax=0,status/modx+2
						ox,oy,rr=75,264,9
						AI:SetEctypeVarShort(mapid,50,loop*modx)
						AI:SetEctypeVarShort(mapid,51,cmax)
						AI:SetEctypeVarShort(mapid,52,0)
						AI:ScreenText(cmax.." Soul Split!",2)
						while t < cmax do
							oa=6.28*t/cmax
							sx=ox+rr*math.sin(oa)
							sy=oy+rr*math.cos(oa)
							modt=math.mod(t,2)
							Dir=(1-t/cmax)*8+6
							if modt == 0 then
								AI:SummonMonsterByPos(52511,sx,sy,Dir)
							else
								AI:SummonMonsterByPos(52512,sx,sy,Dir)
							end
							t=t+1
						end
						AI:Exit()
					end
					----------------------------------------------------------???1-end
				else
					----------------------------------------------------------???
					hpline=ultraline----????
--	print("hppct = "..hppct.." | hpline = "..hpline.." | status = "..status)
					if hppct < hpline then
						AI:ScreenText("Smash of souls!",2)
						t,cmax=0,15
						ox,oy,rr=75,264,9
						while t<cmax do
							oa=6.28*t/cmax
							sx=ox+rr*math.sin(oa)
							sy=oy+rr*math.cos(oa)
							if t < cmax*2/3 then
								Dir=(t)
							else
								Dir=(cmax-t)
							end
							AI:SummonMonsterByPos(52513,sx,sy,Dir)
							t=t+1
						end
						AI:AddSkill(2173,1)
						AI:UseSkill(2173,1)
						AI:AddSkill(6529,10)
						AI:UseSkill(6529,10)
						AI:SetTimer(3,3000,9999)
						AI:SetArray(3,1)
						AI:ChangeMonsterSize(15)
					end
					----------------------------------------------------------???-end
				end
			end
--			----------------------------------------------------------normal end
		end --- t end
	end--functionEvent_ThinkingEND
-----------------------------------------------------------------------------	thinking end

	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

--		if (( PosX == 216) and ( PosY == 80 )) then
--			AI:SetTimer(8,3200,3)--??????,?Lv2??
--		end
	end

	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

--		if nIndex == 1 then
--			AI:AddSeekPos(mapid,216,80)
--		end
	end

	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()


		AI:ScreenText("",2)
		AI:Say("Is this some kind of relief my queen?")
		AI:DelTimer(1)
		AI:DelTimer(2)
		AI:DelTimer(3)
		AI:DelTimer(4)
		AI:DelTimer(5)
		AI:DelTimer(6)
		AI:DelTimer(7)
		AI:DelTimer(8)
		AI:DelTimer(9)

	end