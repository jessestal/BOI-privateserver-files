	---------------------------------------------------
	--		Copyright：PERFECT WORLD
	--		Modified：2011/10/10
	--		Author：朱建臣
	--		Class:	Monster-55295.lua
	--		AIName：
	--		Remark：
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        
        if nIndex == 0 then
        --释放技能 
           AI:AddSkill(2178,1)
           AI:UseSkill(2178,1)
        end         
        
        if nIndex == 1 then
        	 AI:SelfMurder()
        end 
	end


	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
	
		a = AI:GetArray(4)
		if a == 0 then
			AI:SetTimer(0,3000,65535)
			AI:SetTimer(1,30000,1)
     	AI:SetArray(4,1)
    end    
	
	end

	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
	end