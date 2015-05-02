	---------------------------------------------------
	--		Copyright:PERFECT WORLD
	--		Modified:2011/10/10
	--		Author:???
	--		Class:	Monster-55277.lua
	--		AIName:
	--		Remark:
	----------------------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
     local AI = GetMonsterAI(nAI)
     
     if nIndex == 0 then
     	AI:AddSkill(2186,1)
     	AI:UseSkill(2186,1)
     end
     
     if nIndex == 1 then
     	map_id = AI:GetMapID()
			xx = AI:GetPosX()
			yy = AI:GetPosY()
			--10?
				if map_id > 15100 then 
					if map_id < 16101	then 
						AI:SummonSingleLevelMonster( 55287, 91, 125 )
						AI:SummonSingleLevelMonster( 55287, 91, 125 )
						AI:SummonSingleLevelMonster( 55287, 91, 125 )
						AI:SummonSingleLevelMonster( 55287, 91, 125 )
					end
				end
				--20?
				if map_id > 16100 then 
					if map_id < 17101 then
						AI:SummonSingleLevelMonster( 55287, 92, 125 )
						AI:SummonSingleLevelMonster( 55287, 92, 125 )
						AI:SummonSingleLevelMonster( 55287, 92, 125 )
						AI:SummonSingleLevelMonster( 55287, 92, 125 ) 
					end
				end
				--30?
				if map_id > 17100 then 
					if map_id < 18101 then 
						AI:SummonSingleLevelMonster( 55287, 93, 125 )
						AI:SummonSingleLevelMonster( 55287, 93, 125 )
						AI:SummonSingleLevelMonster( 55287, 93, 125 )
						AI:SummonSingleLevelMonster( 55287, 93, 125 ) 
					end
				end
				--40?
				if map_id > 18100 then 
					if map_id < 19101 then 
						AI:SummonSingleLevelMonster( 55287, 94, 125 )
						AI:SummonSingleLevelMonster( 55287, 94, 125 )
						AI:SummonSingleLevelMonster( 55287, 94, 125 )
						AI:SummonSingleLevelMonster( 55287, 94, 125 ) 
					end
				end
				--50?
				if map_id > 19100 then 
					if map_id < 20101 then 
						AI:SummonSingleLevelMonster( 55287, 95, 125 )
						AI:SummonSingleLevelMonster( 55287, 95, 125 )
						AI:SummonSingleLevelMonster( 55287, 95, 125 )
						AI:SummonSingleLevelMonster( 55287, 95, 125 ) 
					end
				end
				--60?
				if map_id > 20100 then
					if map_id < 21101 then
						AI:SummonSingleLevelMonster( 55287, 96, 125 )
						AI:SummonSingleLevelMonster( 55287, 96, 125 )
						AI:SummonSingleLevelMonster( 55287, 96, 125 )
						AI:SummonSingleLevelMonster( 55287, 96, 125 ) 
					end
				end
		 end
     
  end
  
  function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		t = AI:HaveAttackTarget()
 		HP = AI:GetHP()
    HPMAX = AI:GetHPMax()
    a = AI:GetArray(1)
		if t == false then
					if a > then
						if HP == HPMAX then
		    				AI:DelTimer(0)
		    				AI:SetArray(1,0)
		    		end
	    		end
    else	
			if a == then
				if HP < HPMAX then
					AI:Say("Behold my power!")
					AI:AddSkill(2186,1)
					AI:UseSkill(2186,1)
					AI:SetTimer(0,30000,65535)
					AI:SetArray(1,2)
				end
			end
		end
	end   
	
	function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
      AI:DelTimer(0)
      AI:SetArray(1,0)
      AI:Say("It was not enough..")
      posx = AI:GetPosX()
			posy = AI:GetPosY()
			AI:SummonMonsterByPos( 55405 , posx , posy )
	end      