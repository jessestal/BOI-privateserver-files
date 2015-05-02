	----------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2012/7/25
	--		Author:???
	--		Class:	.lua
	--		AIName:Monster-30613.lua
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
      local AI = GetMonsterAI(nAI)
      
      if nIndex == 0 then
      	n = math.random(1,3)
      	if n == 1 then
      		AI:Say("It's no use, Agritt! I'll be the new king of this realm over your dead body!")
      	end
      	if n == 2 then
      		AI:Say("Witness the power you have brought me! You mad, Agritt?")
      	end
      	if n == 3 then
      		AI:Say("Why do you fight me? We could rule the world together!")
      	end
      	AI:AddSkill(2492,1)
      	AI:UseSkill(2492,1)
      end
      
      if nIndex == 1 then
      	m = math.random(1,3)
      	if m == 1 then
      		AI:Say("It's no use, Agritt! I'll be the new king of this realm over your dead body!")
      	end
      	if m == 2 then
      		AI:Say("Witness the power you have brought me! You mad, Agritt?")
      	end
      	if m == 3 then
      		AI:Say("Why do you fight me? We could rule the world together!")
      	end
      	AI:AddSkill(2493,1)
      	AI:UseSkill(2493,1)
      end
      	      
      
  end
  
  function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	
		v = AI:HaveAttackTarget()
        if v == false then
        	n = AI:GetEnmityCount()
        	if n < 1 then
            AI:DelTimer(0)
        		AI:DelTimer(1)
            AI:SetArray(1,0)
          end
        else
          HP = AI:GetHP()
          HPMAX = AI:GetHPMax()
         
          z = AI:GetAttackTargetPro()
          a = AI:GetArray(1)
          if a == 0 then
            if HP < HPMAX then
             	AI:ScreenText("Lay down your arms, and I might spare you. I could use a good servant!",2)
             	AI:PlayAction("skill\\Common\\zhendongguai\\tx_zhendongguai_keep.ini" , 0, 1)
             	AI:AddSkill(2492,1)
             	AI:UseSkill(2492,1)
             	AI:SetTimer(0,18000,65535)
             	AI:SetTimer(1,25000,65535)
             	AI:SetArray(1,1)
             end
          end
        end
	

	end 
	
	function Event_ReadSeekPos(nAI)
    local AI = GetMonsterAI(nAI)
        

	end
	 
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
		AI:ScreenText("Don't think you've defeated me! I'll see you later, chumps!",2)
		
	end