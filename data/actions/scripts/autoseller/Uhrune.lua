function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 200) == 1 then
           doPlayerAddItem(cid,2273,2)
       else
           doPlayerSendCancel(cid, "You need 200 gp.")
       end
   
       return 1
   end