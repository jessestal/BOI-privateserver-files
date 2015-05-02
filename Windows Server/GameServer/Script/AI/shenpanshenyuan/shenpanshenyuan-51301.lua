        --------------------------------------------
	--
	--		Copyright：PERFECT WORLD
	--		Modified：2009/11/13
	--		Author：唐寅 
	--		Class: Lua
	--		AIName：shenpanshenyuan-51301.lua
	--		Backup：
	---------------------------------------------        
    --冥界魔龙ADD魔能之环 
    function Event_OnTimer(nAI, nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        
        if nIndex == 0 then
        --魔能之环 
            AI:AddSkill(8861,11)
            AI:UseSkill(8861,11)
        end
        
        if nIndex == 1 then
        --自杀
            AI:SelfMurder()          
        end
    end    

    function Event_Thinking(nAI)
        local AI = GetMonsterAI(nAI)
        a = AI:GetArray(1)
        if a == 0 then
            AI:SetTimer(0,1000,65535)
            AI:SetTimer(1,10000,1)
            AI:SetArray(1,1)
        end     
    end