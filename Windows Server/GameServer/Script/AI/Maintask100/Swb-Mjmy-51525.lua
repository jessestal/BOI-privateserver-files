	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2010/03/14
	--		Author:???
	--		Class:	.Lua
	--		AIName:Swb-Mjmy-51525.lua
	--		Remark:??
	----------------------------------------------------
	
	
	function Event_OnTimer( nAI, nIndex, nCount)
		
		local AI = GetMonsterAI(nAI)
		if nIndex == 0 then
		-- 
			a = AI:GetArray(2)
			if a == 0 then
				AI:Say("To expect others to love you, that feeling of superiority, this is Pride.")
				AI:SetArray(2,1)
			elseif a == 1 then
			   	AI:Say("Pride has no standard, anyone can be arrogant.")
			    AI:SetArray(2,2)
			elseif a == 2 then
			   	AI:Say("In fact, Pride comes easily to the ignorant.")
			    AI:SetArray(2,3)
			elseif a == 3 then
					AI:SummonMonsterByPos( 51526 , 181 , 81 )
					mapid = AI:GetMapID()
					road = AI:GetEctypeVarShort( mapid , 51 )
					AI:SetEctypeVarShort( mapid , 51 , road + 1 )
					AI:SetTimer( 2 , 500 , 65535 )
			  	AI:SetArray(2,4)
			end
		end
		if nIndex == 1 then
		-- 
			AI:Say("You can't defeat your pride, not the sin, only your nature.")
			AI:PlayEffect("skill\\Warrior\\jinu\\fire\\tx_warrior_jinu_fire.ini ")
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
	    	AI:SetTimer( 1 , 12000 , 65535 )
				AI:SetArray(1,3)
			end
    end
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	    AI:AddSeekPos(253,183,85)
	    
	end
	
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		
		if (( PosX == 183 ) and ( PosY == 85 )) then
			AI:SetAIState(7)
			AI:SetTimer( 0 , 5000 , 5 )
		end
	end
	
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	road = AI:GetEctypeVarShort( mapid , 52 )
    	AI:SetEctypeVarShort( mapid , 52 , road + 1 )
	end
	