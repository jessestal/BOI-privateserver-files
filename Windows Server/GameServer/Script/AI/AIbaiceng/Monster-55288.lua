	---------------------------------------------------
	--		Copyright£∫PERFECT WORLD
	--		Modified£∫2011/10/10
	--		Author£∫÷ÏΩ®≥º
	--		Class:	Monster-55288.lua
	--		AIName£∫
	--		Remark£∫
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
     
    if nIndex == 0 then
    	x = AI:GetPosX()
    	y = AI:GetPosY()
    	AI:SummonMonsterByPos( 55289, x, y )
    end
  end
  
  function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
    a = AI:GetArray(1)
		if a == 0 then
			AI:SetTimer(0,6000,20)
			AI:SetArray(1,1)
		end
	end	