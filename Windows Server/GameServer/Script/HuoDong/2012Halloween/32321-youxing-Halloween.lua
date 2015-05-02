--?????AI

function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --????
        AI:AddSkill(8764,1)
        AI:UseSkill(8764,1)
    end
    if nIndex == 1 then
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

        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()

        a = AI:GetArray(4)
        if a == 0 then
            if HP < HPMAX then
                AI:Say("Oh! They've found us!")

                AI:SetTimer(1,5000,65535)
                AI:SetArray(4,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.8 then
                AI:Say("Haha, treat or trick!")
                --??,?????
                AI:AddSkill(8616,3)
                AI:UseSkill(8616,3)


                AI:SetTimer(2,8000,65535)
                AI:SetArray(4,2)
            end
        end

       
        if a == 2 then
            if HP < HPMAX * 0.2 then
                AI:Say("Oh no! I'm not here to cause trouble... Trust me!")
							
                --??,???????
                AI:AddSkill(8767,1)
                AI:UseSkill(8767,1)

                AI:SetArray(4,3)
            end
        end
        

end


function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
      x = AI:GetPosX()
	   	y = AI:GetPosY()
	   	MonsterID = 32327
	    AI:SummonMonsterByPos(MonsterID,x,y)


		AI:Say("Hey! Don't grab my Halloween gifts! ")
		
		
end