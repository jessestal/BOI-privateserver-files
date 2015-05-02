	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/10
	--		Author:???
	--		Class:	Monster-55271.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
     local AI = GetMonsterAI(nAI)
        
     if nIndex == 0 then
     		AI:Say("Foolish human!")
     		AI:PlayAction( "specialidle" , 2000 ,0 )
     		AI:PlayAction("skill\\Monster\\boss\\anhun\\fire\\tx_anhun_fire.ini" , 0, 1)  
     		AI:AddSkill(2221,2)
     		AI:UseSkill(2221,2)
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
		    			end
		    		end
			else
				if a == 0 then
						if HP < HPMAX then
							AI:Say("Who dares interrupt me!")
							AI:SetTimer(0,20000,65535)				
							AI:SetArray(1,1)
						end
				end
			end
	end
			
	function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
      AI:DelTimer(0)      
      AI:Say("Is this..real?")
      map_id = AI:GetMapID()
      posx = AI:GetPosX()
			posy = AI:GetPosY()
			AI:SummonMonsterByPos( 55409 , posx , posy )
			if map_id > 17100 then 
				AI:SummonMonsterByPos( 55288 , posx , posy )
			end
	end