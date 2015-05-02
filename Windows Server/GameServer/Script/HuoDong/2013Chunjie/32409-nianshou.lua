 --****************************  
 --  Copyright:PERFECT WORLD  
 --  Modified:2013.1.9  
 --  Author:???  
 --  TaskName: ?? 
 --****************************  
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
        if nIndex == 0 then
        --????
        AI:AddSkill(8764,1)
        AI:UseSkill(8764,1)
    end
 --   if nIndex == 1 then
 --       AI:AddSkill(8613,6)
 --       AI:UseSkill(8613,6)
 --   end
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
                AI:Say("Happy Spring Festival! Be ready to take gifts!")

                AI:SetTimer(0,5000,1)
                AI:SetArray(4,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.8 then
                AI:Say("What gifts do you want?")

                AI:SetArray(4,2)
            end
        end

       
        if a == 2 then
            if HP < HPMAX * 0.2 then
                AI:Say("Wow, great! Let's see what we have here.")
							
                --??,?????
                AI:AddSkill(8616,3)
                AI:UseSkill(8616,3)
                AI:SetTimer(2,1000,1)

                AI:SetArray(4,3)
            end
        end
        

end


function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
		AI:Say("OK. All of these are yours! Try your luck now!")	
		
end