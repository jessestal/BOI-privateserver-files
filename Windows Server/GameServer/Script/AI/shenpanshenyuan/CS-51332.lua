	--****************************************
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/07
	--		Author:???
	--		Class: Lua
	--		AIName:CS-51332.lua
	--		Backup:???
	--****************************************


	function Event_OnTimer(nAI,nIndex, nCount)
    	local AI = GetMonsterAI(nAI)
    	
    	--????TD????
    	if nIndex == 0 then
    		tdresult = AI:IsEctypeTdFailure()
    		if tdresult == true then
               		AI:SelfMurder()
    		end
    	end
	
	if nIndex == 1 then
       	--????
        	tdresult = AI:IsEctypeTdFailure()
        	if tdresult == false then
        		--AI:Say("GUID:03131000000")
                	--AI:ScreenText("GUID:03131000001",1)
                	--??????
                	x = AI:GetPosX()
    			y = AI:GetPosY()
    			
    			--?????????????
    			if (( x == 137 ) and ( y == 112 )) then
    			
    				AI:SummonMonsterByPos( 51342 , x , y )
    				
    				if nCount == 6 then
                			AI:SummonMonsterByPos( 51345 , x , y )
       				end
       		
       				if nCount == 12 then
                			AI:SummonMonsterByPos( 51345 , x , y )
       				end
       		
       				if nCount == 18 then
              	  			AI:SummonMonsterByPos( 51345 , x , y )
       				end	
    			end
    			
    			if (( x == 107 ) and ( y == 142 )) then
    				AI:SummonMonsterByPos( 51412 , x , y )
    				
    				if nCount == 6 then
                			AI:SummonMonsterByPos( 51415 , x , y )
       				end
       		
       				if nCount == 12 then
                			AI:SummonMonsterByPos( 51415 , x , y )
       				end
       		
       				if nCount == 18 then
              	  			AI:SummonMonsterByPos( 51415 , x , y )
       				end
    				
    			end
    			
    			if (( x == 77 ) and ( y == 112 )) then
    				AI:SummonMonsterByPos( 51422 , x , y )
    				
    				if nCount == 6 then
                			AI:SummonMonsterByPos( 51425 , x , y )
       				end
       		
       				if nCount == 12 then
                			AI:SummonMonsterByPos( 51425 , x , y )
       				end
       		
       				if nCount == 18 then
              	  			AI:SummonMonsterByPos( 51425 , x , y )
       				end
    				
    			end
    			
    			if (( x == 107 ) and ( y == 82 )) then
    				AI:SummonMonsterByPos( 51432 , x , y )
    				
    				if nCount == 6 then
                			AI:SummonMonsterByPos( 51435 , x , y )
       				end
       		
       				if nCount == 12 then
                			AI:SummonMonsterByPos( 51435 , x , y )
       				end
       		
       				if nCount == 18 then
              	  			AI:SummonMonsterByPos( 51435 , x , y )
       				end
    				
    			end
       		end
	end
	
	if nIndex == 2 then
		AI:SelfMurder()
	end
	
end

function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
        a = AI:GetArray(1)
        if a == 0 then
        	tdresult = AI:IsEctypeTdFailure()
        	if tdresult == true then
        		--AI:Say("GUID:03131000002")
                	--AI:ScreenText("GUID:03131000003",1)
                	--????TD??NPC
                	AI:SelfMurder()
        	else
        		--????TD????,???????
        		AI:SetTimer( 0 , 1000 , 65535 )
        		AI:SetTimer(1,3000,20)
        		AI:SetTimer(2,65000,1)
                	--AI:Say("GUID:03131000004")
                	--AI:ScreenText("GUID:03131000005",1)
                	AI:SetArray( 1 , 1 )
        	end
        end
end

function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
	
        AI:ScreenText("The 2nd Portals have disappeared, the next monsters will appear after 10 seconds!",2)
end