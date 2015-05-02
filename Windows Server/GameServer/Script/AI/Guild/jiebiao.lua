--???? 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --?????? 
        random = math.random( 1 , 100 )
        if random <= 30 then
        		AI:Say("Leave these goods with us if you want to keep your life!")
        		AI:AddSkill(3558 , 1)
        		AI:UseSkill(3558 , 1)
        end
    end
end
    
function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
                  
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()

        a = AI:GetArray(1)
        if a == 0 then
            --AI:Say("GUID:02772000001")
            random = math.random( 1 , 100 )
        				if random <= 30 then
        						AI:Say("Leave these goods with us if you want to keep your life!")
        						AI:AddSkill(3558 , 1)
        						AI:UseSkill(3558 , 1)
        				end
            AI:SetTimer(0,6000,65535)
            AI:SetArray(1,1)
        end
end

function Event_OnDead(nAI)
    local AI = GetMonsterAI(nAI)
    random = math.random( 1 , 100 )
        if random <= 40 then
        		AI:ScreenText("A bandit drops a barrel of oil, break it to speed the caravan up.",1)
        		x = AI:GetPosX()
        		y = AI:GetPosY()
        		AI:SummonMonsterByPos(32188, x, y )
        end
end        