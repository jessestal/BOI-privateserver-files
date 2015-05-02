	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0	then
			--AI:PlayEffect( "skill\\Monster\\boss\\haidaodaojishi\\fire\\tx_boss_haidaodaojishi_fire.ini" )
			AI:PlayEffect( "skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" )
			AI:PlayEffect( "common\\shanguangzhadan\\fire\\tx_shanguangzhadan_fire.ini" )
			AI:SetTimer( 1, 1400, 1 )				
   		end
   		
   		if nIndex == 1	then
			AI:Exit()
   		end
   		
	end    

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
        mapid = AI:GetMapID()
        switch = AI:GetArray( 0 )
		if switch == 0	then
			id = AI:GetEctypeVarInteger( mapid, 119 )
			AI:SetArray( 1, id )
			AI:ModifyEnmity( id, 900000000 )
			AI:SetArray( 0, 1 )
        	AI:SetTimer( 0, 6000, 1 )
        end
        
        if switch == 1	then
			id = AI:GetArray( 1 )
			AI:SetArray( 1, id )
			distance_1 = AI:GetPlayerDistance( id )
			
			if distance_1 < 3	then
				AI:PlayEffect( "skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" )
				AI:PlayEffect( "common\\shanguangzhadan\\fire\\tx_shanguangzhadan_fire.ini" )
				AI:SetTimer( 1, 1400, 1 )
				AI:AddSkill( 2037, 1 )
				AI:UseSkill( 2037, 1 )
				--AI:AddSkill( 2033, 2 )
				--AI:DoSkillByEnmity( id, 2033, 2 )
				AI:SelfMurder()
			end
        end 
 	end
 	
 	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
	end