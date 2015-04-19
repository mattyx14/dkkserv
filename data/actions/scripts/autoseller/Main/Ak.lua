function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 10000) == 1 then
           doPlayerAddItem(cid,2310,100)
       else
           doPlayerSendCancel(cid, "You need 10000 gp.")
       end
   
       return 1
   end