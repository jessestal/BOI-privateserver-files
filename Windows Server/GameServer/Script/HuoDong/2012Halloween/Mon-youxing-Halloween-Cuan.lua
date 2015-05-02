
	--****************************************
	--
	--		Copyright：PERFECT WORLD
	--		Modified：2012/10/16
	--		Author：曹楚蒨
	--		Class: Lua
	--		AIName：Mon-youxing-Halloween-Cuan.lua
	--		Backup：万圣节游行怪
	--****************************************


	function Event_OnTimer(nAI,nIndex, nCount)
    	local AI = GetMonsterAI(nAI)
---------------------------------------------------------------
    if nIndex == 1 then
      a = AI:GetArray(1)
      x = AI:GetPosX()
	   	y = AI:GetPosY()
	   
	   	if a == 0 then
	   	MonsterID = 32312
       AI:SummonMonsterByPos(MonsterID,178,113)
       end
       if a == 1 then
	   	MonsterID1 = 32313
	   		MonsterID2 = 32314
	   		MonsterID3 = 32316
       AI:SummonMonsterByPos(MonsterID1,174,113)
       AI:SummonMonsterByPos(MonsterID2,182,113)
       AI:SummonMonsterByPos(MonsterID3,178,113)
       end
       if a == 2 then
	   	MonsterID1 = 32310
	   	MonsterID2 = 32319
	   	MonsterID3 = 32316
       AI:SummonMonsterByPos(MonsterID1,174,113)
       AI:SummonMonsterByPos(MonsterID2,182,113)
       AI:SummonMonsterByPos(MonsterID3,178,113)
       end
       if a == 3 then
	   	MonsterID1 = 32315
	   	MonsterID2 = 32319
	   	MonsterID3 = 32316
       AI:SummonMonsterByPos(MonsterID1,174,113)
       AI:SummonMonsterByPos(MonsterID2,182,113)
       AI:SummonMonsterByPos(MonsterID3,178,113)
       end
       if a ==4 then
	   	
	   	MonsterID1 = 32310
	   	MonsterID2 = 32318
	   	MonsterID3 = 32316
       AI:SummonMonsterByPos(MonsterID1,174,113)
       AI:SummonMonsterByPos(MonsterID2,182,113)
       AI:SummonMonsterByPos(MonsterID3,178,113)
       end
       if a == 5 then
	   	MonsterID1 = 32315
	   	MonsterID2 = 32319
	   	MonsterID3 = 32316
       AI:SummonMonsterByPos(MonsterID1,174,113)
       AI:SummonMonsterByPos(MonsterID2,182,113)
       AI:SummonMonsterByPos(MonsterID3,178,113)
       end
       if a == 6 then
	   	MonsterID1 = 32303
	   	MonsterID2 = 32309
	   	MonsterID3 = 32316
       AI:SummonMonsterByPos(MonsterID1,174,113)
       AI:SummonMonsterByPos(MonsterID2,182,113)
       AI:SummonMonsterByPos(MonsterID3,178,113)
       end
      if a == 7 then
	   	MonsterID1 = 32310
	   	MonsterID2 = 32305
	   	MonsterID3 = 32316
       AI:SummonMonsterByPos(MonsterID1,174,113)
       AI:SummonMonsterByPos(MonsterID2,182,113)
       AI:SummonMonsterByPos(MonsterID3,178,113)
       end
       if a == 8 then
	   	MonsterID1 = 32311
	   	MonsterID2 = 32305
	   	MonsterID3 = 32316
       AI:SummonMonsterByPos(MonsterID1,174,113)
       AI:SummonMonsterByPos(MonsterID2,182,113)
       AI:SummonMonsterByPos(MonsterID3,178,113)
       end
       if a == 9 then
	   	MonsterID1 = 32310
	   	MonsterID2 = 32304
	   	MonsterID3 = 32316
       AI:SummonMonsterByPos(MonsterID1,174,113)
       AI:SummonMonsterByPos(MonsterID2,182,113)
       AI:SummonMonsterByPos(MonsterID3,178,113)
       end
       if a == 10 then
	   	MonsterID1 = 32311
	   	MonsterID2 = 32304
	   	MonsterID3 = 32316
       AI:SummonMonsterByPos(MonsterID1,174,113)
       AI:SummonMonsterByPos(MonsterID2,182,113)
       AI:SummonMonsterByPos(MonsterID3,178,113)
       end
       if a == 11 then
	   	MonsterID1 = 32306
	   	MonsterID2 = 32317
	   	MonsterID3 = 32316
       AI:SummonMonsterByPos(MonsterID1,174,113)
       AI:SummonMonsterByPos(MonsterID2,182,113)
       AI:SummonMonsterByPos(MonsterID3,178,113)
       end
        if a == 12 then
	   	MonsterID1 = 32308
	   	MonsterID2 = 32318
	   	MonsterID3 = 32316
       AI:SummonMonsterByPos(MonsterID1,174,113)
       AI:SummonMonsterByPos(MonsterID2,182,113)
       AI:SummonMonsterByPos(MonsterID3,178,113)
       end
       if a ==13 then
	   
	   	MonsterID1 = 32308
	   	MonsterID2 = 32319
	   	MonsterID3 = 32316
       AI:SummonMonsterByPos(MonsterID1,174,113)
       AI:SummonMonsterByPos(MonsterID2,182,113)
       AI:SummonMonsterByPos(MonsterID3,178,113)
       end
       if a == 14 then
	   	MonsterID1 = 32307
	   	MonsterID2 = 32319
	   	MonsterID3 = 32316
       AI:SummonMonsterByPos(MonsterID1,174,113)
       AI:SummonMonsterByPos(MonsterID2,182,113)
       AI:SummonMonsterByPos(MonsterID3,178,113)
       end
        if a == 15 then
	   	MonsterID1 = 32307
	   	MonsterID2 = 32319
	   	MonsterID3 = 32316
       AI:SummonMonsterByPos(MonsterID1,174,113)
       AI:SummonMonsterByPos(MonsterID2,182,113)
       AI:SummonMonsterByPos(MonsterID3,178,113)
       end
      a = a + 1
AI:SetArray(1,a)       

end
       if nIndex == 2 then 
       AI:Exit()
       end
end
------------------------------------------------------------
        
        
    function Event_Thinking(nAI)
      local AI = GetMonsterAI(nAI)
			posx = AI:GetPosX()
			posy = AI:GetPosY()
			
		n = AI:GetArray(3)
		if n == 0 then 
		
			AI:SetTimer(1,10000,17)
		  AI:SetTimer(2,900000,1)
				
      end
      AI:SetArray (3, 1)
    end
---------------------------------------------------------------------------
  
---------------------------------------------------------------------------
	function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
	
	end
