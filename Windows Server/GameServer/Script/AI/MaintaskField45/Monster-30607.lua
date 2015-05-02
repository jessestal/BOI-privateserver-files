	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-30607.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	n = math.random(1,3)
      	if n == 1 then
      		AI:Say("Fall... like an angel!")
      	end
      	if n == 2 then
      		AI:Say("I can destroy this world, even without the Pillar of the World!")
      	end
      	if n == 3 then
      		AI:Say("There won't even be bones left when I'm finished with you!")
      	end
      	AI:AddSkill(2491,1)
      	AI:UseSkill(2491,1)
      end
            
      
  end
  
  function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
		a = AI:GetArray(1)
		if a == 0 then
			AI:Say("Such trickery, just like a human... Do you really think that tiny little blast will hurt me?!")
			AI:SetTimer(0,10000,65535)
			AI:AddSkill(2491,1)
      AI:UseSkill(2491,1)
			AI:SetArray(1,1)
		end
	
	
	

	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        

	end
	 
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		
		
	end