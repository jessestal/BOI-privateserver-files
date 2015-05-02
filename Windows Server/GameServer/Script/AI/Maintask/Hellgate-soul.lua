--	//****************************************
--	//
--	//		Copyright:PERFECT WORLD
--	//		Modified:2009/11/18
--	//		Author:??
--	//		TaskName:Hellgate-soul.lua
--	//		TaskID:???
--	//
--	//****************************************



function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
    			if nIndex == 0 then	
    					x = AI:GetArray(1)
    					x = x + 1
    					AI:SetArray(1,x)		
				end
		end
	
	function Event_Thinking(nAI)
    	local AI = GetMonsterAI(nAI)
				t = AI:HaveAttackTarget()
       					x = AI:GetArray(1) 	
       					talk = AI:GetArray(2)
       					
       					if x == 0 then
       							if talk == 0 then
       									AI:Say("I... can't...")
       									AI:SetTimer(0,3000,10)
     									AI:SetArray(2,1)		
     							end			
    					end
    					if x == 1 then
    							if talk == 1 then
       									AI:Say("... fail.")
     									AI:SetArray(2,2)
     							end
     					end	    									
     					if x == 2 then
    							if talk == 2 then
       									AI:Say("Impossible...")
     									AI:SetArray(2,3)
     							end
     					end   					
     					if x == 3 then
    							if talk == 3 then
       									AI:Say("You will pay for this!")
     									AI:SetArray(2,4)
     							end
     					end   					
     					if x == 4 then
    							if talk == 4 then
       									AI:Say("I will return!")
     									AI:SetArray(2,5)
     							end
     					end
     					if x == 5 then
     							if talk == 5 then
       									AI:SummonMonsterByPos(55031,104,162)     
   										AI:SummonMonsterByPos(55032,104,162)    											
   										AI:SummonMonsterByPos(55033,104,162)    											
   										AI:SummonMonsterByPos(55034,104,162)    											
   										AI:SummonMonsterByPos(55035,104,162)    											
   										AI:SummonMonsterByPos(55036,104,162)   
  										AI:SummonMonsterByPos(55037,104,162)      											
   										AI:SummonMonsterByPos(55038,104,162)  
     									AI:Exit()   	
   								end										 																				
     					end   					    					
     		end    	
	
		
		
		
		
	