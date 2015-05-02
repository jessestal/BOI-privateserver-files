	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-30700.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	AI:ScreenText("Karth: You don't have what it takes to defeat me!",2)
      	AI:AddSkill(2502,1)
      	AI:UseSkill(2502,1)
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
            AI:SetArray(1,0)
          end
        else
          HP = AI:GetHP()
          HPMAX = AI:GetHPMax()
         
          z = AI:GetAttackTargetPro()
          a = AI:GetArray(1)
          if a == 0 then
            if HP < HPMAX then
            	AI:ScreenText("Karth: At last! I shall have my revenge!",2)
            	AI:Say("This city will be your tomb!")
            	AI:AddSkill(2502,1)
      				AI:UseSkill(2502,1)
      				AI:SetTimer(0,25000,65535)
      				AI:SetArray(1,1)
      			end
      		end
      		
      		if a == 1 then
      			if HP < HPMAX * 0.7 then
      				x = AI:GetPosX()
      				y = AI:GetPosY()
      				AI:Say("Still got some fight left in you, huh!?")
      				AI:AddSkill(2499,1)
      				AI:UseSkill(2499,1)
      				AI:ScreenText("Karth's Children are protecting him!",2)
      				AI:SetEctypeVarShort(ectyep_id,2,0)
      				AI:SummonMonsterByPos(30705,x+3,y)
      				AI:SummonMonsterByPos(30705,x-3,y)
      				AI:SummonMonsterByPos(30705,x,y+3)
      				AI:SummonMonsterByPos(30705,x,y-3)
      				AI:SetArray(1,2)
      			end
      		end
      		
      		if a == 2 then
      			if HP < HPMAX * 0.4 then
      				x = AI:GetPosX()
      				y = AI:GetPosY()
      				AI:ScreenText("Karth's Children are protecting him!",2)
      				AI:AddSkill(2499,1)
      				AI:UseSkill(2499,1)
      				AI:SetEctypeVarShort(ectyep_id,2,0)
      				AI:SummonMonsterByPos(30705,x+3,y)
      				AI:SummonMonsterByPos(30705,x-3,y)
      				AI:SummonMonsterByPos(30705,x,y+3)
      				AI:SummonMonsterByPos(30705,x,y-3)
      				AI:SetArray(1,3)
      			end
      		end
      		
      		if a == 3 then
      			if HP < HPMAX * 0.1 then
      				x = AI:GetPosX()
      				y = AI:GetPosY()
      				AI:ScreenText("Karth's Children are protecting him!",2)
      				AI:AddSkill(2499,1)
      				AI:UseSkill(2499,1)
      				AI:SetEctypeVarShort(ectyep_id,2,0)
      				AI:SummonMonsterByPos(30705,x+3,y)
      				AI:SummonMonsterByPos(30705,x-3,y)
      				AI:SummonMonsterByPos(30705,x,y+3)
      				AI:SummonMonsterByPos(30705,x,y-3)
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
		
		
		
	end