 ------------------------------ 
 --  Copyright:PERFECT WORLD  
 --  Modified:2012  
 --  Author:???  
 --  TaskName: 5??boss 
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
				randomsay=math.random(1,25)
				if randomsay == 1 then
					AI:Say("Lord Quetzalcoatl is the Deity here!")
				end
				if randomsay == 2 then
					AI:Say("You'll be cursed if you don't show your respect!")
				end
				if randomsay == 3 then
					AI:Say("Lord Quetzalcoatl will bring about real love.")
				end
				if randomsay == 4 then
					AI:Say("The world is full of lies! Only Lord Quetzalcoatl can bring the turth back!")
				end
				if randomsay == 5 then
					AI:Say("Accept our doctrine and surrender yourself to the rule of Quetzalcoatl. You'll never feel or see grief and suffering ever again...")
				end
				if randomsay == 6 then
					AI:Say("Please believe in Lord Quetzalcoatl. It's all for your own benefits!")
				end
				if randomsay == 7 then
					AI:Say("When the whole world has collapsed under fire, Lord Quetzalcoatl can protect you! Join him!")
				end
				if randomsay == 8 then
					AI:Say("This world will soon be a heartless place.")
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
		AI:ScreenText("Citlalmina: Please forgive me Quetzalcoatl...",2)
		
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