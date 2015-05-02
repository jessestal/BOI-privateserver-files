function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
		    
    t = AI:HaveAttackTarget()
    if t == true then
    	a = AI:GetArray(1)
      if a == 0 then
      	AI:ScreenText("Mere insects! I will crush you!",2)
       	AI:SetTimer(0,1000,3)
       	AI:SetTimer(1,4000,1)
       	AI:SetArray(1,1)
    	end
    end
    
end

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    
    if nIndex == 0 then
    		AI:PlayEffect("skill\\Monster\\bingbao\\fire\\tx_bingbao_fire.ini")
    end
    
    if nIndex == 1 then
    		AI:SelfMurder()
    end
    
end