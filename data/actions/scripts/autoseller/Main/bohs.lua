function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 40000) == 1 then
           doPlayerAddItem(cid,2195,1)
       else
           doPlayerSendCancel(cid, "You need 40 k.")
       end
   
       return 1
   end