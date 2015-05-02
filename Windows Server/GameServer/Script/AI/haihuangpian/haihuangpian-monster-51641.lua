--  Copyright: PERFECT WORLD
--  Modified: 2010/3/1
--  Author: ???
--  Class: Lua
--  File Name: haihuangpian-monster-51641.lua
--  Remarks: ???


function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --???? 
            --AI:Say("GUID:02798000000")
            AI:AddSkill(2034,1)
            AI:UseSkill(2034,1)
            AI:SetTimer( 1 , 30000 , 1 )
        end
        if nIndex == 1 then
        --???? 
            --AI:Say("GUID:02798000001")
            AI:AddSkill(2035,1)
            AI:UseSkill(2035,1)
            AI:SetTimer( 0 , 30000 , 1 )
        end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
   	
    v = AI:HaveAttackTarget()
        if v == false then
        	AI:DelTimer(0)
        	AI:DelTimer(1)
        	AI:SetArray(1,0)
        else
         
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
                    
        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                --????,?????? 
                AI:Say("Foolish human! You dare step foot into Poseidon's realm?!")
                --??2??????
                AI:SetTimer(0,30000,1)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.75 then
                --?????? 
                AI:Say("Witness the power of the God of the Sea!")
                AI:AddStatus( -1 , 6020 , 1 )
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.5 then
                --?????? 
                AI:Say("You dare challenge a god?!")
                AI:AddStatus( -1 , 6021 , 1 )
                AI:SetArray(1,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.25 then
                --?????? 
                AI:Say("You will drown in your own arrogance!")
                AI:AddStatus( -1 , 6022 , 1 )
                AI:SetArray(1,4)
            end
        end
        
        end
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
end  