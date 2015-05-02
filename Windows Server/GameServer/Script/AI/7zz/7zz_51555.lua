--??
function Event_OnTimer(nAI,nIndex, nCount)
		local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --????
        t = AI:GetRand(3)
        if t == 0	then
       		AI:Say("Go to hell.") 
       	end
       	AI:ScreenText( "Rage becomes furious, attack speed increases.", 2 )
        AI:AddSkill(2006,1)
        AI:UseSkill(2006,1)
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
            AI:SetTimer(0,8000,65535)
            AI:SetArray(1,1)
        end
        
        if a == 1 then
            if HP < HPMAX * 0.2 then
                AI:Say("You should pay for your hubris. To feel hopelessness.")
                mapid = AI:GetMapID()
			    posx = AI:GetPosX()
				posy = AI:GetPosY()
				AI:SetEctypeVarShort( mapid, 39, 55 )
				AI:SummonMonsterByPos( 51596 , posx - 3 , posy + 3)
				AI:SummonMonsterByPos( 51596 , posx , posy + 2 )
				AI:SummonMonsterByPos( 51596 , posx + 3 , posy + 3)
				AI:SummonMonsterByPos( 51596 , posx - 3 , posy )
				AI:SummonMonsterByPos( 51596 , posx + 3 , posy )
				AI:SummonMonsterByPos( 51596 , posx - 3 , posy - 3)
				AI:SummonMonsterByPos( 51596 , posx , posy - 3)
				AI:SummonMonsterByPos( 51596 , posx + 3 , posy - 3)
				
				AI:SummonMonsterByPos( 51556 , posx - 3 , posy + 3)
				AI:SummonMonsterByPos( 51557 , posx , posy + 2 )
				AI:SummonMonsterByPos( 51558 , posx + 3 , posy + 3)
				AI:SummonMonsterByPos( 51559 , posx - 3 , posy )
				AI:SummonMonsterByPos( 51560 , posx + 3 , posy )
				AI:SummonMonsterByPos( 51561 , posx - 3 , posy - 3)
				AI:SummonMonsterByPos( 51562 , posx , posy - 2)
				AI:SummonMonsterByPos( 51563 , posx + 3 , posy - 3)
				AI:SetArray(1,2)
				AI:Exit()
            end
        end
    end
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
   
end
