function onUse(cid, item, frompos, item2, topos)


if item2.itemid == 388 or item2.itemid == 389 or 

item2.itemid == 629 or item2.itemid == 630 or 

item2.itemid == 631 or item2.itemid == 632 or 

item2.itemid == 633 or item2.itemid == 634 or 

item2.itemid == 635 or item2.itemid == 636 or 

item2.itemid == 637 or item2.itemid == 638 or 

item2.itemid == 639 or item2.itemid == 640 or 

item2.itemid == 653 or item2.itemid == 654 or 

item2.itemid == 655 or item2.itemid == 656 or 

item2.itemid == 657 or item2.itemid == 658 or 

item2.itemid == 659 or item2.itemid == 660 or 

item2.itemid == 661 or item2.itemid == 662 or 

item2.itemid == 663 or item2.itemid == 664 or 

item2.itemid == 665 or item2.itemid == 666 or 

item2.itemid == 667 or item2.itemid == 668 or 

item2.itemid == 669 or item2.itemid == 670 or 

item2.itemid == 671 or item2.itemid == 672 or 

item2.itemid == 673 or item2.itemid == 674 or 

item2.itemid == 675 or item2.itemid == 676 or 

item2.itemid == 709 or item2.itemid == 710 or 

item2.itemid == 711 or item2.itemid == 712 or 

item2.itemid == 2119 then

doTeleportThing(cid,topos)
doSendMagicEffect(topos,6)
doSendMagicEffect(frompos,6)


else
doSendMagicEffect(frompos,6)
doPlayerSendCancel(cid,"You cannot use the wand here.")
end
return 1
end