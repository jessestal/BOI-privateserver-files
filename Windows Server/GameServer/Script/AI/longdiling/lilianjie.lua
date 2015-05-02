--???? 

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --????
        AI:Say("Set the ground ablaze!") 
        AI:AddSkill(8764,1)
        AI:UseSkill(8764,1)
    end
    if nIndex == 1 then
        --????
        AI:Say("Crumble to dust!")  
        AI:AddSkill(8613,6)
        AI:UseSkill(8613,6)
    end
    if nIndex == 2 then
        --?? 
        AI:AddSkill(8616,3)
        AI:UseSkill(8616,3)
    end 
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)

t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:DelTimer(1)
        AI:DelTimer(2)
        AI:SetArray(4,0)
    else                   
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
        
        a = AI:GetArray(4)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("Imprison me, will you?!")
                AI:AddSkill(8613,6)
                AI:UseSkill(8613,6)
                --AI:SetTimer(0,25000,65535)
                --AI:SetTimer(1,40000,65535)
                AI:SetTimer(2,60000,65535)
                AI:SetArray(4,1)    
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.3 then
                AI:Say("How bothersome. Die, worm!")
                AI:SelfMurder()
                AI:SetArray(4,2)
            end
        end
    end
end


	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()


    AI:SummonMonster(51204,1)
		--AI:ScreenText("",2)
		AI:DelTimer(0)
		AI:DelTimer(1)
		AI:DelTimer(2)

	end