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

-- QUANDO UNIDADES SÃO DESTRUÍDAS
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


-- QUANDO UNIDADES SÃO DESTRUÍDAS
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

red_werehouse_central:AddAsset(red_transporte_1, 30, WAREHOUSE.Attribute.GROUND_TRUCK, 100000, nil, 250)


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

-- QUANDO UNIDADES SÃO DESTRUÍDAS
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

-------------- NÃO ALTERAR - METODO DO MOOSE ESTA BUGADO - COPIAR METODO PARA TODOS WAREHOUSES 
function red_werehouse_gudauta_frente:onafterAddAsset(From, Event, To, group, ngroups, forceattribute, forcecargobay, forceweight, loadradius, skill, liveries, assignment)
  red_werehouse_gudauta_frente:T({group=group, ngroups=ngroups, forceattribute=forceattribute, forcecargobay=forcecargobay, forceweight=forceweight})

  -- Set default.
  local n=ngroups or 1
  
  -- Handle case where just a string is passed.
  if type(group)=="string" then
    group=GROUP:FindByName(group)
  end
  
  if liveries and type(liveries)=="string" then
    liveries={liveries}
  end
    
  if group then
  
    -- Try to get UIDs from group name. Is this group a known or a new asset?
    local wid,aid,rid=red_werehouse_gudauta_frente:_GetIDsFromGroup(group)
    
    if wid and aid and rid then
      ---------------------------
      -- This is a KNOWN asset --
      ---------------------------
      
      -- Get the original warehouse this group belonged to.
      local warehouse=red_werehouse_gudauta_frente:FindWarehouseInDB(wid)
      if warehouse then
        local request=warehouse:_GetRequestOfGroup(group, warehouse.pending)
        if request then
        
          -- Increase number of cargo delivered and transports home.
          local istransport=warehouse:_GroupIsTransport(group,request)
          if istransport==true then
            request.ntransporthome=request.ntransporthome+1
            request.transportgroupset:Remove(group:GetName(), true)
            red_werehouse_gudauta_frente:T3(warehouse.wid..string.format("Transport %d of %s returned home.", request.ntransporthome, tostring(request.ntransport)))
          elseif istransport==false then
            request.ndelivered=request.ndelivered+1
            request.cargogroupset:Remove(red_werehouse_gudauta_frente:_GetNameWithOut(group), true)
            red_werehouse_gudauta_frente:T3(warehouse.wid..string.format("Cargo %d of %s delivered.", request.ndelivered, tostring(request.nasset)))
          else
            red_werehouse_gudauta_frente:T(warehouse.wid..string.format("WARNING: Group %s is neither cargo nor transport!", group:GetName()))
          end
          
        end
  
-- IF DANDO ERRO NO MOOSE - LINHA 70451 - request é igual a nil - dando nil exeption       
        -- If no assignment was given we take the assignment of the request if there is any.
--        if assignment==nil and request.assignment~=nil then
--          assignment=request.assignment
--        end
        
        -- Correção do if acima - verifica se request é nil antes de acessar request.assignment.
        if assignment==nil and request ~= nil then
          if request.assignment~=nil then
            assignment=request.assignment
          end
        end
      end

      -- Get the asset from the global DB.
      local asset=red_werehouse_gudauta_frente:FindAssetInDB(group)

      -- Set livery.      
      if liveries then
        asset.livery=liveries[math.random(#liveries)]
      end
      
      -- Set skill.
      asset.skill=skill
        
      -- Note the group is only added once, i.e. the ngroups parameter is ignored here.
      -- This is because usually these request comes from an asset that has been transfered from another warehouse and hence should only be added once.
      if asset~=nil then        
        red_werehouse_gudauta_frente:_DebugMessage(string.format("Warehouse %s: Adding KNOWN asset uid=%d with attribute=%s to stock.", red_werehouse_gudauta_frente.alias, asset.uid, asset.attribute), 5)
        table.insert(red_werehouse_gudauta_frente.stock, asset)
        red_werehouse_gudauta_frente:NewAsset(asset, assignment or "")
      else
        red_werehouse_gudauta_frente:_ErrorMessage(string.format("ERROR: Known asset could not be found in global warehouse db!"), 0)
      end      
        
    else
      -------------------------
      -- This is a NEW asset --
      -------------------------
       
      -- Debug info.
      red_werehouse_gudauta_frente:_DebugMessage(string.format("Warehouse %s: Adding %d NEW assets of group %s to stock.", red_werehouse_gudauta_frente.alias, n, tostring(group:GetName())), 5)
       
      -- This is a group that is not in the db yet. Add it n times.
      local assets=red_werehouse_gudauta_frente:_RegisterAsset(group, n, forceattribute, forcecargobay, forceweight, loadradius, liveries, skill)
      
      -- Add created assets to stock of this warehouse.
      for _,asset in pairs(assets) do
        table.insert(red_werehouse_gudauta_frente.stock, asset)
        red_werehouse_gudauta_frente:NewAsset(asset, assignment or "")
      end      
      
    end   
    
    -- Destroy group if it is alive.
    if group:IsAlive()==true then
      red_werehouse_gudauta_frente:_DebugMessage(string.format("Destroying group %s.", group:GetName()), 5)
      -- Setting parameter to false, i.e. creating NO dead or remove unit event, seems to not confuse the dispatcher logic.
      group:Destroy(false)
    end
  
  else
    red_werehouse_gudauta_frente:E(self.wid.."ERROR: Unknown group added as asset!")
  end
  
  -- Update status.
  --self:__Status(-1)
end

-- Requisições iniciais
red_werehouse_gudauta_frente:AddRequest(red_werehouse_gudauta_frente, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_APC, 1, nil, nil, nil, "frente_1")
--red_werehouse_gudauta_frente:AddRequest(red_werehouse_gudauta_frente, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_APC, 1, nil, nil, nil, "frente_2")
--red_werehouse_gudauta_frente:AddRequest(red_werehouse_gudauta_frente, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_SAM, 1, nil, nil, nil, "defesa_1")
--red_werehouse_gudauta_frente:AddRequest(red_werehouse_gudauta_frente, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_SAM, 1, nil, nil, nil, "defesa_2")
--red_werehouse_gudauta_frente:AddRequest(red_werehouse_gudauta_frente, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_ARTILLERY, 1, nil, nil, nil, "arty_1")
--red_werehouse_gudauta_frente:AddRequest(red_werehouse_gudauta_frente, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_ARTILLERY, 1, nil, nil, nil, "arty_2")

red_werehouse_gudauta:AddRequest(red_werehouse_gudauta_frente, WAREHOUSE.Descriptor.ATTRIBUTE, WAREHOUSE.Attribute.GROUND_APC, 1, nil, nil, nil, nil)



MESSAGE:New( "Inicializacao logistica Vermelhas terminadas", 25):ToAll()



