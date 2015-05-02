----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012-8
--		Author:???
--		TaskName:?-??-?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		if nIndex == 1 then--???1--start
			a=AI:GetArray(1)
				if a == 1 then
				
				chipQ=AI:GetServerValue(358)
				chipB=AI:GetServerValue(359)
				chipZ=AI:GetServerValue(360)
				chipX=AI:GetServerValue(361)
				chipall=chipQ+chipB+chipZ+chipX
--				if chipall > 0 then
					chipQp = math.floor(math.pow(chipQ,0.5))
					chipBp = math.floor(math.pow(chipB,0.5))
					chipZp = math.floor(math.pow(chipZ,0.5))
					chipXp = math.floor(math.pow(chipX,0.5))
					linemsg = "[color=FFFF002A]New Year's Race[/color]"
					linemsg = linemsg.."\n[color=FFF0FF00]Blessing[/color]"
					linemsg = linemsg.."\nEmerald Dragon"..tostring(chipQp)
					linemsg = linemsg.."\nWhite Tiger"..tostring(chipBp)
					linemsg = linemsg.."\nScarlet Phoenix"..tostring(chipZp)
					linemsg = linemsg.."\nObsidian Turtle"..tostring(chipXp)
					linemsg = linemsg.."\nNPC: [pos=475,129,141]Guess Egg[/pos]"
					linemsg = linemsg.."\n1st Round: 20:30"
					linemsg = linemsg.."\n2nd Round: 20:45"
					AI:SendMsgToMap(mapid,linemsg)
--				end
				
			end
		end--???1--------------------end
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then
				AI:SetTimer(1,20000,9999)
				AI:SetArray(1,1)
			end
			
			chipQ=AI:GetServerValue(358)
			chipB=AI:GetServerValue(359)
			chipZ=AI:GetServerValue(360)
			chipX=AI:GetServerValue(361)
			chipall=chipQ+chipB+chipZ+chipX
--		if chipall > 0 then
			chipQp = math.floor(math.pow(chipQ,0.5))
			chipBp = math.floor(math.pow(chipB,0.5))
			chipZp = math.floor(math.pow(chipZ,0.5))
			chipXp = math.floor(math.pow(chipX,0.5))
					linemsg = "[color=FFFF002A]New Year's Race[/color]"
					linemsg = linemsg.."\n[color=FFF0FF00]Blessing[/color]"
					linemsg = linemsg.."\nEmerald Dragon"..tostring(chipQp)
					linemsg = linemsg.."\nWhite Tiger"..tostring(chipBp)
					linemsg = linemsg.."\nScarlet Phoenix"..tostring(chipZp)
					linemsg = linemsg.."\nObsidian Turtle"..tostring(chipXp)
					linemsg = linemsg.."\nNPC: [pos=475,129,141]Guess Egg[/pos]"
					linemsg = linemsg.."\n1st Round: 20:30"
					linemsg = linemsg.."\n2nd Round: 20:45"
			
			for t=362,366 do
				playerid=AI:GetServerValue(t)
				if playerid > 0 then
					AI:SendMsgToPlayer(playerid,linemsg)
					AI:SetServerValue(t,0)
				end
			end
			
--		end
			----------------------------------------------------------normal end

--		test=AI:GetEctypeVarShort(mapid,99)
--		if test == 1 then--??AI??
--			AI:Say("hppct="..tostring(hppct))
--			AI:SetEctypeVarShort(mapid,99,0)
--		end

	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		AI:DelTimer(1)
		AI:DelTimer(2)

	end

