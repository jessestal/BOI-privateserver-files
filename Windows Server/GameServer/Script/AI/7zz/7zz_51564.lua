--??
function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --??AOE 
        say = AI:GetArray(3)
        if say == 0		then
        	AI:Say("Stop, go away, I don't want to beat you.")
        	AI:SetArray( 3 , 1 )
        end
        if say == 1		then
        	AI:Say("I just want to sleep, don't bother me.")
        	AI:SetArray( 3 , 2 )
        end
        if say == 2		then
        	AI:Say("Let me have a rest.")
        	AI:SetArray( 3 , 3 )
        end
        if say == 3		then
        	AI:Say("I'm too tired to talk to you.")
        	AI:SetArray( 3 , 4 )
        end
        if say == 4		then
        	AI:Say("Zzzzz......!")
        	AI:SetArray( 3 , 5 )
        end
        if say == 5		then
        	AI:Say("Don't disturb my rest.")
        	AI:SetArray( 3 , 6 )
        end
        AI:ScreenText( "Ooops, did you smell that?", 2 )
        AI:AddSkill(2013,1)
        AI:UseSkill(2013,1)
    end
    
    if nIndex == 1 then
       AI:PlayAction( "SingleHandBlade.sitgroudloop", 6000, 0 )
       AI:SetTimer(2,6000,1)
    end
    
    if nIndex == 2 then
       AI:PlayAction( "emot_act", 6000, 0 )
       AI:SetTimer(1,6000,1)
    end
    
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    
    --??
    b = AI:GetArray(2)
        if b == 0 then
        	AI:AddSkill(2018,1)
        	AI:UseSkill(2018,1)
        	AI:SetArray( 2 , 1 )
        end
    
    t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
        
        a = AI:GetArray(1)
        if a == 0 then
            AI:SetTimer(0,6000,65535)
            AI:SetTimer(1,6000,1)
            AI:SetArray(1,1)
        end
    end
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
end