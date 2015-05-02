function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	
end    

function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	fire = AI:GetArray( 0 )
	if fire == 0 	then
		mapid = AI:GetMapID()
		b = AI:GetEctypeVarInteger( mapid ,111 )
		if b == 0 then
			AI:AddSkill( 2037, 2 )
			AI:UseSkill( 2037, 2 )
		else
			AI:AddSkill( 2039, 1 )
			AI:UseSkill( 2039, 1 )
		end
		AI:SetArray(0,1)
	end
 end
 	
 function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
    
end

--到了指定坐标点执行
function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
	local AI = GetMonsterAI(nAI)
    	
end

function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
	
end