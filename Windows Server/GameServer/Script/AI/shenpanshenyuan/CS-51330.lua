	--****************************************
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/07
	--		Author:???
	--		Class: Lua
	--		AIName:CS-51330.lua
	--		Backup:TD?????
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
    	
    	--10????1????
        if nIndex == 1 then
       	--???? 
        	tdresult = AI:IsEctypeTdFailure()
        	if tdresult == false then
        		--?????????
                	AI:SummonMonsterByPos( 51331 , 137 , 112 )
                	AI:ScreenText("The 1st Portals have appeared in the East!",2)
        	end 
	end
	
	--?2?
	if nIndex == 2 then
		tdresult = AI:IsEctypeTdFailure()
        	if tdresult == false then
        		--???,?,? 3???????
        		x = AI:GetRand( 99 )
        		if (( x >= 0 ) and ( x < 33 )) then
        			--??
      				AI:SummonMonsterByPos( 51332 , 107 , 82 )
                		AI:ScreenText("The 2nd Portals have appeared in the North!",2)
        		end
        		
        		if (( x >= 33 ) and ( x < 66 )) then
        			--??
        			AI:SummonMonsterByPos( 51332 , 107 , 142 )
                		AI:ScreenText("The 2nd Portals have appeared in the South!",2)
        		end
        		
        		if (( x >= 66 ) and ( x < 100 )) then
        			--??
        			AI:SummonMonsterByPos( 51332 , 77 , 112 )
                		AI:ScreenText("The 2nd Portals have appeared in the West!",2)
        		end
        	end
	end
	
	
	--?3?
	if nIndex == 3 then
		tdresult = AI:IsEctypeTdFailure()
        	if tdresult == false then
        		--???,?,?,? 4???????
        		x = AI:GetRand( 119 )
        		if (( x >= 0 ) and ( x < 10 )) then
        			--?,?
      				AI:SummonMonsterByPos( 51333 , 107 , 82 )
      				AI:SummonMonsterByPos( 51334 , 107 , 142 )
      				AI:ScreenText("The 3rd Portals have appeared in the North and South!",2)
        		end
        		
        		if (( x >= 10 ) and ( x < 20 )) then
        			--?,?
      				AI:SummonMonsterByPos( 51333 , 107 , 82 )
      				AI:SummonMonsterByPos( 51334 , 77 , 112 )
      				AI:ScreenText("The 3rd Portals have appeared in the North and West!",2)
        		end
        		
        		if (( x >= 20 ) and ( x < 30 )) then
        			--?,?
      				AI:SummonMonsterByPos( 51333 , 107 , 82 )
      				AI:SummonMonsterByPos( 51334 , 137 , 112 )
      				AI:ScreenText("The 3rd Portals have appeared in the North and East!",2)
        		end
        		
        		if (( x >= 30 ) and ( x < 40 )) then
        			--?,?
      				AI:SummonMonsterByPos( 51333 , 107 , 142 )
      				AI:SummonMonsterByPos( 51334 , 107 , 82 )
      				AI:ScreenText("The 3rd Portals have appeared in the South and North!",2)
        		end
        		
        		if (( x >= 40 ) and ( x < 50 )) then
        			--?,?
      				AI:SummonMonsterByPos( 51333 , 107 , 142 )
      				AI:SummonMonsterByPos( 51334 , 77 , 112 )
      				AI:ScreenText("The 3rd Portals have appeared in the South and West!",2)
        		end
        		
        		if (( x >= 50 ) and ( x < 60 )) then
        			--?,?
      				AI:SummonMonsterByPos( 51333 , 107 , 142 )
      				AI:SummonMonsterByPos( 51334 , 137 , 112 )
      				AI:ScreenText("The 3rd Portals have appeared in the South and East!",2)
        		end
        		
        		if (( x >= 60 ) and ( x < 70 )) then
        			--?,?
      				AI:SummonMonsterByPos( 51333 , 77 , 112 )
      				AI:SummonMonsterByPos( 51334 , 107 , 82 )
      				AI:ScreenText("The 3rd Portals have appeared in the West and North!",2)
        		end
        		
        		if (( x >= 70 ) and ( x < 80 )) then
        			--?,?
      				AI:SummonMonsterByPos( 51333 , 77 , 112 )
      				AI:SummonMonsterByPos( 51334 , 107 , 142 )
      				AI:ScreenText("The 3rd Portals have appeared in the West and South!",2)
        		end
        		
        		if (( x >= 80 ) and ( x < 90 )) then
        			--?,?
      				AI:SummonMonsterByPos( 51333 , 77 , 112 )
      				AI:SummonMonsterByPos( 51334 , 137 , 112 )
      				AI:ScreenText("The 3rd Portals have appeared in the West and East!",2)
        		end
        		
        		if (( x >= 90 ) and ( x < 100 )) then
        			--?,?
      				AI:SummonMonsterByPos( 51333 , 137 , 112 )
      				AI:SummonMonsterByPos( 51334 , 107 , 82 )
      				AI:ScreenText("The 3rd Portals have appeared in the East and North!",2)
        		end
        		
        		if (( x >= 100 ) and ( x < 110 )) then
        			--?,?
      				AI:SummonMonsterByPos( 51333 , 137 , 112 )
      				AI:SummonMonsterByPos( 51334 , 107 , 142 )
      				AI:ScreenText("The 3rd Portals have appeared in the East and South!",2)
        		end
        		
        		if (( x >= 110 ) and ( x < 120 )) then
        			--?,?
      				AI:SummonMonsterByPos( 51333 , 137 , 112 )
      				AI:SummonMonsterByPos( 51334 , 77 , 112 )
      				AI:ScreenText("The 3rd Portals have appeared in the East and West!",2)
        		end
        	end
	end
	
	
	--?4?
	if nIndex == 4 then
		tdresult = AI:IsEctypeTdFailure()
        	if tdresult == false then
        		--???,?,? 3???????
        		x = AI:GetRand( 99 )
        		if (( x >= 0 ) and ( x < 25 )) then
        			--??
      				AI:SummonMonsterByPos( 51335 , 107 , 142 )
      				AI:SummonMonsterByPos( 51335 , 77 , 112 )
      				AI:SummonMonsterByPos( 51335 , 107 , 82 )
                		AI:ScreenText("The 4th Portals have appeared in the South, West and North!",2)
        		end
        		
        		if (( x >= 25 ) and ( x < 50 )) then
        			--??
        			AI:SummonMonsterByPos( 51335 , 137 , 112 )
      				AI:SummonMonsterByPos( 51335 , 107 , 142 )
      				AI:SummonMonsterByPos( 51335 , 107 , 82 )
                		AI:ScreenText("The 4th Portals have appeared in the East, South and North!",2)
        		end
        		
        		if (( x >= 50 ) and ( x < 75 )) then
        			--??
        			AI:SummonMonsterByPos( 51335 , 137 , 112 )
      				AI:SummonMonsterByPos( 51335 , 77 , 112 )
      				AI:SummonMonsterByPos( 51335 , 107 , 82 )
                		AI:ScreenText("The 4th Portals have appeared in the East, West and North!",2)
        		end
        		
        		if (( x >= 75 ) and ( x < 100 )) then
        			--??
        			AI:SummonMonsterByPos( 51335 , 137 , 112 )
      				AI:SummonMonsterByPos( 51335 , 107 , 142 )
      				AI:SummonMonsterByPos( 51335 , 77 , 112 )
                		AI:ScreenText("The 4th Portals have appeared in the East, South and West!",2)
        		end
        	end
	end
	
	
	--?5?
	if nIndex == 5 then
		tdresult = AI:IsEctypeTdFailure()
        	if tdresult == false then
        		--4?????
			AI:SummonMonsterByPos( 51336 , 137 , 112 )
			AI:SummonMonsterByPos( 51336 , 107 , 142 )
			AI:SummonMonsterByPos( 51336 , 77 , 112 )
			AI:SummonMonsterByPos( 51336 , 107 , 82 )
                	AI:ScreenText("The 5th Portals have appeared in all four directions at the same time!",2)
        	end
	end
	
	--?6?
	if nIndex == 6 then
		tdresult = AI:IsEctypeTdFailure()
		if tdresult == false then
			x = AI:GetRand( 99 )
        		if (( x >= 0 ) and ( x < 25 )) then
        			--??
      				AI:SummonMonsterByPos( 51344 , 137 , 112 )
                		AI:ScreenText("The elite minion Latamantis has appeared in the East!",2)
        		end
        		
        		if (( x >= 25 ) and ( x < 50 )) then
        			--??
        			AI:SummonMonsterByPos( 51414 , 107 , 142 )
                		AI:ScreenText("The elite minion Latamantis has appeared in the South!",2)
        		end
        		
        		if (( x >= 50 ) and ( x < 75 )) then
        			--??
        			AI:SummonMonsterByPos( 51424 , 77 , 112 )
                		AI:ScreenText("The elite minion Latamantis has appeared in the West!",2)
        		end
        		
        		if (( x >= 75 ) and ( x < 100 )) then
        			--??
        			AI:SummonMonsterByPos( 51434 , 107 , 82 )
                		AI:ScreenText("The elite minion Latamantis has appeared in the North!",2)
        		end
			
		end
	end
	
	
end

function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
        a = AI:GetArray(1)
        --9?????2????,6????,??15????
        if a == 0 then
        	tdresult = AI:IsEctypeTdFailure()
        	if tdresult == true then
        		--AI:Say("GUID:03129000025")
                	--AI:ScreenText("GUID:03129000026",1)
                	--????TD??NPC
                	AI:SelfMurder()
        	else
        		--????TD????,???????
        		AI:SetTimer( 0 , 1000 , 65535 )
        		--??5????,?5??????
        		AI:SetTimer( 1 , 500 , 1 )
                	AI:SetTimer( 2 , 80000 , 1 )
                	AI:SetTimer( 3 , 150000 , 1 )
                	AI:SetTimer( 4 , 240000 , 1 )
                	AI:SetTimer( 5 , 360000 , 1 )
                	AI:SetTimer( 6 , 490000 , 1 )
                	
                	AI:SetArray( 1 , 1 )
        	end
        end
end

function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
end