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

--		if nIndex == 1 then--???1--start
--			a=AI:GetArray(1)
--			if a == 1 then
--
--			end
--		end--???1--------------------end
		
		if nIndex == 2 then--???2--start
			a=AI:GetArray(2)
			if a == 1 then
				rank = AI:GetEctypeVarShort(mapid,4)
				
				color_2 = "[color=FFA2FF2A]"
				color_E = "[/color]"
				
				msgtext_1 = "Your Guild's ranking in"
				msgtext_2 = "Zephyr is: #"..rank.."."
				msgtext_3 = color_2.."The server's four top ranking Guilds"
				msgtext_4 = "can continue to Throne of Boreas"
				msgtext_5 = "after completing Eurus' Wasteland."..color_E
				
				sendmsg = ""
				sendmsg = sendmsg.."\n"
				sendmsg = " ==Welcome to Eurus' Wasteland=="
				sendmsg = sendmsg.."\n"..msgtext_1
				sendmsg = sendmsg.."\n"..msgtext_2
				linemsg = "\n".."- - - - - - - - - -"
				sendmsg = sendmsg..linemsg
				sendmsg = sendmsg.."\n"..msgtext_3
				sendmsg = sendmsg.."\n"..msgtext_4
				sendmsg = sendmsg.."\n"..msgtext_5
				AI:SendMsgToMap(mapid,sendmsg)
			end
		end--???2--------------------end
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		-----------------------------------------------------------normal start
-- 			a = AI:GetArray(1)
--			if a == 0 then
--				AI:SetTimer(1,1000,1)
--				AI:SetArray(1,1)
--			end
			a = AI:GetArray(2)
			if a == 0 then
				AI:SetTimer(2,6000,9999)
				AI:SetArray(2,1)
			end
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

--	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
--		local AI = GetMonsterAI(nAI)
--		local mapid = AI:GetMapID()
--
----		if (( PosX == xx) and ( PosY == yy )) then
----			AI:Exit()
----		end
--
--	end
--
--	function Event_UpdateSeekPos(nAI,nIndex)
--		local AI = GetMonsterAI(nAI)
--		local mapid = AI:GetMapID()
--
--		if nIndex == 1 then
--			xx,yy=0,0
--			AI:AddSeekPos(mapid,xx,yy)
--		end
--
--	end