	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/10
	--		Author:???
	--		Class:	Monster-55280.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
     local AI = GetMonsterAI(nAI)
     
     if nIndex == 1 then
     	AI:Say("Feel the light strike your sins!")
     	AI:AddSkill(2223,1)
     	AI:UseSkill(2223,1)
     	posx = AI:GetPosX()
			posy = AI:GetPosY()
			AI:SummonMonsterByPos( 55411 , posx , posy )
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
		    				AI:DelTimer(1)
		    				AI:SetArray(1,0)
		    		end
	    		end
    else	
			if a == 0 then
				if HP < HPMAX then
					AI:Say("Winter is coming!")
					AI:AddSkill(2222,1)
					AI:UseSkill(2222,1)
					AI:SetTimer(1,15000,65535)
					AI:SetArray(1,2)
				end
			end
		end
	end   
	
	function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
      AI:DelTimer(0)
      AI:SetArray(1,0)
      AI:Say("The snow.feels so nice.")
      posx = AI:GetPosX()
			posy = AI:GetPosY()
			AI:SummonMonsterByPos( 55410 , posx , posy )
	end      