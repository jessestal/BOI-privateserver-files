--	//****************************************
--	//
--	//		Copyright:PERFECT WORLD
--	//		Modified:2009/11/18
--	//		Author:??
--	//		TaskName:Hellgate-soul.lua
--	//		TaskID:?????2
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
    			if t == false then
    					AI:Exit()
    			else
       					x = AI:GetArray(1) 	
       					talk = AI:GetArray(2)
       					
       					if x == 0 then
       							if talk == 0 then
       									AI:Say("Time marches on...")
       									AI:SetTimer(0,3000,10)
     									AI:SetArray(2,1)		
     							end			
    					end
    					if x == 1 then
    							if talk == 1 then
       									AI:Say("A lost soul... reaching out...")
     									AI:SetArray(2,2)
     							end
     					end	    									
     					if x == 2 then
    							if talk == 2 then
       									AI:Say("A life... aching for change...")
     									AI:SetArray(2,3)
     							end
     					end   					
     					if x == 3 then
    							if talk == 3 then
       									AI:Say("Succumb, Nemo...")
     									AI:SetArray(2,4)
     							end
     					end   					
     					if x == 4 then
    							if talk == 4 then
       									AI:Say("Succumb...")
     									AI:SetArray(2,5)	
   								end										 																				
     					end   					    					
     			end    	
     	end	
		