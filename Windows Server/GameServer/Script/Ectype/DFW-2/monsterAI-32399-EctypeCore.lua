 ------------------------------ 
 --  Copyright:PERFECT WORLD  
 --  Modified:2012  
 --  Author:???  
 --  TaskName: ??????
 ------------------------------ 
--32390	1???
--32391	2???
--32392	3????
--32393	4????
--32394	5??boss
--32395	6????
--32396	????
--32397	????
--32398	?????
--32399	????
--	
--32401	????1
--32402	????2
--32403	????3
--32404	????4
--32405	????5
--32406	????6
--32407	?????

	
	 
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--???1--start
			a=AI:GetArray(1)
			if a == 1 then
				stagenow = AI:GetEctypeVarShort(mapid,30)
				msgline=""
				msgline=msgline.."[color=ffE0E000]Party Progress in the Pursuit of Rapture:[/color]\n "
				if stagenow < 47 then
					msgline=msgline.."Platform "..tostring(stagenow).." \n"
				else
					msgline=msgline.."Completed!"
				end
				msgline=msgline.."-------------\n"
				msgline=msgline.."[color=ffE0E000]Server Leaderboard:[/color]\n"
				for key = 1,8 do
					key_id,key_st=110+key,30+key
					s_playerid=AI:GetEctypeVarInteger(mapid,key_id)
					s_stage=AI:GetEctypeVarShort(mapid,key_st)
					all_stage=0
					if s_playerid > 0 then
						teamname=AI:GetPlayerInfoStr(s_playerid,"name")
						if s_stage < 47 then
							if teamname == nil then
								msgline=msgline.."Party  Platform "..s_stage.." \n"
							else
								msgline=msgline.."Party Leader "..teamname.."Platform"..s_stage.." \n"
							end
						else
							if teamname == nil then
								msgline=msgline.."Party leader  has completed.\n"
							else
								msgline=msgline.."Party Leader "..teamname.."has completed.\n"
							end
						end
						all_stage=all_stage+s_stage
					else
						msgline=msgline.."Rank"..tostring(key).." : none\n"
					end
				end
				if all_stage <= 230 then
					AI:SendMsgToMap(mapid,msgline)
				else
					AI:CloseMsgBoxByMapID(mapid)
				end
			end
		end--???1--------------------end
		
		if nIndex == 2 then--???2--start
			a=AI:GetArray(2)
			if a == 1 then
				----------
--				text=""
--				for uKey=1,100 do
--					var=AI:GetEctypeVarShort(mapid,uKey)
--					if var > 0 then
--						text=text.."\nkey["..uKey.."] = "..var
--					end
--				end
--				AI:SendMsgToMap(mapid,text)
				----------
				status=AI:GetEctypeVarShort(mapid,1)
--				--print("-------------")
--				--print("status="..status)--??????
				
				if status == 9 then
					AI:ScreenText("Your Party has completed all the challenges in the Pursuit of Rapture!",2)
--					AI:DelTimer(1)
					AI:DelTimer(2)
--					AI:Exit()
				end
				
				if status == 1 then----?????----
					
					teamproces=AI:GetEctypeVarShort(mapid,4)
					msgstatus=AI:GetArray(3)
					if msgstatus == 1 then--??start
						event_A = {6,8,22,24,35,20,42,26,18,38,28,33,37,32,30,16,14}
						event_B = {5,9,21,25,34,44,17,29,13,1}
						event_C = {7,23,3,19,27,11,31,15}
						event_D = {4,10,40,2,36,12}
						event_E = {39,41,43,45}
--						event_F = {0}
						event=0
						eventadd=0
						tp=0
						for tp = 1 , #event_A do
							if teamproces == event_A[tp] then
								event=1
--								bcmsg="Another wave of Rapture monsters have appeared!"
--								gamemsg = "Eliminate all Rapture monsters and the Exalted Dice's seal can be released."
							end
						end
						for tp = 1 , #event_B do
							if teamproces == event_B[tp] then
								event=2
--								bcmsg="The Elite Guards will come through the portal soon."
--								gamemsg = "Eliminate all Elite Guards and the Exalted Dice's seal can be released."
							end
						end
						for tp = 1 , #event_C do
							if teamproces == event_C[tp] then
								event=3
--								bcmsg="The Illusionary Rings will appear soon."
--								gamemsg = "Collect all the real rings and the seal on the Exalted Dice will be removed."
							end
						end
						for tp = 1 , #event_D do
							if teamproces == event_D[tp] then
								event=4
--								bcmsg="The Energy Triggers will appear soon."
--								gamemsg = "Three triggers must be switched nearly simultaneously so the power of the Exalted Dice can be released."
							end
						end
						for tp = 1 , #event_E do
							if teamproces == event_E[tp] then
								event=5
--								bcmsg="The Exalted Dice will appear soon."
--								gamemsg="You can pass only if the Exalted Dice rolls a 1."
							end
						end
--						for tp = 1 , #event_F do
--						--??
--							if teamproces == event_F[tp] then
--								AI:SetEctypeVarShort(mapid,5,1)
--							end
--						end
						if teamproces == 46 then
							event=6
--							bcmsg="The deity of the Pursuit of Rapture will show up!"
--							gamemsg="May luck be with you!"
						end
						AI:SetEctypeVarShort(mapid,6,event)
						
						pid=AI:GetEctypeVarInteger(mapid,110)
						name=AI:GetPlayerInfoStr(pid,"name")
						if name == nil then
							--print("checkev: teamproces="..teamproces.."  |event="..event)
						else
							--print("checkev: name="..name.."  |teamproces="..teamproces.."  |event="..event)
						end
					end--??end
					
					if msgstatus < 8 then--??start
						event=AI:GetEctypeVarShort(mapid,6)
						findtalk()
						AI:ScreenText(bcmsg..string.rep(" >",msgstatus)..string.rep("   ",10-msgstatus),2)
						msgstatus=msgstatus+1
					end--??end
					
					if msgstatus == 8 then--??start

						status=2
						AI:SetEctypeVarShort(mapid,1,status)
						stage=teamproces
						if stage < 1 or stage > 46 then
							AI:ScreenText("Error",2)
							stage=1
						end
						findpos()
						mposx,mposy=mposx_find,mposy_find
						AI:SetEctypeVarShort(mapid,23,mposx)
						AI:SetEctypeVarShort(mapid,24,mposy)
						Level=AI:GetEctypeVarShort(mapid,2)
						FieldLevel=AI:GetEctypeVarShort(mapid,3)
						event=AI:GetEctypeVarShort(mapid,6)
						findtalk()
						if event == 1 then
						--????
							AI:SummonMonsterByPos(32407,mposx,mposy,0)
							AI:SetEctypeVarShort(mapid,7,0)
							MonsterAttrRateID=246
							for tp=1,10 do
								MonsterID=32390+math.random(0,1)
								smposx,smposy=mposx+math.random(0,2)-1,mposy+math.random(0,2)-1
								if FieldLevel > 0 then
									AI:CreateFieldMonster(MonsterID,MonsterAttrRateID,FieldLevel,1,mapid,smposx,smposy,0)
									--print("Summon=1"..MonsterID.." | "..MonsterAttrRateID.." | "..FieldLevel.." | "..smposx.." | "..smposy.." | ")
								else
									AI:SummonLevelMonsterByPos(MonsterID,MonsterAttrRateID,Level,smposx,smposy)
									--print("Summon=2"..MonsterID.." | "..MonsterAttrRateID.." | "..Level.." | "..smposx.." | "..smposy.." | ")
								end
							end
						elseif event == 2 then
						--??????+boss
							AI:SummonMonsterByPos(32407,mposx,mposy,0)
							AI:SetEctypeVarShort(mapid,8,0)
							MonsterAttrRateID=247
							for tp=1,2 do
								MonsterID=32392+math.random(0,1)
								smposx,smposy=mposx+math.random(0,2)-1,mposy+math.random(0,2)-1
								if FieldLevel > 0 then
									AI:CreateFieldMonster(MonsterID,MonsterAttrRateID,FieldLevel,1,mapid,smposx,smposy,0)
									--print("Summon=3"..MonsterID.." | "..MonsterAttrRateID.." | "..FieldLevel.." | "..smposx.." | "..smposy.." | ")
								else
									AI:SummonLevelMonsterByPos(MonsterID,MonsterAttrRateID,Level,smposx,smposy)
									--print("Summon=4 | "..MonsterID.." | "..MonsterAttrRateID.." | "..Level.." | "..smposx.." | "..smposy.." | ")
								end
							end
						elseif event == 3 then
						--????(????)
							AI:SetEctypeVarShort(mapid,9,0)
							MonsterID_T,MonsterID_F=32396,32397
							Monsterture=0
							a,cmax=0,15
							ox,oy,rr=mposx,mposy,11
							oricp=15
							usep=oricp
							while a<cmax do	
								oa=6.28*a/cmax
								sx=ox+rr*math.sin(oa)
								sy=oy+rr*math.cos(oa)
								randombuff=math.random(0,99)
								if randombuff<usep then
									AI:SummonMonsterByPos(MonsterID_T,sx,sy)
									Monsterture=Monsterture+1
									usep=oricp
								else
									AI:SummonMonsterByPos(MonsterID_F,sx,sy)
									usep=usep*2
								end
								a=a+1
							end
							tureneed=math.floor(Monsterture*0.8)
							AI:SetEctypeVarShort(mapid,16,tureneed)
							--print("Monsterture="..Monsterture.."|tureneed="..tureneed)
						elseif event == 4 then
						--??(????)
							AI:SetEctypeVarShort(mapid,10,0)
							AI:SetEctypeVarShort(mapid,13,0)
							AI:SetEctypeVarShort(mapid,14,0)
							AI:SetEctypeVarShort(mapid,15,0)
							AI:SetEctypeVarShort(mapid,17,0)
							npcID = {869,870,871}
							tp=math.random(1,3)
							npc1=npcID[tp]
							table.remove(npcID,tp)
							tp=math.random(1,2)
							npc2=npcID[tp]
							table.remove(npcID,tp)
							npc3=npcID[1]
							AI:AddNpcByPos(npc1,mapid,mposx,mposy-(2.56*3),9999)
							AI:AddNpcByPos(npc2,mapid,mposx,mposy,9999)
							AI:AddNpcByPos(npc3,mapid,mposx,mposy+(2.56*3),9999)
						elseif event == 5 then
						--??1????
							AI:SummonMonsterByPos(32398,mposx,mposy,0)
						elseif event == 6 then
						--BOSS
							MonsterAttrRateID=249
							MonsterID=32395
							if FieldLevel > 0 then
								AI:CreateFieldMonster(MonsterID,MonsterAttrRateID,FieldLevel,1,mapid,mposx,mposy,0)
								--print("Summon=5 | "..MonsterID.." | "..MonsterAttrRateID.." | "..FieldLevel.." | "..smposx.." | "..smposy.." | ")
							else
								AI:SummonLevelMonsterByPos(MonsterID,MonsterAttrRateID,Level,mposx,mposy)
								--print("Summon=6 | "..MonsterID.." | "..MonsterAttrRateID.." | "..Level.." | "..smposx.." | "..smposy.." | ")
							end
						end
						AI:ScreenText(gamemsg,2)
						
						pid=AI:GetEctypeVarInteger(mapid,110)
						name=AI:GetPlayerInfoStr(pid,"name")
						if name == nil then
							--print("execute: teamproces="..teamproces.."  |event="..event)
						else
							--print("execute: name="..name.."  |teamproces="..teamproces.."  |event="..event)
						end
						
						msgstatus=1
						bcmsg="bcmsg error!"
						gamemsg="gamemsg error!"

					end--??end
					AI:SetArray(3,msgstatus)
					--print("teamproces="..teamproces)--??????
					--print("msgstatus="..msgstatus)--??????
					
				end----???????----
				
				if status == 2 then----??----
				end----??----
				
				
				
			end
		end--???2--------------------end
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then
				AI:SetTimer(1,2000,99999)
				AI:SetArray(1,1)
				AI:SetTimer(2,500,99999)
				AI:SetArray(2,1)
				msgstatus=1
				AI:SetArray(3,msgstatus)
			end
			----------------------------------------------------------normal end
			--?????
			opentask=AI:GetEctypeVarShort(mapid,10)
			isdoing=AI:GetEctypeVarShort(mapid,17)
			if isdoing == 1 then
				maxtime=55
				AI:SetArray(7,maxtime)
				AI:SetEctypeVarShort(mapid,17,2)
			end
			if isdoing == 2 then
				lefttime=AI:GetArray(7)
--var1=AI:GetEctypeVarShort(mapid,10)
--var2=AI:GetEctypeVarShort(mapid,13)
--var3=AI:GetEctypeVarShort(mapid,14)
--var4=AI:GetEctypeVarShort(mapid,15)
--print("|lefttime="..lefttime.."|var1="..var1.."|var2="..var2.."|var3="..var3.."|var4="..var4)
				lefttime=lefttime-1
				if lefttime >= 0 then
					add=math.floor(lefttime*5/maxtime)
					bar="Remaining Time:"..string.rep("X",add)..string.rep("Y",5-add)
					AI:ScreenText(bar,2)
				end
				if lefttime == 0 then
					AI:ScreenText("Failed to activate the 3 triggers within the time limit. Please try again!",2)
					AI:SetEctypeVarShort(mapid,10,0)
					AI:SetEctypeVarShort(mapid,13,0)
					AI:SetEctypeVarShort(mapid,14,0)
					AI:SetEctypeVarShort(mapid,15,0)
					AI:SetEctypeVarShort(mapid,17,0)
				end

				AI:SetArray(7,lefttime)
			end
			if opentask == 3 then
				AI:ScreenText("You have deactivated the triggers, the Exalted Dice has appeared!",2)
				AI:SetEctypeVarShort(mapid,10,0)
				AI:SetEctypeVarShort(mapid,13,0)
				AI:SetEctypeVarShort(mapid,14,0)
				AI:SetEctypeVarShort(mapid,15,0)
				AI:SetEctypeVarShort(mapid,17,0)
			end



	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		AI:DelTimer(1)
		AI:DelTimer(2)
		
		--??
		AI:SetArray(1,0)
		--???
		AI:SetArray(2,0)
		--????
		AI:SetArray(3,0)


		
	end

	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

--		if (( PosX == xx) and ( PosY == yy )) then
--			AI:Exit()
--		end

	end

	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

--		if nIndex == 1 then
--			xx,yy=0,0
--			AI:AddSeekPos(mapid,xx,yy)
--		end

	end
	
	function findtalk()
		
		if event == 1 then
		--????
			bcmsg="Another wave of Rapture monsters have appeared!"
			gamemsg = "Eliminate all Rapture monsters and the Exalted Dice's seal can be released."
		elseif event == 2 then
		--??????+boss
			bcmsg="The Elite Guards will come through the portal soon."
			gamemsg = "Eliminate all Elite Guards and the Exalted Dice's seal can be released."
		elseif event == 3 then
		--????(????)
			bcmsg="The Illusionary Rings will appear soon."
			gamemsg = "Collect all the real rings and the seal on the Exalted Dice will be removed."
		elseif event == 4 then
		--??(????)
			bcmsg="The Energy Triggers will appear soon."
			gamemsg = "Three triggers must be switched nearly simultaneously so the power of the Exalted Dice can be released."
		elseif event == 5 then
		--??1????
			bcmsg="The Exalted Dice will appear soon."
			gamemsg="You can pass only if the Exalted Dice rolls a 1."
		elseif event == 6 then
		--BOSS
			bcmsg="The deity of the Pursuit of Rapture will show up!"
			gamemsg="May luck be with you!"
		end
		
	end
	
	function findpos()
		
		if stage == 1 then
			fposx_find,fposy_find,mposx_find,mposy_find=42,286,47,279
		end
		if stage == 2 then
			fposx_find,fposy_find,mposx_find,mposy_find=37,234,37,234
		end
		if stage == 3 then
			fposx_find,fposy_find,mposx_find,mposy_find=10,166,21,165
		end
		if stage == 4 then
			fposx_find,fposy_find,mposx_find,mposy_find=35,92,35,92
		end
		if stage == 5 then
			fposx_find,fposy_find,mposx_find,mposy_find=34,34,52,48
		end
		if stage == 6 then
			fposx_find,fposy_find,mposx_find,mposy_find=93,32,93,24
		end
		if stage == 7 then
			fposx_find,fposy_find,mposx_find,mposy_find=162,14,162,24
		end
		if stage == 8 then
			fposx_find,fposy_find,mposx_find,mposy_find=234,33,234,25
		end
		if stage == 9 then
			fposx_find,fposy_find,mposx_find,mposy_find=298,42,280,49
		end
		if stage == 10 then
			fposx_find,fposy_find,mposx_find,mposy_find=293,94,293,94
		end
		if stage == 11 then
			fposx_find,fposy_find,mposx_find,mposy_find=312,165,303,163
		end
		if stage == 12 then
			fposx_find,fposy_find,mposx_find,mposy_find=291,235,291,235
		end
		if stage == 13 then
			fposx_find,fposy_find,mposx_find,mposy_find=283,297,275,279
		end
		if stage == 14 then
			fposx_find,fposy_find,mposx_find,mposy_find=236,286,236,296
		end
		if stage == 15 then
			fposx_find,fposy_find,mposx_find,mposy_find=163,315,163,305
		end
		if stage == 16 then
			fposx_find,fposy_find,mposx_find,mposy_find=90,305,90,296
		end
		if stage == 17 then
			fposx_find,fposy_find,mposx_find,mposy_find=77,252,67,260
		end
		if stage == 18 then
			fposx_find,fposy_find,mposx_find,mposy_find=58,205,46,202
		end
		if stage == 19 then
			fposx_find,fposy_find,mposx_find,mposy_find=72,168,62,164
		end
		if stage == 20 then
			fposx_find,fposy_find,mposx_find,mposy_find=60,124,45,124
		end
		if stage == 21 then
			fposx_find,fposy_find,mposx_find,mposy_find=76,76,65,69
		end
		if stage == 22 then
			fposx_find,fposy_find,mposx_find,mposy_find=120,60,128,53
		end
		if stage == 23 then
			fposx_find,fposy_find,mposx_find,mposy_find=160,74,164,65
		end
		if stage == 24 then
			fposx_find,fposy_find,mposx_find,mposy_find=207,58,200,48
		end
		if stage == 25 then
			fposx_find,fposy_find,mposx_find,mposy_find=251,77,261,66
		end
		if stage == 26 then
			fposx_find,fposy_find,mposx_find,mposy_find=268,120,280,129
		end
		if stage == 27 then
			fposx_find,fposy_find,mposx_find,mposy_find=250,166,263,164
		end
		if stage == 28 then
			fposx_find,fposy_find,mposx_find,mposy_find=266,206,281,205
		end
		if stage == 29 then
			fposx_find,fposy_find,mposx_find,mposy_find=255,251,263,259
		end
		if stage == 30 then
			fposx_find,fposy_find,mposx_find,mposy_find=208,268,204,280
		end
		if stage == 31 then
			fposx_find,fposy_find,mposx_find,mposy_find=163,273,163,268
		end
		if stage == 32 then
			fposx_find,fposy_find,mposx_find,mposy_find=120,268,118,283
		end
		if stage == 33 then
			fposx_find,fposy_find,mposx_find,mposy_find=107,227,101,225
		end
		if stage == 34 then
			fposx_find,fposy_find,mposx_find,mposy_find=99,96,104,101
		end
		if stage == 35 then
			fposx_find,fposy_find,mposx_find,mposy_find=229,96,224,103
		end
		if stage == 36 then
			fposx_find,fposy_find,mposx_find,mposy_find=218,223,225,225
		end
		if stage == 37 then
			fposx_find,fposy_find,mposx_find,mposy_find=161,237,163,231
		end
		if stage == 38 then
			fposx_find,fposy_find,mposx_find,mposy_find=117,197,126,200
		end
		if stage == 39 then
			fposx_find,fposy_find,mposx_find,mposy_find=128,165,119,167
		end
		if stage == 40 then
			fposx_find,fposy_find,mposx_find,mposy_find=126,134,126,125
		end
		if stage == 41 then
			fposx_find,fposy_find,mposx_find,mposy_find=164,133,161,122
		end
		if stage == 42 then
			fposx_find,fposy_find,mposx_find,mposy_find=200,131,202,125
		end
		if stage == 43 then
			fposx_find,fposy_find,mposx_find,mposy_find=200,164,209,165
		end
		if stage == 44 then
			fposx_find,fposy_find,mposx_find,mposy_find=194,195,199,208
		end
		if stage == 45 then
			fposx_find,fposy_find,mposx_find,mposy_find=163,200,163,210
		end
		if stage == 46 then
			fposx_find,fposy_find,mposx_find,mposy_find=164,177,164,171
		end

	end