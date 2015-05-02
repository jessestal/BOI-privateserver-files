	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0	then
			mapid = AI:GetMapID()
			id1 = AI:GetArray( 1 )
			x = AI:GetPosX()
			y = AI:GetPosY()			
			distance_1 = AI:GetPlayerDistance( id1 )
	
			if distance_1 < 5	then
				AI:SetEctypeVarShort( mapid, 15, 1 )
				--AI:SetEctypeVarShort( mapid, 39, 32 )
				--AI:SummonMonsterByPos( 51596, x, y )
				AI:PlayEffect( "skill\\Monster\\boss\\yemu\\fire\\tx_yemu_fire.ini" )
			end
			AI:SetEctypeVarShort( mapid, 11, 0 )
			AI:SelfMurder()			
   		end
   		
   		if nIndex == 1	then
			id1 = AI:GetArray( 1 )
			distance_1 = AI:GetPlayerDistance( id1 )
			
			if distance_1 < 3	then
				AI:AddSkill( 2037, 1 )
				AI:UseSkill( 2037, 1 )
				--AI:AddSkill( 2033, 1 )
				--AI:DoSkillByEnmity( id1, 2033, 1 )
			end
			
			AI:PlayEffect( "common\\shanguangzhadan\\fire\\tx_shanguangzhadan_fire.ini" )
			--AI:PlayEffect( "skill\\Common\\Common_baozha_01\\tx_common_baozha_01.ini" )
			--AI:PlayEffect( "skill\\Knight\\chaofeng\\fire\\tx_knight_chaofeng_fire.ini" )
			AI:SetEctypeVarShort( mapid, 11, 0 )
			--AI:PlayEffect( "skill\\Knight\\huiyao\\fire\\tx_knight_huiyao_fire.ini" )
			--AI:PlayEffect( "skill\\Taoist\\baoliehuoqiu\\taoist_baoliehuoqiu_fire.ini" )
			AI:SetTimer( 5, 1500, 1 )
   		end
   		
   		if nIndex == 2	then
			AI:PlayEffect( "common\\gaobaozhadan\\fire\\tx_common_gaobaozhadan_fire.ini" )
			AI:SetTimer( 3, 1200, 1 )		
   		end
   		
   		if nIndex == 3	then
			--id = AI:GetTargetID()
			mapid = AI:GetMapID()
			id1 = AI:GetArray( 1 )
			distance_1 = AI:GetPlayerDistance( id1 )
			AI:SetEctypeVarShort( mapid, 35, 11 )
			AI:PlayEffect( "skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" )
			
			if distance_1 < 5	then
				AI:AddSkill( 2037, 2 )
				AI:UseSkill( 2037, 2 )
				--AI:AddSkill( 2033, 4 )
				--AI:DoSkillByEnmity( id1, 2033, 4 )
			end
			x = AI:GetPosX()
			y = AI:GetPosY()
			AI:SummonMonsterByPos( 51597, x, y )
			AI:SetEctypeVarShort( mapid, 11, 0 )
			AI:SelfMurder()			
   		end
   		
   		if nIndex == 4	then
			AI:PlayEffect( "skill\\pet\\wuleihongding\\fire\\tx_pet_wuleihongding_fire.ini" )		
   		end
   		
   		if nIndex == 5	then
   			mapid = AI:GetMapID()
   			AI:SetEctypeVarShort( mapid, 11, 0 )
			AI:Exit()
   		end
   		
	end    

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
        mapid = AI:GetMapID()
        index = AI:GetEctypeVarShort( mapid, 11 )
        if index == 1	then
        	switch = AI:GetArray( 0 )
			if switch == 0	then
				AI:PlayEffect( "skill\\pet\\wuleihongding\\fire\\tx_pet_wuleihongding_fire.ini" )
				id = AI:GetEctypeVarInteger( mapid, 119 )
				AI:SetArray( 1, id )
				AI:ModifyEnmity( id, 900000000 )
				AI:SetArray( 0, 1 )
        		AI:SetTimer( 0, 4000, 1 )
        		AI:SetTimer( 4, 2000, 1 )
        	end
        end
        
        if index == 2	then
        	switch = AI:GetArray( 0 )
			if switch == 0	then
				id = AI:GetEctypeVarInteger( mapid, 119 )
				AI:SetArray( 1, id )
				AI:ModifyEnmity( id, 900000000 )
				AI:SetArray( 0, 1 )
				--AI:PlayEffect( "skill\\Common\\zhuoshao\\keep\\tx_common_zhuoshao_keep.ini" )
   				AI:PlayEffect( "skill\\Knight\\huiyao\\keep\\tx_knight_huiyao_keep.ini" )
   				--AI:PlayEffect( "common\\shanguangzhadan\\keep\\tx_shanguangzhadan_keep.ini" )
        		AI:SetTimer( 1, 6000, 1 )
        	end
        end
        
        if index == 3	then
        	switch = AI:GetArray( 0 )
			if switch == 0	then
				id = AI:GetEctypeVarInteger( mapid, 119 )
				AI:SetArray( 1, id )
				AI:ModifyEnmity( id, 900000000 )
				AI:SetArray( 0, 1 )
				--AI:PlayEffect( "skill\\Common\\zhuoshao\\keep\\tx_common_zhuoshao_keep.ini" )
   				AI:PlayEffect( "skill\\Knight\\huiyao\\fire\\tx_knight_huiyao_fire.ini" )
        		AI:SetTimer( 2, 2000, 1 )
        	end
        end
 	end
 	
 	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)

	end