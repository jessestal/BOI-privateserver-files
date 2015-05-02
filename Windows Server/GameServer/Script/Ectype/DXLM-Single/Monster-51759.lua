----------------------------------------------------
--		Copyright：PERFECT WORLD
--		Modified：2011/08
--		Author：胡斌涛
--		TaskName：【通用monsterAI】
--		TaskID：
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

 		a = AI:GetArray(1)
		-----------------------------------------------------------normal start
		if a == 0 then --初始触发器
			AI:SetArray(1,1)
			AI:UpdateSeekPath(1)
		end
		----------------------------------------------------------normal start
		
		
	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)		
		local mapid = AI:GetMapID()

		--AI:ScreenText( "" , 2)

	end
------------------------------------------------------------------------seekpos
--227
--254
--27
--
--93
--115
--22



	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		if nIndex == 1 then
			rr=AI:GetRand(27)
			px=227+rr
			rr=AI:GetRand(22)
			py=93+rr
			dx=AI:GetEctypeVarShort(mapid,88)
			dy=AI:GetEctypeVarShort(mapid,89)
			AI:AddSeekPos(mapid,px,py)
			AI:AddSeekPos(mapid,dx,dy)
		end
		
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		dx=AI:GetEctypeVarShort(mapid,88)
		dy=AI:GetEctypeVarShort(mapid,89)
			
		if (( PosX == dx) and ( PosY == dy )) then
			con=AI:GetEctypeVarShort(mapid,86)
			con=con+1
			AI:SetEctypeVarShort(mapid,86,con)
			if con == 18 then
				AI:SummonMonsterByPos(51760,PosX,PosY,0)
			end
			if con == 1 then
				AI:SummonMonsterByPos(51784,PosX,PosY,0)
			end
			AI:Exit()
		end
		
	end
------------------------------------------------------------------------