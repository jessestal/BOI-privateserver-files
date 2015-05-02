	----------------------------------------------------
	--		Copyright£∫PERFECT WORLD
	--		Modified£∫2012/7/25
	--		Author£∫÷ÏΩ®≥º
	--		Class:	.lua
	--		AIName£∫Monster-30610.lua
	--		Remark£∫
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	AI:PlayAction("skill\Knight\chaofeng\fire\tx_knight_chaofeng_fire.ini" , 0, 1)
      	AI:PlayAction("skill\Knight\fengniuzhen\fire\tx_knight_fengniuzhen_fire.ini" , 0, 1)
      	AI:PlayAction("skill\Knight\huiyao\fire\tx_knight_huiyao_fire.ini" , 0, 1)
      	AI:PlayAction("skill\Common\zhendongguai\tx_zhendongguai_keep.ini" , 0, 1)
      end
      
      if nIndex == 1 then
      	AI:SelfMurder()
      end
      

      
  end
  
  function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
		a = AI:GetArray(1)
		if a == 0 then			
			AI:SetTimer(0,5000,1)
			AI:SetTimer(1,8000,1)
			AI:SetArray(1,1)
		end
	

	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        

	end
	 
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		
		
	end