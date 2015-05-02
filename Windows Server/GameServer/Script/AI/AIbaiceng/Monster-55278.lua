	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/10
	--		Author:???
	--		Class:	Monster-55278.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
     local AI = GetMonsterAI(nAI)
     
     if nIndex == 0 then
     	AI:PlayAction( "attack2" , 2000 ,0 )
     	AI:AddSkill(2184,1)
     	AI:UseSkill(2184,1)
     end
     
     if nIndex == 1 then
     	AI:AddSkill(2219,1)
     	AI:UseSkill(2219,1)
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
		    				AI:SetArray(1,0)
		    		end
	    		end
    else	
			if a == 0 then
				if HP < HPMAX then
					AI:Say("Puny human, try and go further!")
					AI:PlayAction( "attack2" , 2000 ,0 )
					AI:AddSkill(2184,1)
					AI:UseSkill(2184,1)
					AI:SetTimer(1,15000,65535)
					AI:SetTimer(0,25000,65535)
					AI:SetArray(1,2)
				end
			end
		end
	end