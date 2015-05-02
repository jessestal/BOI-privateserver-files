	-----------------------------------------
	--
	--		Copyright：PERFECT WORLD
	--		Modified：2012/07/25
	--		Author：朱建臣
	--		AIName：Monster_53003.lua
	--		AIID：命运之门变色怪
	--
	-----------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
	    local AI = GetMonsterAI(nAI)
	    
	end
	
	function Event_Thinking(nAI)
	    local AI = GetMonsterAI(nAI)
	
	end
	
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		ectypeID = AI:GetMapID()
		
		--对应颜色计数减1
--		now_num = AI:GetEctypeVarShort( ectypeID , 8 )
--		now_num = now_num - 1
--		if now_num < 0 then
--			now_num = 0
--		end
--		AI:SetEctypeVarShort( ectypeID , 8 , now_num )
		
		--每次死亡，刷出下种颜色的怪物
		posX = AI:GetPosX()
		posY = AI:GetPosY()
		a = AI:GetRand(100)
		if a < 50 then
			AI:SummonMonsterByPos( 53004 , posX , posY)
			num9 = AI:GetEctypeVarShort(ectypeID,9)
			num9 = num9 + 1
			AI:SetEctypeVarShort(ectypeID,9,num9)
		else
			AI:SummonMonsterByPos( 53002 , posX , posY)
			num7 = AI:GetEctypeVarShort(ectypeID,7)
			num7 = num7 + 1
			AI:SetEctypeVarShort(ectypeID,7,num7)
		end
	end