----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012-3
--		Author:???
--		Class:	.Lua
--		AIName:51239
--		Remark:????
----------------------------------------------------
--20	??????
--21	?????????
--22	?????????????
--23	?????????
--24	???????

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
--		if nIndex == 1 then
--			AI:SetEctypeVarShort(mapid,24,0)
--			AI:ScreenText("Sacrifice is finished!",2)
--			AI:Exit()
--		end

		if nIndex == 2 then
			time=AI:GetArray(2)
			wvmon=AI:GetEctypeVarShort(mapid,22)
--AI:Say("wvmon = "..wvmon)
			plcnt=AI:GetEctypeVarShort(mapid,20)
--AI:Say("plcnt = "..plcnt)
			wvmax=plcnt*7+21
			wvmax=42
--AI:Say("wvmax = "..wvmax)
			heat=wvmon/wvmax*100
			heat=math.floor(heat)
--AI:Say("heat = "..heat)
			bar=""
			a=0
			while a<150 do
				a=a+5
				if heat > a then
					bar=bar.."|"
				else
					bar=bar.." "
				end
			end
--			AI:ScreenText("Sacrifice Time remaining:"..time.." Seconds".."  Sacrifice Degree:"..heat.."%",2)
--			AI:Say("GUID:02526000004"..heat.."%")
			AI:ScreenText("Sacrifice Time remaining:"..time.." Seconds".."  Sacrifice Degree:"..bar,2)
			if time == 0 then
				AI:SetEctypeVarShort(mapid,24,0)
				AI:ScreenText("Sacrifice is finished!",2)
				AI:Exit()
			end
			time=time-1
			AI:SetArray(2,time)
		end

	end


	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		a = AI:GetArray(1)
		if a == 0 then
			AI:Say("Abyss Sacrifice starts now!")
--			AI:SetTimer(1,42000,1)
			AI:SetTimer(2,1000,99)
			AI:SetArray(1,1)
			AI:SetArray(2,40)
		end



	end


