	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-53142.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	AI:ScreenText("My men are advancing on your King! Do you think you can stop them?",2)
      	AI:SummonMonsterByPos(53143,168,88,0)
      end
      
      if nIndex == 1 then
      	AI:ScreenText("Bring on the next one!",2)
      	AI:SummonMonsterByPos(53144,160,86,0)
      end
      
      if nIndex == 2 then
      	AI:ScreenText("You're much quicker than I expected!",2)
      	AI:SummonMonsterByPos(53145,161,87,0)
      end
      
--      if nIndex == 3 then
--      	AI:ScreenText("GUID:03079000003",2)
--      	AI:SummonMonsterByPos(53144,170,189,0)
--      end
--      
--      if nIndex == 4 then
--      	AI:ScreenText("GUID:03079000004",2)
--      	AI:SummonMonsterByPos(53144,156,81,0)
--      end
--      
--      if nIndex == 5 then
--      	AI:ScreenText("GUID:03079000005",2)
--      	AI:SummonMonsterByPos(53145,163,88,0)
--      end
--      
--      if nIndex == 6 then
--      	AI:ScreenText("GUID:03079000006",2)
--      	AI:SummonMonsterByPos(53129,163,88,0)
--      end
--      
      if nIndex == 7 then
      	AI:SelfMurder()
      end
                              
  end
  
  function Event_Thinking(nAI)
			local AI = GetMonsterAI(nAI)
			
			a = AI:GetArray(4)
	  	if a == 0 then
	  		AI:ScreenText("Come to the chessboard! Our game is about to start.",2)
	  		AI:SetTimer(0,5000,1)
	  		AI:SetTimer(1,17000,1)
	  		AI:SetTimer(2,30000,1)
	  		AI:SetTimer(7,60000,1)
--	  		AI:SetTimer(3,40000,1)
--	  		AI:SetTimer(4,55000,1)
--	  		AI:SetTimer(5,60000,1)
--	  		AI:SetTimer(6,100000,1)
	  		AI:SetArray(4,1)
	  	end
			
	end