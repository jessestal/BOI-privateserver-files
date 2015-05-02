----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012-8
--		Author:???
--		TaskName:?-??AI??????-?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--???1--start
			a=AI:GetArray(1)
			if a == 1 then
				broadcast(nAI)
			end
		end--???1--------------------end


		if nIndex == 3 then--???3--start
			a=AI:GetArray(3)
			if a < 100 then
				exist_mon1 = AI:GetEctypeVarShort(mapid,21)
				exist_mon2 = AI:GetEctypeVarShort(mapid,22)
				dead_mon1 = AI:GetEctypeVarShort(mapid,23)
				dead_mon2 = AI:GetEctypeVarShort(mapid,24)
				time_yday = AI:GetEctypeVarShort(mapid,2)
				time_min = AI:GetEctypeVarShort(mapid,3)
				
				text_screen = "The majority of the Westerwind Guards will appear in "
				if exist_mon1 <= 12 then
					monster_ID = 53216
					areaID = 0
					randombuff = math.random(0,99)
					if randombuff < 20 then
						monsteradd_A,monsteradd_B = 12,12
						text_screen = text_screen.."Areas A and B"
					elseif randombuff < 60 then
						monsteradd_A,monsteradd_B = 5,19
						text_screen = text_screen.."Area B"
					elseif randombuff < 100 then
						monsteradd_A,monsteradd_B = 19,5
						text_screen = text_screen.."Area A"
					end
					canbc = AI:GetArray(9)
					if canbc == 1 then AI:ScreenText(text_screen,2) end
					AddMonster(nAI,areaID,monster_ID,monsteradd_A,monsteradd_B)
					exist_mon1 = exist_mon1 + 24
					AI:SetEctypeVarShort(mapid,21,exist_mon1)
				end
				if exist_mon2 <= 12 then
					monster_ID = 53217
					areaID = 1
					randombuff = math.random(0,99)
					if randombuff < 20 then
						monsteradd_A,monsteradd_B = 12,12
						text_screen = text_screen.."Areas C and D"
					elseif randombuff < 60 then
						monsteradd_A,monsteradd_B = 5,19
						text_screen = text_screen.."Area D"
					elseif randombuff < 100 then
						monsteradd_A,monsteradd_B = 19,5
						text_screen = text_screen.."Area C"
					end
					canbc = AI:GetArray(9)
					if canbc == 1 then AI:ScreenText(text_screen,2)	end
					AddMonster(nAI,areaID,monster_ID,monsteradd_A,monsteradd_B)
					exist_mon2 = exist_mon2 + 24
					AI:SetEctypeVarShort(mapid,22,exist_mon2)
				end
				
				event_min = {3,6,9,12,15,18}
				for tp = 1 , #event_min do
					if event_min[tp] == time_min then
						event_prcs = AI:GetArray(3)
						if event_prcs < time_min then
							AI:SetArray(3,time_min)
							table.remove(event_min,tp)
							event = math.floor((21*time_min+time_yday+27) % 100 / 20) + 1
							area_nm = math.random(1,4)
							eventON(nAI,event,area_nm)
							event_prcs = event_prcs
							break
						end
					end
				end
				
			end
		end--???3--------------------end


		
		if nIndex == 2 then--???2--start
			a=AI:GetArray(2)
			if a == 20 then
				AI:ScreenText("Zephyr's Barrier has been unsealed!",2)
				AI:OpenMapMask(1)
				AI:OpenMapMask(2)
				AI:SetArray(2,31)
--				AI:DelTimer(2)
			end
			if a < 20 then
				AI:ScreenText("Zephyr's Barrier will be unsealed in "..tostring(19-a).." sec.",2)
				a = a + 1
				AI:SetArray(2,a)
			end
		end--???2--------------------end

--41	waveA
--42	waveB
--43	waveC
--44	waveD

		if nIndex == 9 then--???9--start
			a=AI:GetArray(9)
			if a > 1 then
				a = a - 1
				AI:SetArray(9,a)
			end
			b=AI:GetEctypeVarShort(mapid,41)
			if b > 1 then
				AI:SetEctypeVarShort(mapid,41,b-1)
			end
			------------------------------
			b=AI:GetEctypeVarShort(mapid,42)
			if b > 1 then
				AI:SetEctypeVarShort(mapid,42,b-1)
			end
			------------------------------
			b=AI:GetEctypeVarShort(mapid,43)
			if b > 1 then
				AI:SetEctypeVarShort(mapid,43,b-1)
			end
			------------------------------
			b=AI:GetEctypeVarShort(mapid,44)
			if b > 1 then
				AI:SetEctypeVarShort(mapid,44,b-1)
			end
		end--???9--------------------end


	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
 			a = AI:GetArray(1)
			if a == 0 then
				AI:SetTimer(1,6000,9999)
				AI:SetArray(1,1)
			end
 			a = AI:GetArray(2)
			if a == 0 then
				AI:SetTimer(2,1000,9999)
				AI:SetArray(2,1)
			end
 			a = AI:GetArray(3)
			if a == 0 then
				AI:SetTimer(3,5000,9999)
				AI:SetArray(3,1)
			end
 			a = AI:GetArray(9)
			if a == 0 then
				AI:SetTimer(9,1000,9999)
				AI:SetArray(9,1)
			end
			
			-------------------------------??????
			keyA_1 = AI:GetEctypeVarShort(mapid,25)
			keyA_2 = AI:GetEctypeVarShort(mapid,26)
			keyB_1 = AI:GetEctypeVarShort(mapid,27)
			keyB_2 = AI:GetEctypeVarShort(mapid,28)

			if keyA_2 > 0 then
				AI:SetEctypeVarShort(mapid,25,0)
				AI:SetEctypeVarShort(mapid,26,0)
				event = keyA_1
				eventON(nAI,event,keyA_2)
			end
			if keyB_2 > 0 then
				AI:SetEctypeVarShort(mapid,27,0)
				AI:SetEctypeVarShort(mapid,28,0)
				event = keyB_1
				eventON(nAI,event,keyB_2)
			end
			-------------------------------??????
	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		AI:DelTimer(1)
		AI:DelTimer(2)
	end
------------------------------------------------------------------------other
	function eventON(nAI,event,area_nm)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
--????
--?????
--??????
--??????
--????BOSS
--print ("event="..tostring(event))
--print ("area_nm="..tostring(area_nm))
--print ("------------------------------------")
		if area_nm == 1  then
			px1,px2 = 54,65
			py1,py2 = 51,71
			text_screen = "Area A "
		elseif area_nm == 2  then
			px1,px2 = 88,100
			py1,py2 = 51,71
			text_screen = "Area B "
		elseif area_nm == 3  then
			px1,px2 = 55,67
			py1,py2 = 95,117
			text_screen = "Area C "
		elseif area_nm == 4  then
			px1,px2 = 87,97
			py1,py2 = 95,117
			text_screen = "Area D "
		end
--53222	AI??	??????
--53223	AI??	??????
--53219	AI	??????
--53220	AI	??????

		if event == 1 then
			AI:SetEctypeVarShort(mapid,area_nm+40,15)
			text_screen = text_screen.."has demonized its Westerwind Guards!"
--			AI:ScreenText(text_screen,2)
		elseif event == 2  then
			for tp = 1 , 10 , 1 do
				PosX,PosY = math.random(px1,px2),math.random(py1,py2)
				AI:SummonMonsterByPos(53222,PosX,PosY)
			end
			text_screen = text_screen.."has been struck by lightning!"
			AI:ScreenText(text_screen,2)
		elseif event == 3  then
			for tp = 1 , 10 , 1 do
				PosX,PosY = math.random(px1,px2),math.random(py1,py2)
				AI:SummonMonsterByPos(53248,PosX,PosY)
			end
			PosX,PosY = (px1+px2)/2,(py1+py2)/2
			AI:SummonMonsterByPos(53223,PosX,PosY)
			text_screen = text_screen.."has been frozen over!"
			AI:ScreenText(text_screen,2)
		elseif event == 4  then
			for tp = 1 , 12 , 1 do
				PosX,PosY = math.random(px1,px2),math.random(py1,py2)
				AI:SummonMonsterByPos(53220,PosX,PosY)
			end
			text_screen = text_screen.."has Westerwind Guards (High Score) in it!"
--			AI:ScreenText(text_screen,2)
		elseif event == 5  then
			PosX,PosY = (px1+px2)/2,(py1+py2)/2
			AI:SummonMonsterByPos(53219,PosX,PosY)
			text_screen = text_screen.."has been taken over by the Ancient Westerwind!"
--			AI:ScreenText(text_screen,2)
		else
			AI:ScreenText("Failed to retrieve data!",2)
		end
		AI:SetArray(9,5)
		
	end

	function AddMonster(nAI,areaID,monster_ID,monsteradd_A,monsteradd_B)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		level = AI:GetEctypeVarShort(mapid,5)
		fieldlevel = AI:GetEctypeVarShort(mapid,6)
		
--		if fieldlevel > 0 then
--			AI:CreateFieldMonster(53245,MonsterFieldAttrRateID,fieldlevel,6,mapid,xx,yy,8)
--		else
--			AI:SummonLevelMonsterByPos(53245,MonsterAttrRateID,level,ssx,ssy)
--		end
--228	????|A,LK
--229	????|B,MG



		if areaID == 0  then
			px1,px2,px3,px4 = 54,65,88,100
			py1,py2 = 51,69
			MsID = 228
		else
			px1,px2,px3,px4 = 55,67,87,97
			py1,py2 = 95,117
			MsID = 229
		end
		for tp = 1 , monsteradd_A , 1 do
			PosX,PosY = math.random(px1,px2),math.random(py1,py2)
--			AI:SummonMonsterByPos(monster_ID,PosX,PosY)
			if fieldlevel > 0 then
--			print ("------")
--				print (monster_ID)
--				print (MsID)
--				print (fieldlevel)
--				print (mapid)
--				print (PosX)
--				print (PosY)
--			print ("------")
--				PosX=PosX/2.56
--				PosY=PosY/2.56
				AI:CreateFieldMonster(monster_ID,MsID,fieldlevel,1,mapid,PosX,PosY,0)
			else
				AI:SummonLevelMonsterByPos(monster_ID,MsID,level,PosX,PosY)
			end
			
		end
		for tp = 1 , monsteradd_B , 1 do
			PosX,PosY = math.random(px3,px4),math.random(py1,py2)
--			AI:SummonMonsterByPos(monster_ID,PosX,PosY)
			
			if fieldlevel > 0 then
--				PosX=PosX/2.56
--				PosY=PosY/2.56
				AI:CreateFieldMonster(monster_ID,MsID,fieldlevel,1,mapid,PosX,PosY,0)
			else
				AI:SummonLevelMonsterByPos(monster_ID,MsID,level,PosX,PosY)
			end

		end
		
	end

	
	function namefmt(text)
		len = string.len(text)
		stp = text..string.rep("  ",20-len)
		return stp
	end
	
	function engfmt(text)
		len = string.len(text)
		stp = text..string.rep("  ",3-len)
		return stp
	end

	function scorefmt(text)

		len = string.len(text)
--		print (len)
		stp = text..string.rep("  ",33-len)
		return stp
	end
	
	function processbar(number)
		if number > 100 then
			number = 100
		end
		number = math.floor(number/5)
		stp = "[color=FF20E000]"..string.rep("|",number).."[/color]".."[color=FF909090]"..string.rep("|",20-number).."[/color]"
		return stp
	end
	
	function starbar(number)
		if number > 5 then
			number = 5
		end
		stp = "[color=FFFFFF00]"..string.rep(" I",number).."[/color]"
		return stp
	end
	
	
	function broadcast(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
			--score--------------------start
				activit = AI:GetEctypeVarShort(mapid,10)
				dead_monA = AI:GetEctypeVarShort(mapid,23)
				dead_monB = AI:GetEctypeVarShort(mapid,24)
				dead_monA2 = AI:GetEctypeVarShort(mapid,29)
				dead_monA3 = AI:GetEctypeVarShort(mapid,30)
				dead_monA4 = AI:GetEctypeVarShort(mapid,31)
				dead_monA5 = AI:GetEctypeVarShort(mapid,32)
				dead_monB2 = AI:GetEctypeVarShort(mapid,33)
				dead_monB3 = AI:GetEctypeVarShort(mapid,34)
				dead_monB4 = AI:GetEctypeVarShort(mapid,35)
				dead_monB5 = AI:GetEctypeVarShort(mapid,36)
				fenM1,fenM2,fenM3,fenM4,fenM5 = 10,10,200,50,30
				mid = ( math.max(dead_monA,dead_monB) + 2 * math.min(dead_monA,dead_monB) ) / 200
				monster_pA = dead_monA*fenM1+dead_monA2*fenM2+dead_monA3*fenM3+dead_monA4*fenM4+dead_monA5*fenM5
				monster_pB = dead_monB*fenM1+dead_monB2*fenM2+dead_monB3*fenM3+dead_monB4*fenM4+dead_monB5*fenM5
				teamscore_gA = math.floor((100 + mid + activit) * monster_pA / 100)
				teamscore_gB = math.floor((100 + mid + activit) * monster_pB / 100)
				teamscore_gA_old = AI:GetEctypeVarInteger(mapid,113)
				teamscore_gB_old = AI:GetEctypeVarInteger(mapid,114)
				if teamscore_gA > teamscore_gA_old then
					AI:SetEctypeVarInteger(mapid,113,teamscore_gA)
				end
				if teamscore_gB > teamscore_gB_old then
					AI:SetEctypeVarInteger(mapid,114,teamscore_gB)
				end
			--score--------------------end
			
			--SendMsgToMap--------------------start
				rank_A = AI:GetEctypeVarShort(mapid,13)
				rank_B = AI:GetEctypeVarShort(mapid,14)
				tmA_Eng1 = AI:GetEctypeVarShort(mapid,15)
				tmA_Eng2 = AI:GetEctypeVarShort(mapid,16)
				tmB_Eng1 = AI:GetEctypeVarShort(mapid,17)
				tmB_Eng2 = AI:GetEctypeVarShort(mapid,18)
				ept_A = AI:GetEctypeVarShort(mapid,19)
				ept_B = AI:GetEctypeVarShort(mapid,20)
				ept_all_A = AI:GetEctypeVarShort(mapid,37)
				ept_all_B = AI:GetEctypeVarShort(mapid,38)

--print ("-----------")
--print ("tmB_Eng2="..tostring(tmA_Eng1))
--print ("tmB_Eng2="..tostring(tmA_Eng2))
--print ("tmB_Eng2="..tostring(tmB_Eng1))
--print ("tmB_Eng2="..tostring(tmB_Eng2))
--print ("--")
				tmA_Eng1 = math.min(math.floor(tmA_Eng1*100 / (ept_all_A*10 + 50)),100)
				tmA_Eng2 = math.min(math.floor(tmA_Eng2*100 / (ept_all_A*10 + 50)),100)
				tmB_Eng1 = math.min(math.floor(tmB_Eng1*100 / (ept_all_B*10 + 50)),100)
				tmB_Eng2 = math.min(math.floor(tmB_Eng2*100 / (ept_all_B*10 + 50)),100)
--print ("--")
--print ("tmB_Eng2="..tostring(tmA_Eng1))
--print ("tmB_Eng2="..tostring(tmA_Eng2))
--print ("tmB_Eng2="..tostring(tmB_Eng1))
--print ("tmB_Eng2="..tostring(tmB_Eng2))
--print ("-----------")
				gdnameA = "None"
				gdnameB = "None"
				guildid_A = AI:GetEctypeVarInteger(mapid,111)
				guildid_B = AI:GetEctypeVarInteger(mapid,112)
				if guildid_A > 0 then
					gdnameA = AI:GetGuildName(guildid_A)
				end
				if guildid_B > 0 then
				gdnameB = AI:GetGuildName(guildid_B)
				end
				color_1 = "[color=FF00CCFF]"
				color_2 = "[color=FFA2FF2A]"
				color_3 = "[color=FFF0FF00]"
				color_E = "[/color]"
				text_fen = "Score: "
				text_wu = "Physical Guards: "
				text_mo = "Magic Guards: "
				text_ju = "Zephyr Points: "
				text_fu = "  [color=FFffff20]("
				text_ming = "[/color]"
				text_hou = "(Not ranked)"
				sp1 = 0
				sp2 = 0
				text_GJ_A = "  "
				text_GJ_B = "  "
				winnername = ""
				if teamscore_gA > teamscore_gB then
					text_GJ_A = " Private"
					winnername = gdnameA
				end
				if teamscore_gA < teamscore_gB then
					text_GJ_B = " Private"
					winnername = gdnameB
				end
				if rank_A <= 20 and rank_A > 0 then
					text_rank_A = text_fu..tostring(rank_A)..text_ming
				else
					text_rank_A = text_hou
				end
				if rank_B <= 20 and rank_B > 0 then
					text_rank_B = text_fu..tostring(rank_B)..text_ming
				else
					text_rank_B = text_hou
				end
				
				status = AI:GetEctypeVarShort(mapid,1)
				if status == 1 then
					----------------------------status=0
					time_yday = AI:GetEctypeVarShort(mapid,2)
					time_min = AI:GetEctypeVarShort(mapid,3)
					randommade = math.floor((21*time_min+time_yday+27) % 100)
					if randommade < 40 then
						msgtext_1 = "Only the server's top 8"
						msgtext_2 = "Guilds can participate in Eurus' Wasteland."
					elseif randommade < 80 then
						msgtext_1 = "Only the server's top 4"
						msgtext_2 = "Guilds can participate in the Throne of Boreas."
					elseif randommade < 90 then
						msgtext_1 = "and kill Westerwind Guards."
						msgtext_2 = "Collected points "
					elseif randommade < 100 then
						msgtext_1 = "Try to avoid the "
						msgtext_2 = "dangerous areas."
					end
					msgtext_1 = color_2..msgtext_1
					msgtext_2 = msgtext_2..color_E
					sendmsg = ""
					sendmsg = sendmsg.."\n"
					sendmsg = sendmsg.."==The Zephyr Scoreboard=="
					text_1 = color_1..namefmt(gdnameA)..color_E
					linemsg = "\n"..string.rep(" ",sp1)..text_1
					sendmsg = sendmsg..linemsg
					text_2 = color_2..tostring(teamscore_gA)..color_E
--					text_22 =scorefmt(text_2..text_GJ_A)
					text_22 = text_2..text_GJ_A
					linemsg = "\n"..string.rep(" ",sp2)..text_fen..text_22..text_rank_A
					sendmsg = sendmsg..linemsg
--					text_3 = engfmt(tostring(tmA_Eng1))
--					text_4 = processbar(tmA_Eng1)
					text_3 = tostring(tmA_Eng1)
					text_4 = " / 100"
					linemsg = "\n"..string.rep(" ",sp2)..text_wu..text_3..string.rep(" ",sp2)..text_4
					sendmsg = sendmsg..linemsg
--					text_5 = engfmt(tostring(tmA_Eng2))
--					text_6 = processbar(tmA_Eng2)
					text_5 = tostring(tmA_Eng2)
					text_6 = " / 100"
					linemsg = "\n"..string.rep(" ",sp2)..text_mo..text_5..string.rep(" ",sp2)..text_6
					sendmsg = sendmsg..linemsg
					text_7 = starbar(ept_A)
					linemsg = "\n"..string.rep(" ",sp2)..text_ju..text_7
					sendmsg = sendmsg..linemsg
					text_1 = color_1..namefmt(gdnameB)..color_E
					linemsg = "\n"..string.rep(" ",sp1)..text_1
					sendmsg = sendmsg..linemsg
					text_2 = color_2..tostring(teamscore_gB)..color_E
--					text_22 =scorefmt(text_2..text_GJ_B)
					text_22 = text_2..text_GJ_B
					linemsg = "\n"..string.rep(" ",sp2)..text_fen..text_22..text_rank_B
					sendmsg = sendmsg..linemsg
					
--					text_3 = engfmt(tostring(tmB_Eng1))
--					text_4 = processbar(tmB_Eng1)
					text_3 = tostring(tmB_Eng1)
					text_4 = " / 100"
					linemsg = "\n"..string.rep(" ",sp2)..text_wu..text_3..string.rep(" ",sp2)..text_4
					sendmsg = sendmsg..linemsg
--					text_5 = engfmt(tostring(tmB_Eng2))
--					text_6 = processbar(tmB_Eng2)
					text_5 = tostring(tmB_Eng2)
					text_6 = " / 100"
					linemsg = "\n"..string.rep(" ",sp2)..text_mo..text_5..string.rep(" ",sp2)..text_6
					sendmsg = sendmsg..linemsg
					text_7 = starbar(ept_B)
					linemsg = "\n"..string.rep(" ",sp2)..text_ju..text_7
					sendmsg = sendmsg..linemsg
					sendmsg = sendmsg.."\n"..msgtext_1
					sendmsg = sendmsg.."\n"..msgtext_2
					----------------------------status=0
				elseif status == 9 then
					
					AI:ScreenText("The Zephyr has landed! The top 8 Guilds can go on to Realm 3 to participate in Eurus' Wasteland!",2)
					
					msgtext_1 = "Only the server's top 8"
					msgtext_2 = "Guilds can participate in Eurus' Wasteland."
					msgtext_3 = "Only the server's top 4"
					msgtext_4 = "Guilds from Eurus' Wasteland can"
					msgtext_5 = "go on to participate in the Throne of Boreas."
					
					msgtext_1 = color_2..msgtext_1
					msgtext_2 = msgtext_2
					msgtext_3 = msgtext_3
					msgtext_4 = msgtext_4
					msgtext_5 = msgtext_5..color_E
					
					sendmsg = ""
					sendmsg = sendmsg.."\n"
					sendmsg = sendmsg.."==The Zephyr Scoreboard=="

					text_1 = color_1..namefmt(gdnameA)..color_E
					linemsg = "\n"..string.rep(" ",sp1)..text_1
					sendmsg = sendmsg..linemsg
					text_2 = color_2..tostring(teamscore_gA)..color_E
--					text_22 =scorefmt(text_2..text_GJ_A)
					text_22 = text_2..text_GJ_A
					linemsg = "\n"..string.rep(" ",sp2)..text_fen..text_22..text_rank_A
					sendmsg = sendmsg..linemsg
					text_1 = color_1..namefmt(gdnameB)..color_E
					linemsg = "\n"..string.rep(" ",sp1)..text_1
					sendmsg = sendmsg..linemsg
					text_2 = color_2..tostring(teamscore_gB)..color_E
--					text_22 =scorefmt(text_2..text_GJ_B)
					text_22 = text_2..text_GJ_B
					linemsg = "\n"..string.rep(" ",sp2)..text_fen..text_22..text_rank_B
					sendmsg = sendmsg..linemsg
					
					linemsg = "\n"..string.rep(" ",sp2).."- - - - - - - - - -"
					sendmsg = sendmsg..linemsg
					linemsg = "\n"..string.rep(" ",sp2)..color_3.."The victor of this round aboard The Zephyr:"
					sendmsg = sendmsg..linemsg
					linemsg = "\n"..string.rep(" ",sp2).."The "..winnername.." Guild!"..color_E
					sendmsg = sendmsg..linemsg
					linemsg = "\n"..string.rep(" ",sp2).."- - - - - - - - - -"
					sendmsg = sendmsg..linemsg
					sendmsg = sendmsg.."\n"..msgtext_1
					sendmsg = sendmsg.."\n"..msgtext_2
					sendmsg = sendmsg.."\n"..msgtext_3
					sendmsg = sendmsg.."\n"..msgtext_4
					sendmsg = sendmsg.."\n"..msgtext_5
				end
				
--print (string.len(sendmsg))
--print (tostring(sendmsg))
				AI:SendMsgToMap(mapid,sendmsg)
			--SendMsgToMap--------------------end
			--xxx--------------------start
				
				
				
			--xxx--------------------end
			end