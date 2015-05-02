--???? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
--    if nIndex == 0 then
--        --??????? 
--        level = AI:GetLevel()
--        map = AI:GetMapID()
--        x = AI:GetPosX()
--        y = AI:GetPosY()
--        if map ~= 475 then
--            
--                AI:Say("GUID:02770000000")
--                AI:SummonLevelMonsterByPos(32182, 75, level, x+3, y )
--                AI:SummonLevelMonsterByPos(32182, 75, level, x, y+3 )
--           
--        end 
--    end
--    
--    if nIndex == 1 then
--        --????id 
--        map = AI:GetMapID()
--        b = AI:GetArray(2)
--        if map ~= 475 then
--            
--            		if b == 0 then
--                		AI:SetTimer(0 , 20000, 1)
--                		AI:SetTimer(2 , 80000, 1)
--                		AI:SetTimer(3 , 140000, 1)
--                		AI:SetTimer(4 , 240000, 1)
--                		AI:SetArray(2,1)
--                end
--           
--        end
--    end
--    
--    if nIndex == 2 then
--        --??????? 
--        level = AI:GetLevel()
--        map = AI:GetMapID()
--        x = AI:GetPosX()
--        y = AI:GetPosY()
--        if map ~= 475 then
--            
--                AI:Say("GUID:02770000001")
--                AI:SummonLevelMonsterByPos(32182, 75, level, x+3, y )
--                AI:SummonLevelMonsterByPos(32182, 75, level, x, y+3 )
--                AI:SummonLevelMonsterByPos(32182, 75, level, x+3, y+3 )
--            
--        end 
--    end
--    
--    if nIndex == 3 then
--        --??????? 
--        level = AI:GetLevel()
--        map = AI:GetMapID()
--        x = AI:GetPosX()
--        y = AI:GetPosY()
--        if map ~= 475 then
--            
--                AI:Say("GUID:02770000002")
--                AI:SummonLevelMonsterByPos(32182, 75, level, x+3, y )
--                AI:SummonLevelMonsterByPos(32182, 75, level, x, y+3 )
--                AI:SummonLevelMonsterByPos(32182, 75, level, x+3, y+3 )
--                AI:SummonLevelMonsterByPos(32182, 75, level, x-3, y )
--                AI:SummonLevelMonsterByPos(32182, 75, level, x, y-3 )
--            
--        end 
--    end
--    
--    if nIndex == 4 then
--        --??????? 
--        level = AI:GetLevel()
--        map = AI:GetMapID()
--        x = AI:GetPosX()
--        y = AI:GetPosY()
--        if map ~= 475 then
--            
--                AI:Say("GUID:02770000003")
--                AI:SummonLevelMonsterByPos(32182, 75, level, x+3, y )
--                AI:SummonLevelMonsterByPos(32182, 75, level, x, y+3 )
--                AI:SummonLevelMonsterByPos(32182, 75, level, x+3, y+3 )
--                AI:SummonLevelMonsterByPos(32182, 75, level, x-3, y )
--                AI:SummonLevelMonsterByPos(32182, 75, level, x, y-3 )
--            
--        end 
--    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()

        a = AI:GetArray(1)
        if a == 0 then
            AI:Say("Its a long trip with many dangers.")
--            AI:SetTimer(1,4000,65535)
--            AI:SetArray(2,0)
            AI:SetArray(1,1)
        end
end 
  