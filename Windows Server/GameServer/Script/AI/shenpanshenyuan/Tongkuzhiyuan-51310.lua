--  Copyright: PERFECT WORLD
--  Modified: 2009/12/3
--  Author: ???
--  Class: Lua
--  File Name: Tongkuzhiyuan-51310.lua
--  Remarks: ???? 

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --?????
            AI:Say("Every vein of mine is engorged with my pain! ")
            AI:AddSkill(8881,3)
            AI:UseSkill(8881,3)
        end
        if nIndex == 1 then
        --?????? 
            AI:Say("The power of my resentment will tear you to pieces! ")
            --????,??????????? 
            n = AI:GetEnmityCount()
            random = math.random( 0 , n-1 )
            id = AI:GetPlayerIDByIndex( random )
            x = AI:GetPlayerX(id)
            y = AI:GetPlayerY(id)
            AI:SummonMonsterByPos(51312,x,y)
            AI:ScreenText("The Agony Well is summoning elemental Agony!",1)
        end
        if nIndex == 2 then
        --?????? 
            AI:Say("Rush! ")
            AI:GetRandTarget() 
            AI:AddSkill(8876,3)
            AI:UseSkill(8876,3)
        end
        if nIndex == 3 then
        --???? 
            AI:Say("You will feel my agony! ")
            AI:ScreenText("The Agony Well emits an aura of pain.",1)
            AI:SetTimer(4,1000,15)
        end
        if nIndex == 4 then
        --????  
            AI:AddSkill(8883,3)
            AI:UseSkill(8883,3)
        end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
t = AI:HaveAttackTarget()
    if t == false then
        --AI?? 
        n = AI:GetEnmityCount()
        if n < 1 then
            --????
            b = AI:GetArray(2)
            	if b == 0 then
            		AI:AddSkill(8887,5)
            		AI:UseSkill(8887,5)
            		AI:SetArray(2,1)
            	end
            AI:DelTimer(0)
            AI:DelTimer(1)
            AI:DelTimer(2)
            AI:DelTimer(3)
            AI:DelTimer(4)
            AI:SetArray(1,0)
        end
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
                    
        a = AI:GetArray(1)
        b = AI:GetArray(2)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("As humble as you appear before me now, you will be even more so when you die. I'm not a fool like Latamantis! ") 
                AI:SetTimer(0,45000,65535)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.8 then
                AI:Say("Let me show you my true colors. You wont feel pity! ")
                AI:ScreenText("The Agony Well recovered its body! ",1)
                --?? 
                AI:AddSkill(8887,4)
                AI:UseSkill(8887,4)
                AI:SetTimer(1,115000,65535)
                
                --????,??????????? 
                n = AI:GetEnmityCount()
                random = math.random( 0 , n-1 )
                id = AI:GetPlayerIDByIndex( random )
                x = AI:GetPlayerX(id)
                y = AI:GetPlayerY(id)
                AI:SummonMonsterByPos(51312,x,y)
                AI:ScreenText("The Agony Well is summoning elemental Agony!",1)
                
                --?? 
                AI:SetTimer(2,70000,65535)
                AI:SetArray(1,2)
                AI:SetArray(2,0)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.75 then
                AI:Say("Must you continue to waste my time?  I have had enough!")
                --?????? 
                AI:ScreenText("The Agony Well emits an aura of pain.",1)
                AI:SetTimer(4,1000,15)
                AI:SetArray(1,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.5 then
                AI:Say("Must you continue to waste my time?  I have had enough!")
                --?????? 
                AI:ScreenText("The Agony Well emits an aura of pain.",1)
                AI:SetTimer(4,1000,15)
                AI:SetArray(1,4)
            end
        end
        if a == 4 then
            if HP < HPMAX * 0.25 then
                AI:Say("Must you continue to waste my time?  I have had enough!")
                --?????? 
                AI:ScreenText("The Agony Well emits an aura of pain.",1)
                AI:SetTimer(4,1000,15)
                AI:SetArray(1,5)
            end
        end
        if a == 5 then
            if HP < HPMAX * 0.2 then
                AI:DelTimer(1)
                AI:DelTimer(3)
                AI:Say("I must admit that you really angered me!")
                AI:ScreenText("The Agony Well is in a frenzy! ",1)
                --??
                AI:AddSkill(8871,12)
                AI:UseSkill(8871,12)
                AI:SetArray(1,6)
            end
        end 
		end
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
        AI:Say("I...still...cannot escape the pain...")
end       