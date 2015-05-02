function Event_ReadSeekPos(nAI)
				local AI = GetMonsterAI(nAI)
				
        AI:AddSeekPos( 250, 162, 170 )
end

function Event_OnTimer(nAI, nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        AI:Say("Tidal Crash in: 4!") 
    end
    if nIndex == 1 then
        AI:Say("Tidal Crash in: 3!") 
    end
    if nIndex == 2 then
        AI:Say("Tidal Crash in: 2!") 
    end
    if nIndex == 3 then
        AI:Say("Tidal Crash in: 1!") 
    end
    if nIndex == 4 then
        AI:Say("Tidal Crash!") 
        AI:AddSkill(8861,26)
        AI:UseSkill(8861,26)
        AI:SelfMurder()
    end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:DelTimer(1)
        AI:DelTimer(2)
        AI:DelTimer(3)
        AI:DelTimer(4)
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()

        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX * 0.5 then
                AI:Say("Tidal Crash in: 5!")
                AI:SetTimer(0,1000,1)
                AI:SetTimer(1,2000,1)
                AI:SetTimer(2,3000,1)
                AI:SetTimer(3,4000,1)
                AI:SetTimer(4,5000,1)
                AI:SetArray(1,1)
            end
        end
    end
end