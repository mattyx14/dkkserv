function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 5500) == 1 then
           doPlayerAddItem(cid,2313,100)
       else
           doPlayerSendCancel(cid, "You need 5500 gp.")
       end
   
       return 1
   end