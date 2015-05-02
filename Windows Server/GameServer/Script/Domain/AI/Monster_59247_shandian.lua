	------------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2011/02/21
	--		Author:??
	--		AIName:Monster_59276_shandian.lua
	--		AIID:???????
	--
	------------------------------------------

	function Event_OnTimer(nAI,nIndex, nCount)
       		local AI = GetMonsterAI(nAI)
       		local mapid = AI:GetMapID()
       		local move = AI:GetEctypeVarShort(mapid , 4)
       		if nIndex == 0 then
        		AI:AddSkill(3879,1)
        		AI:UseSkill(3879,1)
        	end	
	end
	
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		a = AI:GetArray(0)
        
        	if a == 0 then
 --       		AI:Say("GUID:03730000000")        
        		AI:SetTimer(0,1000,65535)
        		AI:SetArray(0,1)
        	end	
	end
	
	function Event_ReadSeekPos(nAI)
	    	local AI = GetMonsterAI(nAI)
	   	local ectypeID = AI:GetMapID()
	   	local rightPosX = AI:GetPosX()
		local rightPosY = 158
	    	AI:AddSeekPos( ectypeID , rightPosX , rightPosY)
	end
	
	function Event_ArriveSeekPos(nAI , MapID , PosX , PosY)
		local AI = GetMonsterAI(nAI)
		local rightPosX = AI:GetPosX()
		local rightPosY = 158
		if (( PosX == rightPosX ) and ( PosY == rightPosY )) then
        		--?????,???????
        		AI:AddGuildDomainMonster( 59246 , rightPosX , rightPosY , 0 , 90 , 2 , 0  )
        		AI:Exit()
    		end	
	end