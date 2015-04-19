function onUse(cid, item, frompos, item2, topos)
   
       if doPlayerRemoveMoney(cid, 60000) == 1 then
           doPlayerAddItem(cid,2514,1)
       else
           doPlayerSendCancel(cid, "You need 60 k.")
       end
   
       return 1
   end