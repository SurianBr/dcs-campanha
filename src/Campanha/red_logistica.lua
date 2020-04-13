MESSAGE:New( "Inicializacao logistica Vermelhas", 25):ToAll()

------------------------------------------ red_werehouse_gudauta_frente --------------------------------------------------------

red_werehouse_gudauta_frente=WAREHOUSE:New(STATIC:FindByName("red_werehouse_gudauta_frente"), "Gudauta")
red_werehouse_gudauta_frente:SetSpawnZone(ZONE:New("red_werehouse_gudauta_frente_zona"))
red_werehouse_gudauta_frente:Start()


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

-- CARREGAR WAREHOUSE
red_werehouse_gudauta_frente:AddAsset(red_apc_1, 15, WAREHOUSE.Attribute.GROUND_APC, nil, nil, 250)
red_werehouse_gudauta_frente:AddAsset(red_apc_2, 15, WAREHOUSE.Attribute.GROUND_APC, nil, nil, 250)
red_werehouse_gudauta_frente:AddAsset(red_sam_1, 10, WAREHOUSE.Attribute.GROUND_SAM, nil, nil, 250)
red_werehouse_gudauta_frente:AddAsset(red_sam_2, 5, WAREHOUSE.Attribute.GROUND_SAM, nil, nil, 250)
red_werehouse_gudauta_frente:AddAsset(red_arty_1, 15, WAREHOUSE.Attribute.GROUND_ARTILLERY, nil, nil, 250)
red_werehouse_gudauta_frente:AddAsset(red_arty_2, 15, WAREHOUSE.Attribute.GROUND_ARTILLERY, nil, nil, 250)


-- Requisições iniciais
red_werehouse_gudauta_frente:AddRequest(red_werehouse_gudauta_frente, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_APC, 10, nil, nil, nil, "frente_1")
red_werehouse_gudauta_frente:AddRequest(red_werehouse_gudauta_frente, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_APC, 10, nil, nil, nil, "frente_2")
red_werehouse_gudauta_frente:AddRequest(red_werehouse_gudauta_frente, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_SAM, 5, nil, nil, nil, "defesa_1")
red_werehouse_gudauta_frente:AddRequest(red_werehouse_gudauta_frente, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_SAM, 5, nil, nil, nil, "defesa_2")
red_werehouse_gudauta_frente:AddRequest(red_werehouse_gudauta_frente, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_ARTILLERY, 5, nil, nil, nil, "arty_1")
red_werehouse_gudauta_frente:AddRequest(red_werehouse_gudauta_frente, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_ARTILLERY, 5, nil, nil, nil, "arty_2")


------------------------------------------ red_werehouse_gudauta --------------------------------------------------------

red_werehouse_gudauta=WAREHOUSE:New(STATIC:FindByName("red_werehouse_gudauta"), "Gudauta")
red_werehouse_gudauta:SetSpawnZone(ZONE:New("red_werehouse_gudauta_zona"))
red_werehouse_gudauta:Start()


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

-- CARREGAR WAREHOUSE
red_werehouse_gudauta:AddAsset(red_apc_1, 15, WAREHOUSE.Attribute.GROUND_APC, nil, nil, 250)
red_werehouse_gudauta:AddAsset(red_apc_2, 15, WAREHOUSE.Attribute.GROUND_APC, nil, nil, 250)
red_werehouse_gudauta:AddAsset(red_sam_1, 10, WAREHOUSE.Attribute.GROUND_SAM, nil, nil, 250)
red_werehouse_gudauta:AddAsset(red_sam_2, 5, WAREHOUSE.Attribute.GROUND_SAM, nil, nil, 250)
red_werehouse_gudauta:AddAsset(red_arty_1, 15, WAREHOUSE.Attribute.GROUND_ARTILLERY, nil, nil, 250)
red_werehouse_gudauta:AddAsset(red_arty_2, 15, WAREHOUSE.Attribute.GROUND_ARTILLERY, nil, nil, 250)


-- Requisições iniciais
red_werehouse_gudauta:AddRequest(red_werehouse_gudauta, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_APC, 10, nil, nil, nil, "frente_1")
red_werehouse_gudauta:AddRequest(red_werehouse_gudauta, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_APC, 10, nil, nil, nil, "frente_2")
red_werehouse_gudauta:AddRequest(red_werehouse_gudauta, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_SAM, 5, nil, nil, nil, "defesa_1")
red_werehouse_gudauta:AddRequest(red_werehouse_gudauta, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_SAM, 5, nil, nil, nil, "defesa_2")
red_werehouse_gudauta:AddRequest(red_werehouse_gudauta, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_ARTILLERY, 5, nil, nil, nil, "arty_1")
red_werehouse_gudauta:AddRequest(red_werehouse_gudauta, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_ARTILLERY, 5, nil, nil, nil, "arty_2")
MESSAGE:New( "Inicializacao logistica Vermelhas terminadas", 25):ToAll()



