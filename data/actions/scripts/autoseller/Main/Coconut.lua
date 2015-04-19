function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 2000) == 1 then
           doPlayerAddItem(cid,2678,100)
       else
           doPlayerSendCancel(cid, "You need 2000 gp.")
       end
   
       return 1
   end