        --------------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2009/11/13
	--		Author:?? 
	--		Class: Lua
	--		AIName:shenpanshenyuan-51302.lua
	--		Backup:
	---------------------------------------------        
    --????ADD???? 
    function Event_OnTimer(nAI, nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --???????? 
            AI:ScreenText("Magic Ball appeared! ",1)
        end
        if nIndex == 1 then
        --????
            x = AI:GetTargetDistance()
            if x < 5 then
                AI:AddSkill(8861,10)
                AI:UseSkill(8861,10)
            end
            
            if x > 12 then
                AI:AddSkill(8861,8)
                AI:UseSkill(8861,8)
            end
            
            if x >= 5 then
            	if x <=12 then
                	AI:AddSkill(8861,9)
                	AI:UseSkill(8861,9)
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
                	AI:DelTimer(1)
                	AI:SetArray(1,0)
                end
            else
            	a = AI:GetArray(1)
            	if a == 0 then
                	AI:SetTimer(0,1000,1)
                	AI:SetTimer(1,5000,65535)
                	AI:SetArray(1,1)
            	end
            end
    end              
    
    
    function Event_OnDead(nAI)
	    local AI = GetMonsterAI(nAI)
    end                                                          