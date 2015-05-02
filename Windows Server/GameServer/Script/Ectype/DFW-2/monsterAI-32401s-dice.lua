 ------------------------------ 
 --  Copyright£ºPERFECT WORLD  
 --  Modified£º2012  
 --  Author£ººú±óÌÎ  
 --  TaskName£º ÂÝÐý÷»×Ó1 
 ------------------------------ 
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		if nIndex == 2 then--¼ÆÊ±Æ÷2--start
			a=AI:GetArray(2)
			if a == 1 then
				AI:DelTimer(2)
				AI:Exit()
			end
		end--¼ÆÊ±Æ÷2--------------------end
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			-----------------------------------------------------------normal start
			a = AI:GetArray(2)
			if a == 0 then
				AI:SetTimer(2,4800,1)
				AI:SetArray(2,1)
			end
			----------------------------------------------------------normal end

	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		AI:DelTimer(1)
		AI:DelTimer(2)

	end

	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

--		if (( PosX == xx) and ( PosY == yy )) then
--			AI:Exit()
--		end

	end

	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

--		if nIndex == 1 then
--			xx,yy=0,0
--			AI:AddSeekPos(mapid,xx,yy)
--		end

	end