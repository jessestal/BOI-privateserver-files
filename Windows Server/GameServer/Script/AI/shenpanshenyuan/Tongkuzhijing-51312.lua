--  Copyright: PERFECT WORLD
--  Modified: 2009/12/11
--  Author: Îº¶«Ô°
--  Class: Lua
--  File Name: Tongkuzhijing-51312.lua
--  Remarks: Í´¿àÖ®¾®

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --ÕÙ»½Í´¿àÔªËØ
            x = AI:GetPosX()
            y = AI:GetPosY()
            AI:SummonMonsterByPos(51311,x,y) 
        end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    
    a = AI:GetArray(1)
        if a == 0 then
            AI:SetTimer(0,5000,1)
            AI:SetArray(1,1)
        end
end