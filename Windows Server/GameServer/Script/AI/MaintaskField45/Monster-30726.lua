	----------------------------------------------------
	--		Copyright£∫PERFECT WORLD
	--		Modified£∫2012/7/25
	--		Author£∫÷ÏΩ®≥º
	--		Class:	.lua
	--		AIName£∫Monster-30726.lua
	--		Remark£∫
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	AI:AddSkill(2503,2)
				AI:UseSkill(2503,2)
			end
			
			if nIndex == 1 then
				AI:SelfMurder()
			end

      
  end
  
  function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
		a = AI:GetArray(1)
    if a == 0 then
			AI:AddSkill(2503,2)
			AI:UseSkill(2503,2)
			AI:SetTimer(0,1000,10)
			AI:SetTimer(1,3000,1)
			AI:SetArray(1,1)
		end	

	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        

	end
	 
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		
		
	end