MESSAGE:New( "Inicializacao logistica Vermelhas", 25):ToAll()


------------------------------------------ red_werehouse_central --------------------------------------------------------

red_werehouse_central=WAREHOUSE:New(STATIC:FindByName("red_werehouse_central"), "Gudauta")
red_werehouse_central:SetSpawnZone(ZONE:New("red_werehouse_central_zona"))
red_werehouse_central:Start()

-- SELF REQUEST
function red_werehouse_central:OnAfterSelfRequest(From,Event,To,groupset,request)
  local groupset=groupset --Core.Set#SET_GROUP
  local request=request   --Functional.Warehouse#WAREHOUSE.Pendingitem
  
  -- Get assignment of this request.
  local assignment=red_werehouse_central:GetAssignment(request)
  
  if assignment == "frente_1" then
    for _,group in pairs(groupset:GetSet()) do
      local group=group --Wrapper.Group#GROUP
      
      -- Route group to Battle zone.
      local ToCoord=red_gudauta_frente_1:GetRandomCoordinate()
      group:RouteGroundTo(ToCoord, group:GetSpeedMax())
    end
  end

  if assignment == "frente_2" then
    for _,group in pairs(groupset:GetSet()) do
      local group=group --Wrapper.Group#GROUP
      
      local ToCoord=red_gudauta_frente_2:GetRandomCoordinate()
      group:RouteGroundTo(ToCoord, group:GetSpeedMax())
    end
  end
  
  if assignment == "defesa_1" then
    for _,group in pairs(groupset:GetSet()) do
      local group=group --Wrapper.Group#GROUP
      
      -- Route group to Battle zone.
      local ToCoord=red_gudauta_defesa_1:GetRandomCoordinate()
      group:RouteGroundTo(ToCoord, group:GetSpeedMax())
    end
  end

  if assignment == "defesa_2" then
    for _,group in pairs(groupset:GetSet()) do
      local group=group --Wrapper.Group#GROUP
      
      local ToCoord=red_gudauta_defesa_2:GetRandomCoordinate()
      group:RouteGroundTo(ToCoord, group:GetSpeedMax())
    end
  end
  
  if assignment == "arty_1" then
    for _,group in pairs(groupset:GetSet()) do
      local group=group --Wrapper.Group#GROUP
      
      local ToCoord=red_gudauta_artilharia_1:GetRandomCoordinate()
      group:RouteGroundTo(ToCoord, group:GetSpeedMax())
    end
  end
  
  if assignment == "arty_2" then
    for _,group in pairs(groupset:GetSet()) do
      local group=group --Wrapper.Group#GROUP
      
      local ToCoord=red_gudauta_artilharia_2:GetRandomCoordinate()
      group:RouteGroundTo(ToCoord, group:GetSpeedMax())
    end
  end
end

-- QUANDO UNIDADES S�O DESTRU�DAS
function red_werehouse_central:OnAfterAssetDead(From, Event, To, asset, request)
  local asset=asset                                          -- Functional.Warehouse#WAREHOUSE.Assetitem
  local request=request                                      -- Functional.Warehouse#WAREHOUSE.Pendingitem
  local assignment=red_werehouse_central:GetAssignment(request)   -- Get assignment.

  -- Send asset to Battle zone either now or when they arrive.
  red_werehouse_central:AddRequest(red_werehouse_central_frente, WAREHOUSE.Descriptor.ATTRIBUTE, asset.attribute, 1, nil, nil, nil, assignment)
end

-- CARREGAR WAREHOUSE
red_werehouse_central:AddAsset(red_apc_1, 1, WAREHOUSE.Attribute.GROUND_APC, nil, nil, 250)
red_werehouse_central:AddAsset(red_apc_2, 1, WAREHOUSE.Attribute.GROUND_APC, nil, nil, 250)
red_werehouse_central:AddAsset(red_sam_1, 1, WAREHOUSE.Attribute.GROUND_SAM, nil, nil, 250)
red_werehouse_central:AddAsset(red_sam_2, 1, WAREHOUSE.Attribute.GROUND_SAM, nil, nil, 250)
red_werehouse_central:AddAsset(red_arty_1, 2, WAREHOUSE.Attribute.GROUND_ARTILLERY, nil, nil, 250)

red_werehouse_central:AddAsset(red_transporte_1, 10, WAREHOUSE.Attribute.AIR_TRANSPORTPLANE, 100000, nil, 250)


------------------------------------------ red_werehouse_gudauta --------------------------------------------------------

red_werehouse_gudauta=WAREHOUSE:New(STATIC:FindByName("red_werehouse_gudauta"), "Gudauta")
red_werehouse_gudauta:SetSpawnZone(ZONE:New("red_werehouse_gudauta_zona"))
red_werehouse_gudauta:Start()

-- SELF REQUEST
function red_werehouse_gudauta:OnAfterSelfRequest(From,Event,To,groupset,request)
  local groupset=groupset --Core.Set#SET_GROUP
  local request=request   --Functional.Warehouse#WAREHOUSE.Pendingitem
  
  -- Get assignment of this request.
  local assignment=red_werehouse_gudauta:GetAssignment(request)
  
  if assignment == "frente_1" then
    for _,group in pairs(groupset:GetSet()) do
      local group=group --Wrapper.Group#GROUP
      
      -- Route group to Battle zone.
      local ToCoord=red_gudauta_frente_1:GetRandomCoordinate()
      group:RouteGroundTo(ToCoord, group:GetSpeedMax())
    end
  end

  if assignment == "frente_2" then
    for _,group in pairs(groupset:GetSet()) do
      local group=group --Wrapper.Group#GROUP
      
      local ToCoord=red_gudauta_frente_2:GetRandomCoordinate()
      group:RouteGroundTo(ToCoord, group:GetSpeedMax())
    end
  end
  
  if assignment == "defesa_1" then
    for _,group in pairs(groupset:GetSet()) do
      local group=group --Wrapper.Group#GROUP
      
      -- Route group to Battle zone.
      local ToCoord=red_gudauta_defesa_1:GetRandomCoordinate()
      group:RouteGroundTo(ToCoord, group:GetSpeedMax())
    end
  end

  if assignment == "defesa_2" then
    for _,group in pairs(groupset:GetSet()) do
      local group=group --Wrapper.Group#GROUP
      
      local ToCoord=red_gudauta_defesa_2:GetRandomCoordinate()
      group:RouteGroundTo(ToCoord, group:GetSpeedMax())
    end
  end
  
  if assignment == "arty_1" then
    for _,group in pairs(groupset:GetSet()) do
      local group=group --Wrapper.Group#GROUP
      
      local ToCoord=red_gudauta_artilharia_1:GetRandomCoordinate()
      group:RouteGroundTo(ToCoord, group:GetSpeedMax())
    end
  end
  
  if assignment == "arty_2" then
    for _,group in pairs(groupset:GetSet()) do
      local group=group --Wrapper.Group#GROUP
      
      local ToCoord=red_gudauta_artilharia_2:GetRandomCoordinate()
      group:RouteGroundTo(ToCoord, group:GetSpeedMax())
    end
  end
end

-- QUANDO UNIDADES S�O DESTRU�DAS
function red_werehouse_gudauta:OnAfterAssetDead(From, Event, To, asset, request)
  local asset=asset                                          -- Functional.Warehouse#WAREHOUSE.Assetitem
  local request=request                                      -- Functional.Warehouse#WAREHOUSE.Pendingitem
  local assignment=red_werehouse_gudauta:GetAssignment(request)   -- Get assignment.

  -- Send asset to Battle zone either now or when they arrive.
  red_werehouse_gudauta:AddRequest(red_werehouse_gudauta_frente, WAREHOUSE.Descriptor.ATTRIBUTE, asset.attribute, 1, nil, nil, nil, assignment)
end

-- CARREGAR WAREHOUSE
red_werehouse_gudauta:AddAsset(red_apc_1, 1, WAREHOUSE.Attribute.GROUND_APC, nil, nil, 250)
red_werehouse_gudauta:AddAsset(red_apc_2, 1, WAREHOUSE.Attribute.GROUND_APC, nil, nil, 250)
red_werehouse_gudauta:AddAsset(red_sam_1, 1, WAREHOUSE.Attribute.GROUND_SAM, nil, nil, 250)
red_werehouse_gudauta:AddAsset(red_sam_2, 1, WAREHOUSE.Attribute.GROUND_SAM, nil, nil, 250)
red_werehouse_gudauta:AddAsset(red_arty_1, 2, WAREHOUSE.Attribute.GROUND_ARTILLERY, nil, nil, 250)


------------------------------------------ red_werehouse_gudauta_frente --------------------------------------------------------

red_werehouse_gudauta_frente=WAREHOUSE:New(STATIC:FindByName("red_werehouse_gudauta_frente"), "Gudauta")
red_werehouse_gudauta_frente:SetSpawnZone(ZONE:New("red_werehouse_gudauta_frente_zona"))
red_werehouse_gudauta_frente:Start()

-- SELF REQUEST
function red_werehouse_gudauta_frente:OnAfterSelfRequest(From,Event,To,groupset,request)
  local groupset=groupset --Core.Set#SET_GROUP
  local request=request   --Functional.Warehouse#WAREHOUSE.Pendingitem
  
  -- Get assignment of this request.
  local assignment=red_werehouse_gudauta_frente:GetAssignment(request)
  
  if assignment == "frente_1" then
    for _,group in pairs(groupset:GetSet()) do
      local group=group --Wrapper.Group#GROUP
      
      -- Route group to Battle zone.
      local ToCoord=red_gudauta_frente_1:GetRandomCoordinate()
      group:RouteGroundTo(ToCoord, group:GetSpeedMax())
    end
  end

  if assignment == "frente_2" then
    for _,group in pairs(groupset:GetSet()) do
      local group=group --Wrapper.Group#GROUP
      
      local ToCoord=red_gudauta_frente_2:GetRandomCoordinate()
      group:RouteGroundTo(ToCoord, group:GetSpeedMax())
    end
  end
  
  if assignment == "defesa_1" then
    for _,group in pairs(groupset:GetSet()) do
      local group=group --Wrapper.Group#GROUP
      
      -- Route group to Battle zone.
      local ToCoord=red_gudauta_defesa_1:GetRandomCoordinate()
      group:RouteGroundTo(ToCoord, group:GetSpeedMax())
    end
  end

  if assignment == "defesa_2" then
    for _,group in pairs(groupset:GetSet()) do
      local group=group --Wrapper.Group#GROUP
      
      local ToCoord=red_gudauta_defesa_2:GetRandomCoordinate()
      group:RouteGroundTo(ToCoord, group:GetSpeedMax())
    end
  end
  
  if assignment == "arty_1" then
    for _,group in pairs(groupset:GetSet()) do
      local group=group --Wrapper.Group#GROUP
      
      local ToCoord=red_gudauta_artilharia_1:GetRandomCoordinate()
      group:RouteGroundTo(ToCoord, group:GetSpeedMax())
    end
  end
  
  if assignment == "arty_2" then
    for _,group in pairs(groupset:GetSet()) do
      local group=group --Wrapper.Group#GROUP
      
      local ToCoord=red_gudauta_artilharia_2:GetRandomCoordinate()
      group:RouteGroundTo(ToCoord, group:GetSpeedMax())
    end
  end
end

-- QUANDO UNIDADES S�O DESTRU�DAS
function red_werehouse_gudauta_frente:OnAfterAssetDead(From, Event, To, asset, request)
  local asset=asset                                          -- Functional.Warehouse#WAREHOUSE.Assetitem
  local request=request                                      -- Functional.Warehouse#WAREHOUSE.Pendingitem
  local assignment=red_werehouse_gudauta_frente:GetAssignment(request)   -- Get assignment.

  -- Send asset to Battle zone either now or when they arrive.
  red_werehouse_gudauta_frente:AddRequest(red_werehouse_gudauta_frente, WAREHOUSE.Descriptor.ATTRIBUTE, asset.attribute, 1, nil, nil, nil, assignment)
  
   -- Send resuply request to base.
  red_werehouse_gudauta:AddRequest(red_werehouse_gudauta_frente, WAREHOUSE.Descriptor.ATTRIBUTE, asset.attribute, 1, nil, nil, nil, "resuprimento_gudauta_frente")
  
   -- Send resuply request to central.
  red_werehouse_central:AddRequest(red_werehouse_gudauta, WAREHOUSE.Descriptor.ATTRIBUTE, asset.attribute, 1, WAREHOUSE.TransportType.AIRPLANE, 1, 1, "resuprimento_gudauta")
end

-- CARREGAR WAREHOUSE
red_werehouse_gudauta_frente:AddAsset(red_apc_1, 2, WAREHOUSE.Attribute.GROUND_APC, nil, nil, 250)
red_werehouse_gudauta_frente:AddAsset(red_apc_2, 2, WAREHOUSE.Attribute.GROUND_APC, nil, nil, 250)
red_werehouse_gudauta_frente:AddAsset(red_sam_1, 2, WAREHOUSE.Attribute.GROUND_SAM, nil, nil, 250)
red_werehouse_gudauta_frente:AddAsset(red_sam_2, 1, WAREHOUSE.Attribute.GROUND_SAM, nil, nil, 250)
red_werehouse_gudauta_frente:AddAsset(red_arty_1, 3, WAREHOUSE.Attribute.GROUND_ARTILLERY, nil, nil, 250)


-- Requisi��es iniciais
red_werehouse_gudauta_frente:AddRequest(red_werehouse_gudauta_frente, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_APC, 1, nil, nil, nil, "frente_1")
--red_werehouse_gudauta_frente:AddRequest(red_werehouse_gudauta_frente, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_APC, 1, nil, nil, nil, "frente_2")
--red_werehouse_gudauta_frente:AddRequest(red_werehouse_gudauta_frente, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_SAM, 1, nil, nil, nil, "defesa_1")
--red_werehouse_gudauta_frente:AddRequest(red_werehouse_gudauta_frente, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_SAM, 1, nil, nil, nil, "defesa_2")
--red_werehouse_gudauta_frente:AddRequest(red_werehouse_gudauta_frente, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_ARTILLERY, 1, nil, nil, nil, "arty_1")
--red_werehouse_gudauta_frente:AddRequest(red_werehouse_gudauta_frente, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_ARTILLERY, 1, nil, nil, nil, "arty_2")



MESSAGE:New( "Inicializacao logistica Vermelhas terminadas", 25):ToAll()



