	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2010/03/14
	--		Author:???
	--		Class:	.Lua
	--		AIName:Swb-Mjmy-51531.lua
	--		Remark:??
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		-- 
			a = AI:GetArray(2)
			if a == 0 then
				AI:Say("Lust means to covet the happiness of the body excessively.")
				AI:SetArray(2,1)
			elseif a == 1 then
			   	AI:Say("Freud said, all motivation is caused by sex.")
			    AI:SetArray(2,2)
			elseif a == 2 then
			   	AI:Say("But do not pursue it excessively.")
			    AI:SetArray(2,3)
			elseif a == 3 then
					mapid = AI:GetMapID()
					road = AI:GetEctypeVarShort( mapid , 51 )
					AI:SetEctypeVarShort( mapid , 51 , road + 1 )
					AI:SetTimer( 2 , 500 , 65535 )
			  	AI:SetArray(2,4)
			end
		end
		if nIndex == 1 then
		-- 
			AI:PlayEffect("skill\\Warrior\\zhuangji\\fire\\tx_warrior_zhuangji_fire.ini ")
		end
		if nIndex == 2 then
		-- 
			mapid = AI:GetMapID()
			road = AI:GetEctypeVarShort( mapid , 51 )
			if road >= 7 then
				AI:ChangeFaction(4)
				AI:SetAIState(0)
				AI:SetArray(1,2)
			end
		end
	end

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
			a = AI:GetArray(1)
			if a == 0 then
				AI:AddSkill(2018,1)
	    	AI:UseSkill(2018,1)
				AI:SetArray(1,1)
			elseif a == 2 then
				AI:SetTimer(1,18000, 65535 )
				AI:SetArray(1,3)
			end
    end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	    AI:AddSeekPos(253,189,91)
	    
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		
		if (( PosX == 189 ) and ( PosY == 91 )) then
			AI:SetAIState(7)
			AI:SetTimer(0,5000, 5 )
		end
	end
	
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	road = AI:GetEctypeVarShort( mapid , 52 )
    	AI:SetEctypeVarShort( mapid , 52 , road + 1 )
	end
	