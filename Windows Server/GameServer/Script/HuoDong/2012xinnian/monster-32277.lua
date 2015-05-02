----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:?-????1~3-?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
				randnb=math.random(3)
				if randnb == 1 then
					AI:Say("Come on, Come on.")
				end
				if randnb == 2 then
					AI:Say("Merry Christmas!")
				end
				if randnb == 3 then
					AI:Say("Merry Christmas to all, and to all a good night!")
				end
			end
		end

		if nIndex == 2 then--????
			a = AI:GetArray(2)
			if a == 2 then
				AI:Exit()
			end
		end

	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

 		a = AI:GetArray(1)
		-----------------------------------------------------------normal start
		if a == 0 then --?????
			AI:SetArray(1,1)
			AI:SetTimer(1,10000,6)
			AI:UpdateSeekPath(1)
		end
		----------------------------------------------------------normal start
		
		
	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

	end
------------------------------------------------------------------------seekpos
	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then
			posdx=222
			posdy=183
			rr=math.random(0,4)
			posdx=posdx-2+rr
			rr=math.random(0,4)
			posdy=posdy-2+rr
			AI:AddSeekPos(mapid,posdx,posdy)
			posdx=155
			posdy=181
			rr=math.random(0,4)
			posdx=posdx-2+rr
			rr=math.random(0,4)
			posdy=posdy-2+rr
			AI:AddSeekPos(mapid,posdx,posdy)
			posdx=158
			posdy=163
			rr=math.random(0,4)
			posdx=posdx-2+rr
			rr=math.random(0,4)
			posdy=posdy-2+rr
			AI:AddSeekPos(mapid,posdx,posdy)
			posdx=177
			posdy=156
			rr=math.random(0,4)
			posdx=posdx-2+rr
			rr=math.random(0,4)
			posdy=posdy-2+rr
			AI:AddSeekPos(mapid,posdx,posdy)
			posdx=176
			posdy=142
			rr=math.random(0,4)
			posdx=posdx-2+rr
			rr=math.random(0,4)
			posdy=posdy-2+rr
			AI:AddSeekPos(mapid,posdx,posdy)
			posdx=161
			posdy=141
			rr=math.random(0,4)
			posdx=posdx-2+rr
			rr=math.random(0,4)
			posdy=posdy-2+rr
			AI:AddSeekPos(mapid,posdx,posdy)
			posdx=165
			posdy=131
			rr=math.random(0,4)
			posdx=posdx-2+rr
			rr=math.random(0,4)
			posdy=posdy-2+rr
			AI:AddSeekPos(mapid,posdx,posdy)
			posdx=180
			posdy=131
			rr=math.random(0,4)
			posdx=posdx-2+rr
			rr=math.random(0,4)
			posdy=posdy-2+rr
			AI:AddSeekPos(mapid,posdx,posdy)
			posdx=183
			posdy=105
			rr=math.random(0,4)
			posdx=posdx-2+rr
			rr=math.random(0,4)
			posdy=posdy-2+rr
			AI:AddSeekPos(mapid,posdx,posdy)
			posdx=208
			posdy=110
			rr=math.random(0,4)
			posdx=posdx-2+rr
			rr=math.random(0,4)
			posdy=posdy-2+rr
			AI:AddSeekPos(mapid,posdx,posdy)
			posdx=208
			posdy=106
			rr=math.random(0,4)
			posdx=posdx-2+rr
			rr=math.random(0,4)
			posdy=posdy-2+rr
			AI:AddSeekPos(mapid,posdx,posdy)
			AI:SetArray(3,posdx)
			AI:SetArray(4,posdy)
		end

	end

	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
			
		posdx=AI:GetArray(3)
		posdy=AI:GetArray(4)
		
		if (( PosX == posdx) and ( PosY == posdy )) then
			AI:SetArray(2,1)
			AI:SetTimer(2,10000,1)
		end

	end
	
	
	
------------------------------------------------------------------------



