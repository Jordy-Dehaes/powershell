#Generate random picking order id or enter one manualy
    Write-Host "Choose wether you want to choose your pickingorder id or generate a random one."
    Write-Host "1: Press '1' to generate a random pickingorder id"
    Write-Host "2: Press '2' to enter your pickingorder id manualy"
    Write-Host "q: to quit"
    $selection = Read-Host "give your input here:"
    switch ($selection)
 {
     '1' {
        $randomint1 = Get-Random -Maximum 1000000000000000
        $randomstring1 = [string]$randomint1
        $pickingorderstring = 'OLOM_PCK_' + $randomstring1
     }'2' {
         $pickingorderstring = Read-Host "enter your pickingorder id, example OLOM_PCK_123456"
     } 'q' {
         return
     }
 }
#set the source
$source = 'OLOM'
#set the statuscode, either 'REGISTERED' or 'READYFORPICKING'
cls
    Write-Host "Choose wether you want a register event or readyforpicking."
    Write-Host "1: Press '1' for REGISTERED"
    Write-Host "2: Press '2' for READYFORPICKING"
    Write-Host "q: to quit"
    $selection = Read-Host "give your input here:"
    switch ($selection)
 {
     '1' {
         $statuscode = 'REGISTERED'
     } '2' {
         $statuscode = 'READYFORPICKING'
     } 'q' {
         return
     }
 }
 #set the supply chain, either 'COGOBELU' or 'COGOFR'
cls
    Write-Host "Choose wether you want supply chain COGOBELU or COGOFR."
    Write-Host "1: Press '1' for COGOBELU"
    Write-Host "2: Press '2' for COGOFR"
    Write-Host "q: to quit"
    $selection = Read-Host "give your input here:"
    switch ($selection)
 {
     '1' {
         $supplychain = 'COGOBELU'
     } '2' {
         $supplychain = 'COGOFR'
     } 'q' {
         return
     }
 }
#readyby should be in yyyymmdd hhmmss formate ex: 20210628 09000
cls
    Write-Host "Choose your readyby moment should be in yyyymmdd hhmmss formate ex: 20210628 09000"
    Write-Host "1: Press '1' for default (current timestamp)"
    Write-Host "2: Press '2' to enter your readybymoment manualy"
    Write-Host "q: to quit"
    $selection = Read-Host "give your input here:"
    switch ($selection)
     {
     '1' {
         $readyby = get-date  -Format 'yyyyMMdd HHmmss'
     } '2' {
         $readyby = Read-Host "give your input here:"
     } 'q' {
         return
     }
 }
#prioritypicking decides how an order is treated, true = manquants, false = normal
cls
    Write-Host "Choose wether you want your order to be treated as manquants or as normal picking."
    Write-Host "1: Press '1' for normal"
    Write-Host "2: Press '2' for manquant"
    Write-Host "q: to quit"
    $selection = Read-Host "give your input here:"
    switch ($selection)
 {
     '1' {
         $priority = 'false'
     } '2' {
         $priority = 'true'
     } 'q' {
         return
     }
 }
 #edcPickingOrderAvailable, what it says on the tin, picking order available for the dc or not
 cls
    Write-Host "Choose wether your order has an edpickingorder or not"
    Write-Host "1: Press '1' for no"
    Write-Host "2: Press '2' for yes"
    Write-Host "q: to quit"
    $selection = Read-Host "give your input here:"
    switch ($selection)
 {
     '1' {
         $edpickingorder = 'false'
     } '2' {
         $edpickingorder = 'true'
     } 'q' {
         return
     }
 }

#Generate random sales order id or enter one manualy
cls
    Write-Host "Choose wether you want to choose your salesorder id or generate a random one."
    Write-Host "1: Press '1' to generate a random salesorder id"
    Write-Host "2: Press '2' to enter your salesorder id manualy"
    Write-Host "q: to quit"
    $selection = Read-Host "give your input here:"
    switch ($selection)
 {
     '1' {
        $randomint1 = Get-Random -Maximum 1000000000000000
        $randomstring1 = [string]$randomint1
        $salesorderid = $randomstring1
     }'2' {
         $salesorderid = Read-Host "enter your pickingorder id, example 123456"
     } 'q' {
         return
     }
 }
 #Generate random sales order id or enter one manualy
cls
    Write-Host "Choose wether you want to choose your cbh id or generate a random one."
    Write-Host "1: Press '1' to generate a default cbh id"
    Write-Host "2: Press '2' to enter your cbh id manualy"
    Write-Host "q: to quit"
    $selection = Read-Host "give your input here:"
    switch ($selection)
 {
     '1' {
        $cbhid = "20885347"
     }'2' {
         $cbhid = Read-Host "enter your cbh id, example 20885347"
     } 'q' {
         return
     }
 }

  #set hop
  cls
    Write-Host "choose your hop"
    Write-Host "1: Press '1' for halle"
    Write-Host "2: Press '2' for demo wilgenveld"
    Write-Host "3: Press '3' to enter id manually"
    Write-Host "q: to quit"
    $selection = Read-Host "give your input here:"
    switch ($selection)
 {
     '1' {
         $hop = '7705'
         $supplychaincenter = '3515'
     } '2' {
         $hop = '8307'
         $supplychaincenter = '4307'
     } '3' {
         $hop = Read-Host "enter your hop id here:"
         $supplychaincenter = Read-Host "enter your ff location id here:"
     } 'q' {
         return
     }
 }

 #enter handover date, formate should be yyyymmdd ex 20211008
 cls
    Write-Host "Choose wether you want to enter your handover date manualy or not"
    Write-Host "1: Press '1' for default (today)"
    Write-Host "2: Press '2' to enter your handover date manualy"
    Write-Host "q: to quit"
    $selection = Read-Host "give your input here:"
    switch ($selection)
     {
     '1' {
         $handoverdate = get-date  -Format 'yyyyMMdd'
     } '2' {
         $handoverdate = Read-Host "give your input here (format should be yyyymmdd ex 20211008): "
     } 'q' {
         return
     }
 }
#set handoverwindowstart
    $handoverwindowstart = '0900'
#set handoverwindowend
    $handoverwindowend = '1000'
#set handoverwindowaort
    $handoverwindowaort = $handoverdate + " 0600"
#set olompickline id
        $randomint1 = Get-Random -Maximum 1000000000000000
        $randomstring1 = [string]$randomint1
        $olompicklineid = 'OLOM_PCKL_' + $randomstring1



$pickingorder = [PSCustomObject]@{
    pickingOrderId = @{
        id = $pickingorderstring
        source = $source
        }
    statusCode = $statuscode
    supplyChainId = $supplychain
    readyBy = $readyby
    priorityPicking= $priority
    edcPickingOrderAvailable= $edpickingorder
                salesOrderReference = @{
    id = $salesorderid
    source = 'FEWCS'
    versionNr = '2'
    }
        orderer = @{
        cbhId = $cbhid
    }
    handoverContextAgreement = @{
        handoverServiceId = 'COLLECTNEXTDAY'
        handoverPointId = $hop
        handoverDate = $handoverdate
        handoverWindowStart = $handoverwindowstart
        handoverWindowEnd = $handoverwindowend
        handoverWindowAort = $handoverwindowaort
    }
    pickingOrderLines = @(
        @{
            lineId = $olompicklineid
            techArticleId = '4407186'
            quantity = '1'
            orderUnit = 'P'
            sellingPartner = 'CLPBE'
        }
    )
    supplyChainCenter = @{
        id = $supplychaincenter
    }
}

$filename = ".\" + $pickingorderstring +".json"
$pickingorder | ConvertTo-Json -Depth 2 | Out-File $filename