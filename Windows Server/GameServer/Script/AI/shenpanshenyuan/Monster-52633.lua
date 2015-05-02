--  Copyright: PERFECT WORLD
--  Modified: 2009/11/14
--  Author: ???
--  Class: Lua
--  File Name: Monster-52633.lua
--  Remarks: ???????

function Event_OnTimer(nAI,nIndex, nCount)
  	local AI = GetMonsterAI(nAI)
    
  	dark = AI:GetArray(3)
    
        if nIndex == 0 then
        --???? 
            AI:Say("Bright power!")
            AI:AddSkill(8708,3)
            AI:UseSkill(8708,3)
        end
        
--        if nIndex == 1 then
--        --????
--            if dark < 0 then
--            	d = AI:GetDistance(dark)
--            	if d < 40 then
--                	--????10??????? 
--                	AI:ScreenText("GUID:03147000001",1)
--                	AI:Say("GUID:03147000002")
--                	AI:AddSkill(8729,6)
--                	AI:UseSkill(8729,6)
--            	end
--            	if d > 120 then
--                	--????30??????? 
--                	AI:ScreenText("GUID:03147000003",1)
--                	AI:Say("GUID:03147000004")
--                	AI:AddSkill(8729,6)
--                	AI:UseSkill(8729,6)
--            	end
--            end
--        end
        
--        if nIndex == 2 then
--            if dark < 0 then
--            	--???? 
--           	 d = AI:GetDistance(dark)
--            	if d < 40 then
--                	--????10??????? 
--                	AI:ScreenText("GUID:03147000005",1)
--            	end
--            	if d > 120 then
--                	--????30??????? 
--                	AI:ScreenText("GUID:03147000006",1)
--            	end
--            end
--        end
        
        
        if nIndex == 3 then
            --AI:Say( tostring(dark) )
            
            --??
            n = AI:GetEnmityCount()
            
            --???? 
            if dark < 0 then
            	darkhp = AI:GetMonsterHP(dark)
            	--AI:Say( tostring(darkhp) )
            	if darkhp == 0 then
            		AI:Say("My dark side will be defeated.")
			AI:ScreenText("Because darkness disappeared, Light Latamantis enters an invincible state!",1)
			AI:AddSkill(9817,2)
             		AI:UseSkill(9817,2)
             		--??id?0
             		AI:SetArray(3,0)
            	end
            end
        end
end

function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)
    	
    	
    	v = AI:HaveAttackTarget()
        if v == false then
    		n = AI:GetEnmityCount()
        	if n < 1 then
        		a = AI:GetArray(1)
        		if a ~= 0 then
        			AI:AddSkill(9817,2)
            			AI:UseSkill(9817,2)
        		end
        		AI:DelTimer(0)
        		AI:DelTimer(1)
        		AI:DelTimer(2)
        		AI:DelTimer(3)
        		AI:SetArray(1,0)
        		AI:SetArray(2,0)
        		AI:SetArray(3,0)
        		AI:RestoreHPInstant(10000000)
        	end
        end
    	
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
                        
        a = AI:GetArray(1)
        dark = AI:GetArray(3)
        
        if a == 0 then
            if HP < HPMAX then
                --????,?????? 
                AI:Say("You prevented the judgment ceremony. Your encouragement makes me admire you. Let me see your capability.")
                AI:AddSkill(8708,3)
            	AI:UseSkill(8708,3)
            	
                AI:SetTimer(0,40000,65535)
--                AI:SetTimer(2,10000,65535)
--                AI:SetTimer(1,15000,65535)
                AI:SetTimer(3,5000,65535)
                AI:SetArray(1,1)
            end
        end
        
        
        if a == 1 then
            if HP < HPMAX * 0.75 then
                AI:Say("I can't control the darkness in my heart. Take heed, human, and welcome the brutality.")
--                dark = AI:SummonSingleMonster(51284)
                AI:SetArray(3,dark)
                --???? 
--                AI:ScreenText("As long as darkness exists, Light Latamantis will remain in an invincible state.",1)
--                AI:AddSkill(9817,1)
--                AI:UseSkill(9817,1) 
                AI:SetArray(1,2)
            end
        end
        
        if a == 2 then
            if HP < HPMAX * 0.5 then
                AI:Say("I can't control the darkness in my heart. Take heed, human, and welcome the brutality.")
                dark = AI:SummonSingleMonster(51284)
                AI:SetArray(3,dark)
                --???? 
                AI:ScreenText("As long as darkness exists, Light Latamantis will remain in an invincible state.",1)
                AI:AddSkill(9817,1)
                AI:UseSkill(9817,1) 
                AI:SetArray(1,3)
            end
        end
        
        
        if a == 3 then
            if HP < HPMAX * 0.25 then
                AI:Say("I can't control the darkness in my heart. Take heed, human, and welcome the brutality.")
--                dark = AI:SummonSingleMonster(51284)
                AI:SetArray(3,dark)
                --???? 
--                AI:ScreenText("As long as darkness exists, Light Latamantis will remain in an invincible state.",1)
--               AI:AddSkill(9817,1)
--                AI:UseSkill(9817,1) 
                AI:SetArray(1,4)
            end
        end
        
        
        if a == 4 then
            if HP < HPMAX * 0.2 then
                AI:Say("You even defeated the darkness which existed in my heart for millions of years. I am saddened to see it disappear.")
                AI:ScreenText("Light Latamantis becomes wild!",1)
                AI:AddSkill(8871,3)
                AI:UseSkill(8871,3)
                AI:SetArray(1,5)
            end
        end
        
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
end  
 