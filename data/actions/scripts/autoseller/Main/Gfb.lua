function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 4500) == 1 then
           doPlayerAddItem(cid,2304,100)
       else
           doPlayerSendCancel(cid, "You need 4500 gp.")
       end
   
       return 1
   end