----------------------------------------------------
--		Copyright£ºPERFECT WORLD
--		Modified£º2011/08
--		Author£ººú±óÌÎ
--		TaskName£º°áÔËAI
--		TaskID£º
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		monsterid = 51752
		stat = AI:GetEctypeVarShort(mapid,84)
		mapidn = AI:GetEctypeVarShort(mapid,83)
		if stat == 1 then
			posX=AI:GetPosX()
			posY=AI:GetPosY()
			-----------------------------------
			a = AI:GetArray(1)
			if a == 0 then
				mdv=114
				pxv=115
				pyv=116
				monsteridcase = AI:GetEctypeVarInteger(mapidn,mdv)
				if monsteridcase == 0 then
					AI:SetEctypeVarInteger(mapidn,mdv,monsterid)
					AI:SetEctypeVarInteger(mapidn,pxv,posX)
					AI:SetEctypeVarInteger(mapidn,pyv,posY)
					AI:SetArray(1,1)
					AI:Exit()
				end
			end
			-----------------------------------
			a = AI:GetArray(1)
			if a == 0 then
				mdv=117
				pxv=118
				pyv=119
				monsteridcase = AI:GetEctypeVarInteger(mapidn,mdv)
				if monsteridcase == 0 then
					AI:SetEctypeVarInteger(mapidn,mdv,monsterid)
					AI:SetEctypeVarInteger(mapidn,pxv,posX)
					AI:SetEctypeVarInteger(mapidn,pyv,posY)
					AI:SetArray(1,1)
					AI:Exit()
				end
			end
			------------------------------------
		end



	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

	end
	
	
	
	
	
