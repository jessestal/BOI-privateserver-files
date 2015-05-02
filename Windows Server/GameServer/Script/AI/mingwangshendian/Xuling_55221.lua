	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		
		if nIndex == 0	then
			AI:PlayEffect( "skill\\Monster\\boss\\haidaodaoguang\\fire\\tx_haidaodaoguang_fire.ini" )
			AI:SetArray( 0, 1 )
		end
		if nIndex == 1	then
			AI:PlayEffect( "skill\\Monster\\boss\\haidaoyunxuan\\fire\\tx_haidaoyunxuan_fire.ini" )
			AI:SetArray( 0, 1 )
		end
	end    

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
        
		t = AI:HaveAttackTarget()
		if t == false	then
			AI:SetArray( 0, 0 )
			AI:SetArray( 1, 0 )
			AI:SetArray( 2, 0 )
			AI:DelTimer( 0 )
			AI:DelTimer( 1 )
			AI:Exit()
		else
			mapid = AI:GetMapID()
			switch = AI:GetArray( 0 )
			if switch == 0	then
				id = AI:GetEctypeVarInteger( mapid, 119 )
				AI:ModifyEnmity( id, 900000000 )
				index = AI:GetEctypeVarShort( mapid, 16 )
				switch = 1
				AI:SetArray( 0, 1 )
				AI:SetArray( 2, index )
        	end
			index = AI:GetArray( 2 )
			if index == 1	then
				switch = AI:GetArray( 0 )
				if switch == 1	then
					count = AI:GetArray( 1 )
					if count < 16	then
						count = count + 1
	        			AI:SetTimer( 0, 800, 1 )
	        			AI:SetArray( 0, 2 )
						AI:SetArray( 1, count )
	        		end
	        		if count == 16	then
	        			AI:Exit()
	        		end
	        	end
			end
			if index == 2	then
				switch = AI:GetArray( 0 )
				if switch == 1	then
					count = AI:GetArray( 1 )
					if count < 16	then
						count = count + 1
	        			AI:SetTimer( 1, 1000, 1 )
	        			AI:SetArray( 0, 2 )
						AI:SetArray( 1, count )
	        		end
	        		if count == 16	then
	        			AI:Exit()
	        		end
	        	end
			end
        end
 	end