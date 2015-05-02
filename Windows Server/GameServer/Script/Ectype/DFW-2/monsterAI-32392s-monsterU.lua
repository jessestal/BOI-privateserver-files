 ------------------------------ 
 --  Copyright:PERFECT WORLD  
 --  Modified:2012  
 --  Author:???  
 --  TaskName: 4???? 
 ------------------------------ 
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
				randomsay=math.random(1,15)
				if randomsay == 1 then
					AI:Say("Lord Quetzalcoatl, they've crossed our major defense line!")
				end
				if randomsay == 2 then
					AI:Say("You will not get pass my razor sharp claws!")
				end
				if randomsay == 3 then
					AI:Say("A heavy strike!")
				end
				if randomsay == 4 then
					AI:Say("Thunder and fire!")
				end
				if randomsay == 5 then
					AI:Say("Go and report to the Deity. The invaders are here!")
				end
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
				randomtime=math.random(4500,5500)
				AI:SetTimer(2,randomtime,9999)
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