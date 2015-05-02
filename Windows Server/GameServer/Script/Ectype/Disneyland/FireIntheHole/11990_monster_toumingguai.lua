        --------------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2012/11/10
	--		Author:??? 
	--		Class: Lua
	--		AIName:11990_monster_toumingguai.lua
	--		Backup:????? AI
	---------------------------------------------        
    function Event_OnTimer(nAI, nIndex, nCount)
    	local AI = GetMonsterAI(nAI)	
    	
    	if nIndex == 1 then
    		local a = AI:GetArray(0)
    		if a == 1	then
    			AI:ScreenText("Welcome to the Pyramid Sealed Chamber!",2)
    			AI:Say("Welcome to the Pyramid Sealed Chamber!")
    			AI:SetArray(0,2)
    		end
    		if a == 2 then
    			AI:ScreenText("The Pharaoh Sarcophagus kept here can revive mummies.",2)
    			AI:Say("The Pharaoh Sarcophagus kept here can revive mummies.")
    			AI:SetArray(0,3)
    		end  
     		if a == 3 then
    			AI:ScreenText("There are 3 kinds of Pharoah Sarcophagus. Starting from the left they are: Noble Sarcophagus, Royal Sarcophagus, and Pharoah Sarcophagus.",2)
    			AI:Say("There are 3 kinds of Pharoah Sarcophagus. Starting from the left they are: Noble Sarcophagus, Royal Sarcophagus, and Pharoah Sarcophagus.")
    			AI:SummonMonsterByPos(11991,144,160,1)
    			AI:SummonMonsterByPos(11992,151,160,1)
    			AI:SummonMonsterByPos(11993,158,160,1)
    			AI:SetArray(0,4)
    		end 
    		if a == 4 then
    			AI:ScreenText("Mummies will get out from the coffins in 5 seconds. Please use the item Time Bomb around the Sarcophagus.",2)
    			AI:Say("Mummies will get out from the coffins in 5 seconds. Please use the item Time Bomb around the Sarcophagus.")
    			AI:SetArray(0,5)
    		end
    		if a == 5 then
    			AI:ScreenText("It costs 1 bomb around the Noble Sarcophagus, 3 bombs around the Royal Sarcophagus, and 5 bombs around the Pharoah Sarcophagus.",2)
    			AI:Say("It costs 1 bomb around the Noble Sarcophagus, 3 bombs around the Royal Sarcophagus, and 5 bombs around the Pharoah Sarcophagus.")
    			AI:SetArray(0,6)
    		end
    		if a == 6 then
    			AI:ScreenText("Since the time is limited, you should deal with the advanced Sarcophagus first.",2)
    			AI:Say("Since the time is limited, you should deal with the advanced Sarcophagus first.")
    			AI:SetArray(0,7)
    		end
    		if a == 7 then
    			AI:ScreenText("The Sarcophagus will appear in 12 locations in the Pyramid Sealed Chamber.",2)
    			AI:Say("The Sarcophagus will appear in 12 locations in the Pyramid Sealed Chamber.")
    			AI:SetArray(0,8)
    		end 
    		if a == 8 then
    			AI:ScreenText("It will appear within this octagon randomly.",2)
    			AI:Say("It will appear within this octagon randomly.")
    			AI:SummonMonsterByPos(11991,148,137,1)
   				AI:SummonMonsterByPos(11991,155,137,1)
   				AI:SummonMonsterByPos(11991,138,148,1)
   				AI:SummonMonsterByPos(11991,148,148,1)
    			AI:SummonMonsterByPos(11991,155,148,1)
   				AI:SummonMonsterByPos(11991,163,148,1)
   				AI:SummonMonsterByPos(11991,138,156,1)
   				AI:SummonMonsterByPos(11991,148,156,1)
    			AI:SummonMonsterByPos(11991,155,156,1)
   				AI:SummonMonsterByPos(11991,163,156,1)
   				AI:SummonMonsterByPos(11991,148,165,1)
   				AI:SummonMonsterByPos(11991,155,165,1)  
   				AI:SetArray(0,9)  		
    		end
    		if a == 9 then
    			AI:ScreenText("Try to blow up as many mummies as you can with the use of the Time Bombs.",2)
    			AI:Say("Try to blow up as many mummies as you can with the use of the Time Bombs.")
    			AI:SetArray(0,10)
    		end   
    		if a == 10 then
    			AI:ScreenText("Try to blow up as many mummies as you can with the use of the Time Bombs.",2)
    			AI:Say("Try to blow up as many mummies as you can with the use of the Time Bombs.")
    			AI:SetArray(0,11)
    		end       		 		    		
    		if a == 11 then
    			AI:ScreenText("10 waves of monsters will come.",2)
    			AI:Say("10 waves of monsters will come.")
    			AI:SetArray(0,12)
    		end  
    		if a == 12 then
    			AI:ScreenText("There will be 10 waves of monsters in total. After eliminating all these monsters, the instance is completed.",2)
    			AI:Say("There will be 10 waves of monsters in total. After eliminating all these monsters, the instance is completed.")
    			AI:SetArray(0,13)
    			AI:Exit()
    		end  
    	end   		  		     		   		    		     		     		  			
    			

end	
    	
    	
    function Event_Thinking(nAI)
    	local AI = GetMonsterAI(nAI)
    	local mapid = AI:GetMapID()
        
      local a = AI:GetArray(0)   
      	
      if a == 0 then
      	AI:SetTimer(1,5500,12)
      	AI:SetArray(1,1)
      end	


end	
    
    function Event_OnDead(nAI)
			local AI = GetMonsterAI(nAI)
			
			
end			    
					
				
		
	
                                                                               