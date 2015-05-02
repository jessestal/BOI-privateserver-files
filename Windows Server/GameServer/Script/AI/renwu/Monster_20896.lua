	----------------------------------------------------
	--		Copyright£∫PERFECT WORLD
	--		Modified£∫2011/8/12
	--		Author£∫÷ÏΩ®≥º
	--		Class:	.Lua
	--		AIName£∫
	--		Remark£∫
	----------------------------------------------------
	
  function Event_Thinking(nAI)
			local AI = GetMonsterAI(nAI)
	end
	
	function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
	    a = AI:GetPosX()
	    b = AI:GetPosY()
		
			AI:PlayAction("skill\\Monster\\boss\\shenshengguanzhu\\fire\\shenshengguanzhu_fire.ini" , 0, 1)
		  AI:SummonMonsterByPos( 30239 ,  a , b )
	end