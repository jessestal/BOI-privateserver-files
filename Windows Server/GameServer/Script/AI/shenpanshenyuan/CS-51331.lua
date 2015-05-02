			--****************************************
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/07
	--		Author:???
	--		Class: Lua
	--		AIName:CS-51331.lua
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
        		--AI:Say("GUID:03130000000")
                	--AI:ScreenText("GUID:03130000001",1)
                	--??????
                	x = AI:GetPosX()
    			y = AI:GetPosY()
                	AI:SummonMonsterByPos( 51341 , x , y )
                	
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
        		--AI:Say("GUID:03130000002")
                	--AI:ScreenText("GUID:03130000003",1)
                	--????TD??NPC
                	AI:SelfMurder()
        	else
        		--????TD????,???????
        		AI:SetTimer( 0 , 1000 , 65535 )
        		AI:SetTimer(1,3000,20)
        		AI:SetTimer(2,65000,1)
                	--AI:Say("GUID:03130000004")
                	--AI:ScreenText("GUID:03130000005",1)
                	AI:SetArray( 1 , 1 )
        	end
        end
end

function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
	
        AI:ScreenText("The 1st Portals have disappeared, the next monsters will appear after 10 seconds!",2)
end