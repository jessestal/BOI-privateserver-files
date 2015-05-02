 ------------------------------ 
 --  Copyright：PERFECT WORLD  
 --  Modified：2012  
 --  Author：胡斌涛  
 --  TaskName： 螺旋大骰子 
 ------------------------------ 
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

--		if nIndex == 1 then--计时器1--start
--			a=AI:GetArray(1)
--			if a == 1 then
--
--			end
--		end--计时器1--------------------end
--		
--		if nIndex == 2 then--计时器2--start
--			a=AI:GetArray(2)
--			if a == 1 then
--				
--			end
--		end--计时器2--------------------end
		
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
--			a = AI:GetArray(2)
--			if a == 0 then
--				AI:SetTimer(2,1500,1)
--				AI:SetArray(2,1)
--			end
			----------------------------------------------------------normal end

--		test=AI:GetEctypeVarShort(mapid,99)
--		if test == 1 then--副本AI测试
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
		
		dice=AI:GetEctypeVarShort(mapid,12)
		event=AI:GetEctypeVarShort(mapid,6)
--print("|dice="..dice)
		

		if event == 5 then
			if dice == 1 then
				teamstage=AI:GetEctypeVarShort(mapid,4)
				stage=teamstage+dice
				AI:SetEctypeVarShort(mapid,4,stage)
			end
		else
			teamstage=AI:GetEctypeVarShort(mapid,4)
			stage=teamstage+dice
			AI:SetEctypeVarShort(mapid,4,stage)
		end
		
		if stage >= 1 and stage <= 46 then
			findpos()
			fposx,fposy=fposx_find,fposy_find
			AI:SetEctypeVarShort(mapid,21,fposx)
			AI:SetEctypeVarShort(mapid,22,fposy)
		end
		AI:Exit()
		
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
----		if nIndex == 1 then
----			xx,yy=0,0
----			AI:AddSeekPos(mapid,xx,yy)
----		end
--
--	end
	
	
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