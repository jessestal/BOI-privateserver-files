--  Copyright: PERFECT WORLD
--  Modified: 2009/11/13
--  Author: ???
--  Class: Lua
--  File Name: Falaao-51282.lua
--  Remarks: ?????

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    
        if nIndex == 0 then
        --??? 
            AI:Say("Transformation!")
            AI:ScreenText("Alter to no-harm things.",1) 
            AI:GetRandTarget()
            AI:AddSkill(8654,2)
            AI:UseSkill(8654,2)
        end
        
        if nIndex == 1 then
        --????+???? 
            AI:Say("Devil harp bounds!")
            AI:ScreenText("Seethe in despair, human! I will obliterate you!",1) 
            AI:AddSkill(8654,3)
            AI:UseSkill(8654,3)
            AI:SetTimer(2,5000,1)
        end
        
        if nIndex == 2 then
        --????
            AI:Say("Souls sigh!")
            AI:ScreenText("Go to hell, human.",1) 
            AI:AddSkill(8729,4)
            AI:UseSkill(8729,4)
        end
        
        if nIndex == 3 then
        --???? 
            n = AI:GetEnmityCount()
            if n > 1 then
            	HP = AI:GetHP()
            	HPMAX = AI:GetHPMax()
            	if HP > HPMAX * 0.6 then
            		AI:Say("Go do the trial! There is a way back to reality at the end of your judgment!")
            		AI:ScreenText("Go do the trial! There is a way back to reality at the end of your judgment!",2) 
            		mapid = AI:GetMapID()
            		random = math.random( 1 , n-1 )
            		
            		id = AI:GetPlayerIDByIndex( random )
             		AI:FlyPlayertoMap( id , mapid , 55 , 66 )
             	end
            end
        end 
        
        if nIndex == 4 then
        --???
            AI:Say("Stupid human, try your best to attack my Reflective Shield!")
            AI:ScreenText("The pain that Falia's Puppet suffered was felt by Falia!",1)
            AI:AddSkill(8708,2)
            AI:UseSkill(8708,2)
            monsterid = AI:SummonSingleMonster(51307)
            AI:SetArray(3,monsterid)
            AI:SetTimer( 5 , 30000 , 1 )
        end
        
        if nIndex == 5 then
        --???? 
            AI:Say("I can feel my puppet's pain!")
            monsterid = AI:GetArray(3)
            damage = AI:GetDamage(monsterid)
            
            --???????????????,??????????-30000
            nowhp = AI:GetHP()
            if damage >= nowhp then
            		damage = nowhp - 30000
            end
            
            if damage > 0 then
            	AI:ScreenText( "Falia, through the puppet's connection, "..tostring(damage).."is hurt" , 1 )
            
            	AI:LoseHPInstant(damage)
            end
        end
end


function Event_Thinking(nAI)
    	local AI = GetMonsterAI(nAI)
        
        v = AI:HaveAttackTarget()
        if v == false then
        	n = AI:GetEnmityCount()
        	if n < 1 then
        		AI:DelTimer(0)
        		AI:DelTimer(1)
        		AI:DelTimer(2)
        		AI:DelTimer(3)
        		AI:DelTimer(4)
        		AI:DelTimer(5)
        		AI:SetArray(1,0)
        		AI:SetArray(2,0)
        		AI:SetArray(3,0)
        		AI:RestoreHPInstant(10000000)
        	end
        end
        
                  
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
                    
        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("You saved Orpheus? You will pay for this!")
                AI:SetTimer(0,20000,65535)
                AI:SetTimer(3,20000,65535)
                --???? 
                AI:SetArray(1,1)
            end
        end
        
        if a == 1 then
            if HP < HPMAX * 0.9 then
                --AI:Say("Devil harp bounds!")
                --AI:ScreenText("Devil harp bounds!",1)
                AI:SetTimer(1,1000,1)
                AI:SetArray(1,2)
            end
        end
        
        if a == 2 then
            if HP < HPMAX * 0.8 then
                --AI:Say("Devil harp bounds!")
                --AI:ScreenText("Devil harp bounds!",1)
                AI:SetTimer(1,1000,1)
                AI:SetArray(1,3)
            end
        end
        
        if a == 3 then
            if HP < HPMAX * 0.75 then
                AI:Say("You've fallen into your own trap!")
                --AI:ScreenText("GUID:03136000019",1)
                
                AI:SetTimer( 4 , 60000 , 65535 )
                
                --?1???
                AI:AddSkill(8708,2)
            	AI:UseSkill(8708,2)
                monsterid = AI:SummonSingleMonster(51307)
            	AI:SetArray(3,monsterid)
            	AI:SetTimer( 5 , 30000 , 1 )
            	
                AI:SetArray(1,4)
            end
        end
        
        if a == 4 then
            if HP < HPMAX * 0.25 then
                --AI:Say("Devil harp bounds!")
                --AI:ScreenText("Devil harp bounds!",1)
                AI:SetTimer(1,1000,1)
                AI:SetArray(1,5)
            end
        end
        
        if a == 5 then
            if HP < HPMAX * 0.2 then
                AI:Say("As a god, I will not tolerate your actions!")
                AI:ScreenText("Harpy Queen Falia goes wild!",1)
                AI:DelTimer(3)
                AI:AddSkill(8871,2)
                AI:UseSkill(8871,2)
                AI:SetArray(1,6)
            end
        end
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
end       