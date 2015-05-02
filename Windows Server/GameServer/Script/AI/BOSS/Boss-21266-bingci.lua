	----------------------------------------------------
	--		Copyright£ºPERFECT WORLD
	--		Modified£º2011/5/11
	--		Author£ºÎº¶«Ô°
	--		Class:	.Lua
	--		AIName£ºBoss-21266-bingci.lua
	--		Remark£ºÇàÁú±ù´Ì
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		
		if nIndex == 0 then						
			--ÇàÁú±ù´ÌÊ®×ÖÕ¶
			
			dis = AI:GetArray(2)
			
			local posX = AI:GetPosX()
    	local posY = AI:GetPosY()
    	
    	AI:SummonMonsterByPos(21268 , posX + dis , posY)
    	AI:SummonMonsterByPos(21268 , posX - dis , posY)
    	AI:SummonMonsterByPos(21268 , posX , posY + dis)
    	AI:SummonMonsterByPos(21268 , posX , posY - dis)
 
			dis = dis + 2
			AI:SetArray(2,dis)	
    end
  end
    
  function Event_Thinking(nAI)
  		local AI = GetMonsterAI(nAI)
		 	a = AI:GetArray(1)
			if a == 0 then
				AI:SetArray(2,2)
				AI:SetTimer(0,1000,10)
				AI:SetArray(1,1)
			end
	end
	
					