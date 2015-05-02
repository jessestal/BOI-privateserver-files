function Event_OnTimer(nAI,nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	
	if nIndex == 0	then
		mapid = AI:GetMapID()
		AI:PlayEffect( "skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" )
		AI:PlayEffect( "common\\shanguangzhadan\\fire\\tx_shanguangzhadan_fire.ini" )
		b = AI:GetEctypeVarInteger( mapid ,111 )
		if b == 0 then
			AI:AddSkill( 2037, 2 )
			AI:UseSkill( 2037, 2 )
		else
			AI:AddSkill( 2038, 1 )
			AI:UseSkill( 2038, 1 )
		end
		AI:SetTimer( 1, 1400, 1 )
   	end
   	
   	if nIndex == 1	then
		AI:Exit()
   	end	
	
end    

function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
	mapid = AI:GetMapID()
	fire = AI:GetArray( 0 )
	if fire == 0 	then
		n = AI:GetEctypeVarShort( mapid, 96 )
		k = 113
		while n > 0 do
			id = AI:GetEctypeVarInteger( mapid, k )
			dis = AI:GetPlayerDistance( id )
			if dis < 2	then
				AI:PlayEffect( "skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" )
				AI:PlayEffect( "common\\shanguangzhadan\\fire\\tx_shanguangzhadan_fire.ini" )
				--x = AI:GetPosX()
				--y = AI:GetPosY()
				--AI:SummonMonsterByPos( 51720, x, y )
				mapid = AI:GetMapID()
				b = AI:GetEctypeVarInteger( mapid ,111 )
				if b == 0 then
					AI:AddSkill( 2037, 2 )
					AI:UseSkill( 2037, 2 )
				else
					AI:AddSkill( 2038, 1 )
					AI:UseSkill( 2038, 1 )
				end
				AI:SetTimer( 1, 1400, 1 )
				AI:SetArray(0,1)
				break
			end
			k = k + 1
			n = n -1
		end
	end
	
	kill = AI:GetArray( 1 )
	if kill == 0 	then
		AI:SetTimer( 0, 11000, 1 )
		AI:SetArray(1,1)
	end
 end

