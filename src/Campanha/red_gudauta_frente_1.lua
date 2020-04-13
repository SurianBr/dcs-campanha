MESSAGE:New( "Inicializacao frente Gudauta 1 Vermelhas", 25):ToAll()

red_gudauta_frente_1 = ZONE:New("red_gudauta_frente_1")
red_gudauta_frente_1_captura = ZONE_CAPTURE_COALITION:New(red_gudauta_frente_1, coalition.side.RED) 
red_gudauta_defesa_1 = ZONE:New("red_gudauta_defesa_1")
red_gudauta_artilharia_1 = ZONE:New("red_gudauta_artilharia_1")

red_gudauta_frente_2 = ZONE:New("red_gudauta_frente_2")
red_gudauta_frente_2_captura = ZONE_CAPTURE_COALITION:New(red_gudauta_frente_2, coalition.side.RED) 
red_gudauta_defesa_2 = ZONE:New("red_gudauta_defesa_2")
red_gudauta_artilharia_2 = ZONE:New("red_gudauta_artilharia_2")

--- @param Functional.ZoneCaptureCoalition#ZONE_CAPTURE_COALITION self
function red_gudauta_frente_1_captura:OnEnterGuarded( From, Event, To )
  if From ~= To then
    local Coalition = self:GetCoalition()
    self:E( { Coalition = Coalition } )
    if Coalition == coalition.side.BLUE then
      red_gudauta_frente_1_captura:Smoke( SMOKECOLOR.Blue )
    else
      red_gudauta_frente_1_captura:Smoke( SMOKECOLOR.Red )
    end
  end
end

--- @param Functional.Protect#ZONE_CAPTURE_COALITION self
function red_gudauta_frente_1_captura:OnEnterEmpty()
  red_gudauta_frente_1_captura:Smoke( SMOKECOLOR.Green )
end


--- @param Functional.Protect#ZONE_CAPTURE_COALITION self
function red_gudauta_frente_1_captura:OnEnterAttacked()
  red_gudauta_frente_1_captura:Smoke( SMOKECOLOR.White )
end


--- @param Functional.Protect#ZONE_CAPTURE_COALITION self
function red_gudauta_frente_1_captura:OnEnterCaptured()
  
end
  

red_gudauta_frente_1_captura:Start( 30, 30 )
  
red_gudauta_frente_1_captura:Smoke(SMOKECOLOR.Red)
  
MESSAGE:New( "Inicializacao frente Gudauta 1 Vermelhas terminada", 25):ToAll()
  