----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2011/08
--		Author:???
--		TaskName:??AI
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--????
			a = AI:GetArray(1)
			if a == 1 then
--				AI:ScreenText( "GUID:04132000000" , 2)
				AI:SelfMurder()
			end
		end


	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
--AI:Say("GUID:04132000001")
		mdv=114
		pxv=115
		pyv=116
		monsterid = AI:GetEctypeVarInteger(mapid,mdv)
		if monsterid > 0 then
			PosX=AI:GetEctypeVarInteger(mapid,pxv)
			PosY=AI:GetEctypeVarInteger(mapid,pyv)
			AI:SummonMonsterByPos(monsterid,PosX,PosY,0)
			AI:SetEctypeVarInteger(mapid,mdv,0)
			AI:SetEctypeVarInteger(mapid,pxv,0)
			AI:SetEctypeVarInteger(mapid,pyv,0)
			a=AI:GetArray(2)
			a=a+1
			AI:SetArray(2,a)
--			AI:ScreenText("GUID:04132000002"..tostring(a),2)
			AI:DelTimer(1)
			AI:SetArray(1,0)
		end
		mdv=117
		pxv=118
		pyv=119
		monsterid = AI:GetEctypeVarInteger(mapid,mdv)
		if monsterid > 0 then
			PosX=AI:GetEctypeVarInteger(mapid,pxv)
			PosY=AI:GetEctypeVarInteger(mapid,pyv)
			AI:SummonMonsterByPos(monsterid,PosX,PosY,0)
			AI:SetEctypeVarInteger(mapid,mdv,0)
			AI:SetEctypeVarInteger(mapid,pxv,0)
			AI:SetEctypeVarInteger(mapid,pyv,0)
			a=AI:GetArray(2)
			a=a+1
			AI:SetArray(2,a)
--			AI:ScreenText("GUID:04132000003"..tostring(a),2)
			AI:DelTimer(1)
			AI:SetArray(1,0)
		end
		
		a = AI:GetArray(1)
		if a == 0 then
			AI:SetTimer(1,3000,1)
			AI:SetArray(1,1)
		end


	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

	end
	
	
	
	
	
