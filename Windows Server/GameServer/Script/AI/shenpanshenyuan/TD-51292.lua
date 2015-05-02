function Event_OnTimer(nAI,nIndex, nCount)
    	local AI = GetMonsterAI(nAI)
    	
    	--????TD????
    	if nIndex == 0 then
    		tdresult = AI:IsEctypeTdFailure()
    		if tdresult == true then
    			AI:Say( "TD fails!" )
               		AI:ScreenText("TD failed!")
               		AI:SelfMurder()
    		endif
    	end
    	
    	
        if nIndex == 1 then
       	--???? 
        	tdresult = AI:IsEctypeTdFailure()
        	if tdresult == false then
                	AI:SetTimer(2,6000,10)
        	end 
	end
	
	if nIndex == 2 then
       	--????
        	tdresult = AI:IsEctypeTdFailure()
        	if tdresult == false then
        		AI:Say("Monsters appear.")
                	AI:ScreenText("Continue to summon monsters!")
                	AI:SummonMonster(51293,2)
                	--?10??10????
        		if nCount == 10 then
        			AI:Say( "The portal will disappear, after 10 seconds a new one will appear.")
                		AI:ScreenText("The portal will disappear, after 11 seconds a new one will appear.")
        			AI:SetTimer(3,10000,1)
        		end
       		end
	end
	
	--??
	if nIndex == 3 then
		tdresult = AI:IsEctypeTdFailure()
        	if tdresult == false then
			AI:SummonMonsterByPos( 51294 , 107 , 304 )
			AI:SelfMurder()
        	end
	end
	
end

function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
        tdresult = AI:IsEctypeTdFailure()
        a = AI:GetArray(1)
        --9?????2????,6????,??15????
        if a == 0 then
        	if tdresult == true then
        		AI:Say("TD fails!")
                	AI:ScreenText("TD failed!")
                	--????TD??NPC
                	AI:SelfMurder()
        	else
        		--????TD????,???????
        		AI:SetTimer( 0 , 1000 , 65535 )
        		--??9?
        		AI:SetTimer( 1 , 9000 , 1 )
                	AI:Say("The 1st monsters will appear after 15 seconds.")
                	AI:ScreenText("The 1st monsters will appear after 15 seconds.")
                	AI:SetArray( 1 , 1 )
        	end
        end
end

function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
	
	AI:Say("The 1st Portal disappeared!")
        AI:ScreenText("The 1st Portal disappeared!")
end