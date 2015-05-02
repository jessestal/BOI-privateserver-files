	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-30701.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	AI:Say("Shut up and die like a coward!")
      	AI:AddSkill(2496,1)
      	AI:UseSkill(2496,1)
      end
      
      if nIndex == 1 then
      	AI:Say("The ground trembles before my might!")
      	AI:AddSkill(2497,1)
      	AI:UseSkill(2497,1)
      end
      
      if nIndex == 2 then
      	local x = math.random(243,267)
      	local y = math.random(188,212)
      	AI:SummonMonsterByPos(30620,x,y)
      end
      
      if nIndex == 3 then
      	mapid = AI:GetMapID()
      	n = AI:GetEctypeVarShort(mapid,0)
      	while n < 5 do
	      	local x = math.random(243,267)
	      	local y = math.random(188,212)
	      	AI:SummonMonsterByPos(30706,x,y)
	      	n = n + 1
	      	AI:SetEctypeVarShort(mapid,0,n)
	      end
	    end
	    
	    if nIndex == 4 then
	    	AI:ScreenText("Modd: Khar... I had hoped we'd seen the last of you.",2)
	    end
	    
	    if nIndex == 5 then
	    	AI:ScreenText("Khar: Well, I wasn't expecting to be back so soon, haha!",2)
	    end
	    
	    if nIndex == 6 then
	    	AI:ScreenText("Modd: Don't get too cocky! We defeated you once, we can defeat you again!",2)
	    end
	    
	    if nIndex == 7 then
	    	AI:ScreenText("Khar: You fool, I have the advantage this time! You will pay for what you did to me!",2)
	    end
	    
	    if nIndex == 8 then
	    	AI:ScreenText("Modd: One way or another, you will perish! If I die, I'm taking you with me!",2)
	    end
	    
	    if nIndex == 9 then
	    	AI:ScreenText("Khar: Prove your words, worm! Go, my army! Kill every Paladin you see!",2)
	    end
      
      
  end
  
  function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
		
		ectyep_id = AI:GetMapID()
		v = AI:HaveAttackTarget()
        if v == false then
        	n = AI:GetEnmityCount()
        	if n < 1 then
            AI:DelTimer(0)
        		AI:DelTimer(1)
        		AI:DelTimer(2)
        		AI:DelTimer(3)
        		AI:DelTimer(4)
        		AI:DelTimer(5)
        		AI:DelTimer(6)
        		AI:DelTimer(7)
        		AI:DelTimer(8)
        		AI:DelTimer(9)
            AI:SetArray(1,0)
          end
        else
          HP = AI:GetHP()
          HPMAX = AI:GetHPMax()
         
          z = AI:GetAttackTargetPro()
          a = AI:GetArray(1)
          if a == 0 then
            if HP < HPMAX then
            	AI:PlayAction("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 0, 1)
            	AI:ScreenText("Khar: Modd! Remember me?",2)
            	AI:SetTimer(4,5000,1)
            	AI:SetTimer(5,10000,1)
            	AI:SetTimer(6,15000,1)
            	AI:SetTimer(7,20000,1)
            	AI:SetTimer(8,25000,1)
            	AI:SetTimer(9,30000,1)
            	AI:SetTimer(0,25000,65535)
            	AI:SetTimer(1,15000,65535)
            	AI:SetArray(1,1)
            end
        	end
        	
        	if a == 1 then
        		if HP < HPMAX * 0.7 then
        			AI:Say("Only the raging flames can destroy the destroyer!")
        			AI:ScreenText("Only the raging flames can destroy the destroyer!",2)
        			AI:SetEctypeVarShort(ectyep_id,0,0)
        			AI:SetEctypeVarShort(ectyep_id,1,0)
        			AI:AddSkill(2498,1)
        			AI:UseSkill(2498,1)
        			AI:SetTimer(2,1000,1)
        			AI:SetTimer(3,1000,1)
        			AI:SetArray(1,2)
        		end
        	end
        	
        	if a == 2 then
        		if HP < HPMAX * 0.4 then
        			AI:Say("Only the raging flames can destroy the destroyer!")
        			AI:ScreenText("Only the raging flames can destroy the destroyer!",2)
        			AI:SetEctypeVarShort(ectyep_id,0,0)
        			AI:SetEctypeVarShort(ectyep_id,1,0)
        			AI:AddSkill(2498,1)
        			AI:UseSkill(2498,1)
        			AI:SetTimer(2,1000,1)
        			AI:SetTimer(3,1000,1)
             	AI:SetArray(1,3)
            end
          end
          
          if a == 3 then
          	if HP < HPMAX * 0.1 then
          		AI:Say("Die in the endless void, human!")
          		AI:AddSkill(2498,1)
        			AI:UseSkill(2498,1)
        			AI:SetArray(1,4)
        		end
        	end
        end
          		
	

	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        

	end
	 
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		AI:ScreenText("How... is this... possible...?",2)
		
	end