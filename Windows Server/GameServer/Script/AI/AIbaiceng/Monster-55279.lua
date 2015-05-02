	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/10
	--		Author:???
	--		Class:	Monster-55279.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
     local AI = GetMonsterAI(nAI)
     
     
     if nIndex == 1 then
     	AI:Say("Feel the light strike your sins!")
     	AI:AddSkill(2219,1)
     	AI:UseSkill(2219,1)
     end
     
     if nIndex == 2 then
			AI:AddSkill(2278,1)
			AI:UseSkill(2278,1)
		end
		
		if nIndex == 3 then
			AI:AddSkill(2278,2)
			AI:UseSkill(2278,2)
		end
		
		if nIndex == 4 then
			AI:AddSkill(2278,3)
			AI:UseSkill(2278,3)
		end
     
  end
  
  function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		t = AI:HaveAttackTarget()
 		HP = AI:GetHP()
    HPMAX = AI:GetHPMax()
    a = AI:GetArray(1)
		if t == false then
					if a > 0 then
						if HP == HPMAX then
		    				AI:DelTimer(0)
		    				AI:DelTimer(1)
		    				AI:DelTimer(2)
		    				AI:DelTimer(3)
		    				AI:DelTimer(4)
		    				AI:SetArray(1,0)
		    		end
	    		end
    else	
			if a == 0 then
				if HP < HPMAX then
					AI:Say("Feel the light strike your sins!")
					AI:AddSkill(2119,1)
					AI:UseSkill(2119,1)
					AI:SetTimer(1,15000,65535)
					AI:SetTimer(2,15000,1)
					AI:SetTimer(3,30000,1)
					AI:SetTimer(4,45000,1)
					AI:SetArray(1,2)
				end
			end
		end
	end   
	
	function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
      AI:DelTimer(0)
      AI:SetArray(1,0)
      AI:Say("Holy Light!")
      posx = AI:GetPosX()
			posy = AI:GetPosY()
			AI:SummonMonsterByPos( 55401 , posx , posy )
	end      