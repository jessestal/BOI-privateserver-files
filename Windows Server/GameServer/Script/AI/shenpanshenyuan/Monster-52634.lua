--  Copyright: PERFECT WORLD
--  Modified: 2009/11/14
--  Author: ???
--  Class: Lua
--  File Name: Monster-52634.lua
--  Remarks: ???????


function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --???? 
            AI:Say("Dark power!")
            AI:AddSkill(8708,4)
            AI:UseSkill(8708,4)
        end
        if nIndex == 1 then
        --???? 
            id = AI:GetArray(3)
            if id < 0 then
            	hp = AI:GetMonsterHP(id)
            	if hp > 0 then
            		AI:Say("Taste my wrath, human!")
            		AI:AddSkill(8729,5)
            		AI:UseSkill(8729,5)
            	end
            end
        end
        
        if nIndex == 2 then
        --?? 
      		t = AI:HaveAttackTarget()
   				if t == false then
        			AI:DelTimer(0)
        			AI:DelTimer(1)
        			
    					n = AI:GetEnmityCount()
        			if n < 1 then
        				AI:DelTimer(0)
        				AI:DelTimer(1)    
      					AI:SelfMurder()
        			end
        	end
      	end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
        
        
        b = AI:GetArray(2)
        if b == 0 then
        	AI:SetTimer(2,5000,65535)
        	AI:SetArray(2,1)
        end

        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
                    
        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                --????,?????? 
                AI:Say("This new power is... overwhelming! Accept your failure!")
                AI:AddSkill(8708,4)
            		AI:UseSkill(8708,4)
                AI:SetTimer(0,40000,65535)
                AI:SetArray(1,1)
            end
        end
        
        if a == 1 then
            if HP < HPMAX * 0.8 then 
                --?????? 
                AI:ScreenText("Dark Latamantis is gathering power! If you don't kill Hard-bitten Soul, you'll get damage that equals to 50% of your HP!",1)
                AI:Say("Feel my power of darkness! If you don't kill Hard-bitten Soul, you'll get damage that equals to 50% of your HP!")
                id = AI:SummonSingleMonster(51309)
                AI:SetArray(3,id)
                AI:SetTimer(1,10000,1)
                AI:SetArray(1,2)
            end
        end

        if a == 2 then
            if HP < HPMAX * 0.5 then 
                --?????? 
                AI:ScreenText("Dark Latamantis is gathering power! If you don't kill Hard-bitten Soul, you'll get damage that equals to 50% of your HP!",1)
                AI:Say("Feel my power of darkness! If you don't kill Hard-bitten Soul, you'll get damage that equals to 50% of your HP!")
                id = AI:SummonSingleMonster(51309)
                AI:SetArray(3,id)
                AI:SetTimer(1,10000,1)
                AI:SetArray(1,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.2 then 
                --?????? 
                AI:ScreenText("Dark Latamantis is gathering power! If you don't kill Hard-bitten Soul, you'll get damage that equals to 50% of your HP!",1)
                AI:Say("Feel my power of darkness! If you don't kill Hard-bitten Soul, you'll get damage that equals to 50% of your HP!")
                id = AI:SummonSingleMonster(51309)
                AI:SetArray(3,id)
                AI:SetTimer(1,10000,1)
                AI:SetArray(1,4)
            end
        end
        if a == 4 then
            if HP < HPMAX * 0.1 then
                AI:Say("I must fulfill my ambition! The endless darkness will consume you!")
                AI:ScreenText("Dark Latamantis becomes wild.",1)
                AI:SetArray(1,5)
            end
        end
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
        AI:ScreenText("Because the darkness disappeared, Light Latamantis has lost power.",1)
end  