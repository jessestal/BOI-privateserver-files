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
-------------------------------------------------------------------
-------------------------------------------------------------------

				timesec = AI:GetArray(4)
				dooropen = AI:GetArray(5)
				if dooropen == 0 then
					timesec = timesec - 1
--					print (timesec)
					if timesec <= 0 then
						AI:OpenMapMask(1)
						AI:OpenMapMask(2)
						AI:ScreenText("The respawn point's barrier has been temporarily raised!",2)
						timesec = 10
						dooropen = 1
						AI:SetArray(2,5)
					end
				else
					if timesec <= 1 then
						AI:CloseMapMask(1)
						AI:CloseMapMask(2)
						AI:ScreenText("The respawn point's barrier has been deactivated!",2)
--						timemin = 1
						timesec = 60
						dooropen = 0
						AI:SetArray(2,5)
					else
						timesec = timesec - 1
						AI:ScreenText("Time until the respawn point's barrier will deactivate:"..timesec.." sec.",2)
					end
				end
				
				AI:SetArray(4,timesec)
				AI:SetArray(5,dooropen)
				count = AI:GetArray(2)
--				print (count)
--				print ("----")
				if count == 5 then
------------------------------------------------------------------
------------------------------------------------------------------
					AI:SetArray(2,1)
					-------------------  -1-
					dead = AI:GetEctypeVarShort(mapid,11)
					if dead == 1 then
						hppctA = "Vanquished"
					else
						hppct = AI:GetEctypeVarShort(mapid,21) / 10
						hppctA = "Life:"..tostring(hppct).."%"
					end
					-------------------  -2-
					dead = AI:GetEctypeVarShort(mapid,12)
					if dead == 1 then
						hppctB = "Vanquished"
					else
						hppct = AI:GetEctypeVarShort(mapid,22) / 10
						hppctB = "Life:"..tostring(hppct).."%"
					end
					-------------------  -3-
					dead = AI:GetEctypeVarShort(mapid,13)
					if dead == 1 then
						hppctC = "Vanquished"
					else
						hppct = AI:GetEctypeVarShort(mapid,23) / 10
						hppctC = "Life:"..tostring(hppct).."%"
					end
					-------------------  -4-
					dead = AI:GetEctypeVarShort(mapid,14)
					if dead == 1 then
						hppctD = "Vanquished"
					else
						hppct = AI:GetEctypeVarShort(mapid,24) / 10
						hppctD = "Life:"..tostring(hppct).."%"
					end
					-------------------  -5-
					dead = AI:GetEctypeVarShort(mapid,15)
					if dead < 4 then
						hppctE = "Has not yet appeared"
					end
					if dead == 4 then
						hppct = AI:GetEctypeVarShort(mapid,25) / 10
						hppctE = "Life:"..tostring(hppct).."%"
					end
					if dead == 5 then
						hppctE = "Vanquished"
					end
					
					timemin = AI:GetArray(3)
					timesec = AI:GetArray(4)
					dooropen = AI:GetArray(5)
					-------------------
					sendmsg = ""
					sendmsg = sendmsg.."\n"
					sendmsg = "[color=FFF9FF00] ==Throne of Boreas: Current Status=="
					sendmsg = sendmsg.."\n".."Winter - "..hppctA
					sendmsg = sendmsg.."\n".."Spring - "..hppctB
					sendmsg = sendmsg.."\n".."Autumn - "..hppctC
					sendmsg = sendmsg.."\n".."Summer - "..hppctD
					sendmsg = sendmsg.."\n".."Lord Boreas - "..hppctE
					sendmsg = sendmsg.."[/color]"
					sendmsg = sendmsg.."\n".."- - - - - - - - - -"
					if dooropen == 0 then
						sendmsg = sendmsg.."\n".."Next time respawn point will activate:"
--						sendmsg = sendmsg.."\n"..timemin.."GUID:03860000022"..timesec.."GUID:03860000023"
						sendmsg = sendmsg.."\n[color=FF00FC00]    "..timesec.." sec.[/color]"
					else
						sendmsg = sendmsg.."\n".."[color=FFFF0C00]The respawn point has activated![/color]"
					end
	--111	??????id
	--112	???????id
	--				pid1 = GetEctypeVarInteger(mapid,111)
	--				if pid1 > 0 then
	--					sendmsg = sendmsg.."\n".."GUID:03860000026"...."GUID:03860000027"...."GUID:03860000028"
	--				end
	--print (string.len(sendmsg))
					AI:SendMsgToMap(mapid,sendmsg)
------------------------------------------------------------------
				else
					count = count + 1
					AI:SetArray(2,count)
				end
------------------------------------------------------------------
			end
		end--???1--------------------end



--53225	v3.70	???????
--53226	v3.70	???????
--53227	v3.70	???????
--53228	v3.70	???????
--53241	v3.70	???

		if nIndex == 2 then--???2--start
			a=AI:GetArray(2)
			if a == 1 then

				
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
				AI:SetTimer(1,1000,60000)
				AI:SetArray(1,1)
				--timemin
				AI:SetArray(3,0)
				--timesec
				AI:SetArray(4,10)
				--dooropen
				AI:SetArray(5,1)
			end
--			a = AI:GetArray(2)
--			if a == 0 then
--				AI:SetTimer(2,5100,9999)
--				AI:SetArray(2,1)
--			end
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