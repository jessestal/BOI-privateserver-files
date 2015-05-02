	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/12/29
	--		Author:???
	--		Class:	.Lua
	--		AIName:32281_Nianshou.lua
	--		Remark:??
	----------------------------------------------------


	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)


		if nIndex == 1 then
			say = AI:GetArray(0)
			if say == 1 then
				AI:ScreenText("A new year has come! Good luck, and best wishes for the coming year!",2)
				AI:SetArray(0,2)
			elseif say == 2 then
				AI:ScreenText("Hope you are lucky the whole dragon year. ",2)
				AI:SetArray(0,3)
			elseif say == 3 then
				AI:ScreenText("Light Firecracker to celebrate.",2)
				AI:SetArray(0,4)
			end

		end

		if nIndex == 2 then
			a = AI:GetArray(1)
--			AI:Say("==="..tostring(a))
			if a == 1 then
				AI:AddSkill(2289,1)
				AI:UseSkill(2289,1)
				AI:AddSkill(2288,1)
				AI:UseSkill(2288,1)
				AI:AddSkill(2287,1)
				AI:UseSkill(2287,1)
				a = a+1
				AI:SetArray(1,a)
			elseif a == 20 then
				a = 1
				AI:SetArray(1,a)
			elseif a > 1 then
				a = a+1
				AI:SetArray(1,a)
			end
		end

		if nIndex == 3 then
			x = AI:GetPosX()
			y = AI:GetPosY()
			n = AI:GetRand(2)
			b = AI:GetRand(5)
			c = AI:GetRand(5)
			AI:SummonMonsterByPos(32284,x-4,y+b)
			AI:SummonMonsterByPos(32284,x+5,y+b)
			AI:SummonMonsterByPos(32284,x+5+n,y-5+n)
			AI:SummonMonsterByPos(32284+n,x-5,y-b)
			AI:SummonMonsterByPos(32284+n,x+4,y-b)

			AI:SummonMonsterByPos(32285,x+b,y+5)
			AI:SummonMonsterByPos(32285,x+b,y-4)
			AI:SummonMonsterByPos(32285,x-5+n,y+5+n)
			AI:SummonMonsterByPos(32284+n,x-b,y+4)
			AI:SummonMonsterByPos(32284+n,x-b,y-5)

			AI:SummonMonsterByPos(32286,x-4,y+b)
			AI:SummonMonsterByPos(32286,x+4,y+b)
			AI:SummonMonsterByPos(32286,x-5+n,y-5+n)
			AI:SummonMonsterByPos(32284+n,x-6,y-b)
			AI:SummonMonsterByPos(32284+n,x+6,y-b)

			AI:SummonMonsterByPos(32286,x-4,y-b)
			AI:SummonMonsterByPos(32286,x+4,y-b)
			AI:SummonMonsterByPos(32286,x+5+n,y+5+n)
			AI:SummonMonsterByPos(32284+n,x-6,y+b)
			AI:SummonMonsterByPos(32284+n,x+6,y+b)

			AI:SummonMonsterByPos(32284,x-2,y+b)
			AI:SummonMonsterByPos(32284,x+3,y+b)
			AI:SummonMonsterByPos(32284,x+3+n,y-3+n)
			AI:SummonMonsterByPos(32284+n,x-3,y-b)
			AI:SummonMonsterByPos(32284+n,x+2,y-b)

			AI:SummonMonsterByPos(32285,x+c,y+2)
			AI:SummonMonsterByPos(32285,x+c,y-2)
			AI:SummonMonsterByPos(32285,x-3+c,y+3+c)
			AI:SummonMonsterByPos(32284+n,x-c,y+2)
			AI:SummonMonsterByPos(32284+n,x-c,y-3)

			AI:SummonMonsterByPos(32286,x-2,y+c)
			AI:SummonMonsterByPos(32286,x+2,y+c)
			AI:SummonMonsterByPos(32286,x-2+n,y-2+n)
			AI:SummonMonsterByPos(32284+n,x-3,y-c)
			AI:SummonMonsterByPos(32284+n,x+3,y-c)

			AI:SummonMonsterByPos(32286,x-2,y-b)
			AI:SummonMonsterByPos(32286,x+2,y-b)
			AI:SummonMonsterByPos(32286,x+2+n,y+2+n)
			AI:SummonMonsterByPos(32284+n,x-3,y+b)
			AI:SummonMonsterByPos(32284+n,x+3,y+b)
		end

	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)

		a = AI:GetArray(0)
		if a == 0 then
      AI:SetTimer(1,6000,3)
     	AI:SetArray(0,1)
     	AI:SetArray(1,1)
			AI:UpdateSeekPath(1)
      AI:SetTimer(2,1000,999)
      AI:SetTimer(3,15000,30)
   	end

 end

	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then
	    AI:AddSeekPos(mapid,220,104)--???,???
	    AI:AddSeekPos(mapid,208,101)--?????
	    AI:AddSeekPos(mapid,179,101)
	    AI:AddSeekPos(mapid,179,109)
	    AI:AddSeekPos(mapid,232,109)
	    AI:AddSeekPos(mapid,255,136)--?????
	    AI:AddSeekPos(mapid,255,151)
	    AI:AddSeekPos(mapid,245,160)--????????
	    AI:AddSeekPos(mapid,229,160)--????
	    AI:AddSeekPos(mapid,223,159)--?????
			AI:AddSeekPos(mapid,223,185)
	    AI:AddSeekPos(mapid,190,185)--?????
	    AI:AddSeekPos(mapid,174,186)--??????
			AI:AddSeekPos(mapid,173,204)
	    AI:AddSeekPos(mapid,157,220)
	    AI:AddSeekPos(mapid,149,225)
	    AI:AddSeekPos(mapid,135,216)
	    AI:AddSeekPos(mapid,126,196)
	    AI:AddSeekPos(mapid,145,181)--???????
	    AI:AddSeekPos(mapid,145,161)--??????????
	    AI:AddSeekPos(mapid,122,161)
	    AI:AddSeekPos(mapid,122,138)--????
	    AI:AddSeekPos(mapid,156,137)
	    AI:AddSeekPos(mapid,165,131)
	    AI:AddSeekPos(mapid,177,130)--????
	    AI:AddSeekPos(mapid,176,105)
	    AI:AddSeekPos(mapid,163,105)--?????
	    AI:AddSeekPos(mapid,151,105)--????????????,???
		end

	end

	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)

		if (( PosX == 151 ) and ( PosY == 105 )) then
			AI:ScreenText("Happy Spring Festival",2)
			AI:SelfMurder()
		end
	end

	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)


	end
