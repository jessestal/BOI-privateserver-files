	-----------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2010/07/27
	--		Author:??
	--		AIName:Monster_nianshou_32251.lua
	--		AIID:2010???? ?
	--
	-----------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
	    local AI = GetMonsterAI(nAI)
	    
	    	if nIndex == 0 then   --??,???
	    		AI:PlayEffect( "skill\\pet\\chunv\\hit\\tx_chunv_hit.ini" )
	  		AI:SelfMurder()
	  	end
	  end
	
	function Event_Thinking(nAI)
	    local AI = GetMonsterAI(nAI)
	    
  		a = AI:GetArray(1)
  	--??hp
  		if a == 0 then
  			--AI:Say("GUID:04750000000")
  			map = AI:GetMapID()
			hp = AI:GetEctypeVarInteger( map, 111 )
			--AI:Say(tostring(hp))
			AI:LoseHPInstant( hp )
			AI:AddSkill(2086,1)  --???
  			AI:UseSkill(2086,1)
			AI:SetTimer(0,15000,1) --???????
			AI:SetArray(1,1)
  		end
	
	end 
		
	function Event_ReadSeekPos(nAI)
	    local AI = GetMonsterAI(nAI)
	    
	end
	
	function Event_ArriveSeekPos(nAI , MapID , PosX , PosY)
		local AI = GetMonsterAI(nAI)	
	end
	
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		
	end
	