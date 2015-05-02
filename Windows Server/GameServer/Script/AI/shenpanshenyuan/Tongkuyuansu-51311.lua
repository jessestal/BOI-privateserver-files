--  Copyright: PERFECT WORLD
--  Modified: 2009/12/11
--  Author: ???
--  Class: Lua
--  File Name: Tongkuyuansu-51311.lua
--  Remarks: ????

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --?? 
            AI:Say("Agony Banish")
            AI:AddSkill(8882,3)
            AI:UseSkill(8882,3)
        end
        if nIndex == 1 then
        --??
            AI:SelfMurder()
        end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
t = AI:HaveAttackTarget()
    if t == false then
        --AI?? 
        n = AI:GetEnmityCount()
        if n < 1 then
            AI:DelTimer(0)
            AI:DelTimer(1)
            AI:SetArray(1,0)
        end
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
                    
        a = AI:GetArray(1)
        if a == 0 then
            AI:SetTimer(0,3000,65535)
            AI:SetTimer(1,120000,1)
            AI:SetArray(1,1)
        end
    end
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
end       
