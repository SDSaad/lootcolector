##########################################
############# By : SDSaad ################
##########################################
######## Pegando o Loot dos Bot's ########
################[Killers]#################
##########################################
 
automacro indodartrade {
    CharCurrentWeight > 49%
    exclusive 1
    run-once 1
    call
    {
        log Opa! Já estou com $.CharcurrentWeightLastPercent de peso! Melhor ir entregar os itens ao mercador!
        do conf lockMap 0
        do conf attackAuto 0
        do conf dealAuto 3
        do move prt_in 168 136
        pause 1
        do relog
        release dandotrade
    }
}
 
automacro dandotrade {
    PlayerNearDist /NomeDoMercador/ < 3
    exclusive 1
    run-once 1
    call 
    {
        do deal $.PlayerNearDistLastBinId
        pause 3
        if (&eval($.zeny-100000) > 1) 
        {
            do deal add z &eval($.zeny-100000)
        }
        if (&invamount(Poção Branca) > 0) 
        {
            do deal add &inventory(Poção Branca)
        }
        pause 1
        do deal
        release concluindo
    }
}
 
automacro concluindo 
{
    exclusive 1
    run-once 1
    priority 3
    InInventory "Poção Branca" == 0
    Zeny == 100000
    call 
    {
        do conf lockMap prontera
        do conf attackAuto 2
        release indodartrade
    }
}