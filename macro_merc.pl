##########################################
############# By : SDSaad ################
##########################################
######## Pegando o Loot dos Bot's ########
##############[Mercadores]################
##########################################
 
automacro configurando 
{
    SkillLevel MC_OVERCHARGE >= 1
    exclusive 1
    run-once 1
    call 
    {
        do conf lockMap prt_in
        do conf lockMap_x 169
        do conf lockMap_y 136
        do conf attackAuto 0
        do conf attackAuto_party 0
        do conf route_randomWalk 0
        do conf dealAuto 3
        do conf sellAuto 1
        do conf sellAuto_npc prt_in 165 140
        do conf tradeAuto 1
        pause 2
    }
}
 
automacro indoateolocal 
{
    run-once 1
    exclusive 1
    NotInMap prt_in
    NpcNotNear /Vendedor de Armas/
    do move prt_in 169 136
    release indoateolocal
}
 
automacro vendendo 
{
    exclusive 1
    InMapRegex /prt_in/
    NpcNear /Vendedor de Armas/
    InInventory "Poção Branca" >= 1
    call {
    do autosell