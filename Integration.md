# Integration #
#### Modeler(s): Dickerson, Jezak, and Brinkhus ####
#### Symbol: INT ####

This section will contain Matlab models and notes that combine plant subsystems into one cohesive model.



## Documentation ##



## Matlab Files ##
  * File Name and Version (Upload Here)
> > Comments Here.



## Table of Subsystem Inputs and Outputs ##

### Reactor Core Physics (PRX) ###
| **Variable Name** | **Varible Description** | **Units** | **Dimensionality** | **Source Component** | **Sink Component** | **Display Notes** |
|:------------------|:------------------------|:----------|:-------------------|:---------------------|:-------------------|:------------------|
| PRX\_Flux         | Neutron flux distribution | neutrons/(m^2\*s) | Array (2x)         | PRX                  | PRH, PXC           | Invisible         |
| PRX\_P            | Power Distribution      | W/m^2     | Array (2x)         | PRX                  | Power distribution, PRH  | Visible as 3D distribution |
| PRX\_T            | Temperature distribution | Degrees C | Array (2x)         | PRH                  | PRX                | Invisible         |
| PRX\_CR           | Control and safety rod positions | meters    | Scalar (1x)        | PRD                  | Neutron flux distribution  | Invisible         |


### Reactor Core Thermal (PRH) ###
| **Variable Name** | **Varible Description** | **Units** | **Dimensionality** | **Source Component** | **Sink Component** | **Display Notes** |
|:------------------|:------------------------|:----------|:-------------------|:---------------------|:-------------------|:------------------|
| PRH\_Tave         | Coolant Temperature per unit cell | Degree Celcius| Matrix (3x)        | PRH                  | UI, PRC            | Visible           |
| PRH\_Tmax         | Fuel Centreline Temperature per unit cell | Degree Celcius| Matrix (3x)        | PRH                  | UI                 | Visible           |
| PRH\_Qave         | Heat Flux per unit cell | W/m^2     | Matrix (3x)        | PRH                  | UI                 | Visible           |
| PRH\_Mdot         | Core Inlet Coolant Mass Flow Rate | Kg/sec    | Scalar (1x)        | PRC                  | PRH                | InVisible         |
| PRH\_Tcold        | Core Inlet Coolant temperature| Celcius   | Scalar (1x)        | PRC                  | PRH                | InVisible         |
| PRH\_Core\_inlet\_pressure| Core Inlet pressure     | Pa        | Scalar (1x)        | PRC                  | PRH                | InVisible         |



### Ex-Core Nuclear Instrumentation (PXC) ###
| **Variable Name** | **Varible Description** | **Units** | **Dimensionality** | **Source Component** | **Sink Component** | **Display Notes** |
|:------------------|:------------------------|:----------|:-------------------|:---------------------|:-------------------|:------------------|
| PXC\_SR\_1        | Source Range Channel 1 Out | counts/sec | Scalar (1x)        | PRX                  | PPS                | Visible (meter)   |
| PXC\_SR\_2        | Source Range Channel 2 Out | counts/sec | Scalar (1x)        | PRX                  | PPS                | Visible (meter)   |
| PXC\_IR\_1        | Intermediate Range Channel 1 Out | amps      | Scalar (1x)        | PRX                  | PPS                | Visible (meter)   |
| PXC\_IR\_2        | Intermediate Range Channel 2 Out| amps      | Scalar (1x)        | PRX                  | PPS                | Visible (meter)   |
| PXC\_PR\_1        | Power Range Channel 1 out | %RTP      | Scalar (1x)        | PRX                  | PPS                | Visible (numeric display) |
| PXC\_PR\_2        | Power Range Channel 2 out | %RTP      | Scalar (1x)        | PRX                  | PPS                | Visible (numeric display) |
| PXC\_PR\_3        | Power Range Channel 3 out | %RTP      | Scalar (1x)        | PRX                  | PPS                | Visible (numeric display) |
| PXC\_PR\_4        | Power Range Channel 4 out | %RTP      | Scalar (1x)        | PRX                  | PPS                | Visible (numeric display) |
| PRX\_SR\_flux     | neutron flux near SR detectors | neutrons/(m^2\*s) | Array (2x)         | PRX                  | PXC                | invisible         |
| PRX\_IR\_flux     | neutron flux near IR detectors | neutrons/(m^2\*s) | Array (2x)         | PRX                  | PXC                | invisible         |
| PRX\_PR\_flux     | neutron flux near SR detectors | neutrons/(m^2\*s) | Array (2x)         | PRX                  | PXC                | invisible         |

### Control Rod Drive (PRD) ###
| **Variable Name** | **Varible Description** | **Units** | **Dimensionality** | **Source Component** | **Sink Component** | **Display Notes** |
|:------------------|:------------------------|:----------|:-------------------|:---------------------|:-------------------|:------------------|
| PRD\_Rod\_Speed   | Control Rod Movement Speed | steps/min | Scalar (1x)        | PRD                  | PRD, PRX           | numeric display   |
| PRD\_Rod\_Move\_Direction | Control Rod Movement direction | none      | Scalar (1x)        | PRD                  | PRD                | display (IN or OUT) |
| PRD\_Rod\_Move\_Lamp | On/Off Lamp for Rod Movement | none      | Scalar (1x)        | PRD                  | PRD                | display (ON = green light) |
| PRD\_Rod\_Position | Control Rod Position    | steps withdrawn | Scalar (1x)        | PRD                  | PRD, PRX           | numeric display   |
| PRD\_Rod\_Control\_Scheme | Control Rod Control Scheme | none      | Scalar (1x)        | PRD                  | PRD                | display (AUTO or Manual) |
| PRC\_Tavg         | Reactor Coolant System Avg Temp | degC      | Scalar (1x)        | PRC                  | PRD                | invisible         |
| SSG\_steam\_pressure | impulse pressure to turbine | Pa        | Scalar (1x)        | SSG                  | PRD                | invisible         |
| PXC\_PR\_1        | Power Range Channel 1 out | %RTP      | Scalar (1x)        | PXC                  | PRD                | Visible (numeric display) |

### Reactor Coolant System (PRC) ###
| **Variable Name** | **Varible Description** | **Units** | **Dimensionality** | **Source Component** | **Sink Component** | **Display Notes** |
|:------------------|:------------------------|:----------|:-------------------|:---------------------|:-------------------|:------------------|
| PRC\_k\_UPlenum\_Inlet\_MassFlow | Mass flow rate  of primary coolant into  upper plenum | kg/sec    | Scalar (1x)        | PRH                  | PRC                | Not Visible       |
| PRC\_k\_UPlenum\_Inlet\_Enthalpy | Enthalpy of primary coolant into upper plenum | J/kg      | Scalar (1x)        | PRH                  | PRC                | Not Visible       |
| PRC\_k\_UPlenum\_Inlet\_Temp | Temperature of primary coolant into upper plenum | Celsius   | Scalar (1x)        | PRH                  | PRC                | Not Visible       |
| PRC\_k\_UPlenum\_Inlet\_Press | Pressure of primary coolant into upper Plenum | Pa        | Scalar (1x)        | PRH                  | PRC                | Not Visible       |
| PRC\_UPlenum\_Outlet\_MassFlow | Mass flow rate  of primary coolant out of upper plenum into hot leg j | kg/sec    | Scalar (1x)        | PRC                  | PRC                | Not Visible       |
| PRC\_UPlenum\_Outlet\_Enthalpy | Enthalpy of primary coolant out of upper plenum into hot leg j | J/kg      | Scalar (1x)        | PRC                  | PRC                | Not Visible       |
| PRC\_UPlenum\_Outlet\_Temp | Temperature of primary coolant out of upper plenum into hot leg j | Celsius   | Scalar (1x)        | PRC                  | PRC                | Not Visible       |
| PRC\_UPlenum\_Outlet\_Press | Pressure of primary coolant out of upper Plenum | Pa        | Scalar (1x)        | PRC                  | PRC                | Not Visible       |

| PRC\_1\_HotLeg\_Inlet\_MassFlow | Mass flow rate  of primary coolant into hot leg | kg/sec | Scalar (1x) | PRC | PRC | Not Visible |
|:--------------------------------|:------------------------------------------------|:-------|:------------|:----|:----|:------------|
| PRC\_1\_HotLeg\_Inlet\_Enthalpy | Enthalpy of primary coolant into hot leg        | J/kg   | Scalar (1x) | PRC | PRC | Not Visible |
| PRC\_1\_HotLeg\_Inlet\_Temp     | Temperature of primary coolant into hot leg     | Celsius | Scalar (1x) | PRC | PRC | Visible     |
| PRC\_1\_HotLeg\_Inlet\_Press    | Pressure of primary coolant into hot leg        | Pa     | Scalar (1x) | PRC | PRC | Visible     |
| PRC\_1\_HotLeg\_Surgeline\_MassFlow | Mass flow rate  of surge flow into hot leg      | kg/sec | Scalar (1x) | PPZ | PRC | Not Visible |
| PRC\_1\_HotLeg\_Surgeline\_Enthalpy | Enthalpy of surge flow into hot leg             | J/kg   | Scalar (1x) | PPZ | PRC | Not Visible |
| PRC\_1\_HotLeg\_Surgeline\_Temp | Temperature of surge flow into hot leg          | Celsius | Scalar (1x) | PPZ | PRC | Not Visible |
| PRC\_1\_HotLeg\_Surgeline\_Press | Pressure of surge flow into hot leg             | Pa     | Scalar (1x) | PRC | PPZ | Not Visible |
| PRC\_1\_HotLeg\_Outlet\_MassFlow | Mass flow rate  of primary coolant out of hot leg | kg/sec | Scalar (1x) | PRC | PSG | Not Visible |
| PRC\_1\_HotLeg\_Outlet\_Enthalpy | Enthalpy of primary coolant out of hot leg      | J/kg   | Scalar (1x) | PRC | PSG | Not Visible |
| PRC\_1\_HotLeg\_Outlet\_Temp    | Temperature of primary coolant out of hot leg   | Celsius | Scalar (1x) | PRC | PSG | Not Visible |
| PRC\_1\_HotLeg\_Outlet\_Press   | Pressure of primary coolant out of hot leg      | Pa     | Scalar (1x) | PRC | PSG | Not Visible |

| PRC\_2\_HotLeg\_Inlet\_MassFlow | Mass flow rate  of primary coolant into hot leg | kg/sec | Scalar (1x) | PRC | PRC | Not Visible |
|:--------------------------------|:------------------------------------------------|:-------|:------------|:----|:----|:------------|
| PRC\_2\_HotLeg\_Inlet\_Enthalpy | Enthalpy of primary coolant into hot leg        | J/kg   | Scalar (1x) | PRC | PRC | Not Visible |
| PRC\_2\_HotLeg\_Inlet\_Temp     | Temperature of primary coolant into hot leg     | Celsius | Scalar (1x) | PRC | PRC | Visible     |
| PRC\_2\_HotLeg\_Inlet\_Press    | Pressure of primary coolant into hot leg        | Pa     | Scalar (1x) | PRC | PRC | Visible     |
| PRC\_2\_HotLeg\_Outlet\_MassFlow | Mass flow rate  of primary coolant out of hot leg | kg/sec | Scalar (1x) | PRC | PSG | Not Visible |
| PRC\_2\_HotLeg\_Outlet\_Enthalpy | Enthalpy of primary coolant out of hot leg      | J/kg   | Scalar (1x) | PRC | PSG | Not Visible |
| PRC\_2\_HotLeg\_Outlet\_Temp    | Temperature of primary coolant out of hot leg   | Celsius | Scalar (1x) | PRC | PSG | Not Visible |
| PRC\_2\_HotLeg\_Outlet\_Press   | Pressure of primary coolant out of hot leg      | Pa     | Scalar (1x) | PRC | PSG | Not Visible |

| PRC\_1A\_ColdLeg\_Inlet\_MassFlow | Mass flow rate  of primary coolant into Cold leg | kg/sec | Scalar (1x) | PRP | PRC | Not Visible |
|:----------------------------------|:-------------------------------------------------|:-------|:------------|:----|:----|:------------|
| PRC\_1A\_ColdLeg\_Inlet\_Enthalpy | Enthalpy of primary coolant into Cold leg        | J/kg   | Scalar (1x) | PRP | PRC | Not Visible |
| PRC\_1A\_ColdLeg\_Inlet\_Temp     | Temperature of primary coolant into Cold leg     | Celsius | Scalar (1x) | PRP | PRC | Not Visible |
| PRC\_1A\_ColdLeg\_Inlet\_Press    | Pressure of primary coolant into Cold leg        | Pa     | Scalar (1x) | PRP | PRC | Not Visible |
| PRC\_1A\_ColdLeg\_Sprayline\_MassFlow | Mass flow rate  of spray flow out of cold leg    | kg/sec | Scalar (1x) | PPZ | PRC | Not Visible |
| PRC\_1A\_ColdLeg\_Sprayline\_Enthalpy | Enthalpy of spray flow out of cold leg           | J/kg   | Scalar (1x) | PPZ | PRC | Not Visible |
| PRC\_1A\_ColdLeg\_Sprayline\_Temp | Temperature of spray flow out of cold leg        | Celsius | Scalar (1x) | PPZ | PRC | Not Visible |
| PRC\_1A\_ColdLeg\_Sprayline\_Press | Pressure of spray flow out of cold leg           | Pa     | Scalar (1x) | PRC | PPZ | Not Visible |
| PRC\_1A\_ColdLeg\_Outlet\_MassFlow | Mass flow rate  of primary coolant out of Cold leg | kg/sec | Scalar (1x) | PRC | PRC | Not Visible |
| PRC\_1A\_ColdLeg\_Outlet\_Enthalpy | Enthalpy of primary coolant out of Cold leg      | J/kg   | Scalar (1x) | PRC | PRC | Not Visible |
| PRC\_1A\_ColdLeg\_Outlet\_Temp    | Temperature of primary coolant out of Cold leg   | Celsius | Scalar (1x) | PRC | PRC | Visible     |
| PRC\_1A\_ColdLeg\_Outlet\_Press   | Pressure of primary coolant out of Cold leg      | Pa     | Scalar (1x) | PRC | PRC | Visible     |

| PRC\_1B\_ColdLeg\_Inlet\_MassFlow | Mass flow rate  of primary coolant into Cold leg | kg/sec | Scalar (1x) | PRP | PRC | Not Visible |
|:----------------------------------|:-------------------------------------------------|:-------|:------------|:----|:----|:------------|
| PRC\_1B\_ColdLeg\_Inlet\_Enthalpy | Enthalpy of primary coolant into Cold leg        | J/kg   | Scalar (1x) | PRP | PRC | Not Visible |
| PRC\_1B\_ColdLeg\_Inlet\_Temp     | Temperature of primary coolant into Cold leg     | Celsius | Scalar (1x) | PRP | PRC | Not Visible |
| PRC\_1B\_ColdLeg\_Inlet\_Press    | Pressure of primary coolant into Cold leg        | Pa     | Scalar (1x) | PRP | PRC | Not Visible |
| PRC\_1B\_ColdLeg\_Sprayline\_MassFlow | Mass flow rate  of spray flow out of cold leg    | kg/sec | Scalar (1x) | PPZ | PRC | Not Visible |
| PRC\_1B\_ColdLeg\_Sprayline\_Enthalpy | Enthalpy of spray flow out of cold leg           | J/kg   | Scalar (1x) | PPZ | PRC | Not Visible |
| PRC\_1B\_ColdLeg\_Sprayline\_Temp | Temperature of spray flow out of cold leg        | Celsius | Scalar (1x) | PPZ | PRC | Not Visible |
| PRC\_1B\_ColdLeg\_Sprayline\_Press | Pressure of spray flow out of cold leg           | Pa     | Scalar (1x) | PRC | PPZ | Not Visible |
| PRC\_1B\_ColdLeg\_Outlet\_MassFlow | Mass flow rate  of primary coolant out of Cold leg | kg/sec | Scalar (1x) | PRC | PRC | Not Visible |
| PRC\_1B\_ColdLeg\_Outlet\_Enthalpy | Enthalpy of primary coolant out of Cold leg      | J/kg   | Scalar (1x) | PRC | PRC | Not Visible |
| PRC\_1B\_ColdLeg\_Outlet\_Temp    | Temperature of primary coolant out of Cold leg   | Celsius | Scalar (1x) | PRC | PRC | Visible     |
| PRC\_1B\_ColdLeg\_Outlet\_Press   | Pressure of primary coolant out of Cold leg      | Pa     | Scalar (1x) | PRC | PRC | Visible     |

| PRC\_2A\_ColdLeg\_Inlet\_MassFlow | Mass flow rate  of primary coolant into Cold leg | kg/sec | Scalar (1x) | PRP | PRC | Not Visible |
|:----------------------------------|:-------------------------------------------------|:-------|:------------|:----|:----|:------------|
| PRC\_2A\_ColdLeg\_Inlet\_Enthalpy | Enthalpy of primary coolant into Cold leg        | J/kg   | Scalar (1x) | PRP | PRC | Not Visible |
| PRC\_2A\_ColdLeg\_Inlet\_Temp     | Temperature of primary coolant into Cold leg     | Celsius | Scalar (1x) | PRP | PRC | Not Visible |
| PRC\_2A\_ColdLeg\_Inlet\_Press    | Pressure of primary coolant into Cold leg        | Pa     | Scalar (1x) | PRP | PRC | Not Visible |
| PRC\_2A\_ColdLeg\_Outlet\_MassFlow | Mass flow rate  of primary coolant out of Cold leg | kg/sec | Scalar (1x) | PRC | PRC | Not Visible |
| PRC\_2A\_ColdLeg\_Outlet\_Enthalpy | Enthalpy of primary coolant out of Cold leg      | J/kg   | Scalar (1x) | PRC | PRC | Not Visible |
| PRC\_2A\_ColdLeg\_Outlet\_Temp    | Temperature of primary coolant out of Cold leg   | Celsius | Scalar (1x) | PRC | PRC | Visible     |
| PRC\_2A\_ColdLeg\_Outlet\_Press   | Pressure of primary coolant out of Cold leg      | Pa     | Scalar (1x) | PRC | PRC | Visible     |

| PRC\_2B\_ColdLeg\_Inlet\_MassFlow | Mass flow rate  of primary coolant into Cold leg | kg/sec | Scalar (1x) | PRP | PRC | Not Visible |
|:----------------------------------|:-------------------------------------------------|:-------|:------------|:----|:----|:------------|
| PRC\_2B\_ColdLeg\_Inlet\_Enthalpy | Enthalpy of primary coolant into Cold leg        | J/kg   | Scalar (1x) | PRP | PRC | Not Visible |
| PRC\_2B\_ColdLeg\_Inlet\_Temp     | Temperature of primary coolant into Cold leg     | Celsius | Scalar (1x) | PRP | PRC | Not Visible |
| PRC\_2B\_ColdLeg\_Inlet\_Press    | Pressure of primary coolant into Cold leg        | Pa     | Scalar (1x) | PRP | PRC | Not Visible |
| PRC\_2B\_ColdLeg\_Outlet\_MassFlow | Mass flow rate  of primary coolant out of Cold leg | kg/sec | Scalar (1x) | PRC | PRC | Not Visible |
| PRC\_2B\_ColdLeg\_Outlet\_Enthalpy | Enthalpy of primary coolant out of Cold leg      | J/kg   | Scalar (1x) | PRC | PRC | Not Visible |
| PRC\_2B\_ColdLeg\_Outlet\_Temp    | Temperature of primary coolant out of Cold leg   | Celsius | Scalar (1x) | PRC | PRC | Visible     |
| PRC\_2B\_ColdLeg\_Outlet\_Press   | Pressure of primary coolant out of Cold leg      | Pa     | Scalar (1x) | PRC | PRC | Visible     |

| PRC\_j\_Downcomer\_Inlet\_MassFlow | Mass flow rate  of primary coolant into Downcomer | kg/sec | Scalar (1x) | PRC | PRC | Not Visible |
|:-----------------------------------|:--------------------------------------------------|:-------|:------------|:----|:----|:------------|
| PRC\_j\_Downcomer\_Inlet\_Enthalpy | Enthalpy of primary coolant into Downcomer        | J/kg   | Scalar (1x) | PRC | PRC | Not Visible |
| PRC\_j\_Downcomer\_Inlet\_Temp     | Temperature of primary coolant into Downcomer     | Celsius | Scalar (1x) | PRC | PRC | Not Visible |
| PRC\_j\_Downcomer\_Inlet\_Press    | Pressure of primary coolant into Downcomer        | Pa     | Scalar (1x) | PRC | PRC | Not Visible |
| PRC\_j\_Downcomer\_Outlet\_MassFlow | Mass flow rate  of primary coolant out of Downcomer | kg/sec | Scalar (1x) | PRC | PRC | Not Visible |
| PRC\_j\_Downcomer\_Outlet\_Enthalpy | Enthalpy of primary coolant out of Downcomer      | J/kg   | Scalar (1x) | PRC | PRC | Not Visible |
| PRC\_j\_Downcomer\_Outlet\_Temp    | Temperature of primary coolant out of Downcomer   | Celsius | Scalar (1x) | PRC | PRC | Not Visible |
| PRC\_j\_Downcomer\_Outlet\_Press   | Pressure of primary coolant out of Downcomer      | Pa     | Scalar (1x) | PRC | PRC | Not Visible |

| PRC\_i\_LoPlenum\_Inlet\_MassFlow | Mass flow rate  of primary coolant into  lower plenum | kg/sec | Scalar (1x) | PRC | PRC | Not Visible |
|:----------------------------------|:------------------------------------------------------|:-------|:------------|:----|:----|:------------|
| PRC\_i\_LoPlenum\_Inlet\_Enthalpy | Enthalpy of primary coolant into lower plenum         | J/kg   | Scalar (1x) | PRC | PRC | Not Visible |
| PRC\_i\_LoPlenum\_Inlet\_Temp     | Temperature of primary coolant into lower plenum      | Celsius | Scalar (1x) | PRC | PRC | Not Visible |
| PRC\_j\_LoPlenum\_Inlet\_Press    | Pressure of primary coolant into Lower Plenum         | Pa     | Scalar (1x) | PRC | PRC | Not Visible |
| PRC\_i\_LoPlenum\_Outlet\_MassFlow | Mass flow rate  of primary coolant out oflower plenum | kg/sec | Scalar (1x) | PRC | PRH | Not Visible |
| PRC\_i\_LoPlenum\_Outlet\_Enthalpy | Enthalpy of primary coolant out of lower plenum       | J/kg   | Scalar (1x) | PRC | PRH | Not Visible |
| PRC\_i\_LoPlenum\_Outlet\_Temp    | Temperature of primary coolant out of lower plenum    | Celsius | Scalar (1x) | PRC | PRH | Not Visible |
| PRC\_j\_LoPlenum\_Outlet\_Press   | Pressure of primary coolant out of lower plenum       | Pa     | Scalar (1x) | PRC | PRH | Not Visible |

### Primary Pressurizer (PPZ) ###
| **Variable Name** | **Varible Description** | **Units** | **Dimensionality** | **Source Component** | **Sink Component** | **Display Notes** |
|:------------------|:------------------------|:----------|:-------------------|:---------------------|:-------------------|:------------------|
| PPZ\_Pressure     | Rx Pressure             | Pa        | Scalar (1x)        | PPZ                  | PCS & PRS          | Visible           |
| PPZ\_Level        | PPT LEVEL               | %         | Scalar (1x)        | PPZ                  | PCS                | Visible           |
| PPZ\_LiqTemp      | PPZ LIQUID SPACE TEMP   | DEG C     | Scalar (1x)        | PPZ                  | PCS                | Visible           |
| PPZ\_SteamTemp    | PPZ STEAM SPACE TEMP    | DEG C     | Scalar (1x)        | PPZ                  | PCS                | Visible           |
| PPZ\_SurgMassFlow | PPZ SURGE LINE MASS FLOW| KG/S      | Scalar (1x)        | PRC                  | PPZ                | Visible           |
| PPZ\_Spray\_A\_MassFlow | PPZ SPRAY LINE A MASS FLOW| KG/S      | Scalar (1x)        | PRC                  | PPZ                | Visible           |
| PPZ\_Spray\_B\_MassFlow | PPZ SPRAY LINE B MASS FLOW| KG/S      | Scalar (1x)        | PRC                  | PPZ                | Visible           |
| PPZ\_SurgEnthalpy | PPZ SURGE LINE ENTHALPY | J/KG      | Scalar (1x)        | PRC                  | PPZ                | Visible           |
| PPZ\_Spray\_A\_Enthalpy | PPZ SPRAY LINE A ENTHALPY| J/KG      | Scalar (1x)        | PRC                  | PPZ                | NOT Visible       |
| PPZ\_Spray\_B\_Enthalpy | PPZ SPRAY LINE B ENTHALPY| J/KG      | Scalar (1x)        | PRC                  | PPZ                | NOT Visible       |
| PPZ\_RV\_A\_Status | PPZ RELIEF VALVE A STATUS| ON/OFF    | Scalar (1x)        | PCS                  | PPZ                | Visible           |
| PPZ\_RV\_B\_Status | PPZ RELIEF VALVE B STATUS| ON/OFF    | Scalar (1x)        | PCS                  | PPZ                | Visible           |
| PPZ\_SPV\_A\_Status | PPZ SPRAY VALVE A STATUS| ON/OFF    | Scalar (1x)        | PCS                  | PPZ                | Visible           |
| PPZ\_SPV\_B\_Status | PPZ SPRAY VALVE B STATUS| ON/OFF    | Scalar (1x)        | PCS                  | PPZ                | Visible           |
| PPZ\_HTR\_A\_Status| PPZ BACKUP HEATER A STATUS| ON/OFF    | Scalar (1x)        | PCS                  | PPZ                | Visible           |
| PPZ\_HTR\_B\_Status| PPZ BACKUP HEATER B STATUS| ON/OFF    | Scalar (1x)        | PCS                  | PPZ                | Visible           |
| PPZ\_HTR\_C\_Status| PPZ BACKUP HEATER C STATUS| ON/OFF    | Scalar (1x)        | PCS                  | PPZ                | Visible           |
| PPZ\_HTR\_D\_Status| PPZ BACKUP HEATER D STATUS| ON/OFF    | Scalar (1x)        | PCS                  | PPZ                | Visible           |
| PPZ\_HTR\_CNTRL\_Status| PPT CONTROL HEATER STATUS| ON/OFF (?)| Scalar (1x)        | PCS                  | PPZ                | Visible           |
| PPZ\_RV\_A\_MassFlow | PPZ RELIEF VALVE A MASS FLOW| KG/S      | Scalar (1x)        | PPT                  | PCS                | Visible           |

### Reactor Coolant Pumps (PRP) ###
| **Variable Name** | **Varible Description** | **Units** | **Dimensionality** | **Source Component** | **Sink Component** | **Display Notes** |
|:------------------|:------------------------|:----------|:-------------------|:---------------------|:-------------------|:------------------|
| PRP\_1a\_status   | Status of Pump 1A (ON/OFF) | n/a       | scalar             | PCS                  | PRP                | Visible - red/green light |
| PRP\_1a\_mass\_flow | Mass Flow Rate of Pump 1A | kg/s      | scalar             | PRP - Calculated in this System | PRC                | Visible - value   |
| PRP\_1a\_Temperature | Bulk Temperature of Cold Leg 1A | deg C     | scalar             | PRP - Calculated in this System | PRC                | Visible - value   |
| PRP\_1a\_enthalpy | Bulk Enthalpy  of Cold Leg 1A | J/kg      | scalar             | PRP - Calculated in this System | PRC                | Not Visible       |
| PRP\_1b\_status   | Status of Pump 1B (ON/OFF) | n/a       | scalar             | PCS                  | PRP                | Visible - red/green light |
| PRP\_1b\_mass\_flow | Mass Flow Rate of Pump 1B | kg/s      | scalar             | PRP - Calculated in this System | PRC                | Visible - value   |
| PRP\_1b\_Temperature | Bulk Temperature of Cold Leg 1B | deg C     | scalar             | PRP - Calculated in this System | PRC                | Visible - value   |
| PRP\_1b\_enthalpy | Bulk Enthalpy  of Cold Leg 1B | J/kg      | scalar             | PRP - Calculated in this System | PRC                | Not Visible       |
| PRP\_2a\_status   | Status of Pump 2A (ON/OFF) | n/a       | scalar             | PCS                  | PRP                | Visible - red/green light |
| PRP\_2a\_mass\_flow | Mass Flow Rate of Pump 2A | kg/s      | scalar             | PRP - Calculated in this System | PRC                | Visible - value   |
| PRP\_2a\_Temperature | Bulk Temperature of Cold Leg 2A | deg C     | scalar             | PRP - Calculated in this System | PRC                | Visible - value   |
| PRP\_2a\_enthalpy | Bulk Enthalpy  of Cold Leg 2A | J/kg      | scalar             | PRP - Calculated in this System | PRC                | Not Visible       |
| PRP\_2b\_status   | Status of Pump 2B (ON/OFF) | n/a       | scalar             | PCS                  | PRP                | Visible - red/green light |
| PRP\_2b\_mass\_flow | Mass Flow Rate of Pump 2B | kg/s      | scalar             | PRP - Calculated in this System | PRC                | Visible - value   |
| PRP\_2b\_Temperature | Bulk Temperature of Cold Leg 2B | deg C     | scalar             | PRP - Calculated in this System | PRC                | Visible - value   |
| PRP\_2b\_enthalpy | Bulk Enthalpy  of Cold Leg 2B | J/kg      | scalar             | PRP - Calculated in this System | PRC                | Not Visible       |

### Reactor Core Physics (PRX) ###
| **Variable Name** | **Varible Description** | **Units** | **Dimensionality** | **Source Component** | **Sink Component** | **Display Notes** |
|:------------------|:------------------------|:----------|:-------------------|:---------------------|:-------------------|:------------------|
| PRX\_example      | Example Variable Name   | Pa        | Scalar (1x)        | PRX                  | Control Board, PRS | Visible           |


### Pressurizer Relief Tank (PRT) ###
| **Variable Name** | **Varible Description** | **Units** | **Dimensionality** | **Source Component** | **Sink Component** | **Display Notes** |
|:------------------|:------------------------|:----------|:-------------------|:---------------------|:-------------------|:------------------|
| PRT\_example      | Example Variable Name   | Pa        | Scalar (1x)        | PRT                  | Control Board, PRS | Visible           |


### Primary Steam Generator (PSG) ###
  * Note that i=1,2 for Loop indication

| **Variable Name** | **Varible Description** | **Units** | **Dimensionality** | **Source Component** | **Sink Component** | **Display Notes** |
|:------------------|:------------------------|:----------|:-------------------|:---------------------|:-------------------|:------------------|
| PSG\_i\_Inlet\_MassFlow | Mass flow rate of coolant into SG | kg/sec    | Scalar (1x)        | PRC                  | PSG                | Not visible       |
| PSG\_i\_Inlet\_Enthalpy | Enthlapy of coolant into SG | J/kg      | Scalar (1x)        | PRC                  | PSG                | Not visible       |
| PSG\_i\_Inlet\_Temp | Temp of coolant into SG | degC      | Scalar (1x)        | PRC                  | PSG                | Not visible       |
| PSG\_i\_Outlet\_MassFlow | Mass flow rate of coolant from SG to RCPs | kg/sec    | Scalar (1x)        | PSG                  | PRP                | Not visible       |
| PSG\_i\_Outlet\_Enthalpy | Enthalpy of coolant from SG to RCPs | J/kg      | Scalar (1x)        | PSG                  | PRP                | Not visible       |
| PSG\_i\_Outlet\_Temp | Temperature of coolant from SG to RCPs | degC      | Scalar (1x)        | PSG                  | PRP                | Not visible       |
| PSG\_i\_Makeup\_MassFlow | Mass flow rate of makeup flow into SG outlet | kg/sec    | Scalar (1x)        | Boundary             | PSG                | Visible           |
| PSG\_i\_Makeup\_Enthalpy | Enthalpy of makeup flow | J/kg      | Scalar (1x)        | Boundary             | PSG                | Not visible       |
| PSG\_i\_Makeup\_Temp | Temp of makeup flow     | degC      | Scalar (1x)        | PSG                  | SSG                | Not visible       |
| PSG\_i\_TubeRupt\_MassFlow | Mass flow rate of tube rupture flow (from primary to secondary) | kg/sec    | Scalar (1x)        | PSG                  | SSG                | Not visible       |
| PSG\_i\_TubeRupt\_Enthalpy | Enthalpy of tube rupture flow | J/kg      | Scalar (1x)        | PSG                  | SSG                | Not visible       |
| PSG\_i\_TubeRupt\_Temp | Temperature of tube rupture flow | degC      | Scalar (1x)        | PSG                  | SSG                | Not visible       |
| PSG\_i\_TubeRupt\_Flag | Flag indicating if tube rupture is occurring | Unitless  | Scalar (1x)        | PSG                  | Indicator          | Visible           |

Secondary Side of the Steam Generator (SSG)
| **Variable Name** | **Varible Description** | **Units** | **Dimensionality** | **Source Component** | **Sink Component** | **Display Notes** |
|:------------------|:------------------------|:----------|:-------------------|:---------------------|:-------------------|:------------------|
| SSG\_i\_Steam\_MassFlow | Mass flow rate of outlet steam | kg/sec    | Scalar (1x)        | SSG                  | Boundary, PPS      | Visible           |
| SSG\_i\_Steam\_Enthalpy | Enthalpy of outlet steam flow | J/kg      | Scalar (1x)        | SSG                  | Boundary           | Not visible       |
| SSG\_i\_Steam\_Temp | Temperature of outlet steam flow | degC      | Scalar (1x)        | SSG                  | Boundary           | Visible           |
| SSG\_i\_Steam\_Pressure | Steam line pressure     | Pa        | Scalar (1x)        | SSG                  | Boundary, PPS      | Visible           |
| SSG\_i\_FW\_MassFlow | Feedwater mass flow rate | kg/sec    | Scalar (1x)        | Boundary             | SSG                | Visible           |
| SSG\_i\_FW\_Enthalpy | Feedwater enthalpy      | J/kg      | Scalar (1x)        | Boundary             | SSG                | Not visible       |
| SSG\_i\_FW\_Temp  | Feedwater temperature   | degC      | Scalar (1x)        | Boundary             | SSG                | Not visible       |
| SSG\_i\_WaterLevel | SG Water Level          | %NRS,%WRS | Scalar (1x)        | SSG                  | PCS                | Visible           |
| SSG\_TurbineTrip  | Flag for if turbine trip has occurred | Unitless  | Scalar (1x)        | PPS                  | SSG                | Visible           |
| SSG\_i\_FW\_Trip  | Flag for if FW pumps have been tripped | Unitless  | Scalar (1x)        | PPS                  | SSG                | Visible           |
| SSG\_i\_Turbine\_CVPosition | Throttle valve position for outlet steam flow | %         | Scalar (1x)        | PCS                  | SSG                | Not visible       |
| SSG\_i\_FW\_CVPosition | Control valve position for FW | %         | Scalar (1x)        | PCS                  | SSG                | Not visible       |




### Primary Volume Control (PVC) ###
| **Variable Name** | **Varible Description** | **Units** | **Dimensionality** | **Source Component** | **Sink Component** | **Display Notes** |
|:------------------|:------------------------|:----------|:-------------------|:---------------------|:-------------------|:------------------|
| PVC\_example      | Example Variable Name   | Pa        | Scalar (1x)        | PVC                  | Control Board, PRS | Visible           |


### Plant Control System (PCS) ###
| **Variable Name** | **Varible Description** | **Units** | **Dimensionality** | **Source Component** | **Sink Component** | **Display Notes** |
|:------------------|:------------------------|:----------|:-------------------|:---------------------|:-------------------|:------------------|
| PCS\_Heaters\_ON  | Turn Pressurizer Heaters On | n/a       | Scalar (1x)        | PCS                  | PPZ                | invisible         |
| PCS\_Heaters\_OFF | Turn Pressurizer Heaters Off | n/a       | Scalar (1x)        | PCS                  | PPZ                | invisible         |
| PCS\_Spray\_ON    | Turn Pressurizer Spray On | n/a       | Scalar (1x)        | PCS                  | PPZ                | invisible         |
| PCS\_Spray\_OFF   | Turn Pressurizer Spray Off | n/a       | Scalar (1x)        | PCS                  | PPZ                | invisible         |
| PCS\_ControlRods\_IN | Step Control Rods In    | n/a       | Scalar (1x)        | PCS                  | PRD                | invisible         |
| PCS\_ControlRods\_OUT | Step Control Rods Out   | n/a       | Scalar (1x)        | PCS                  | PRD                | invisible         |

### Plant Protection System (PPS) ###
| **Variable Name** | **Varible Description** | **Units** | **Dimensionality** | **Source Component** | **Sink Component** | **Display Notes** |
|:------------------|:------------------------|:----------|:-------------------|:---------------------|:-------------------|:------------------|
| PPS\_Reactor\_Trip\_Breakers | Open Reactor Trip Breakers | n/a       | Scalar (1x)        | PPS                  | PRD                | invisible         |