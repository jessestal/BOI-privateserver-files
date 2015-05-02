	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0	then
			x = AI:GetPosX()
			y = AI:GetPosY()

		    step = AI:GetArray( 2 )
		    if step < 3 then
		    
		    	--if y == 21 	then
				--AI:SummonLevelMonsterByPos( 51710, 61, 100, x, y )
				--end
				if y == 30 	then
					AI:SummonLevelMonsterByPos( 51711, 61, 100, x, y )
				end
				--if y == 39 	then
					--AI:SummonLevelMonsterByPos( 51712, 61, 100, x, y )
				--end
				if y == 48 	then
					AI:SummonLevelMonsterByPos( 51713, 61, 100, x, y )
				end
				
				count = AI:GetArray( 1 )
				count = count + 1
				AI:SetArray( 1, count )
				if count == 7 	then
		    		step = step + 1
		    		AI:SetArray( 2, step )
		    		AI:SetTimer( 2, 2000, 1 )
		        	AI:SetArray( 1, 0 )
		    	end
			else
			    AI:SetTimer( 1, 5000, 1 )
			end
		    
   		end
   		
   		if nIndex == 1	then
			AI:Exit()
   		end	
   		
   		if nIndex == 2	then
			AI:SetTimer( 0, 1000, 7 )
   		end	
	
	end    

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		
		switch = AI:GetArray( 0 )
		if switch == 0	then
			AI:SetArray( 0, 1 )
        	AI:SetTimer( 0, 1000, 7 )
        end

 	end
 	
 	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)

	end