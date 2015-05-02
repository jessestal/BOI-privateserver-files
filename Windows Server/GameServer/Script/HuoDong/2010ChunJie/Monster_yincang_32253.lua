	-----------------------------------------
	--
	--		Copyright:PERFECT WORLD
	--		Modified:2010/07/27
	--		Author:??
	--		AIName:Monster_yincang_32253.lua
	--		AIID:2010?????
	--
	-----------------------------------------
	
	function Event_OnTimer(nAI,nIndex, nCount)
	    local AI = GetMonsterAI(nAI)
	    
	    	if nIndex == 0 then   --??
	    		--AI:PlayEffect( "skill\\pet\\chunv\\hit\\tx_chunv_hit.ini" )
	    		--AI:Say("GUID:04751000000")
	  		AI:Exit()
	  	end
	  end
	
	function Event_Thinking(nAI)
	    local AI = GetMonsterAI(nAI)
	    
  		a = AI:GetArray(1)
  	--??hp
  		if a == 0 then
  			AI:PlayEffect( "common\\fuhuo\\tx_fuhuo_01.ini" )
  			AI:PlayEffect( "common\\fuhuo\\tx_fuhuo_01.ini" )
			AI:SetTimer(0,6000,1) --???????
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
	