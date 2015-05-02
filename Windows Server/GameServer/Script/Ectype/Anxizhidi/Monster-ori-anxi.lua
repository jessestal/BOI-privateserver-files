----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:?-??-???AI-?
--		TaskID:monster id 30314
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
				AI:SetArray(1,2)
			end
		end
		
	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()


--		test=AI:GetEctypeVarShort(mapid,99)
--		if test == 1 then--??AI??
--			AI:Say("hppct="..tostring(hppct))
--			rr=math.random(3)
--			AI:ScreenText("GUID:03807000000"..tostring(rr),2)
--			AI:SetEctypeVarShort(mapid,99,0)
--		end
		-----------------------------------------------------------normal start
			a = AI:GetArray(1)
			if a == 0 then --?????,????,????
				AI:SetTimer(1,500,1)
				AI:SetArray(1,1)
				AI:ScreenText("",2)
			end
			-----------------------------------------------------------???? start
			ice2=AI:GetArray(5)
			if ice2 == 0 then
				ice2=1
				AI:SetArray(5,ice2)
			end
			ice=AI:GetEctypeVarShort(mapid,3)
			if ice == ice2 then
				ice2=ice2+1
				AI:SetArray(5,ice2)
				PosX=AI:GetEctypeVarShort(mapid,11)
				PosY=AI:GetEctypeVarShort(mapid,12)
				for i=1,7 do
					rr=math.random(7)
					PosXc=PosX+rr-4
					rr=math.random(7)
					PosYc=PosY+rr-4
					AI:SummonMonsterByPos(30315,PosXc,PosYc,1)
				end
				if ice == 1 then
					AI:ScreenText("In his infinite wisdom, Odin created an element of cold which came to be known as Ice.",2)
				end
				if ice == 2 then
					AI:ScreenText("Its opposite was Fire, and the two were destined to always be at odds.",2)
				end
				if ice == 3 then
					AI:ScreenText("To repay him for creating us, we have protected Odin's body.",2)
				end
				if ice == 4 then
					AI:ScreenText("Human, what brings you here? We can feel the warmth in your heart.",2)
				end				
			end
			-----------------------------------------------------------???? end


			----------------------------------------------------------normal start


	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()




		--AI:ScreenText( "" , 2)

	end
------------------------------------------------------------------------seekpos
	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then
			AI:AddSeekPos( mapid, x, y )
--AI:Say( "seekpos01" )
		end

	end

	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if (( PosX == x) and ( PosY == y )) then
--AI:Say( "arrive0" )
		end

	end
	
	
	
------------------------------------------------------------------------



