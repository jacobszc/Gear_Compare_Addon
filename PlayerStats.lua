EquippedItemStats = {
    stamina = 0;
    intellect = 0;
    strength = 0;
    spirit =0;
    agility =0;
    armor =0;
    defence =0;
    dodge =0;
    parry =0;
    block =0;
    hit =0;
    crit =0;
    haste =0;
    expertise =0;
    spellpower =0;
    mp5=0;
    spellpen = 0;

    

}

function EquippedItemStats.Input (stat, value)
    
    if stat == ITEM_MOD_STRENGTH_SHORT then 
        EquippedItemStats.strength = value
    
    elseif stat == ITEM_MOD_AGILITY_SHORT then 
        EquippedItemStats.agility = value
    
    else
        print("unknown")
    end

end
