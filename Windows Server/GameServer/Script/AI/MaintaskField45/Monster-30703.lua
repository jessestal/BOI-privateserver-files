	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-30703.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	AI:ScreenText("Hades: Agritt, please. Do you think something so trifling as death could stop me? I've a world to save!",2)
      end
      
      if nIndex == 1 then
      	AI:ScreenText("Agritt: This again?! Nobody's buying that story after everything you've done!",2)
      end
      
      if nIndex == 2 then
      	AI:ScreenText("Hades: You think so? I've brought an old friend to help me out! Chiyu!",2)
      	AI:SummonMonsterByPos(30731,149,218)
      	AI:SummonMonsterByPos(30704,158,216)
      	AI:SummonMonsterByPos(30709,159,220)
      end
      
      if nIndex == 3 then
      	AI:ScreenText("Agritt: Hades! I should have known you were behind this!",2)
      end

      if nIndex == 4 then
      	AI:ScreenText("Agritt: I don't care what you're planning, you aren't going to lay a finger on this Pillar!",2)
      end
      
      
      if nIndex == 5 then
      	AI:ScreenText("Hades: Isn't it funny? You worked so hard to become a king, and for what? A big blue rock?",2)
      end
      
      if nIndex == 6 then
      	AI:ScreenText("Agritt: This is asinine! Hades, your life will end today!",2)
      end
      

      
  end
  
  function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
		a = AI:GetArray(1)
		if a == 0 then
			AI:PlayAction("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 0, 1)
			AI:SetTimer(3,8000,1)
			AI:SetTimer(0,16000,1)
			AI:SetTimer(1,24000,1)
--			AI:SetTimer(3,32000,1)
			AI:SetTimer(4,32000,1)
			AI:SetTimer(5,40000,1)
			AI:SetTimer(6,48000,1)
			AI:SetTimer(2,54000,1)
			AI:SetArray(1,1)
		end
			
	

	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        

	end
	 
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		
		
	end