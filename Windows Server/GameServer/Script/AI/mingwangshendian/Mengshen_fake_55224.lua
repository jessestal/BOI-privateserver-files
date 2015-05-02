	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
			
		if nIndex == 0	then
			AI:SetArray( 0, 2 )
		end
		if nIndex == 1	then
			AI:SetArray( 2, 2 )
		end
		
	end    

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
        
        mapid = AI:GetMapID()
        t = AI:HaveAttackTarget()
		if t == false	then
			AI:SetArray( 0, 0 )
			AI:SetArray( 1, 0 )
			AI:SetArray( 2, 0 )
			AI:DelTimer( 0 )
			AI:DelTimer( 1 )
			AI:SummonMonsterByPos( 55216, 128, 79 )
			AI:Exit()
		else
			switch = AI:GetArray( 0 )
			if switch == 0	then
				AI:PlayEffect( "skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" )
				HPMAX = AI:GetHPMax()
				HP = HPMAX * 0.7
				AI:LoseHPInstant( HP )
				AI:AddSkill( 2006, 1 )
				AI:UseSkill( 2006, 1 )
				AI:AddSkill( 2036, 1 )
				AI:UseSkill( 2036, 1 )
				--AI:AddSkill( 2027, 1 )
				--AI:UseSkill( 2027, 1 )
				id = AI:GetEctypeVarInteger( mapid, 119 )
				AI:ModifyEnmity( id, 900000000 )
				AI:SetArray( 1, id )
				AI:SetArray( 0, 1 )
				AI:SetArray( 2, 1 )
				AI:SetTimer( 0, 5000, 1 )
				AI:SetTimer( 1, 9000, 1 )
			end				
			if switch == 2	then
				AI:AddSkill( 2006, 1 )
				AI:UseSkill( 2006, 1 )
				id = AI:GetArray( 1 )
				--distance = AI:GetPlayerDistance( id )
				--if distance < 4	then
				AI:AddSkill( 2037, 2 )
				AI:UseSkill( 2037, 2 )
				--end
				AI:SetArray( 0, 1 )
				AI:SetTimer( 0, 10000, 1 )
			end
			
			switch1 = AI:GetArray( 2 )
        	if switch1 == 2	then
				id = AI:GetArray( 1 )
				AI:ModifyEnmity( id, 900000000 )
				AI:SetArray( 2, 1 )
        		AI:SetTimer( 1, 9000, 1 )
        	end
        end
        
 	end
 	
 	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)	
	end