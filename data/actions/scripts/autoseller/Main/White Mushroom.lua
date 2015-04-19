function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 1500) == 1 then
           doPlayerAddItem(cid,2787,100)
       else
           doPlayerSendCancel(cid, "You need 1500 gp.")
       end
   
       return 1
   end