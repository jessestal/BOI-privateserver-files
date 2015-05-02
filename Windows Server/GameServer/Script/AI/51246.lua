----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2009/12/27
--		Author:???
--		Class:	.Lua
--		AIName:51242-51246.lua
--		Remark:????
----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		if nIndex == 1 then
			a = AI:GetArray(2)
			if a == 0 then
				AI:Say("The ceremony has begun!  Fallen Trial Monsters will be summoned in 40 seconds!")
				AI:ScreenText("The Fallen Totem will disappear in 40 seconds!",2)
				AI:SetArray(2,1)
			elseif a == 1 then
				AI:Say("The ceremony has begun!  Fallen Trial Monsters will be summoned in 30 seconds!")
				AI:ScreenText("The Fallen Totem will disappear in 30 seconds!",2)
				AI:SetArray(2,2)
			elseif a == 2 then
				AI:Say("The ceremony has begun!  Fallen Trial Monsters will be summoned in 20 seconds!")
				AI:ScreenText("The Fallen Totem will disappear in 20 seconds!",2)
				AI:SetArray(2,3)
			elseif a == 3 then
				AI:Say("The ceremony has begun!  Fallen Trial Monsters will be summoned in 10 seconds!")
				AI:ScreenText("The Fallen Totem will disappear in 10 seconds!",2)
				AI:SetArray(2,4)
			end
		end
		
		if nIndex == 2 then
			a = AI:GetArray(3)
			if a == 0 then
				mapid = AI:GetMapID()
				--????
				type = AI:GetEctypeVarBoolean( mapid , 11 )
				lv = AI:GetEctypeVarInteger( mapid , 110 )
				posx = AI:GetPosX()
				posy = AI:GetPosY()
				ranx = math.random( posx-3 , posx+3 )
	      rany = math.random( posy-3 , posy+3 )
	      if type == 0 then
	      	AI:SummonLevelMonsterByPos(51247, 13 , lv , ranx , rany )
	      	AI:SummonLevelMonsterByPos(51247, 13 , lv , ranx , rany )
	      	AI:SummonLevelMonsterByPos(51247, 13 , lv , ranx , rany )
	      elseif type == 1 then
	      	AI:SummonLevelMonsterByPos(51247, 52 , lv , ranx , rany )
	      	AI:SummonLevelMonsterByPos(51247, 52 , lv , ranx , rany )
	      	AI:SummonLevelMonsterByPos(51247, 52 , lv , ranx , rany )
	      end
				AI:SetTimer(3,1000,1)
				AI:SetArray(3,1)
			end
		end
		
		if nIndex == 3 then
			a = AI:GetArray(4)
			if a == 0 then
--				AI:SelfMurder()
				AI:Say("Fallen Totem disappeared! Cannot start the Sacrifice!")
				AI:DelTimer(1)
				AI:DelTimer(2)
				AI:DelTimer(3)
				AI:Exit()
				AI:SetArray(4,1)
			end
		end
		
	end


	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		a = AI:GetArray(1)
		if a == 0 then
			AI:Say("The ceremony has begun!  Fallen Trial Monsters will be summoned in 50 seconds!")
			AI:ScreenText("The Fallen Totem will disappear in 50 seconds!",2)
			AI:SetTimer(1,10000,4)
			AI:SetTimer(2,50000,1)
			AI:SetArray(1,1)
		end
	end
		
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		AI:DelTimer(1)
		AI:DelTimer(2)
		AI:DelTimer(3)

	end