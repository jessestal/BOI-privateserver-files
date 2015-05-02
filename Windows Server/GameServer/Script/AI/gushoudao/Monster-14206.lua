	---------------------------------------------------
	--		Copyright：PERFECT WORLD
	--		Modified：2011/10/08
	--		Author：朱建臣
	--		Class:	Monster-14206.lua
	--		AIName：
	--		Remark：
	----------------------------------------------------
	function Event_OnTimer(nAI,nIndex, nCount)
        local AI = GetMonsterAI(nAI)
        
        if nIndex == 0 then
        --释放技能 
           AI:AddSkill(2266,1)
           AI:UseSkill(2266,1)
        end  
        
        if nIndex == 1 then
        --播放特效 
          AI:PlayEffect("common\\gaobaozhadan\\fire\\tx_common_gaobaozhadan_fire_1.ini")
        end  
        
        if nIndex == 3 then
        	AI:SelfMurder()
        end
	end


	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
	
		a = AI:GetArray(4)
		if a == 0 then
			AI:SetTimer(0,4000,1)
			AI:SetTimer(1,1000,1)
			AI:SetTimer(3,10000,1)
     	AI:SetArray(4,1)
    end    
	
	end

	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
	end