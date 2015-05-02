----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:???monsterAI?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--????
			--AI:ChangeFaction(1)
			AI:Say("For the glory of Chiyu!")
			AI:ScreenText( "Ocksin: For the glory of Chiyu!!" , 2)
			AI:AddSkill(2171,1)
			AI:UseSkill(2171,1)
			AI:SetArray(1,2)
		end

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a > 0 then
				AI:Say("For the glory of Chiyu!")
				AI:AddSkill(2171,1)
				AI:UseSkill(2171,1)
			end
		end--????end

	end
------------------------------------------------------------------------thinking
--2171	????
--2172	????
--2173	???
--2173	??buff
-----------------------
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*1000
 		t = AI:HaveAttackTarget()
 		a = AI:GetArray(1)

		if t == false then
			if a > 0 then
				if hpn == hpmax then
			    AI:DelTimer(1)
			    AI:DelTimer(2)
					AI:SetArray(1,0)
					AI:SetArray(2,0)
					AI:SetArray(3,0)
					AI:SetArray(4,0)
					AI:SetArray(5,0)
					AI:SetArray(6,0)
					AI:SetArray(7,0)
					AI:SetArray(8,0)
					AI:SetArray(9,0)
				end
			end
		else
		-----------------------------------------------------------normal-start
			if a == 0 then --?????
				AI:SetTimer(1,2000,1)
				AI:SetArray(1,1)
				--AI:ChangeFaction(5)
				AI:Say("This is my real power!")
				AI:ScreenText( "Ocksin shows his real form!" , 2)
			end
			
			a = AI:GetArray(2)
			if a == 0 then --????--0??
				AI:SetTimer(2,7500,999)
				AI:SetArray(2,1)
				AI:Say("Give up, your power is nothing compared to mine!")
			end
			----------------------------------------
			if a > 0 then --????
				if a < 10 then
					hpline = 1000-200*a
--AI:Say("hpline="..tostring(hpline))
--AI:Say("hppct="..tostring(hppct))
					if hppct < hpline then
						--????,??aoe
						--??80%????,?????,????,??FB????42
						AI:AddSkill(2172,1)
						AI:UseSkill(2172,1)
						AI:AddSkill(2173,1)
						AI:UseSkill(2173,1)
						AI:Say("Glow Force! Ethereal Shield!")
						a=a+10
						AI:SetArray(2,a)
						AI:SetArray(3,0)
						AI:SetArray(4,0)
						AI:SetArray(5,0)
						AI:SetArray(6,0)
						AI:SetEctypeVarShort(mapid,42,1)
						rhp = hpmax/1000*hpline-hpn
						AI:RestoreHPInstant(rhp)
						rand = AI:GetRand(1000)
						if rand < 250 then
							--??-?
							AI:SetArray(3,1)
							AI:ScreenText( "Ocksin has bound himself to the power of the Scarlet Phoenix!" , 2)
						else
							if rand < 500 then
								--??-?
								AI:SetArray(4,1)
								AI:ScreenText( "Ocksin has bound himself to the power of the Emerald Dragon!" , 2)
							else
								if rand < 750 then
									--??-?
									AI:SetArray(5,1)
									AI:ScreenText( "Ocksin has bound himself to the power of the White Tiger!" , 2)
								else
									--??-?
									AI:SetArray(6,1)
									AI:ScreenText( "Ocksin has bound himself to the power of the Obsidian Turtle!" , 2)
								end
							end
						end
					end
				end
			end
			----------------------------------------
			if a > 10 then --????
				--????????41??
				status = AI:GetEctypeVarShort(mapid,41)
--AI:Say("status="..tostring(status))
--AI:Say("a="..tostring(a))
				---------------
				if status == 1 then
					nowstatus = AI:GetArray(3)
					if nowstatus == 1 then
						--????,??????42,??????41
						--??60%?????
						AI:ScreenText( "Power of the Scarlet Phoenix disappears!" , 2)
						AI:SetEctypeVarShort(mapid,41,0)
						AI:SetEctypeVarShort(mapid,42,0)
						AI:AddSkill(2173,2)
						AI:UseSkill(2173,2)
						a=a-9
						AI:SetArray(2,a)
					else
						--????,??????42,??????41
						--?????,??80%?????
						AI:ScreenText( "Because you removed the wrong seal, Ocksin restores his power!" , 2)
						AI:SetEctypeVarShort(mapid,41,0)
						AI:SetEctypeVarShort(mapid,42,0)
						AI:AddSkill(2173,2)
						AI:UseSkill(2173,2)
						a=a-10
						AI:SetArray(2,a)
						rhp = hpmax*(hpline+50)/1000-hpn
						AI:RestoreHPInstant(rhp)
					end
				end
				---------------
				if status == 2 then
					nowstatus = AI:GetArray(4)
					if nowstatus == 1 then
						--????,??????42,??????41
						--??60%?????
						AI:ScreenText( "Power of the Emerald Dragon disappears!" , 2)
						AI:SetEctypeVarShort(mapid,41,0)
						AI:SetEctypeVarShort(mapid,42,0)
						AI:AddSkill(2173,2)
						AI:UseSkill(2173,2)
						a=a-9
						AI:SetArray(2,a)
					else
						--????,??????42,??????41
						--?????,??80%?????
						AI:ScreenText( "Because you removed the wrong seal, Ocksin restores his power!" , 2)
						AI:SetEctypeVarShort(mapid,41,0)
						AI:SetEctypeVarShort(mapid,42,0)
						AI:AddSkill(2173,2)
						AI:UseSkill(2173,2)
						a=a-10
						AI:SetArray(2,a)
						rhp = hpmax*(hpline+50)/1000-hpn
						AI:RestoreHPInstant(rhp)
					end
				end
				---------------
				if status == 3 then
					nowstatus = AI:GetArray(5)
					if nowstatus == 1 then
						--????,??????42,??????41
						--??60%?????
						AI:ScreenText( "Power of the White Tiger disappears!" , 2)
						AI:SetEctypeVarShort(mapid,41,0)
						AI:SetEctypeVarShort(mapid,42,0)
						AI:AddSkill(2173,2)
						AI:UseSkill(2173,2)
						a=a-9
						AI:SetArray(2,a)
					else
						--????,??????42,??????41
						--?????,??80%?????
						AI:ScreenText( "Because you removed the wrong seal, Ocksin restores his power!" , 2)
						AI:SetEctypeVarShort(mapid,41,0)
						AI:SetEctypeVarShort(mapid,42,0)
						AI:AddSkill(2173,2)
						AI:UseSkill(2173,2)
						a=a-10
						AI:SetArray(2,a)
						rhp = hpmax*(hpline+50)/1000-hpn
						AI:RestoreHPInstant(rhp)
					end
				end
				---------------
				if status == 4 then
					nowstatus = AI:GetArray(6)
					if nowstatus == 1 then
						--????,??????42,??????41
						--??60%?????
						AI:ScreenText( "Power of the Dark Tortoise disappears!" , 2)
						AI:SetEctypeVarShort(mapid,41,0)
						AI:SetEctypeVarShort(mapid,42,0)
						AI:AddSkill(2173,2)
						AI:UseSkill(2173,2)
						a=a-9
						AI:SetArray(2,a)
					else
						--????,??????42,??????41
						--?????,??80%?????
						AI:ScreenText( "Because you removed the wrong seal, Ocksin restores his power!" , 2)
						AI:SetEctypeVarShort(mapid,41,0)
						AI:SetEctypeVarShort(mapid,42,0)
						AI:AddSkill(2173,2)
						AI:UseSkill(2173,2)
						a=a-10
						AI:SetArray(2,a)
						rhp = hpmax*(hpline+50)/1000-hpn
						AI:RestoreHPInstant(rhp)
					end
				end
				---------------
			end
			----------------------------------------------------------normal-end
		end --t-end
	end --function-end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		AI:ScreenText( "Long...live...Chiyu..." , 2)

	end
