	----------------------------------------------------
	--		Copyright：PERFECT WORLD
	--		Modified：2011/12/29
	--		Author：向珈辰
	--		Class:	.Lua
	--		AIName：32281_Nianshou.lua
	--		Remark：年兽
	----------------------------------------------------


	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)


		if nIndex == 1 then
			a = AI:GetArray(1)
--			AI:Say("=="..tostring(a))
			if a == 1 then
				AI:AddSkill(2288,1)
				AI:UseSkill(2288,1)
				AI:AddSkill(2287,1)
				AI:UseSkill(2287,1)
				a = a+1
				AI:SetArray(1,a)
			elseif a == 20 then
				a = 1
				AI:SetArray(1,a)
			end
			elseif a > 1 then
				a = a+1
				AI:SetArray(1,a)
		end


	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)

		a = AI:GetArray(1)
		if a == 0 then
      AI:SetTimer(1,1000,999)
     	AI:SetArray(1,1)
			AI:UpdateSeekPath(1)
   	end

 end

	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then
			posdx=220
			posdy=104
			rr=math.random(0,4)
			posdx=posdx-2+rr
			rr=math.random(0,4)
			posdy=posdy-2+rr
			AI:AddSeekPos(mapid,posdx,posdy)
			posdx=210
			posdy=102
			rr=math.random(0,4)
			posdx=posdx-2+rr
			rr=math.random(0,4)
			posdy=posdy-2+rr
			AI:AddSeekPos(mapid,posdx,posdy)
			posdx=179
			posdy=101
			rr=math.random(0,4)
			posdx=posdx-2+rr
			rr=math.random(0,4)
			posdy=posdy-2+rr
			AI:AddSeekPos(mapid,posdx,posdy)
			posdx=179
			posdy=109
			rr=math.random(0,4)
			posdx=posdx-2+rr
			rr=math.random(0,4)
			posdy=posdy-2+rr
			AI:AddSeekPos(mapid,posdx,posdy)
			posdx=230
			posdy=109
			rr=math.random(0,4)
			posdx=posdx-2+rr
			rr=math.random(0,4)
			posdy=posdy-2+rr
			AI:AddSeekPos(mapid,posdx,posdy)
	    AI:AddSeekPos(mapid,255,136)--活动区结束
	    AI:AddSeekPos(mapid,255,151)
	   	AI:AddSeekPos(mapid,245,160)--港口传送平台楼梯
	    AI:AddSeekPos(mapid,229,160)--下完楼梯
			posdx=225
			posdy=159
			rr=math.random(0,4)
			posdx=posdx-2+rr
			rr=math.random(0,4)
			posdy=posdy-2+rr
			AI:AddSeekPos(mapid,posdx,posdy)
			posdx=220
			posdy=185
			rr=math.random(0,4)
			posdx=posdx-2+rr
			rr=math.random(0,4)
			posdy=posdy-2+rr
			AI:AddSeekPos(mapid,posdx,posdy)
			posdx=190
			posdy=185
			rr=math.random(0,4)
			posdx=posdx-2+rr
			rr=math.random(0,4)
			posdy=posdy-2+rr
			AI:AddSeekPos(mapid,posdx,posdy)
			posdx=174
			posdy=186
			rr=math.random(0,4)
			posdx=posdx-2+rr
			rr=math.random(0,4)
			posdy=posdy-2+rr
			AI:AddSeekPos(mapid,posdx,posdy)
			posdx=173
			posdy=204
			rr=math.random(0,4)
			posdx=posdx-2+rr
			rr=math.random(0,4)
			posdy=posdy-2+rr
			AI:AddSeekPos(mapid,posdx,posdy)
			posdx=157
			posdy=220
			rr=math.random(0,4)
			posdx=posdx-2+rr
			rr=math.random(0,4)
			posdy=posdy-2+rr
			AI:AddSeekPos(mapid,posdx,posdy)
			posdx=149
			posdy=225
			rr=math.random(0,4)
			posdx=posdx-2+rr
			rr=math.random(0,4)
			posdy=posdy-2+rr
			AI:AddSeekPos(mapid,posdx,posdy)
			posdx=135
			posdy=216
			rr=math.random(0,4)
			posdx=posdx-2+rr
			rr=math.random(0,4)
			posdy=posdy-2+rr
			AI:AddSeekPos(mapid,posdx,posdy)
			posdx=126
			posdy=196
			rr=math.random(0,4)
			posdx=posdx-2+rr
			rr=math.random(0,4)
			posdy=posdy-2+rr
			AI:AddSeekPos(mapid,posdx,posdy)
	    AI:AddSeekPos(mapid,145,181)--贸易广场绕一圈
	    AI:AddSeekPos(mapid,145,161)--上楼梯来到贸易区传送
	    AI:AddSeekPos(mapid,122,161)
	    AI:AddSeekPos(mapid,122,138)--上左楼梯
	    AI:AddSeekPos(mapid,156,137)
	    AI:AddSeekPos(mapid,165,131)
	    AI:AddSeekPos(mapid,177,130)--再上楼梯
	    AI:AddSeekPos(mapid,176,105)
	    AI:AddSeekPos(mapid,160,105)--上公会楼梯
		end
	end

	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)

		if (( PosX == 160 ) and ( PosY == 105 )) then
			AI:Exit()
		end
	end

	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)


	end