General Design and Systems Overview
###################################

Engines and Throttle Controls
*****************************

The F-14A is powered by two Pratt & Whitney TF30-P-414A while the F-14B is powered by two General Electrics F110-GE-400, both of which are afterburning turbofan engines.

To provide the engines with an even subsonic airflow the F-14 has the AICS or Air Inlet Control System. This system controls the variable geometry intakes by moving the variable ramps mounted in them to slow the airflow. This is accomplished using various sensor inputs run through a calculation using set schedules which decides the positions of the ramps.

In addition, the TF30 uses two systems to improve reliable operation, the Mid Compression Bypass System (MCB) and the Mach Lever.

The MCB helps mitigate high angle of attack airflow onto the compressor fans to reduce the risk of an engine stall. This system vents air from the compressor section to bypass duct to stabilize the airflow for later compressor stages. Normally this system uses angle of attack and Mach number sensor data to activate, but with the landing gear handle in the down position this it is only activated with zone 5 afterburner. Additionally the WCS commands the MCB to activate with extension of the refuelling probe as well as when launching AIM-7 or AIM-9 missiles, air to ground rockets or firing the M61 Vulcan gun. 

The Mach Lever also mitigates the risk of an engine stall by controlling min and max rpm allowed as a function of Mach number. In addition it also increases the minimum rpm in high angle of attack regimes while subsonic.

The two F110s in F-14B, on the other hand, are controlled by the AFTC (Augmenter Fan Temperature Control unit). The AFTC is an early engine control computer akin to an early version of a FADEC (Full Authority Digital Engine Control) used on newer turbine engines. This system controls both the engine itself as well as the variable exhaust nozzles controlling the engine exhaust gases and removes the need for the MCB and Mach Lever for the F110. The lack of such a system in the F-14A controlling its TF30s is one of the reasons for them being deemed less reliable than the F110s.

In case of a failure in the AFTC the MEC (Main engine control) is capable of assuming control of the engines to provide a fall-back, mechanical control. The normal mode, AFTC, is the primary mode (PRI) and called as such while the fall-back MEC is the secondary (SEC) mode. The selection of primary or secondary is automatic in case of a failure in the AFTC but can also be manually selected. Of note is that in secondary mode the engine nozzles are fully closed and disabled in addition to the afterburners being disabled with a corresponding loss of engine performance.

In addition both engines also drive separate fuel, hydraulic and electric generators to create redundancy.

:Note: The main difference between the TF30 and F110 engines (apart from lesser thrust in the TF30s) is that the TF30s are more sensitive to the quality of the airflow entering the compressor face. In general it is wise to avoid anything less than military power or afterburner while in high angle of attack maneuvers as well as avoiding large rudder inputs or asymmetric engine throttle settings. That said, the TF30s in the HB F-14A module have been extensively tuned using available data and SME expertise, resulting in an accurate modelling of an engine undeserving of its bad reputation. One "advantage" of the TF30's mechanical fuel control is its high speed thrust, resulting in higher top speeds than the F110 can achieve. If flown within normal parameters, the TF30 engines behave well if a tad underpowered compared to the F110s.

.. _throttlecontrols:

Throttle Controls
=================

.. image:: /images/general/engine/throttles-schem.png

The throttles in the F-14 have detents preventing unintentional engine start and shutdown and unintentional selection of afterburner.
In addition the throttles also controls several different systems depending on throttle position as shown in the diagram above.
The most critical of these being the fuel cutoff and ignition systems in the respective engines.

For throttle operations there are three modes:

The manual mode is a mechanical mode in which the engines are controlled by mechanical linkages directly from the throttles to the engines.
The manual mode is designed as a backup mode and may be inexact becuase of the mechanical nature of the controls.

Boost mode is the normal mode of operation in which electrical paths control actuators moving the same engine controls as the mechanical linkages but more exactly and with lesser force required.

The third mode is the approach power compensator mode or the auto throttle mode which is a system which allows for automatic throttle control for optimal angle-of-attack during approaches.

The controls for the throttle mode are located on the inlet ramps/throttle control panel to the side of the main throttles and allows for selection of all three modes.
The auto throttle mode is solenoid held and will revert to boost mode if the criteria for automatic controls are not met.

To allow selection of auto mode the throttles need to be between 75 to 90% rpm, the gear handle needs to be down and with no weight on the wheels.
If these criteria are no longer met, the throttles are manually overriden with force or the Cage/SEAM button on the left throttle is depressed the solenoid releases the switch and it reverts to boost.

For additional autothrottle tune the gain of the system can be set on the inlet ramps/throttle control panel. The settings are hot, normal or cold with hot increasing the throttle gain (and effective thrust) and cold decreasing it.
These settings correspond to cold or hot external temperatures but should be set according to observed throttle control.

The RATS or reduced arrestment thrust system is a system limiting engine thrust after touchdown to limit it to levels appropriate for carrier environments.
The system is enabled by weight on either main landing gear and is disabled by selection of afterburner on the throttles.

Finally, and implemented only for the F110-GE-400, is the asymmetric limiter, preventing asymmetric afterburner engagement if only one afterburner lights by keeping that afterburner at minimum afterburner thrust until the other afterburner also lights.


Engine and Throttle Control Switches and Indicators
===================================================

.. image:: /images/general/engine/inlet.png

The inlet ramps/throttle control panel contains most other engine releated controls.

The **THROTTLE MODE** (**1**) switch sets throttle mode to **AUTO**, **BOOST** or **MAN** modes respectively, with auto being springloaded back to boost but held in place electrically as mentioned above.

The **THROTTLE TEMP** (**2**) switch controls the gain of the automatic throttle system also described above.

The **INLET RAMPS** (**3**) switches enable (**AUTO**) or disable, stow (**STOW**) the variable intake ramps.

The engine crank switch (**4**) is used to crank the engines to 20% rpm allowing for engine start by moving the respective throttle to idle from cut-off.
The air to start the engine is sourced from an external air supply if connected or the other engine if no external source exists.
At 50% rpm the crank switch automatically returns to off/center position. If this does not occur it should be manually set to off to prevent damage to the air turbine starter.

The **BACK UP IGNITION** (**5**) switch enables the backup ignition system in case of a failure in the main ignition circuits that are normally enabled by moving the throttles out of the cut-off position.

.. image:: /images/general/engine/asym.png

:Note: F-14B only.

The **ASYM LIMITER** (**1**) on the ASYM limiter/engine mode select panel enables or disables the asymmetric afterburner thrust limiter. Default position is **ON** and the switch has a guard cover keeping it in that position.

The other switches on that same panel are the **ENG** (engine) **MODE SELECT** switches (**2**), setting the left (**L ENG**) and right (**R ENG**) to **PRI**, primary or **SEC**, secondary modes respectively.

.. image:: /images/general/engine/mcb.png

:Note: F-14A only.

The MCB Test Panel, located in the RIO pit on the right horisontal panel, is used to test if the MCB system functions.
The **TEST** switch (**2**) set to the **TEST** position activates the test circuit which lights the two test lights (**1**) for the left and right engine respectively if their MCB circuits function.

.. image:: /images/general/engine/externalenvironment.png

The **ENG/PROBE ANTI-ICE** (**2**) switch on the external environmental control panel enables the engine anti-ice and intake ramp anti-ice mode in addition to the various probe heaters.
The **ORIDE** position enables the system, the **AUTO** position enables the system if icing is detected and the **OFF** position disable it.


Engine Instrument Group (EIG), Related Indicators and Caution Lights
--------------------------------------------------------------------

.. image:: /images/general/engine/instrument-group.png

The **ENGINE INSTRUMENT GROUP** displays engine **RPM**, **TIT** (Turbine Inlet Temperature, F-14A) or **EGT** (Exhaust Gas Temperature, F14B) and **FF** (fuel flow) to the pilot to allow for engine monitoring.

:Note: Pictured above are the TF30 engine indicators, F110 EIG coming soon.

.. image:: /images/general/engine/exhaust.png

The exhaust nozzle position indicators display respective engine's current engine exhaust nozzle position, with zero being fully closed and full clockwise rotation being fully open.
The F-14A indicates 0 to 6 units while the F-14B indicates 0 to 100 percent open (tens indicaed on gauge).

.. image:: /images/general/engine/oil.png

The oil pressure indicators display respective engine oil pressure allowing the pilot to check that engine oil pressure is at acceptable levels.

The caution lights relevant to engine operation are located on the pilot's caution - advisory panel,  and at the sides of the HUD.

The caution lights on the sides of the HUD are the engine stall warning lights which flashes at a 3 Hz rate when an engine stall is detected.
The warning light on the left side of the HUD indicates an engine stall in the left engine and the one on the opposite side the right engine.
This is also combined with an audio warning, a modulated tone at 320 Hz.

Below the left engine stall warning light is, amongst others, the **AUTO THROT** (auto throttle) caution light which illuminates for 10 seconds when the auto throttle system is disengaged by other means than the throttle mode switch.

On the main caution - advisory panel the relevant engine caution and warnings lights are:

* **INLET ICE** - Caution light indicating ice detection on the detector in the left engine inlet.
* **L & R INLET** - Caution lights indicating failure in AICS for respective variable intake system.
* **OIL PRESS** - Caution light indicating low oil pressure in either engine.
* **BLEED DUCT** - Caution light indicating hot air leekage in either engine.
* **L & R RAMPS** - Caution lights indicating respective engine intake ramp not being locked into position when supposed to.
* **L & R GEN** - Caution lights indicating that respective engine generator is inoperative.
* **L & R OIL HOT** - Caution lights indicating that respective engine oil is too hot.
* **L & R FUEL PRES** - Caution lights indicating engine fuel pressure below 9 psi in respective engine fuel boost pump.

F-14A TF30-P-414A only lights:

* **L & R OVSP/VALVE** - Caution lights indicating enginge starter system malfunction or N1 rotor overspeed in respective engine.

F-14B F110-GE-400 only lights:

* **START VALVE** - Caution light indicating that the starter valve is open. Control engine crank position if lit after engine start completion.
* **L & R ENG SEC** - Caution lights indicating that respective engine is operating in secondary mode.
* **RATS** - Caution light indicating that RATS (reduced arrestment thrust system) is enabled.

:Note: F-14A specific lights not yet implemented.


Fuel System
***********

.. figure:: /images/general/fuel/tanks.png

   1 - Refueling Probe, 2 - Ground refueling Port (Right Side) , 3 - Forward Fuselage Tank, 4 - Left External Drop Tank, 5 - Left Box Beam Tank, 6 - Left Wing Tank, 7 - Vent Tank, 8 - Fuel Dump Mast,
   9 - Aft Fuselage Tank, 10 - Right Box Beam Tank, 11 - Right Wing Tank, 12 - Right External Drop Tank. 

The main fuel storage in the F-14 consists of two feed systems, one for each engine.
The right engine feed system consists of the right wing and right box cells and the front fuselage cells while the left engine feed system consists of the left wing and left box cells in addition to the aft fuselage cells.
This fact needs to be kept in mind when reading the fuel gauges.

The total useable fuel quantity is roughly 20,000 pounds distributed as in the table below.

+------------------+--------+
| Tank group       | Pounds |
+==================+========+
| Forward Fuselage | 4,700  |
+------------------+--------+
| Aft Fuselage     | 4,400  |
+------------------+--------+
| Right Feed Group | 1,600  |
+------------------+--------+
| Left Feed Group  | 1,500  |
+------------------+--------+
| Internal Wings   | 4,000  |
+------------------+--------+
| External Tanks   | 3,600  |
+------------------+--------+


Fuel Quantity Indicators and Controls
=====================================

.. image:: /images/general/fuel/fuelquantity.png

The fuel quantity indicator on the pilot right knee panel displays internal and external fuel carried.

The uppermost indicator (**1**) displays currently set **BINGO** fuel level, this quantity is set by rotating the knob (**5**) to desired amount.
This indicator and control activates the BINGO caution light when total fuel level is below set amount.

The **TOTAL** (**2**) indicator displays total carried fuel.

The **L** and **R** (**3**) normally shows fuel carried in left and right fuel feeds respectively.
A rocker switch on the fuel management panel enables selection of the wing internal tanks (**WING**) or external fuel tanks (**EXT**) for display but is springloaded to return to showing the feed tanks (**FEED**) automatically.
When displaying wing internal tanks or external fuel tanks, the left wing or left external tank is shown on the L counter and the right wing or right external tank on the R counter.

The **FUS & FEED** tapes (fuselage and feed) shows the **AFT & L** (aft fuselage and left feed) and **FWD & R** (forward fuselage and right feed) in thousands of pounds.

Additionally the RIO has a total fuel quantity display on the right instrument panel. This display counter can only show total fuel quantity. (See :ref:`rfuelqtytot`.)

.. image:: /images/general/fuel/fuel.png

The fuel management panel on the pilot's left vertical console contains the applicable controls for the fuel system.

The **QTY SEL** (**1**) rocker switch is detailed above under the description above about the L & R fuel displays.

The **FEED** switch allows the pilot to correct fuel imbalances caused by single engine operation or feed failures by selecting both engines to feed from either the **FWD** (forward and right tanks) or **AFT** (aft and left tanks) instead of from one feed system each as normal **NORM**.
The switch guard locks the switch to the NORM position when down.

The **WING/EXT TRANS** switch controls fuel transfer from the wing and external tanks into the fuselage feed systems.
The normal **AUTO** position enables this transfer as soon the landing gear is retracted.
The **ORIDE** position enables this transfer regardless of landing gear position, enabling transfer when on the ground or during a malfunction in the electrical system inhibiting landing gear retraction detection.
Additionally the **OFF** position disables this transfer but can be overridden automatically to AUTO when the INST test is performed on the MTS panel, the refuel probe is set to ALL EXTD or when dumping fuel.

The **DUMP** (**5**) switch enables fuel dump through the beaver tail fuel dump mast, it also enables all fuel transfer systems, enabling dump of fuel in wings and external tanks in addition to the fuselage.
If there's weight on the wheels or the speed brake is not fully retracted the fuel dump is inhibited.

:Note: Even though technically possible to engage the afterburners after a fuel dump is in progress, this is not allowed due to the possibility of igniting the dumped fuel.


In-Flight Refueling
--------------------

The above panel also contains the control for the in-flight refueling system.

The **REFUEL PROBE** (**6**) switch controls the extension of the refueling probe as well as setting up the fuel system to recieve fuel.
The two extended positions (**EXTD**) are **ALL**, enabling refueling of all tanks, including wings and external tanks and **FUS**, allowing refuel of only the fuselage tanks.
When selecting the **ALL** position the fuel feed from the wings and external tanks are disabled to allow refueling of these tanks.
**RET** (Retract) retracts the refueling probe and resumes normal fuel system operation.

:Note: Selecting **EXTD ALL** resets the **WING/EXT TRANS** switch to **AUTO**.

.. raw:: html

    <iframe id="jabbers" align="middle" width="560" height="315" src="https://www.youtube.com/embed/f4y2oZ-7rM8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

|


Fire Detection and Suppression System
*************************************

Fire Detection System
=====================

The fire detection system in the F-14 has two fire sensing loops, one in each engine.

If these loops detects a temperature over 600 °F (about 316 °C) along its whole length or 1,000 °F (about 538 °C) in a single 6-inch section it triggers the fire detection circuits.
The left detection loop illuminates the left fire warning light on the ACM panel and the right detection loop illuminates the right fire warning light, see :ref:`ACMpanel`.

In addition there are also sensors designed to detect hot air leaks in the engines and illuminate the BLEED DUCT caution light on the pilot caution - advisory indicator (see :ref:`CAindicator`) if temperatures above 575 °F (about 302 °C) are detected.


Fire Suppression System
=======================

+-----------------------------------------------+-----------------------------------------------+
|   .. image:: /images/general/fire/left.png    |   .. image:: /images/general/fire/right.png   |
|      :width: 300 px                           |      :width: 300 px                           |
|      :height: 175 px                          |      :height: 175 px                          |
+-----------------------------------------------+-----------------------------------------------+

The fire suppression system in the F-14 contains two bottles filled with a fire suppression agent capable of being discharged into one engine selected by the pilot.
Though the system contains two bottles, both are discharged at the same time making the system a one-shot system, capable of extinguishing only one engine.

As the effectiveness of the agent depends on it remaining in the engine until the fire is out the effectiveness is greater at lower airspeed as it takes longer for the agent to be blown clear of the engine.
The agent itself is a low toxicity agent, designed to do as little damage to the engine as possible while still being an effective fire surpessant.

To activate the system the pilot pulls the **FUEL SHUT OFF** handle (pictured above) corresponding to the alight engine and pushes the fire extinguisher button behind that handle.
The pull-out of the handle shuts off the fuel to the connected engine and the button behind it releases the fire suppression agent into that engine.

Two advisory lights are connected to this system, each one indicating low pressure in one of the fire suppression agent bottles.
The **ENG FIRE EXT** indicates low pressure in the main bottle and the **AUX FIRE EXT** the same in the auxiliary bottle.
Both are located on the pilot caution - advisory indicator, see :ref:`CAindicator`.

The advisory lights will both illuminate after a successfull application of the system and will also indicate if an error drains the pressure in the bottles.


Fire Detection and Suppression System Test
==========================================

Both systems can be tested by selection of the **FIRE DET/EXT** position on the master test panel switch. (See :ref:`MTPanel`.) 
This will illuminate both fire warning lights on the ACM panel if their respective loop is functional and the **GO** light on the master test panel will illuminate if the suppression system is functional.
If the **NO GO** or no lights illuminate there's a problem in either the suppression system or the test circuitry.


Electrical Power System
***********************

All main electrical power in the F-14 is generated from the two engine driven AC generators.
The generators connected to the gearboxes on the engines are each capable of generating enough power to individually drive all aircraft systems.

As for DC power generation the F-14 has two transformer-rectifiers supplying 28 V DC, and again each one is individually capable of driving all aircraft DC appliances.

The F-14 has an external power receptacle for AC power just aft of the nosegear, capable of driving aircraft AC and DC (through the transformer-rectifiers).
External power is automatically disconnected from the aircraft power system when one of the internal generators come online.


Emergency Power
===============

The F-14 has an emergency generator driven by the combined hydraulic system generating a limited supply of AC and DC power.
If the system loses main power the emergency generator takes over supply of flight critical systems within 1 second.


Controls and Indicators
=======================

.. image:: /images/general/electrical/generator.png

The controls for the electrical systems are located on the master generator control panel.

The **MASTER GEN** (**1**) switches control connection of the main generators to the electrical buses. 
The **NORM** position on the switches connect the individual generators to the buses.
The **OFF/RESET** position disconnects the generator and also resets any protection circuits that might have cut in because of the power supply being outside normal limits.
The **TEST** position starts the generator but do not connect it to the electrical buses making it possible to test the generator without affecting other aircraft systems.
The switch is locked to the on position and needs to be lifted to move it to the OFF/RESET position from NORM.

The **EMERG** (**2**) switch controls the emergency generator.
In the **NORM** position the emergency generator is automatically connected to the essential buses if the main generators fail.
The **OFF/RESET** position deactivates the emergency generator and also resets the associated protection circuits if tripped.
The switch is guarded to the NORM position and that guard needs to be opened to move the switch to OFF/RESET.

Associated caution and advisory lights are located on the pilot :ref:`CAindicator`.
The **L GEN** and **R GEN** lights, when illuminated, indicate that the respective generator is not functioning correctly.
Either because of a fault or because the engine driving the generator not running. 

The **TRANS/RECT** advisory light indicates that only one or none of the transformer-rectifiers are functioning.

The emergency generator can be tested by selection of **EMERG GEN** on the **MASTER TEST** switch on the :ref:`MTpanel`.
Completion of the test is indicated by the **GO** light illuminating. In case of a fault the **NO GO** light illuminates.


Circuit Breakers
================

The circuit breakers in the F-14 are located on the pilot's right and left knee panels and behind the RIO's seat on his left and right sides.
The breakers protect aircraft systems from overcurrent by popping out and isolating the system drawing too much current.
This is indicated by a white line becoming visible on the breaker as it pops out. The breaker can be reset by pushing it in and it can also be pulled out manually.

These breakers will be detailed here when implemented in DCS.


Hydraulic System
****************

The F-14 has two separate hydraulic systems, the flight hydraulic system and the combined hydraulic system.

Both systems are driven by hydraulic pumps connected to each engine, the flight hydraulic system from the right engine and the combined hydraulic system from the left engine.
Both systems are pressurised to around 3,000 psi when operating normally.

Flight control surfaces are supplied by both systems while the combined system also supplies pressure to secondary systems such as the flaps, landing gear and the refueling probe.
This is so that both systems can drive the control surfaces independently from each other in case of a failure in the other.

Additionally, the hydraulic systems related to systems not necessary while airborne can be isolated by a switch next to the landing gear handle.
This is so that damage to those systems won't affect the combined system pressure and cause fluid loss.
The systems that can be isolated are the landing gear, wheel brakes, anti-skid and nosewheel steering.
This switch is mechanically locked to not isolating these systems by the landing gear handle when it's in the down position.

If only one of the hydraulic pumps fail it's possible to pressurize that system from the other pump via the hydraulic transfer pump.
This pump is an omni-directional hydraulically driven pump that can supply either system from the other and will maintain a pressure between 2,400 and 2,600 psi if the driving system is at around 3,000 psi.
If one system pressure falls below 500 psi the pump will be secured to prevent pump damage and preserve pressure in the working system.
The pump can also be manually disengaged by the pilot.

In case of failure of both hydraulic pumps the flight hydraulic system can be driven by an electrical pump, called the emergency flight hydraulic pump.
This pump is capable of independently driving the tail control surfaces, enabling the aircraft to return home and land even without pressure in either main hydraulic system.
The electric pump is automatically enabled if both main systems drop below 2,100 psi and shut off if either reaches 2,400 psi again.
The automatic pump activation activates the system in the low mode but it can also manually be selected to either low or high operation.
The control surfaces will have a reduced deflection rate if driven by this pump, more so in low than high.

There is also a hand driven hydraulic pump that can be used to pressurize the refueling probe and wheel brake accumulator if there's otherwise no pressure in the combined system.
This is mainly for unpowered ground operation but can be used as a backup in the air.


Controls and Indicators
=======================

.. image:: /images/general/hydraulic/hydraulic.png

The **HYD PRESS**, hydraulic pressure indicator, contains two gauges indicating **COMB**, combined, and **FLT**, flight system hydraulic pressure in thousands of psi.
The scales have markings for the nominal 3,000 psi pressure when the pumps are operating normally.

Below the gauges are flags indicating hydraulic pressure availability to the spoilers **SPOIL** and the operation of the **EMER FLT**, emergency flight hydraulic pump.
The **HI** flag indicates on if the emergency flight hydraulic pump is operating in high and the **LOW** if it's operating in low.

.. image:: /images/general/hydraulic/brakepressure.png

The **BRAKE PRESSURE** gauge shows available pressure in the brake accumulators.
**PARK** indicating parking brake pressure and the **AUX** indicating wheel brake pressure.
The green area represents a pressure from about 2,150 psi to 3,000 psi and the red a pressure below that.

.. image:: /images/general/hydraulic/hydraulictransferpump.png

The **HYD TRANSFER PUMP**, hydraulic transfer pump switch is located on its own panel on the pilot's right side console.
The switch allows for manual shut-off of the pump (**SHUTOFF**) but is normally in the **NORMAL** position allowing the pump to activate automatically if either hydraulic pump fails.
The switch is guarded to the NORMAL position.

The emergency flight hydraulic pump is controlled by a guarded switch on the :ref:`MTpanel`.
The guarded position, **(AUTO)LOW** allows the pump to automatically activate as detailed above and the two other positions, **HIGH** and **LOW** can manually activate those modes when the guard is up.

On the :ref:`CAindicator` the only relevant caution light is the **HYD PRESS** light indicating that either main hydraulic system pressure is below 2,100 psi.
It turns off when both systems are again above 2,400 psi.


Wing-Sweep System
*****************

.. figure:: /images/general/wingsweep/sweepschedule.png

   Wing-sweep schedule as function of Mach number and related flap interlocks.

The wing-sweep system controls the geometry of the F-14's wings, allowing the wings to move from a 20° to a 68° position in the air.
While on the deck an oversweep of 75° is also possible reducing the F-14's wing span to 33 feet (about 10 meters).

The wings are moved by hydromechanical screwjack actuators which are interconnected mechanically, making sure they're synchronized.
As long as both main hydraulic systems are functioning the maximum wing-sweep change rate is about 15°/s.
This can be affected negatively by negative g or large amounts of positive g.

In normal operation the CADC, Central Air Data Computer, controls the wing position as a function of current Mach via the wing-sweep program,
this is known as the **AUTO** mode. The pilot can also select a wing position aft of the wing-sweep program manually or choose the **BOMB** mode that sets the
wings to 55° or further aft depending on the program. Simply put, the CADC wing-sweep program determines the max forward position of the wings.
All this is done electrically via two independent channels (for redundancy) to the wing-sweep actuators.

Currently commanded wing position, CADC program wing position and actual wing position can be seen on the wing-sweep indicator next to the ACM panel.


.. _wingsweepemerg:

Emergency Mode
==============

While the normal mode controls the wing-sweep electrically, to supplement this it's also possible to control the wing-sweep mechanically via the emergency mode.
This is done via the emergency wing-sweep handle on the right side of the throttle.
That handle is connected mechanically to the hydraulic valves in the wing-sweep system, providing a physical back-up control.

Normally this handle is moved with the electronic wing-sweep program by a servo located beneath it, making sure it's at the actual wing position.
To disengage the electric system and enable the emergency mode the guard over the handle is opened and then the handle is extended for additional leverage.
Then the handle can be forced out of the spider-detent normally connecting it to the electrical servo and then used to manually set the wing position.

In this mode the pilot has to make sure to follow the following schedule to avoid damage to the wings:

+------------------------+---------------------------+
| Speed (Indicated Mach) | Max Forward Wing Position |
+========================+===========================+
| 0.4                    | 20°                       |
+------------------------+---------------------------+
| 0.7                    | 25°                       |
+------------------------+---------------------------+
| 0.8                    | 50°                       |
+------------------------+---------------------------+
| 0.9                    | 60°                       |
+------------------------+---------------------------+
| 1.0                    | 68°                       |
+------------------------+---------------------------+

To return to the normal mode of operation, the handle should be pushed into the desired position and pressed down and the guard closed.
The **MASTER RESET** button on the fuel management panel should then be depressed and the wing-sweep system set to the same position as the handle.
The servo will then drive to the commanded position and re-engage the handle to the spider detent, resuming normal operation.


Oversweep
----------

The emergency wing-sweep handle is also used to select the oversweep position of the wings.
The oversweep is only used while on the ground to reduce the wing span to make it easier to spot the aircraft on the carrier deck.
As the wing will sweep over the stabilizers on the tail the horizontal tail authority system is enabled to prevent the wings and stabilizers from damaging each other by restricting movement of the stabilizer.

To set the wings to oversweep the emergency wing-sweep handle should be moved to the 68° position and held in the extended position.
This will deflate the wing-seal airbags and activate the horizontal tail authority system, indicated by the **HZ TAIL AUTH** caution light illuminating.
When the **HZ TAIL AUTH** caution light goes out and the **OVER** flag on the wing-sweep indicator appears the oversweep interlocks are free and the handle can now be moved to the 75° position and stowed.

To move the wings out of oversweep the handle is pulled up and moved forwards of 68°. This will again illuminate the **HZ TAIL AUTH** caution light.
When the wings have physically exited the oversweep the caution light and the **OVER** flag will turn off.

As with normal emergency mode operation the handle should now be set to the same position as the spider detent and the **MASTER RESET** button depressed.


Controls and Indicators
=======================

The controls for the wing-sweep system are on the right throttle (electrical) and to the right of the right throttle (mechanical).
See the :ref:`throttle` and the :ref:`throttlequadrant`.

The wing-sweep hat on the right throttle is normally set to **AUTO** enabling CADC control of the wings, this is the upper position.
The down position sets the wing-sweep to the **BOMB** mode, 55° or aft.

The **AFT** and **FWD** (forward) positions enable manual movement aft of the CADC scheduled position.

The emergency wing-sweep handle on the throttle quadrant is used to control the mechanical emergency mode, see emergency mode above.

.. image:: /images/general/wingsweep/wingsweep.png

The wing-sweep indicator to the right of the ACM panel is used to indicate the current wing-sweep positions.
The pointer on the left side shows the CADC scheduled wing position.
The left tape shows the manually commanded position and the right tape shows the actual wing position.

The five windows on the right side show:

* **OFF** - System inoperable.
* **AUTO** - CADC controlling wing-sweep.
* **MAN** - Wings set manually with the control on the right throttle.
* **EMER** - Wings set with the emergency wing-sweep handle.
* **OVER** - Wings in oversweep.

The relevant warning and advisory lights are located on the :ref:`VDI` and the pilot :ref:`CAindicator`.

The **WING SWEEP** advisory light on the right side of the VDI illuminates when both wing-sweep electrical channels are inoperable or the emergency mode is in use.
If it illuminates without the emergency mode being used that mode should then be used as the electrical system might not work.

The **WING SWEEP** caution light on the pilot caution - advisory indicator illuminates when at least one electrical wing-sweep channel is inoperable.


Wing-Sweep System Test
----------------------

The wing-sweep system can be tested on the ground in pre-flight without moving the wings using the :ref:`MTPanel`.

To conduct the test, set the wing-sweep mode to **AUTO** and push the **MASTER RESET** button.
Set the **MASTER TEST** switch to **WG SWP**

The CADC commanded position indicator on the wing-sweep indicator will now move to 44°.
The **WING SWEEP** and **FLAP** light will illuminate on the pilot :ref:`CAindicator` and the **REDUCE SPEED** warning light on the :ref:`VDI`.

:Note: The **WING SWEEP** advisory light will illuminate after 3 seconds into test, turn off and then illuminate again at 8 seconds.

When the CADC commanded position indicator moves forward to the 20° position the test is over and the above light will turn off.
The **MASTER TEST** switch can now be set to **OFF** and the test is complete. The test will take about 25 seconds to complete.

:Note: The **RUDDER AUTH** and/or **MACH TRIM** lights might illuminate and the control stick might move. This can be ignored.

:Note 2: The WG SWP test on the Master Test panel is not implemented yet.


.. _fcs:

Flight Control System
*********************

The flight control system on the F-14 Tomcat is driven by the two main hydraulic circuits, powered by pumps connected to each engine.

For longitudinal (pitch) control both tail stabilizers are deflected in unison, acting in the same way as traditional elevators.

Lateral (roll) control is produced by both the tail stabilizers and the spoilers working in unison.
To produce roll the stabilizers are deflected opposite each other to act as ailerons in combination with the spoilers on the side to which roll is commanded.

The rudders on the F-14 is a standard rudder configuration albeit in a two tail, two rudder configuration.

Control surface position is indicated on the :ref:`controlsurface` and can also be used to check trim position with controls at neutral.

:Note: Above 15 units AOA the rudders should be used for lateral (roll) control due to the different airflow along the aircraft control surfaces.

.. raw:: html

    <iframe id="jabbers" align="middle" width="560" height="315" src="https://www.youtube.com/embed/b5opjCygZug" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

|
    
Trim
====

Longitudinal and lateral trim is accomplished via the trim hat on the :ref:`stick`. This changes the stick neutral position, thus trimming the aircraft.
Rudder trim is accomplished via the **RUDDER TRIM** switch on the :ref:`inletrampsthrottle`, changing the neutral rudder position.

The Mach Trim and ITS (Integrated Trim System) automatically trims to compensate for changes in longitudinal trim.
The Mach Trim system compensates for transonic and supersonic trim changes and the ITS for trim changes due to flap and speedbrake position changes.


AFCS Automatic Flight Control System
====================================

The AFCS or Automatic Flight Control System provides additional aircraft stability (SAS or Stability Augmentation System) via automatic control surface commands generated from AFCS sensors.
The AFCS is controlled by switches on the :ref:`afcs` and pitch, roll and yaw can each be set individually.

The pitch and roll switches are springloaded to off but normally held to on by solenoids meaning that if the system is turned off or inoperable the switches return to off.
The yaw switch is purely mechanical.

Roll SAS should not be used for situations involving flight at AOA above 15 units and should therefore be set to off for combat maneuvers.

If the autopilot emergency disengage paddle on the control stick is held down the pitch and roll channels will be set to off.

Autopilot
---------

Apart from stability augmentation the AFCS is also used to provide autopilot functionality.
To use the autopilot all three stabilisation channels must be enabled.

The controls for the autopilot system are situated on the :ref:`afcs`.

Autopilot modes available are attitude hold, heading hold, ground track, altitude hold, vector/pcd (precision course direction) and acl (automatic carrier landing).

By setting the autopilot **ENGAGE** switch to on the attitude hold is engaged, maintaining current aircraft attitude.
Limited to within 30° pitch and 60° roll angles and the aircraft will be automatically moved within this range.
Current attitude can be changed with the control stick and will be held when the stick is released.

The **ENGAGE** switch is also a prerequisite for all other autopilot modes.

The **HDG** position on the HDG switch enables heading hold, maneuver the aircraft to desired heading and with a bank angle of less than 5° to set heading.

The ground track mode is entered by setting the HDG switch to **GT**, wait for the **A/P REF** warning light on the left side of the :ref:`VDI` to illuminate and then press the nosewheel steering button on the control stick.
The **A/P REF** warning light will then turn off and the ground track mode will be enabled, setting the autopilot to follow a ground track by compensating for aircraft wind drift.

The altitude hold mode is set via the **ALT**, altitude, switch and like the ground track mode the **A/P REF** warning light will illuminate until the nosewheel steering button is depressed, enabling the mode.

The Data Link Vector - Precision Course Direction mode is used to allow a Link 4 controller to remotely control the aircraft. This is not modelled in DCS.

Finally the ACL or Automatic Carrier Landing mode is used to conduct automatic carrier landings in conjunction with the Link 4 data link and the on-board radar beacon.
To enable the ACL, set the VEC/PCD switch to **ACL** which will cause the **A/P REF** warning light to illuminate.
When intercepting the ACL glideslope and with the **ACL READY** and **A/P CPLR** warning lights illuminated on the VDI, depress the nosewheel steering button on the control stick.
This engages the ACL and lets the data link control the aircraft. The **A/P REF** warning light will turn off.

The ACL can be used in conjunction with the APC (see :ref:`throttlecontrols`) for a fully automatic landing.
The ACL can be disengaged via the **PLM** button on the right throttle and the APC via the **CAGE/SEAM** button on the left throttle.

All the autopilot modes can be overriden by enough force on the control stick or by depression of the autopilot emergency disengagement paddle, automatically resetting all autopilot switches to off.


Spoilers
========

The spoilers located on the upper surfaces of the wings are used to control roll as detailed above under :ref:`fcs`,
for braking on the ground as part of the :ref:`askid` system and as a part of the DLC system (see next header).

The spoilers are only used forwards of 62° wing-sweep as further aft these conflict with the fuselage.

In case of a spoiler malfunction the spoiler symmetry protection logic disables all of the spoilers in the same section as the failed spoiler, either inboard or outboard spoilers.
If this occurs the **SPOILERS** caution light on the :ref:`CAindicator` illuminates.

To override this the switch corresponding to the relevant section on the :ref:`spoilfailover` can be set to override by lifting the guard and setting the switch to
**ORIDE** and then depressing the **MASTER RESET** button on the :ref:`fuelmgmtpanel`.

Spoiler position can be seen on the :ref:`controlsurface`.


DLC Direct Lift Control
-----------------------

The DLC or Direct Lift Control is used to control vertical glideslope position without pitch control inputs or engine throttle commands.
The DLC uses the two inboard spoiler sections in conjunction with small corrections on the tail stabilizers to control lift.

The DLC is engaged by depression of the DLC switch on the control stick with flaps and gear down.
This causes the inboard spoilers to extend to half and enables the DLC & maneuver flap command thumbwheel on the control stick to control them.

Rotation of the thumbwheel forwards extends the spoilers towards the max up position, decreasing lift and adjusting glideslope position downward.
Rotation of the thumbwheel aft retracts the spoilers towards the flush position, increasing lift and adjusting glideslope position upward.

Another depression of the DLC switch disengages the system.


Flaps and Slats
===============

The flaps and slats on the F-14 Tomcat can be used in two modes.

The normal flap and slat extension is controlled using the **FLAP** handle on the :ref:`throttlequadrant`.
The flaps can be set to anywhere between retracted and fully extended where the flaps will extend to 35° and the slats to 17°.
The auxiliary flaps, the innermost section, only have two positions, retracted and extended. They will extend fully when the **FLAP** handle is at more than 5° extension.

If a fault exists preventing retraction of flaps the **FLAP** handle should be moved to the **UP** position and then moved outboard and up to the **EMER UP** position, overriding faulty interlocks.

The other mode is the maneuver flap system in which the CADC uses the flaps and slats automatically to improve aircraft performance.
In this mode the flaps extends to 10° maximum and the slats to 7° maximum and the innermost flap section is disabled.

While normally automatic the maneuver flap system can be manually controlled using the DLC & maneuver flap command thumbwheel on the control stick.
Forward thumbwheel rotation retracts the flaps and slats and aft thumbwheel rotation extends them.

When sweeping the wings the flaps are limited by the wing-sweep position.
Aft of 21° sweep the auxiliary (inboard flaps) are disabled up. Aft of 50° all flaps are disabled up.
The slats are not inhibited by wing-sweep.

Position of the flaps and slats are indicated on the :ref:`wheelsflapsind`.

The **FLAP** light on the pilot :ref:`CAindicator` indicates a malfunction in the flap system with flaps at non symmetrical positions.
The **REDUCE SPEED** warning light on the left side of the :ref:`VDI` indicates flaps not retracted above 225 knots indicated airspeed.


Speedbrakes
============

The speedbrakes on the F-14 Tomcat consists of three sections on the tail located between the engines and these are powered by the combined hydrualic system.

The speedbrake controls are located on the right :ref:`throttle` and can be set to desired position depending on how long the switch is held to the extend position.
Retraction always fully retracts the speedbrakes.

To protect the speedbrakes they will start retracting above 400 knots and will continue to do so with increasing airspeed,
additionally selection of **MIL** power or above automatically retracts them.

As the speedbrakes disturb airflow around the tail the fuel dump is disabled with speedbrake extension as to not have the fuel hit the aircraft.

Position of the speedbrakes can be seen on the :ref:`wheelsflapsind`.


Landing Gear System
*******************

The F-14 Tomcat has a tricycle landing gear designed to be fully retractable as well as hardened enough to withstand the rigours of carrier traps.
The landing gear extension and retraction is powered by the combined hydraulic system as well as having an emergency extension system.
The emergency extension system has a nitrogen bottle that can be used to power a one-shot emergency extension.
With the emergency system triggered, the system needs to be reset by technicians on the ground to allow further normal retraction.

For additional information on controls and indicators see :ref:`gearcontrol` for controls and :ref:`wheelsflapsind` for the indicators.


Nosewheel Steering
==================

The nosewheel steering system on the F-14 can be activated with weight on wheels by depression of the nosewheel steering button on the :ref:`stick`.
The activation of this system is indicated via the **NWS ENGA** caution light on the left side of the HUD, see :ref:`wheelswarn`.

Disengagement of this system occurs automatically with weight off wheels (take-off), electrical supply failure or lowering of the launch bar.
It's also possible to deactivate the system by depression of the nosewheel steering button.

The nosewheel, with the system engaged, is controlled via the rudder pedals.
It's capable of a deflection of up to 70° meaning that it will turn tightly enough that the inner wheel will in fact move backwards.


Wheelbrakes
=========== 

The wheelbrakes can be applied either via the rudder pedals by pressing on the upper part of them, rotating them forwards.
The other application is via the parking brake handle located on the :ref:`gearcontrol` panel.

The rudder pedals can be used to apply the brakes gradually while the parking brakes are either on or off.

Normally both systems are supplied from the combined hydraulic system but if that system becomes depressurised the brake system automatically switches to the backup accumulators.
The :ref:`brakepressind` shows current pressure in the emergency accumulators.

If fully charged the auxiliary accumulator allows for about 13 to 14 wheelbrake applications from the pedals and the parking brake accumulator 3 parking brake applications minimum.
These accumulators can be recharged via the :ref:`hydhandpump`.

The **BRAKES** warning light on the left side of the HUD indicates either parking brake applied, antiskid system fail or that the brakes are operating in the emergency mode (only when the pedals are depressed).


.. _askid:

Antiskid
---------

The antiskid system modulates the wheelbrakes to prevent skidding while on the ground.
When armed in the air the system prevents braking until both main wheels are on the ground and the wheels have spun up.
Also the system is not operational below 15 knots.

The antiskid system switch also controls the spoiler brake system that deploys the spoilers as brakes when the throttles are set to **IDLE** while on the ground.

:Note: The antiskid should be disabled during taxi as below 15 knots the system may disturb normal braking even though the antiskid feature not being operational at those speeds.

The **ANTI SKID SPOILER BK** switch on the :ref:`fuelmgmtpanel` panel controls the system.
**OFF** disables the system, **BOTH** enables antiskid and the spoiler brake system and **SPOILER BK** enables only the spoiler brake system.


Catapult Launch and Arresting Gear
**********************************

Nosegear Catapult System
========================

The nosegear of the F-14 contains the system allowing for catapult assisted takeoff during carrier based operations.

The three components mounted in or on the nosegear are the nosewheel kneel functionality, the launch bar and the holdback fitting.

To enable the system the aircraft is kneeled using the **NOSE STRUT** switch on the :ref:`gearcontrol`.
This is done by holding the switch to the **KNEEL** position until downward movement stops.

This drains hydraulic fluid from the shock absorber, compressing the nosegear strut 14 inches.
When compressed this also releases the lock on the launch bar which can then be lowered manually by the deck crew or by turning the nosegear more than 10° from center.

:Note: In DCS the launch bar is automatically lowered with nosegear kneel.

The aircraft can then be guided onto the catapult and connected to the shuttle, in DCS via default keybind **U**.
The holdback bar is currently not modelled in DCS.

:Note: Deselection of nosewheel steering should be done before final movement onto the shuttle and hookup to avoid missalignment.

The final command to launch the aircraft, after proper procedures, is then to salute the "shooter" or officer in command of catapult launch, default keybind **Left Shift + U** in DCS.

After the catapult stroke, when the launch bar is released from the shuttle, stored hydraulic energy is released to impart a positive pitch moment to the aircraft.
This also automatically raises the launch bar into its stowed position.

Indication of the launch bar status is available on the :ref:`CAindicator` via the **LAUNCH BAR** advisory light.
The advisory light is on with weight on wheels when the launch bar is not up and locked and turns off if throttles are advanced to **MIL** to enable a lights out for launch criteria.
With weight off wheels the **LAUNCH BAR** advisory light is on if the nose strut hasn't fully extended, launch bar is not up and locked or nosewheel hasn't centered correctly.
This inhibits nosegear retraction.

The :ref:`launchbarabort` contains the **LAUNCH BAR** switch used to disengage the launch bar in case of an aborted launch.
This functionality is currently not implemented in DCS, unhooking the launch bar is currently accomplished by another depression of the hookup key, default key **U**.


Arresting Gear
==============

The arresting hook located on the underside of the tail of the F-14 is used for arrested landings during carrier operations.

The system uses hydraulic power from both flight and combined hydraulic systems and is controlled electrically, thus requiring electrical power as well.

Operation of the system is via the arresting **HOOK** handle on the :ref:`arrhook`.
**UP** raises the arresting hook and **DN**, down, lowers it to 37° allowing it to catch the wire during a correctly executed carrier "trap".
The transition light next to the arresting **HOOK** handle illuminates whenever the arresting hook position does not correspond with handle position.

If on board failures do not allow for normal hook lowering it's possible to use a mechanical backup to deploy the hook.
To activate the mechanical backup, pull the handle out and rotate it 90° counterclockwise.
This releases the mechanical uplock and drain the hydraulic pressure keeping the hook up, thus lowering it.

If electrical power and hydraulic power are restored, it's then possible to retract the hook by rotating the handle 90° clockwise and pushing the handle back in and then setting it in the default **UP** position.

:Note: Hook position also affects the AoA indexer and approach lights, making them flash with gear down if hook is not also down. This feature can be disabled using the **HOOK BYPASS** switch on the :ref:`mlightctrlpanel`.


ECS Environmental Control System
********************************

The ECS or environmental control system controls and supplies temperature- and pressure-regulated air to cockpit systems and cooling for electronic equipment and weapons.

The air used is sourced from the engines, one or both, or if needed from the emergency ram air door on the fuselage inboard of the right glove.

Systems using ECS air in the cockpit are cockpit pressurization and canopy seals, anti-g suit inflation, aircrew suit ventilation, seat cushion ventilation and windshield anti-ice and defogging.

Other systems using ECS air outside of the cockpit are pressurization of external drop tanks, wing airbag seals, electronics cooling and cooling of the AN/AWG-9 radar and AIM-54 missiles via an air/liquid heat exchanger.


Air Source and Cockpit Air Controls
===================================

Air source for the ECS is set using the controls on the :ref:`airconctrlpanel`.

The **L ENG** set air source to left engine, **R ENG** to right engine and **BOTH** to both engines which is also the normal position while in use.

**RAM** and **OFF** both enable the emergency ram door but **OFF** turns off pressurization and heating.

During normal operation temperature in the cockpit is controlled using the **TEMP** switch and thumbwheel on that same panel.
The thumbwheel sets the temperature which is automatic regardless of airspeed and altitude if the **TEMP** switch is set to **AUTO**.
If that switch is set to **MAN**, manual, it will vary depending on airspeed and altitude.

The **CABIN PRESS** switch controls the cockpit safety valve, controlling whether the cockpit is pressurized or not.
If set to **NORM** cockpit pressure is at 8,000 feet up to 23,000 feet and after that 5 psi higher than the atmosphere outside.
**DUMP** depressurizes the cockpit by opening the cockpit safety valve.

The **RAM AIR** switch is used to modulate cockpit air supply temperature when the ram air door is in use by opening and closing the emergency ram air door.
This is as in this mode that air is mixed directly with hot bleed air from the engines.
**INCR**, increase, opens the ram door, decreasing temperature and **DECR** closes the door and increases temperature. Springloaded to center.

:Note: Selection of **RAM** or **OFF** inhibits gun firing.

Current cabin air pressure altitude can be seen on the :ref:`cabpressalt` in front of the pilot control stick.

The **CABIN PRESS** caution light is present on the RIO :ref:`cauadvpanel`, indicating less than 5 psi absolute pressure or above 27,000 feet cockpit pressure.
On the same panel is also the **COOLING AIR** advisory light which indicates overheat in the electronics cooling system, indicative of a failure in the ECS which might damage the electronics.

The anti-g suit pressurisation can be tested via the :ref:`gvalve` for the pilot and :ref:`rgvalve` for the RIO.
The airflow through the suit, or seats if no suits are worn, are controlled by the **VENT AIRFLOW** thumbwheel on the pilot :ref:`oxygen` and RIO :ref:`roxyvent` respectively.


Windshield Anti-Ice and Defogging
=================================

Windshield anti-ice and defogging is controlled via the :ref:`extenvctrlpanel` and :ref:`candefogairlev`.

The **WSHLD**, windshield, switch on the external environment panel provides hot bleed air on the outside of the windshield to clear ice and rain on the glass.
**AIR** enables airflow over windshield, **OFF** disables it.

The :ref:`candefogairlev` (for pilot) and :ref:`rcandefogairlev` (for RIO) sets amount of air through the canopy air diffusers to be used to defog the canopy.
Lever set fully to **CANOPY DEFOG** selects all cockpit air to be through the canopy diffusers while lever fully at **CABIN AIR** redirects 30% through the canopy diffusers and the rest to the cockpit diffusers.

The **WSHLD HOT** advisory light on the pilot :ref:`CAindicator` illuminates when the windshield is warmer than 300° F (149° C). This automatically closes the valve and stops warm air to the windshield until cooled down.


AN/AWG-9 and AIM-54 Cooling
===========================

The AN/AWG-9 radar and AIM-54 missiles are liquid cooled via independent liquid/air heat exchangers cooled by ECS air.

The :ref:`liqcool` controls these cooling systems and should be set to **AWG-9** to enable only the AN/AWG-9 cooler if no AIM-54 Phoenix missiles are carried.
If AIM-54 missiles are loaded **AWG-9/AIM-54** should instead be set to enable both systems. **OFF** turns off both systems and should not be set with systems in use as they will overheat.

The RIO :ref:`cauadvpanel` contains advisory lights for these systems.
The **AWG-9 COND** advisory light indicates overheat in the AN/AWG-9 cooling system, continuing use of the AN/AWG-9 might damage it.
The **MSL COND** advisory light indicates overheat in the AIM-54 cooling system or operation of the WCS with AIM-54s loaded and liquid cooling switch not set to **AWG-9/AIM-54**.


External ECS Air Supply
=======================

For operation of systems requiring cooling on the ground or on deck it's possible to connect an external ECS air source to cool them.

The normally used source isn't able to provide cooling for all systems at the same time though and thus what is to be cooled needs to be set.
This is controlled by the **GND CLG** switch on the :ref:`iffant` panel at the RIO right side console.
**OBC/CABIN** provides the external ECS air to the cabin and all air cooled electronics. This setting disables the AN/AWG-9 transmitter due to inadequate cooling.
**AWG-9/AIM-54** provides the external ECS air to the AN/AWG-9 and AIM-54 heat exchangers and to related electronics.
**OFF** turns off external ECS air supply and is the normal mode used when the engines are running.

:Note: Any setting on the **GND CLG** other than **OFF** should not be used when the engines are running.

:Note2: For the Heatblur F-14 in DCS the external ECS air supply is connected via the same command as the engine starter air.


Oxygen System
*************

The F-14 carries one or two 10-liter liquid oxygen bottles providing oxygen to the crew when needed.

The oxygen supply is controlled on the pilot :ref:`oxygen` and RIO :ref:`roxyvent` respectively.
Both panels contain an **OXYGEN** switch that sets oxygen supply to **ON** or **OFF**.

Liquid oxygen remaining is shown on the :ref:`liqoxyqtyind` on the pilot's right side console.
The gauge shows remaining liters of liquid oxygen up to 20 liters (if two bottles are installed).
The indicator is electrically driven and if it receives no power an **OFF** flag will be visible and it will display 0 liters remaining.

Additionally the RIO :ref:`cauadvpanel` has the **OXY LOW** caution light which illuminates when the liquid oxygen quantity is below 2 liters.

During the **INST** test on the ref:`MTPanel` the liquid oxygen meter shows 2 liters and the **OXY LOW** caution light illuminates.


Flight Instruments
******************

Apart from the VDIG (HUD and VDI) the F-14 is equipped with: 

* two :ref:`stbyattind` (and :ref:`rstbyattind`)
* two :ref:`pspeedmachind` (and :ref:`rspeedmachind`)
* two :ref:`pservopneualt` (and :ref:`rservopneualt`)
* a :ref:`vertvelind`
* a turn and slip indicator (on the :ref:`ACMpanel`)
* an :ref:`acc`
* a :ref:`pstbycomp`
* and two mechanical clocks (:ref:`pclock` and :ref:`rclock`).

The types that have two installed have one installed on the RIO instrument panel as well as the pilot one.

All of these instruments that need electrical power are connected to the essential buses meaning that they can be powered by the emergency generator if the main ones fail.

For more info on the instruments see their respective cockpit panel descriptions linked above.


Canopy
******

The rear-hinged F-14 canopy is operated hydraulically and pneumatically.
Controls are present in both pilot and RIO cockpits.

See :ref:`pcanopylever` or :ref:`rcanopylever` for the controls.

The **CANOPY** caution light on both the pilot :ref:`CAindicator` and the rio :ref:`cauadvpanel` illuminates if the canopy is not in the down and locked, secured position.


Ejection System
***************

The F-14 Tomcat is equipped with dual Martin-Baker GRU-7A rocket-assisted ejection seats, one for the pilot, one for the RIO.
The ejection system is a zero/zero system, capable of successfully ejecting the crewmembers at zero airspeed, stationary, on the ground.

As the F-14 is a two seat aircraft it has additional controls apart from the ejection handles and arming systems, namely the ejection command lever.
This lever, which is located in the RIO cockpit, selects if the RIO ejects the pilot as well when he ejects.

The lever is situated beside the sensor control panel, see :ref:`ejectcmdlev`.
When set to **PILOT**, the pilot ejects both crewmembers, while the RIO ejects only himself.
When set to **MCO** both crewmembers eject both crewmembers.

The system does not allow pilot-only ejection because it would be undesirable for the RIO to remain in the aircraft alone.

The pilot has indication of what position the ejection command lever is at on the :ref:`gearcontrol`, the **EJECT CMD** flip-flop indicator showing **PILOT** when the lever is in pilot and **MCO** when in MCO.

If the canopy does not jettison when initiating the ejection sequence it's possible to manually jettison it using the :ref:`pcanjett` in the pilot cockpit or the :ref:`rcanjett` in the RIO cockpit.
If the canopy inhibited ejection after ejection initiation, jettisoning the canopy will most likely restart it.
If ejection is needed during a flat spin, it's also recommended to manually jettison the canopy and allow it to clear before initiating the ejection sequence as the canopy might need longer to clear during a flat spin.


Lighting System
***************

The F-14 Tomcat lighting system consists of the internal and the external lights.

The internal lights are the red instrument panel and console lights, red and white floodlights and a moveable utility light at both crew stations.

The external lights are the position lights, the anticollision lights, the formation lights, the taxi light, the approach lights and the refueling probe light.


Internal Lighting
=================

The red instrument panel and console lights are the normally used lights during nighttime, they back-light all instruments and controls allowing their use while impacting night vision minimally.

The floodlights allow for additional lighting of the cockpit panels but care should be taken to avoid affecting night vision.

The utility lights are movable and can be used to illuminate a specific spot and as a map or reading light.

Controls for the internal lights are on the :ref:`mlightctrlpanel` in pilot cockpit and :ref:`intlight` in the RIO cockpit, each controlling their own cockpit lighting.

:Note: The utility light function is not modelled in DCS but the flashlight function, default keybind Left Alt + L, which moves with the cursor can be used, providing a similar function.


External Lighting
=================

The position lights on the F-14 are located on the left wing tip (red), right wing tip (green), top aft of left vertical stabilizer (white) and upper and lower lights on the wing gloves on each side (red on left glove and green on right).
The glove lights are additional lights supplementing the wing tip lights. When the wings are swept forward of 25° the wing tip lights are active and when aft of 25° the glove lights are active instead.

With the gear down, wings forward of 25° and the position lights in steady mode both the glove and wingtip position lights are lit.
When the anticollision lights are on the the position lights can only operate in the steady mode, otherwise they can be set to flash.

The anticollision lights are located on the chin pod or TCS pod, top front of the left vertical stabilizer and top aft of the right vertical stabilizer.
The anticollision lights are all red flashing lights. The chin pod mounted lower light only operates while the nosegear wheel door is closed.

The formation lights are dim green lights used for formation flight which can be dimmed gradually.
They are located on the aircraft nose (behind the radome), the wing tips, on the fuselage aft of the wings and on the top edge of the vertical stabilizers. All are duplicated on both sides of the aircraft.

The taxi light is a fixed headlight located on the nosewheel strut. It's automatically turned off with gear retraction if set to on.

The approach lights are also located on the nosewheel strut and replicate the AoA indexer for the LSOs during carrier traps.

The refueling probe light is used to illuminate the refueling probe and is automatically enabled with probe extension.

All external light controls are located on the :ref:`mlightctrlpanel` except for the exterior lights switch on the left throttle (see :ref:`throttle`) which disables or enables all external lights apart from the approach lights.


Jettison System
***************

The Jettison system has four modes of operation: emergency, ACM, selective and auxiliary.


**Emergency Jettison**

The emergency jettison is selected via the **EMERG STORES JETT** on the :ref:`gearcontrol`.
Selection causes the **EMERG JETT** caution light to illuminate on the pilot :ref:`CAindicator`.

The emergency jettison requires only no weight on wheels indicated (no master arm) and ejects all stores except for Sidewinders.


**ACM Jettison**

The ACM jettison is selected via the **ACM JETT** button under the ACM cover/switch on the :ref:`ACMpanel`.

The ACM jettison, like the emergency jettison, requires no master arm but instead requires that the landing gear lever is up.
Unlike the emergency jettison the ACM jettison only ejects those stations selected by the RIO on the :ref:`armpanel` (set to **SEL** or **B** for stations 1 and 8).


**Selective Jettison**

The selective jettison is set and executed by the RIO on the :ref:`armpanel`.
This mode of jettisoning requires the landing gear handle to be in the up position and the master arm to be on.

The procedure for jettison in selective mode is to set the desired station switches to **SEL** and hold the **SEL JETT** switch to **JETT**.


**Auxiliary Jettison**

The auxiliary jettison mode is a backup mode to use when the other modes have failed.
Like the selective jettison mode it requires the landing gear handle to be up and the master arm to be on.

This mode can only eject air-to-ground stores and ejects them by actuating the normal release hooks.
This means that the aircraft needs to fly straight and level as the stores are not ejected forcefully but instead just released and cleared using gravity.

:Note: No jettison mode can jettison ITERs or stores loaded on those, they need to be dropped like normal, with or without the fuzes armed.


CADC Central Air Data Computer
******************************

The Central Air Data Computer or CADC is the computer acting as the spider in the web for most aircraft flight sensors and relaying this information to all systems needing them.
In addition it also controls the wing-sweep via the wing-sweep schedule and also controls the flaps and slats as they are limited by that same schedule.


AN/AWG-9 Weapon Control System (WCS)
************************************

The AN/AWG-9 weapons control system (WCS) is an integrated system containing the F-14's main sensors and computer providing detection, tracking and engagement of targets in the air-to-air and air-to-ground roles.


Detail Data Display (DDD) and Panel
===================================
.. image:: /images/general/awg-9/dddpanel.png

The DDD is the main control panel and display for the radar part of the AN/AWG-9 system. It contains all the controls for the radar except the scan volume and stabilization controls which are on the sensor control panel.


**TGTS, MLC, AGC and PARAMP Switches**

The upper left part of the DDD panel contains four switches (**1-4**) controling amplification, mainlobe clutter (MLC) suppression and target size parameters.

The **TGTS** (targets) switch selects expected target size which is used by the WCS to calculate missile launch zones and set parameters for target tracking in the radar. It also sets the range at which the missile ATC is sent, **SMALL** being 6NM, **NORM** 10NM and **LARGE** 13NM. The selected position of this switch might negatively affect target tracking and engagement if set incorrectly.

The **MLC** switch controls how the system supresses the MLC in the radar system while in pulse doppler mode. The OUT position disables the system while the IN position enables it. The AUTO position automatically enables the MLC filter if the antenna look-up angle is less than 3°.

The **AGC** switch controls the automatic gain control and is used in the pulse doppler modes to allow control of the time constant used for the AGC. Normally (NORM position) the AGC uses a longer time constant to calculate a mean value used for amplification. If the radar is operating in a jammed environment or heavy clutter is present the AGC can be set to use a faster time constant to mitigate these factors but this setting can also make the radar less sensitive to real targets.

The **PARAMP**, parametric amplifier switch allows for manual control of the parametric amplifier which is used to amplify weaker targets in all radar modes. Normally the WCS controls when to use the PARAMP depending on range but if tracking an unusually strong target it can be used to disable PARAMP to lessen the effect from background noise. If set to off manually it lessens the detection range by approximately 35%.

:Note: AGC, PARAMP and TGTS switches currently not implemented.


**AWG-9 Range Selection and Tracking Indication**

In the upper central part of the DDD panel are located the controls and indicators for setting the radar range in the search modes.
Below these are also present the indicators for radar tracking while in the single target track (STT) modes.

The six round buttons (**8**), which are labelled **5, 10, 20, 50, 100 and 200**, are used to set desired radar range in pulse modes and IFF range, they also set the scale on the pilot target range displays.
The buttons are mutually exclusive as only one range can be selected at a time.
In pulse search this setting affects the PRF of the radar and the scale on the DDD and if set to 20nm or greater range it also enables pulse compression.

The **range display drum** (**7**) indicates currently displayed scale on the DDD for the pulse modes and is blank when using pulse-doppler.
It can also show ±10 for when using the IFF interrogator in the STT modes.

Below these are the four radar track indicator lights which are used to indicate how the radar tracks the target in STT.

* The **ANT TRK**, antenna track, light indicates that the radar is tracking the target angle (direction) in azimuth and elevation.
* The **RDROT**, radar on target, light indicates that the target is in the range or rate gate and is being tracked in range or rate.
* The **JAT**, jam angle track, indicates that the antenna is tracking a jamming source's angle in azimuth and elevation.
* The **IROT**, IR on target, light indicates that target angle in azimuth and elevation is being tracked via the TCS, the name is inherited from the earlier IRST system of early -A F-14s.


**IR AUDIO Controls**


The **IR AUDIO** controls (**10-12**) in the upper right part of the DDD panel were used with the original IR-sensor and are non-functional in modelled F-14 versions.


**Radar and Missile Frequency Selectors**

The thumbwheels in the upper rightmost part of the DDD panel are used to control the AN/AWG-9 radar emitter's frequency (**13**) and the missile control channel used with the AIM-7 and AIM-54 (**14**).
Adjustment of these might be needed to avoid interference from other AN/AWG-9 equipped aircraft or other external sources.
The WCS reads the missile channel for the AIM-7 as the missiles are prepared as they need to be tuned and changing the channel after this will not affect a change unless the preparation sequence is restarted.

:Note: Non-functional in DCS currently.


**Radar Mode Selectors**

In the lower right part of the DDD panel are located the controls for display mode and radar mode and its indicator drum.
The display mode buttons (**15**) selects what mode is currently selected for display on the DDD.
The **RDR**, radar, mode is the normally selected mode.
The **IR** mode is non-functional as the IR system is not installed.
The **IFF** button enables the IFF interrogator in one of its two operational modes, for more detail see the IFF section in the General design and systems overview chapter.

The radar mode buttons (**16**) selects the operational mode of the AN/AWG-9 radar.
The two STT buttons, pulse-doppler single target track (**PD STT**) and pulse single target track (**P STT**), enables selection of an STT mode if available and relevant.
These are used to automatically attempt an STT lockon onto a hooked TID target or to transfer between these two STT modes.
The pulse doppler search button (**PD SRCH**) selects the PD SEARCH mode of the radar.
The range-while-search button (**RWS**) selects the RWS mode of the radar.
The two track-while-scan buttons (**TWS AUTO** and **TWS MAN**) selects their respective TWS modes for use in the radar.
The pulse search button (**PULSE SRCH**) selects the pulse search mode of the radar.

The **indicator drum** (**17**) shows currently selected radar mode.
Apart from TWS MAN, TWS AUTO, RWS which refers to their respective modes it can also show MRL (manual rapid lockon), A-G (air-to-ground), VSL (vertical scan lockon), OPTTRK (TCS track), PLM (pilot lockon mode), PULSE (for both pulse search and pulse STT), PD (for both pulse dopple search and PD STT) and PAL (pilot automatic lockon mode).


**Aspect and Vc Switches**

On opposite sides of the DDD itself are located the ASPECT and VC switches.
The **Vc** switch (**18**) controls the rate scale on the DDD in the pulse doppler search modes.
X-4 sets the scale to 800 knots opening to 4,000 knots closing, NORM sets the scale to 200 knots opening to 1,000 knots closing and VID sets the scale to 50 knots opening to 250 knots closing.

The **ASPECT** switch (**21**) controls two different things depending on radar mode.
In the pulse doppler search modes it controls the rate processing windows of the radar, NOSE sets 600 knots opening to 1,800 knots closing,
BEAM sets 1,200 knots closing to 1,200 knots opening and TAIL sets 1,800 knots opening to 600 knots closing.
In the short pulse STT modes the switch sets the system tracking mode to the corresponding echo edge or centroid to counteract countermeasures like chaff and specific jammer modes.


**Elevation Indicator**

The elevation indicator scale, **EL**, (**22**) is used to indicate the sensor elevations.
The left (**RDR**) needle indicates current actual radar elevation. This indicator will move with the antenna in the radar search modes.

If the HCU is set to RDR the right (IR/TV/EC) needle indicates the currently set elevation center of the antenna scan pattern.
This is usefull in STT as it enables the RIO to set the antenna elevation center to use when you eventually revert to search.

If the HCU is set to IR/TV the right needle instead displays current TCS elevation.


**Counter-Countermeasure Mode Controls**

In the lower leftmost corner are located the three counter-countermeasure mode buttons. These controls functionality to counter different jammers affecting the system. (Not currently implemented)


**Radar and DDD Control Knobs**

Spread out on the DDD panel are eight different knobs controlling differing functions on the DDD and radar.
On the upper left side of the DDD is located the **PULSE VIDEO** control knob (**5**) which controls the video intensity on the DDD for the pulse modes.
It affects only the DDD display, not the radar itself.

On the upper right side of the DDD is located the **BRIGHT** control knob (**9**) which adjusts a polarized filter which allows for mechanical control of the brightness of the DDD, mainly used in low light conditions.

On the lower left side of the DDD is located the **PULSE GAIN** control knob (**20**) which controls the radar gain in the pulse modes.
This control affects the gain of the radar directly. Normally left in the detent at the fully clockwise position which allows the WCS to control it automatically.

On the lower right side of the DDD is located the **ERASE** control knob (**19**) which controls the strength of the erase beam on the DDD.
The erase beam is what erases the indications continually on the DDD and thus affects how long the after-image of the detected targets will remain.

On the left side of the DDD panel are located the PD THRLD (**26**), JAM/JET (**24**) and ACM THRLD (**25**) control knobs.
The pulse-doppler threshold knobs (**PD THRLD**) controls the threshold at which an echo is regarded as a contact, displayed on the DDD and tracked on the TID in RWS and TWS.
The **CLEAR** knob controls the clear region threshold (upper half of the DDD) and the **CLUTTER** knob controls the clutter region (lower half of the DDD).
Normally left in the clockwise NORM detents, letting the WCS automatically control them.

The **JAM/JET** control knob selects the threshold of what jamming intensity signal strength is needed to regard an emitter as a jammer and make it indicate a jammer strobe on the TID.
The **ACM THRLD** sets the threshold for what to regard as a target at ACM ranges. Normally left in the counter-clockwise detent, letting the WCS automatically control it.

:Note: JAM/JET and ACM THRLD not currently implemented in DCS.

.. raw:: latex

    \newpage

**Detail Data Display**

.. table::
    :widths: auto
    
    +--------------------------------------------------------------------------------------------+
    | Pulse                                                                                      |
    +-----------------------------------------------+--------------------------------------------+
    | .. image:: /images/general/awg-9/PSEARCH.png  | .. image:: /images/general/awg-9/PSTT.png  |
    +-----------------------------------------------+--------------------------------------------+
    | Pulse-Doppler                                                                              |
    +-----------------------------------------------+--------------------------------------------+
    | .. image:: /images/general/awg-9/PDSEARCH.png | .. image:: /images/general/awg-9/PDSTT.png |
    +-----------------------------------------------+--------------------------------------------+


The **DDD** screen itself shows either only radar return data or radar returns combined with symbology depending on radar mode.

In the pulse search mode the display shows only radar returns and the a visual representation of the radar sweep and erase sweep. The screen shows range vs azimuth in this mode.
In pulse doppler modes the AGC TRACE is added on the bottom showing supposed jamming intensity of the detected targets. The screen shows rate vs azimuth in these modes.

In the two STT modes the display shows, in addition to the return from the target, the tracking gates (either range or range rate gate),
a closing rate indication on the right side and the attack symbology if in air-to-air mode and a missile is selected.

In pulse STT the target is displayed at the correct azimuth and range while in pulse doppler STT the target is shifted to the left side of the display and a generated target symbol is at the correct azimuth instead.
In pulse doppler STT the AGC TRACE is added as well to give an indication of jamming strength.
For information about the attack symbology see the VDIG section.

:Note: AGC TRACE not yet implemented.

When the IFF interrogator is activated it superimposes the IFF information on top of the normal radar picture if in pulse search.
In pulse doppler search the DDD switches to range vs azimuth at the previously set range scale while the IFF information is shown
and in PD STT, if the target is hooked on the TID the DDD switches to a ±10 scale centered on the target while the IFF returns are shown.


.. _TID:

Tactical Information Display (TID) and Associated Controls
==========================================================
.. image:: /images/general/awg-9/tid.png

The TID is the main data display for the WCS. It displays a tactical picture to the RIO which is used to identify and select targets for the long range weapons on the F-14 Tomcat.
Think of it as a top down map showing the relative coordinates of all presented tracks and symbols, but without a representation of the ground/surface features (map).
It is also used in secondary roles as a display for entering data into the WCS, for navigation, for INS alignment and for the on board checkout, OBC.


**TID Display Control Knobs**

On the upper edge of the TID are two display control knobs (**2 & 4**). The left one controls the contrast of the TCS display and the right one controls the overall brightness of the TID.
Both settings will depend on user preference and ambient lighting.


**INS and Navigational Controls**

On the upper left corner of the TID is the status display for the INS (**1**), used to indicate status of the INS and its alignment.

To the sides of the TID are located two selector knobs.
The one on the left side (**12**) controls and selects the INS or AHRS mode to use. It also allows for INS alignment.

On the right side is the selector knob (**6**) controlling the source used when destination steering is selected by the pilot.
Selects between the different waypoints stored in the WCS. MAN position is used only for aircraft with TARPS mounted.

Adjacent to this selector is a readout drum on the upper right edge of the TID (**5**).
It's used to indicate the type of steering information currently displayed to the pilot.

Possible steering type shown are: destination (DEST), data link command heading (D/L), azimuth lead collision steering (LD CLSN), collision steering (CLSN),
lead pursuit steering (LD PURST), pursuit steering (PURST), TACAN radial (TACAN) and manually set commanded heading (MAN).


**TID Data Readout Drum**

Above the TID is located the data readout indicator drum (**3**). It's used to indicate the source of the data displayed on the TID text readouts.
Possible readouts are: the different waypoints in the navigational system (WAY PT, ST, FIX PT, IP and HB), own aircraft (OWN A/C), first priority target (TGT 1) and SYMBOL.

Symbol indicates that the readout displays data for a hooked symbol on the TID which doesn't have its own indicator text on the drum.
The drum can also show a blank face to indicate the data source as one not having its own indicator text and which has no symbol on the TID.


**TRACK HOLD and CLSN buttons**

Below the selector knobs on the sides of the TID are two buttons with indicator lights, one on each side. The lights illuminates green to indicate selection.

On the left side is the **TRACK HOLD** button (**11**) which enables the track hold function. Normally targets on the TID in TWS mode are retained 14 seconds after last observation.
The track hold function extends this two 2 minutes for all tracks. If disabled it reverts to the standard 14 second period, whereafter the targets will be dropped if no new observations occur.

On the right side is the **CLSN** button (**7**) enabling collision steering to currently tracked target or centroid if in TWS.
This selection overrides the current steering information presented to the pilot with the collision steering, only exception being if the pilot selects the ACM.


**TID Control Panel**

Below the TID is the TID control panel (**8**). It contains 8 buttons selecting what symbology to show on the TID, these illuminates green when active. It also contains two selector knobs controlling display scale and TID mode.
The buttons are:

.. table::
    :class: longtable
    
    +-------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | Control/Indicator | Function                                                                                                                                                                                                                                         |
    +===================+==================================================================================================================================================================================================================================================+
    | RID DISABLE       | Not implemented.                                                                                                                                                                                                                                 |
    +-------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | ALT NUM           | | Altitude numerals, enables display of track altitudes on the left side of track symbols.                                                                                                                                                       |
    |                   | | Shows a single digit representing ten-thousands of feet, 1 as an example indicating an altitude of between 5 000 and 15 000 feet.                                                                                                              |
    +-------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | SYM ELEM          | | Symbology elements, enables display of all supplementary symbology of tracks and waypoints.                                                                                                                                                    |
    |                   | | If deselected all tracks and waypoints are represented only as dots on the TID.                                                                                                                                                                |
    +-------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | DATA LINK         | Enables display of data link tracks.                                                                                                                                                                                                             |
    +-------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | JAM STROBE        | | Enables display of jam strobes on the TID.                                                                                                                                                                                                     |
    |                   | | Jamming targets exceeding the JAM/JET setting on the DDD are shown if enabled. Not yet implemented.                                                                                                                                            |
    +-------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | NON-ATTK          | | Non-attack, enables or disables display of targets which aren't possible to engage.                                                                                                                                                            |
    |                   | | Friendly targets being an example.                                                                                                                                                                                                             |
    +-------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | VEL VECTOR        | Velocity vector, enables display of velocity vectors on tracks.                                                                                                                                                                                  |
    +-------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    | LAUNCH ZONE       | | Enables display of weapon launch zones depending on selected missile type.                                                                                                                                                                     |
    |                   | | These replace the velocity vectors on relevant targets. This function is automatically enabled by the WCS 60 seconds prior to a target entering maximum launch range.                                                                          |
    +-------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

The left selector knob on the panel controls displayed TID mode (**10**).
**GND STAB** (ground stabilized) mode stabilizes the display to the ground meaning that the display is fixed while own aircraft moves on the display. True north is used as up on the display.
**A/C STAB** (aircraft stabilized) mode stabilizes the display to own aircraft meaning that the diplay moves along with own aircraft which stays put on the display. Own aircraft heading is used as up on the display.
**ATTK** (attack) functions in the same manner as A/C STAB but superimposes the attack steering symbology.
**TV** selects the TCS for display on the TID. Disables normal tactical presentation on the TID and on the HSD.

The right selector knob controls the scale on the TID, setting the display diameter to the selected range (**9**).
Available ranges are 25, 50, 100, 200 and 400 nautical miles, the greater ranges being useful to show data link information outside of own radar range.


TID Data Readouts
-----------------

.. image:: /images/general/awg-9/tidindicators.png

+--------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Indicator                | Function                                                                                                                                                                                                                                             |
+==========================+======================================================================================================================================================================================================================================================+
| Buffer Register          | Shows data that the RIO is currently entering into the WCS. Comparable to a scratchpad in newer aircraft. Functionality further expanded upon in the CAP section.                                                                                    |
+--------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Data Readouts            | Readouts showing data selected for readout from the WCS. Can be, as examples, data from hooked tracks or own aircraft. Functionality further expanded upon in the CAP section.                                                                       |
+--------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Computer Run Indicators  | Readouts showing WCS program cycles running. Should continuously cycle numbers, if not this indicates a freeze or lockup in the WCS computer.                                                                                                        |
+--------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Antenna Elevation        | Shows current AN/AWG-9 radar antenna elevation if in STT or scan pattern elevation center if in a search mode.                                                                                                                                       |
+--------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Scan Pattern Limits      | Shows altitude limits of currently selected scan pattern at set TID display range in thousands of feet.                                                                                                                                              |
+--------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Navigation Status        | Shows current status of the navigation system, IN for INS, AH for AHRS and an alternating MV if the manual magnetic variation differs from calculated magnetic variation.                                                                            |
+--------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Target Closing Rate      | Shows STT target or TWS hooked target closing rate to the closest whole tenth of knots. A plus sign indicates that the track is closing and a minus that the track is opening the distance to own aircraft.                                          |
+--------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Selected Weapon          | Indicates currently selected air-to-air weapon. G for gun, SW for sidewinder, SP for sparrow and PH for phoenix. SP and PH also indicates number of missiles of the selected type that are ready for launch. Display is blank in air-to-ground mode. |
+--------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. raw:: latex

    \newpage


.. _TIDSYMB:

TID Symbology
-------------

+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Element                                                     | Shape                                                | Function                                                                                                                                                                                                                                                                                                                     |
+=============================================================+======================================================+==============================================================================================================================================================================================================================================================================================================================+
| Center Dot                                                  | .. image:: /images/general/awg-9/tidsymbology/1.png  | Marks coordinates of symbol, basic component of all symbols representing a coordinate.                                                                                                                                                                                                                                       |
|                                                             |    :width: 10 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Own Aircraft                                                | .. image:: /images/general/awg-9/tidsymbology/2.png  | Symbol representing own aircraft. Antenna scan limits, jamming strobes emanate from this symbol. Moves and has a velocity vector in ground stabilized mode. Stationary in aircraft stabilized and attack modes.                                                                                                              |
|                                                             |    :width: 50 px                                     | If the symbol moves outside of TID presentation a line is drawn from the center of the display to the edge of the display indicating direction of the own aircraft symbol. This can occur due to the TID offset function or due to the symbol moving on the display in the ground stabilized display mode.                   |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| TID Cursor                                                  | .. image:: /images/general/awg-9/tidsymbology/26.png | | Circle used as a hook cursor. Controlled by the HCU when in TID mode.                                                                                                                                                                                                                                                      |
|                                                             |    :width: 50 px                                     | |                                                                                                                                                                                                                                                                                                                            |
|                                                             |    :height: 50 px                                    | | Half-action on the HCU enables display of the symbol and also enables the HCU stick to move the cursor.                                                                                                                                                                                                                    |
|                                                             |    :align: center                                    | | The cursor location is set by stick deflection. This means that a given deflection of the stick always represents the same location on the TID allowing the RIO to train muscle memory for higher symbol hook speeds.                                                                                                      |
|                                                             |                                                      | |                                                                                                                                                                                                                                                                                                                            |
|                                                             |                                                      | | Full-action on the HCU hooks (selects) the closest symbol if one is present within 0.125 inches of cursor center. The hooked symbol gets brighter to indicate hook. If no symbol is present at location the cursor is instead dropped at that location and brightens to indicate that a position hook has occured.         |
|                                                             |                                                      | |                                                                                                                                                                                                                                                                                                                            |
|                                                             |                                                      | | To re-enable cursor usage after a position hook (or to release position hook) half-action is selected and released.                                                                                                                                                                                                        |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| TWS Steering Centroid                                       | .. image:: /images/general/awg-9/tidsymbology/27.png | Steering centroid of TWS tracks selected by WCS for weapons engagement.                                                                                                                                                                                                                                                      |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                             | **Onboard Sensor Targets**                                                                                                                                                                                                                                                                                                                                                          |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Unknown                                                     | .. image:: /images/general/awg-9/tidsymbology/3.png  | Unknown sensor track in RWS, TWS and STT modes.                                                                                                                                                                                                                                                                              |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 30 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Hostile                                                     | .. image:: /images/general/awg-9/tidsymbology/4.png  | Track in TWS and STT modes designated as hostile by RIO.                                                                                                                                                                                                                                                                     |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 30 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Friend                                                      | .. image:: /images/general/awg-9/tidsymbology/5.png  | Track in TWS and STT modes designated as friendly by RIO.                                                                                                                                                                                                                                                                    |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 30 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Angle-Tracked Radar Target                                  | .. image:: /images/general/awg-9/tidsymbology/6.png  | Radar target tracked only in angle (jamming target).                                                                                                                                                                                                                                                                         |
|                                                             |    :width: 25 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 40 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Angle-Tracked Radar Target with Altitude Difference Ranging | .. image:: /images/general/awg-9/tidsymbology/7.png  | Radar target being tracked in angle only and range being computed by altitude difference ranging.                                                                                                                                                                                                                            |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| TCS-Angle Tracked Target                                    | .. image:: /images/general/awg-9/tidsymbology/10.png | Target being tracked in angle by TCS.                                                                                                                                                                                                                                                                                        |
|                                                             |    :width: 25 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 40 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| TCS-Angle Tracked Target with Altitude Difference Ranging   | .. image:: /images/general/awg-9/tidsymbology/11.png | Target being tracked in angle by TCS and range being computed by angle difference ranging.                                                                                                                                                                                                                                   |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                             | **Data Link Targets**                                                                                                                                                                                                                                                                                                                                                               |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Unknown                                                     | .. image:: /images/general/awg-9/tidsymbology/12.png | Data link track identified as unknown by source.                                                                                                                                                                                                                                                                             |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 30 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Hostile                                                     | .. image:: /images/general/awg-9/tidsymbology/13.png | Data link track identified as hostile by source.                                                                                                                                                                                                                                                                             |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 30 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Friend                                                      | .. image:: /images/general/awg-9/tidsymbology/14.png | Data link track identified as friendly by source.                                                                                                                                                                                                                                                                            |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 30 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                             | **Manually Entered Reference Points**                                                                                                                                                                                                                                                                                                                                               |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Home base                                                   | .. image:: /images/general/awg-9/tidsymbology/15.png | Waypoint representing home base, carrier or airfield.                                                                                                                                                                                                                                                                        |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Waypoint                                                    | .. image:: /images/general/awg-9/tidsymbology/16.png | WCS navigational waypoint, supplanted by number indicating waypoint 1, 2 or 3.                                                                                                                                                                                                                                               |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Defended Point                                              | .. image:: /images/general/awg-9/tidsymbology/17.png | Waypoint used to show area to protect.                                                                                                                                                                                                                                                                                       |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Fix Point                                                   | .. image:: /images/general/awg-9/tidsymbology/18.png | Generic fix-point waypoint.                                                                                                                                                                                                                                                                                                  |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Hostile Area                                                | .. image:: /images/general/awg-9/tidsymbology/19.png | Waypoint indicating a hostile area.                                                                                                                                                                                                                                                                                          |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Surface Target                                              | .. image:: /images/general/awg-9/tidsymbology/20.png | Waypoint indicating a surface target.                                                                                                                                                                                                                                                                                        |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| IP                                                          | .. image:: /images/general/awg-9/tidsymbology/21.png | Waypoint used for air-to-ground engagement, see :ref:`CIP`.                                                                                                                                                                                                                                                                  |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                             | **Data Link Reference Points**                                                                                                                                                                                                                                                                                                                                                      |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Home Base                                                   | .. image:: /images/general/awg-9/tidsymbology/22.png | Data link waypoint representing home base.                                                                                                                                                                                                                                                                                   |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Waypoint                                                    | .. image:: /images/general/awg-9/tidsymbology/23.png | Data link generic waypoint.                                                                                                                                                                                                                                                                                                  |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Data Link Fix Point                                         | .. image:: /images/general/awg-9/tidsymbology/24.png | Data link waypoint representing a fixed point.                                                                                                                                                                                                                                                                               |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Surface Target                                              | .. image:: /images/general/awg-9/tidsymbology/25.png | Data link waypoint representing a surface target.                                                                                                                                                                                                                                                                            |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                             | **Position Symbol Modifiers**                                                                                                                                                                                                                                                                                                                                                       |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Mandatory Attack                                            | .. image:: /images/general/awg-9/tidsymbology/28.png | Additional symbology on a TWS track (horizontal bar through center dot) selected as mandatory attack by the RIO. Only one target can be designated thusly and always receives an engagment priority number.                                                                                                                  |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 30 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Data link Destroy                                           | .. image:: /images/general/awg-9/tidsymbology/29.png | Additional symbology on a data link track (horizontal bar through center dot) designated to be destroyed by data link source. Does not affect target prioritization in WCS.                                                                                                                                                  |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 30 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Do Not Attack                                               | .. image:: /images/general/awg-9/tidsymbology/30.png | Additional symbology on a TWS or data link track (vertical bar through center dot) designated as do not attack (by RIO) or disengage (via data link). If set by RIO removes target from WCS target prioritization.                                                                                                           |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Multiple Targets                                            | .. image:: /images/general/awg-9/tidsymbology/31.png | Additional symbology on a TWS or data link track (horizontal bar on left side of symbol) indicating that the track represents multiple targets. Can be set manually by RIO or recieved via data link.                                                                                                                        |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Data Link Challenge                                         | .. image:: /images/general/awg-9/tidsymbology/32.png | Additional symbology on a data link track (small V with apex at center dot) representing data link command to visually identify target.                                                                                                                                                                                      |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Track Extrapolated                                          | .. image:: /images/general/awg-9/tidsymbology/33.png | Additional symbology on TWS or STT track (small X with center at center dot) indicating that no update to target has occured within 8 seconds. Track will be deleted after 14 seconds or 2 minutes if track hold function is enabled.                                                                                        |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Hooked Symbol                                               | Symbol brightens                                     | When a symbol is hooked by HCU or CAP functions it brightens to indicate hook.                                                                                                                                                                                                                                               |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Target Under Missile Attack                                 | Target track symbol brightens                        | In TWS and STT symbols of tracks being engaged by own aircraft brightens during computed missile flight time plus 15 seconds to indicate missile engagement in progress.                                                                                                                                                     |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Target in Optimum Missile Launch Zone                       | Target track symbol blinks                           | In TWS and STT symbols, launch zones and firing order numerics of target tracks blink when time to optimum missile range is less than 8 seconds.                                                                                                                                                                             |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Altitude Numerics                                           | .. image:: /images/general/awg-9/tidsymbology/34.png | When altitude numerics are selected for display a number on the left side of the tracks indicate track altitude to nearest ten thousands of feet. The number four as an examples indicate an altitude between 35,000 and 45,000 feet. Available on radar and data link tracks.                                               |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 25 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Firing Order Numerics                                       | .. image:: /images/general/awg-9/tidsymbology/35.png | | Indicates AIM-54 phoenix target prioritization (1 to 6) in WCS when in the TWS mode. Next missile launch will target track with number 1 and remove the number from that track to advance the other 5 track numbers one step to prepare for next launch.                                                                   |
|                                                             |    :width: 50 px                                     | |                                                                                                                                                                                                                                                                                                                            |
|                                                             |    :align: center                                    | | Mandatory attack selection on a target forces the WCS to always include that target in the prioritization.                                                                                                                                                                                                                 |
|                                                             |    :height: 25 px                                    | |                                                                                                                                                                                                                                                                                                                            |
|                                                             |                                                      | | Next launch selection automatically sets hooked target as number one in the prioritization queue.                                                                                                                                                                                                                          |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Time-to-Impact (TTI)                                        | .. image:: /images/general/awg-9/tidsymbology/47.png | After AIM-54 launch the firing order number on a track is replaced with the TTI or time-to-impact indication, showing WCS calculated time until missile intercepts the target track. When the AIM-54 active command is sent the TTI numbers flash to indicate this.                                                          |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 20 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Velocity Vector                                             | .. image:: /images/general/awg-9/tidsymbology/36.png | | Velocity vector emanating from center dot of tracks when velocity vector display is selected.                                                                                                                                                                                                                              |
|                                                             |    :width: 50 px                                     | |                                                                                                                                                                                                                                                                                                                            |
|                                                             |    :align: center                                    | | Vector direction represents track heading and length represents track speed so that the max indicated speed (1 800 knots) is 1.5 inches on the TID.                                                                                                                                                                        |
|                                                             |    :height: 30 px                                    | |                                                                                                                                                                                                                                                                                                                            |
|                                                             |                                                      | | In TID ground stabilized mode the vector direction represents track true heading and the vector length represents track ground speed.                                                                                                                                                                                      |
|                                                             |                                                      | |                                                                                                                                                                                                                                                                                                                            |
|                                                             |                                                      | | In TID aircraft stabilized and attack modes the vector direction represents track relative heading (to own aircraft) and the vector length represents track speed relative to own aircraft.                                                                                                                                |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Launch Zone Vectors                                         | .. image:: /images/general/awg-9/tidsymbology/37.png | .. figure:: /images/general/awg-9/lzv.png                                                                                                                                                                                                                                                                                    |
|                                                             |    :width: 50 px                                     |    :width: 200 px                                                                                                                                                                                                                                                                                                            |
|                                                             |    :align: center                                    |    :align: center                                                                                                                                                                                                                                                                                                            |
|                                                             |    :height: 100 px                                   |                                                                                                                                                                                                                                                                                                                              |
|                                                             |                                                      |    TUMR (Time Until Minimum Range), TUOR (Time Until Optimum Range) and TUIR (Time Until In-Range/Maximum Range)                                                                                                                                                                                                             |
|                                                             |                                                      |                                                                                                                                                                                                                                                                                                                              |
|                                                             |                                                      | | The launch zone vectors are activated manually by the RIO or when time to maximum launch range is less than 60 seconds and replaces the normal track velocity vectors.                                                                                                                                                     |
|                                                             |                                                      | |                                                                                                                                                                                                                                                                                                                            |
|                                                             |                                                      | | The track symbol vector length in this mode represents the time-until-Rmin, with a maximum limit of 180 seconds (shown as a 1.5” long vector). When the time-until-Rmin becomes less than 180 seconds, the vector will start to shorten and move towards the center dot on the target (which represents Rmin).             |
|                                                             |                                                      |   If the vector becomes zero length, you are at AIM-54 Rmin.                                                                                                                                                                                                                                                                 |
|                                                             |                                                      | |                                                                                                                                                                                                                                                                                                                            |
|                                                             |                                                      | | Along this vector line is also a second dot, with the distance from end of the vector to that dot representing time-until-Rmax (a.k.a. time-until-in-range). That is, when the vector shortens to this dot (end of the vector reaches the dot), it indicates you are at Rmax (maximum range to target).                    |
|                                                             |                                                      |   The dot disappears when you are closer than Rmax to the target (i.e. time-until-Rmax, a.k.a. time-until-in-range is now essentially negative).                                                                                                                                                                             |
|                                                             |                                                      | |                                                                                                                                                                                                                                                                                                                            |
|                                                             |                                                      | | The intensified bar (box) along the launch zone vector represents the optimum missile launch range. When the vector end reaches the bar the time until in optimal range is 8 seconds.                                                                                                                                      |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Jamming Strobe                                              | .. image:: /images/general/awg-9/tidsymbology/38.png | Line extending from own aircraft symbol to edge of TID to indicate a jammer exceeding the set JAM/JET threshold.                                                                                                                                                                                                             |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Radar Antenna Scan Pattern Azimuth Limits                   | .. image:: /images/general/awg-9/tidsymbology/39.png | | The limits of the radar scan pattern in azimuth is displayed as two dashed lines extending from own aircraft symbol. Each dash and space represent 20 nautical miles each in all radar modes.                                                                                                                              |
|                                                             |    :width: 50 px                                     | |                                                                                                                                                                                                                                                                                                                            |
|                                                             |    :align: center                                    | | In STT the two lines converge to a single tracking strobe to indicate that the antenna tracks a single target.                                                                                                                                                                                                             |
|                                                             |    :height: 40 px                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Data Link Jamming Strobe                                    | .. image:: /images/general/awg-9/tidsymbology/40.png | Jamming strobe received via data link indicated by a line emanating from a data link point towards the jammers direction.                                                                                                                                                                                                    |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Data Link Pointer                                           | .. image:: /images/general/awg-9/tidsymbology/41.png | Brightened cursor (circle) around a data link track used to indicate data link operator concern about the specific track.                                                                                                                                                                                                    |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Data link Priority Kill                                     | .. image:: /images/general/awg-9/tidsymbology/42.png | Additional symbology on a data link track indicating a target that must be destroyed. Will not by itself affect WCS prioritization.                                                                                                                                                                                          |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
|                                                             | **Attack Display Symbols**                                                                                                                                                                                                                                                                                                                                                          |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Artificial Horizon                                          | .. image:: /images/general/awg-9/tidsymbology/43.png | Artificial horizon on TID representing aircraft roll and pitch. Angle of the line represents roll and vertical deflection on display represents pitch.                                                                                                                                                                       |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Steering Guidance Symbol                                    | .. image:: /images/general/awg-9/tidsymbology/44.png | Symbol representing steering error from optimal missile launch direction. Should be placed by the pilot as near as possible to the center of the ASE circle and at launch should be inside of that same circle.                                                                                                              |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Allowable Steering Error Circle                             | .. image:: /images/general/awg-9/tidsymbology/45.png | ASE circle used to indicate the allowable steering error for missile launch. Size varies with attack geometry, mode and selected missile.                                                                                                                                                                                    |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Breakaway Indication                                        | .. image:: /images/general/awg-9/tidsymbology/27.png | Large cross appearing in the center of the TID when target range is less than minimum missile launch range or gun firing range.                                                                                                                                                                                              |
|                                                             |    :width: 50 px                                     |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :height: 50 px                                    |                                                                                                                                                                                                                                                                                                                              |
|                                                             |    :align: center                                    |                                                                                                                                                                                                                                                                                                                              |
+-------------------------------------------------------------+------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

:Note: Some of these symbols pertain to functions not yet implemented in DCS.


.. _NAVGRID:

Navigation Command and Control Grid (NAV GRID)
----------------------------------------------

.. image:: /images/general/navgrid/navgrid.png

The Navigation Command and Control Grid or **NAV GRID** was designed to enable easy navigation and CAP control from a common fixed reference point.
It enables TID readout of bearing and range from that set reference point, called **YY**.
While NAV GRID is active displayed range and bearing on the TID for hooks and own aircraft is indicated relative **YY**.
Additionally it also displays a grid extending from YY along a set threat axis.
The purpose of the grid itself is to allow for quick position reference while a precise readout is available for a hooked target.
This is where the name NAV GRID originates.

Lastly it also allows for display of something called **Voice Codes**. These are displayed for current hook alternating with the altitude readout on the TID if **ALT NUM** is selected for display.
It indicates bearing from **YY** in tens (15 reading as 150 as an example) followed by a letter indicating range. **A** would indicate 0-50nm while **B** indicates 50-100nm and so on for consecutive letters.

The standard NAV GRID display mode is **GND STAB** and this allows for the grid itself to be visible.
If **A/C STAB** or **ATTK** display modes are selected only the **Voice Code** display functionality is retained but it addition to the normal functionality the **Ownship Symbol** will always display its **Voice Code**. 

As default the grid origin, **YY**, is positioned at the edge of the TID extending outwards along the set threat axis.
The grid can be set to have between 1 and 6 sectors display, all being outlined meaning that the one sector display will have 2 lines delineating the limits and 6 having 7 lines.
The size of the sectors depend on the total grid coverage, which can be up to 180 degrees, which is then divided into the selected number of sectors.
Along the sector demarkation lines are drawn range indicator marks at 50nm intervals, the 50nm marks being shorter than the even 100nm markers.

The ground stab view as well as the grid can be offset as normal by the RIO via the HCU. To reset the offset, cycle to any aircraft stabilized mode and back to **GND STAB**.

While the original purpose of this functionality was intended for fleet defence use it works perfectly fine as a bulls-eye reference in DCS with **YY** set to the bulls-eye.
The only real limitation being the grid only displaying along the threat axis and not all around.


Operation
^^^^^^^^^

NAV GRID entry
""""""""""""""

+--------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
| 1.    Set the **TID MODE** knob to **GND STAB**                                                        |                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
| 2.    Select **D/L** category on the **CAP CATEGORY** knob.                                            |                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
| 3.    Select the **CAP MESSAGE** button corresponding to **NAV GRID**.                                 |                                                                                                                                                  |
+--------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
| 4.    Enter grid coverage angle using the **ALT/4** button on the CAP.                                 | Press **CLEAR**, **ALT/4** and enter desired grid coverage angle followed by **ENTER**.                                                          |
+--------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
| 5.    Enter numbers of grid sectors using the **NBR/2** button on the CAP.                             | Press **CLEAR**, **NBR/2** and enter desired numbers of sectors followed by **ENTER**.                                                           |
+--------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
| 6.    Enter **YY** location using the **LAT/1** and **LONG/6** or **RNG/5** and **BRG/0** CAP buttons. | Press **CLEAR**, **LAT/1** and enter desired latitude followed by **ENTER**.                                                                     |
|                                                                                                        |                                                                                                                                                  |
|                                                                                                        | Repeat for longitude using **LONG/6** or use **RNG/5** and **BRG/0** instead of both for **YY** location referenced from own aircraft position.  |
+--------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+
| 7.    Enter the threat axis using the **HDG/8** CAP button.                                            | Press **CLEAR**, **HDG/8** and enter desired threat axis extending **from YY** followed by **ENTER**.                                            |
+--------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------+

:Note: First pressing **CLEAR** is to make sure to reset any previously selected readout so that a subsequent press of a prefix sets a new readout for display and data entry and not enters new data into a previous readout instead. This is further detailed under :ref:`CAP`.

:Note 2: Modification and display of the **NAV GRID** readouts are available **in NAV GRID** with no hook present, i.e. **OWN A/C** as hook.

:Note 3: Enter **NAV GRID** from the tactical display (**GND STAB**), do not attempt to enter it during alignment.


NAV GRID exit
"""""""""""""

To exit **NAV GRID** deselect the **CAP MESSAGE** button corresponding to **NAV GRID** under the **D/L** category on the **CAP**.


NAV GRID in DCS
^^^^^^^^^^^^^^^

When hot spawning in DCS **YY** will be set to mission bulls-eye for your faction and threat axis will be set from **YY** to first valid waypoint in the following order:
**HA**, **DP**, **ST**, **FP**, **3**, **2**, **1** and **HB** or own aircraft position at spawn if none of those waypoints are present.

When cold starting with Jester he has to be commanded to adjust these parameters via the Jester wheel. He can enter **YY** using the same methods available for waypoints as well as entering a waypoint's location as **YY**.

With a human RIO he/she will have to enter it manually.

.. raw:: html

    <iframe id="jabbers" align="middle" width="560" height="315" src="https://www.youtube.com/embed/KWsd5muVWxc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

|


Hand Control Unit (HCU)
=======================
.. image:: /images/general/awg-9/hcu.png

The hand control unit (HCU), stick and corresponding controls are the main input controlling the RIO WCS displays. It contains the power controls and indicators for the WCS and TCS in addition to the stick and it's controls.


**HCU Power Controls and Indicators**

The lights on the upper edge of the HCU are the IR/TV overtemp indicator (**2**), the power reset indicator (**4**) and the WCS power indicator (**6**).
The IR/TV power indicator light indicates TCS not ready when in the standby (STBY) and on positions, will remain on in the standby position and turn off in the on position when the TCS is ready for operation.
The power reset indicator light indicatets that one or more of the secondary power supplies are inoperative due to a power fault tripping it's protection circuit.
The WCS power indicator light indicates WCS in standby (STBY) or on but that the radar is not ready to transmit. During startup the light will turn off until the radar startup timer times out. To reset radar cycle to standby and back to on.

The **IR/TV** switch (**1**) in the upper left corner of the HCU controls the power to the TCS. Standby (STBY) starts system initiation but does not turn on the sensor. On enables sensor operation. The switch requires the WCS XMT to be in STBY or on to be enabled.
The **WCS XMT** switch (**7**) controls power to the WCS computer system and corresponding displays (DDD and TID) and inhibits or allows radar transmission.
Standby (STBY) enables power to all WCS systems, including displays, and begins the radar warmup sequence.
The displays requires 30 seconds warmup and the radar requires 3 minutes of warmup for operation. The on position enable radar transmission if weight on wheels is not present and radar timeout (warmup) is complete.

The two buttons in the upper middle of the HCU is the **LIGHT TEST** (**3**) and **PWR RESET** (**5**) buttons.
The LIGHT TEST button enables control of all WCS lights and indicators by enabling their lights.
The PWR RESET button resets the protection circuits of the secondary power supplies re-enabling them, also resets missile power.
Should only be used if the power reset indicator light is on, if the fault tripping the circuits remain the protection circuits and the indicator light will remain on.


**HCU Mode buttons**

The four lighted buttons on the left side (**12**) of the HCU stick are the HCU mode buttons which illuminates green to indicate which one is active, they are mutually exclusive.
The **IR/TV** button selects TCS mode, allowing the HCU stick and controls to control the TCS.
The **RDR** button selects radar mode, allowing the HCU stick and controls to control the radar acquisition cursor on the DDD allowing for transition from radar search modes to STT.
The **DDD CURSOR** button selects DDD cursor mode, allowing the HCU stick and controls to control the DDD cursor used to indicate ground coordinates when using the radar for ground mapping. This is used for radar navigational fixes or for selecting a position on the DDD radar display for use as a waypoint.
The **TID CURSOR** button selects TID cursor mode, allowing the HCU stick and controls to control the TID cursor used to hook (select) symbology on the TID for symbology control and data readout.


**HCU Control Stick**

The controls on the HCU stick are: the action trigger switch (**11**), elevation vernier control (**10**), the OFFSET button (**9**) and the MRL button (**8**).
The action trigger on the forward side of the stick has two detents, the half-action first detent and the full-action second detent. 
**Half-action** enables display of the cursor for the selected mode except when in TCS mode where it enables stick control of TCS elevation and azimuth. In the radar mode it additionally enables the super search acqusition mode in the radar (See chapter about radar transitional modes for more information).
**Full-action**, when enabled tells the TCS to lockon to a target in the TCS mode if a target is present in its acquisition gates. In the radar mode it tells the radar to attempt lockon to a target in the radar range/rate gates at the set azimuth. In the DDD and TID modes it marks the current cursor position or, in the case of the TID mode, tries to hook a symbol if present within 0.125 inches on the display.

The **elevation vernier** control is a thumbwheel on the left side of the stick used in the TCS and radar modes to fine tune sensor elevation ±4° for target acquisition, this elevation deflection is added to the normal sensor elevation control.
The **OFFSET** button on the top of the stick is used to offset any of the TID tactical displays, moving the own aircraft symbol to the TID cursor spot hook (if present) and the rest of the symbology relative to that. This function is reset and all the symbols are moved to the original positions by cycling the TID display mode selector to another mode and back.
The **MRL** button on the right side of the stick is used to enable the manual rapid lockon mode (MRL) for target acquisition. See :ref:`MRL` for more information.

The **stick** itself functions differently depending on selected HCU mode.
In all cases the stick is only enabled with the action trigger depressed and all modes control sensor or cursor position absolutely meaning that a given deflection of the stick always moves the sensor or cursor to the same position.
In the TCS mode X (up/down) controls TCS elevation and Y (left/right) controls TCS azimuth.
In the radar mode X controls the range or rate of the radar acquisition gate on the DDD and Y controls the gate in azimuth in a similar fashion.
In the two cursor modes X controls up/down of the cursor on the respective screen and Y controls left/right of the same.

.. _CAP:

Computer Address Panel (CAP)
============================
.. image:: /images/general/awg-9/cap.png

The computer address panel (CAP) is the RIO's main interface for controlling and entering/reading data into/from the WCS computer.


**Numeric Keypad** (**3**)

The upper part of the CAP contains a numeric keypad with additional buttons for clearing input (CLEAR), entering input (ENTER) and two buttons for selecting S/W and N/E prefixes for coordinates.
Some of the number keys has an additional function selecting a prefix for data display and/or entry.
The keys containing functions and what those are:

+-----+------------------------------------------------------------+
| Key | Function                                                   |
+=====+============================================================+
| 1   | LAT - Latitude, selects latitude for display and entry.    |
+-----+------------------------------------------------------------+
| 2   | NBR - Number, used for IFT and BITs.                       |
+-----+------------------------------------------------------------+
| 3   | SPD - Speed, selects speed for display and entry.          |
+-----+------------------------------------------------------------+
| 4   | ALT - Altitude, selects altitude for display and entry.    |
+-----+------------------------------------------------------------+
| 5   | RNG - Range, selects range for display and entry.          |
+-----+------------------------------------------------------------+
| 6   | LONG - Longitude, selects longitude for display and entry. |
+-----+------------------------------------------------------------+
| 8   | HDG - Heading, selects heading for display and entry.      |
+-----+------------------------------------------------------------+
| 0   | BRG - Bearing, selects bearing for display and entry.      |
+-----+------------------------------------------------------------+

Some of these keys also makes a corresponding other data be displayed on the TID readouts but entry only affects the selected prefix. As an example LAT also makes the readout display LONG but entry affects LAT only, SPD and HDG are another example of the same thing.


**CAP Message Matrix Indicator Drum and buttons**

The middle/lower part of the panel contains the message buttons and indicator drum and its CATEGORY selector knob. Its functionality is somewhat akin to the buttons on a MFD in a more modern system except that instead of a screen the drum is used to display the current functionality of the buttons.

The current functionality of the buttons are chosen by selecting a category on the CATEGORY selector knob, movement of the selector turns the display drum to indicate selected category's button functionality.
When a function or symbol hook is in use the corresponding message button illuminates to indicate activation.

The matrixes and corresponding functionality of the different categories are as follows:


.. table:: **BIT** (Built in Test)
   :widths: 30 70

   +--------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | .. image:: /images/general/awg-9/capdrum/bit.png | The BIT category contains message button functions pertaining to BIT initiation of different aircraft systems. These might be functions normally run during OBC during startup or separate tests only available from here. |
   |                                                  |                                                                                                                                                                                                                            |
   |                                                  | This will be detailed in a separate chapter about on board tests and BIT when implemented, not currently implemented in this simulation.                                                                                   |
   +--------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+


.. table:: **SPL** (Special)
   :widths: 30 70
   
   +--------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | .. image:: /images/general/awg-9/capdrum/spl.png | The SPL category contains various message button functions not contained under the other categories. Currently only the **IP TO TGT** function is implemented and used for the Computer Initial Point air to ground mode, see :ref:`CIP`                              |
   |                                                  |                                                                                                                                                                                                                                                                       |
   |                                                  | It also contains a button for manually initiating the OBC routine (**OBC BIT**), a button for displaying latest OBC results (**MAINT DISP**) and a button for clearing the latest OBC results (**OBC DISPL**). These and the other functions are not yet implemented. |
   +--------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+


.. table:: **NAV** (Navigation)
   :widths: 30 70
   
   +--------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   |                                                  | The NAV category contains message button functions used for navigational fixes and updating data used by for INS operation and alignment.                                                                                                                                                                                                                                 |
   |                                                  |                                                                                                                                                                                                                                                                                                                                                                           |
   |                                                  | The **OWN A/C** (own aircraft) button selects own aircraft for data readout and entry, the same as hooking the own aircraft symbol on the TID. Its used to enter data critical for INS alignment like aircraft coordinates and altitude (and heading and speed if on a moving carrier) and can also be used for readout of the various data available about own aircraft. |
   |                                                  |                                                                                                                                                                                                                                                                                                                                                                           |
   |                                                  | The **STORED HDG ALIGN** button is used to store and indicate if a stored heading align is available. It also allows deselection of the function resulting in a normal alignment.                                                                                                                                                                                         |
   | .. image:: /images/general/awg-9/capdrum/nav.png |                                                                                                                                                                                                                                                                                                                                                                           |
   |                                                  | The **WIND SPD HDG** button selects entry and display of wind data, can also be used to enter wind speed and heading manually for backup navigation.                                                                                                                                                                                                                      |
   |                                                  |                                                                                                                                                                                                                                                                                                                                                                           |
   |                                                  | The **MAG VAR (HDG)** button is used to display and enter magnetic variation used by the navigational system.                                                                                                                                                                                                                                                             |
   |                                                  |                                                                                                                                                                                                                                                                                                                                                                           |
   |                                                  | The four FIX buttons, **TACAN FIX**, **RDR FIX** (radar), **VIS FIX** (visual) and **FIX ENABLE** are used to update aircraft position to correct for INS drift. Basic function is the selection of type of fix followed by **FIX ENABLE** to enter it into the system. Full procedures for these fixes can be found in the navigational section in this chapter.         |
   |                                                  |                                                                                                                                                                                                                                                                                                                                                                           |
   |                                                  | The two TARPS buttons are non-functional in a non TARPS aircraft.                                                                                                                                                                                                                                                                                                         |
   +--------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+


.. table:: **TAC DATA** (Tactical Data)
   :widths: 30 70

   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   |                                                      | The TAC DATA category contains message button functionality allowing for hook/selection of the different waypoints available in the WCS navigational system. The same hook can be made via HCU hook on the TID. Hooking the waypoints enables them to be updated via the CAP keypad. |
   | .. image:: /images/general/awg-9/capdrum/tacdata.png |                                                                                                                                                                                                                                                                                      |
   |                                                      | The **PT TO PT** button is non-functional.                                                                                                                                                                                                                                           |
   +------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+


.. table:: **DATA LINK**
   :widths: 30 70
   
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   |                                                 | The DATA LINK category contains message button functionality for RIO data link responses to data link controller commands. The **WILCO** (will comply), **CANTCO** (can not comply) tells the controller if own aircraft can or can not comply to a command. |
   |                                                 | **POINT** enables the RIO to mark a hooked track sent to the controller for special attention. **ENGAGE** likewise indicates own intention to engage a hooked track.                                                                                         |
   |                                                 |                                                                                                                                                                                                                                                              |
   |                                                 | The **NAV GRID** button enables the NAV GRID functionality on the TID, see :ref:`NAVGRID`                                                                                                                                                                    |
   | .. image:: /images/general/awg-9/capdrum/dl.png |                                                                                                                                                                                                                                                              |
   |                                                 | The **TID AVIA** button enables the AVIA display on the TID. Not yet implemented.                                                                                                                                                                            |
   |                                                 |                                                                                                                                                                                                                                                              |
   |                                                 | The **F/F NAV UPDATE** allows for Link-4C fighter to fighter navigational updates. See the navigation chapter.                                                                                                                                               |
   |                                                 |                                                                                                                                                                                                                                                              |
   |                                                 | Remaining buttons are non-functional.                                                                                                                                                                                                                        |
   +-------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+


.. table:: **TARGET DATA**
   :widths: 30 70
   
   +------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   |                                                      | The TARGET DATA category contains message button functionality used to modify hooked track symbols. The **FRIEND**, **UNK** (Unknown), **HOST** (Hostile) and **MULT TGT** (Multiple Target) message functions are used to mark a hooked symbol as the respective category (multiple target can be set in addition to the other three). |
   |                                                      |                                                                                                                                                                                                                                                                                                                                         |
   |                                                      | The **DO NOT ATTK** button sets a target as a do not attack target, removing it from the WCS firing order.                                                                                                                                                                                                                              |
   |                                                      |                                                                                                                                                                                                                                                                                                                                         |
   |                                                      | The **DATA TRANS** (Data Transfer) function enables a hooked jam strobe to be correlated with another hooked track symbol. This is used to allow the WCS to better use both data sources to track the target. The strobe needs to be hooked before the symbol. Currently not implemented.                                               |
   | .. image:: /images/general/awg-9/capdrum/tgtdata.png |                                                                                                                                                                                                                                                                                                                                         |
   |                                                      | **TEST TGT** (Test Target) calls up a simulated test target in the WCS for test purposes. Currently not implemented.                                                                                                                                                                                                                    |
   |                                                      |                                                                                                                                                                                                                                                                                                                                         |
   |                                                      | The **SYM DELETE** (Symbol Delete) allows the RIO to manually drop/remove a track or waypoint from the TID if no longer relevant. Own aircraft and data link track symbols can not be removed.                                                                                                                                          |
   |                                                      |                                                                                                                                                                                                                                                                                                                                         |
   |                                                      | **IFT AUX LAUNCH** and **GND MAP** are non-functional.                                                                                                                                                                                                                                                                                  |
   +------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+


**Program Restart Button**

Below the message readout and buttons are two final buttons on the panel. The **PRGM RESTRT** (Program Restart) button resets the currently running program in case of a computer hang-up. A computer hang-up is indicated when the computer run indicator digits on the TID stops cycling.
The last button is the **TUNE DSBL** button which is non-functional in this F-14 version.


Data Readout/Entry Procedure
----------------------------

Data readout and entry on the TID always follows the following sequence:
Selection of symbol/function -> Prefix selection for display -> Data entry.

Selection of desired symbol or function can be achieved either via **TID hook** or via the **CAP MESSAGE** buttons available under the different categories on the **CAP DRUM**.

Most data readout prefixes displays multiple readouts, as an example calling up either latitude and longitude shows both and calling up range also displays bearing and vice versa but the selected prefix is the one used for data entry.

To select another prefix for data readout without reselecting the message function the **CLEAR** key on the CAP is used, this resets the readout and allows for selection of a new prefix.
As it's possible that depression of a prefix button is read as a data entry if a prefix is already selected it's normally recommended to reset using **CLEAR** before reselecting a new prefix.
This makes the recommended sequence: Selection of symbol/function -> **CLEAR** -> Prefix selection for display -> Data entry.

To enter new data into selected prefix the RIO enters desired data after the prefix selection, checks it is correct and then enters it with the **ENTER** key.
The TID readout is then updated with the new data. To clear the data without entering it, instead use the **CLEAR** key.


Sensor Control Panel
====================
.. image:: /images/general/awg-9/radarircontrol.png

The sensor control panel contains the main controls for the AN/AWG-9 radar antenna scan patterns. It also contains various TCS controls, a control allowing the RIO to slave the radar to the TCS and vice versa and controls for the airborne video tape recorder (AVTR).


**Antenna Search Pattern Selection**

The upper half of panel contains controls for the radar antenna scan pattern.
The **STAB** (stabilization) switch controls whether the radar antenna scan pattern is stabilized relative to the horizon (IN) or not. If in OUT instead meaning that the scan pattern is relative to the F-14 aircraft armament datum line (ADL).
The WCS computer can override this setting if necessary.
The **AZ CTR** (azimuth control) and **EL CTR** (elevation control) knobs sets the elevation and azimuth centerpoint of the antenna scan pattern.
The **azimuth control** moves the azimuth scan center within 65° degrees of the aircraft centerline, this is disabled if azimuth scan width is set to ±65° as it already scans the whole available azimuth range.
Do not move the scan pattern so that it scans outside of 65° from aircraft centerline as this might damage the antenna as it might hit the antenna azimuth stops.
The **elevation control** moves the elevation position of the bottom bar of the elevation scan pattern relative to zero elevation. It can move from -76° to +54°.
Both control knobs have marked centerpoints, being aircraft centerline and zero elevation respectively.

The **AZ SCAN** (azimuth scan) and **EL BARS** (elevation bars) selector knobs controls the size of the antenna scan pattern.
The AZ SCAN selector knob has four settings, ±10°, ±20°, ±40° and ±65°.
The EL BARS selector knob also has four settings, 1, 2, 4 or 8 bars. 1 bar being 2.3°, 2 bars 3.6°, 4 bars 6.3° and 8 bars 11.5°. The reason for the elevation coverage not equalling one bar times the number of bars being that the bars overlap slightly.

The last radar control on the panel is the **VSL** switch. Momentary selection of VSL HIGH or LOW activates the vertical scan lockon acquisition mode (VSL). (See :ref:`VSL`)


**TCS Controls**

On the right side of the panel the **SLAVE** switch controls which sensor is slaved to the other or none slaved at all. In the center position the sensors move individually from each other.
In RDR the radar is slaved to the TCS line of sight while a TCS track is present. In TCS the TCS is slaved to the radar line of sight if a an STT or JAT exists. Both modes can be used to allow a sensor to guide a sensor to lock onto whatever the other sensor is currently tracking.

The **TCS TRIM** knobs controls TCS calibration in azimuth (AZ) and elevation (EL). This is used to calibrate the TCS line of sight to be equal to the radar line of sight.
Normally this is done by locking a target in STT, setting slave to TCS and then fine-tuning the calibration knobs until the TCS looks directly at the locked target.

The last two switches controlling the TCS are the ACQ (acquisition) and FOV (field of view) switches.
The **ACQ** switch controls how the TCS locks onto targets. AUTO SRCH means the TCS will move by itself in a limited search pattern trying to find a target. MAN (manual) means the TCS only locks onto targets if commanded to by the HCU in TCS mode and AUTO means the TCS automatically tries to lock onto targets entering its field of view.
The **FOV** switch sets whether the WIDE or NAR (narrow) field of view is used by the TCS.

The lower part of the panel contains controls for the airborne video tape recorder (AVTR) controlling and indicating power mode and time remaining on tape. This is currently not modelled in DCS.


AN/AWG-9 Radar
==============

The AN/AWG-9 radar in the F-14 is an all-weather, multi-mode pulse doppler radar using the X-band (X-band being 8-12 GHz). It was designed specifically to be a long range radar system capable of guiding up to 6 AIM-54 Phoenix missiles using its track while scan mode.
One originally envisioned scenario was its use as a long range fleet defender intercepting russian bombers and attack aircraft threatening the fleet. During the F-14's later service life this mission transitioned more towards the anti-fighter side, a mission for which it was very well adapted.

The AN/AWG-9 radar has two basic operational modes, pulse and pulse doppler, each with its own pros and cons.
Below is a table listing function, weapons capability, expected range and target data available.

+--------------------------------------+---------------------------------------------------------------------------+-----------------------------------------------------------------------+--------------------+
| Mode                                 | Function                                                                  | Weapons capability                                                    | Detection-range    |
+===============+======================+===========================================================================+=======================================================================+====================+
| Pulse         | Pulse Search         | Medium range search and detection, secondary air-to-ground.               | Boresight missiles.                                                   | 60nm               |
|               +----------------------+---------------------------------------------------------------------------+-----------------------------------------------------------------------+--------------------+
|               | Pulse STT            | Short to medium range single target track and missile launch.             | Gun and missiles, AIM-7 in CW and AIM-54 in active launch.            | 50nm               |
+---------------+----------------------+---------------------------------------------------------------------------+-----------------------------------------------------------------------+--------------------+
| Pulse doppler | Pulse Doppler Search | Long range search and detection.                                          | Boresight missiles.                                                   | 110nm              |
|               +----------------------+---------------------------------------------------------------------------+                                                                       +--------------------+
|               | Range While Search   | Long range search, detection and ranging.                                 |                                                                       | 90nm               |
|               +----------------------+---------------------------------------------------------------------------+-----------------------------------------------------------------------+--------------------+
|               | Track While Search   | Long range search, detection, multiple target track and missile guidance. | AIM-54, multiple target capability.                                   | 90nm               |
|               +----------------------+---------------------------------------------------------------------------+-----------------------------------------------------------------------+--------------------+
|               | Pulse Doppler STT    | Long range single target track and missile guidance.                      | Gun and all missiles. AIM-7 in PD and CW and AIM-54 in PD and active. | 90nm               |
+---------------+----------------------+---------------------------------------------------------------------------+-----------------------------------------------------------------------+--------------------+

:Note: Detection-range approximation for a 5m²-target.

.. raw:: html

    <iframe id="jabbers" align="middle" width="560" height="315" src="https://www.youtube.com/embed/r4-Dd4ss2Rc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

|


Pulse Mode
----------

In the pulse mode of operation the AN/AWG-9 does not use pulse doppler filtering which means that it can be used to detect targets at all aspects and also be used for rudimentary ground mapping.
On the pro side this means that the radar in this mode cannot be notched as it does not need to have a relative speed to register the target.
The downside however is that the radar does not have an easy way of differentiate between unwanted ground reflections and real targets meaning that aircraft can hide in the ground clutter near the ground.
Because of this and the increased difficulty from trying to differentiate real targets from the general background noise without doppler filtering means that the range in the pulse modes are less than in the pulse doppler modes.

The radar has two pulse modes, pulse search and pulse single target track (P STT).


Pulse Search
^^^^^^^^^^^^
.. image:: /images/general/awg-9/PSEARCH.png

Pulse search is used to search for and find airborne targets at range.

It is possible to use this radar mode as a basic ground mapper as well which can be useful for navigation and navigational fixes and can also be used in a pinch to detect larger surface targets like ships. Keep in mind though that the radar is not built with this as its main function and that a real air-to-ground radar will outperform it handily.

In this mode the radar cannot by itself differentiate targets and generate tracks meaning that the WCS will not generate track files and display anything on the TID. This also means that pulse search is not capable of guiding missiles.

The DDD in this mode will display a radar image indicating the azimuth and range of targets at selected scale and it is possible to transition to P STT using the RDR mode with the HCU stick.
It is possible to select ground or aircraft stabilized modes of operation using the STAB switch on the sensor control panel.


Pulse Single Target Track (P STT)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. image:: /images/general/awg-9/PSTT.png

Pulse STT is used to track a single target, like pulse search mode it is not susceptible to notching but it is to ground clutter.
The fact that the STT modes use gates to track the target, in this case range gates, means that it is less susceptible to ground clutter but a target close enough to the ground that the ground return enters the range gates would be likely to shake the lock.

As it is only in the pulse doppler modes that the missile guidance commands can be sent pulse STT is limited to launching AIM-7s in CW mode and AIM-54s in active launch mode limiting their ranges.
At short ranges, ACM ranges, it is possible to use the ASPECT switch to set what aspect of the target to track, this is just to counter different types of countermeasures. As an example, if set to NOSE the radar will be less susceptible to chaff as the radar weights its track towards the targets leading edge (nose) away from the chaff being launched behind the target.

A successful track is indicated by the ANT TRK and RDROT indicator lights on the DDD, meaning that the antenna is tracking the target and that the target is within the range gates.
If the target is jamming with sufficient strength, negating a range track, the radar will transition to a jam angle track instead, indicated by the JAT indicator light on the DDD illuminating instead of the RDROT.
When range tracking is again possible at closer ranges the radar will transition to that instead.

The DDD in this mode will be similar to the pulse search mode but the antenna will be locked onto the target and not scan. Additionally the DDD will show the range gates around the target, a closing rate symbol at the right scale and applicable attack symbology if a valid missile is selected.


Pulse Doppler Mode
------------------

In pulse doppler mode the AN/AWG-9 uses doppler filters to filter out unwanted returns, enhancing target detection and thus increasing detection range.
The pros of this mode being that, as said, targets can be detected at greater ranges, ground returns mostly eliminated and missile guidance commands be sent to AIM-7 and AIM-54 missiles.
The AIM-54 both in TWS and STT and the AIM-7 in STT only.
The biggest con of this mode being that it is susceptible to notching as a target returning zero relative speed will be filtered out.

The pulse doppler modes of the AN/AWG-9 are, pulse doppler search, range while search, track while scan and pulse doppler STT.
The three search modes have a common DDD display, the main difference being that pulse doppler search has a slightly better range as the other two modes need to process FM-ranging to enable range indication of tracked targets.

.. image:: /images/general/awg-9/PDSEARCH.png

The DDD in the pulse doppler search modes displays returns at azimuth versus rate (closing speed) meaning that by reading only the DDD the RIO can only discern target closing speed and azimuth.
The display indicates observed closure rate vs the ground (with own airspeed subtracted) as opposed to relative closure rate.
While this means that a target directly ahead, moving directly towards the radar, will show true target airspeed this speed varies with target aspect and radar antenna azimuth.
This reason for this is that the radar itself only reads relative airspeed which is then modified by subtracting own airspeed for display on the DDD.

At the bottom edge of the DDD the AGC-trace is displayed indicating radar return intensity enabling the RIO to discern jamming targets by their return strength. The jamming targets are shown as jamming strobes on the TID if they exceed the set jamming threshold (set by the JAM/JET knob on the DDD).

The scale shown on the DDD (what rate region is shown) can be set by the Vc switch on the DDD panel. X-4 sets the scale to 800 knots opening to 4 000 knots closing, NORM sets the scale to 200 knots opening to 1 000 knots closing and VID sets the scale to 50 knots opening to 250 knots closing.
The operating range of the doppler filters can also be configured by the ASPECT switch on the same panel, NOSE sets 600 knots opening to 1 800 knots closing, BEAM sets 1200 knots closing to 1200 knots opening and TAIL sets 1 800 knots opening to 600 knots closing.
This allows the RIO to optime the doppler filters for a known target closing speed and this affects the whole radar processing unlike the Vc switch which only affects the DDD.

Because of the way the radar operates the doppler filters it will have two blind ranges. The main lobe clutter (MLC) region which contains most of the ground returns, including those returning with zero groundspeed and is 266 knots wide, centered around own aircraft groundspeed  (133 knots slower and 133 knots faster).
This is the reason that the radar can be notched as a target with the same relative groundspeed as the ground will also be filtered out. This is however only true for look-down conditions as when the radar antenna looks up into the sky this filter isn't necessary and can be turned off.
If the MLC switch on the DDD panel is in AUTO the radar will automatically turn off the MLC filter if looking more than 3 degrees above the horizon. It can also be turned off manually by the RIO but if the antenna looks down this can make the displays unusable in RWS and TWS as all of the ground returns will be sent to the computer for tracking.
In whichever case, with the MLC filter off, the target cannot notch the AN/AWG-9 if it is above the radar.

The second filter, and second blind spot, of the radar is the zero doppler filter. This blind area is centered around a closure rate of negative own groundspeed, meaning a target moving away from own aircraft at the same speed as own aircraft.
This blind area is a hardware limitation as it is a doppler radar mode it cannot detect targets without a doppler shift. The resulting blind area is 200 knots wide, meaning that a chased target moving at a speed of within 100 knots (+/-) of own groundspeed will be invisible to the radar.
This means that when chasing a fleeing target it may very well be necessary to use the pulse modes instead.

Both filters vary with azimuth as own airspeed relative to target varies with aspect. Relative airspeed from a target at 45° will be less than a target at 0° as own speed vector will be pointing away from it slightly.
This is the reason for the mainlobe clutter trace presenting a curve on the DDD as the observed speed of the returning ground returns will vary with azimuth.

.. figure:: /images/general/awg-9/pd.png

   Target groundspeed 900 knots, own airspeed 1200 knots. See table below for details, line of sight rate is the sum of target and own aircraft relative rate.

+-----+------------+-----------------------------------------------------------+--------------------------------------+
|     | Look Angle | Line of Sight Rate                                        | Target Heading                       |
+=====+============+===========================================================+======================================+
| 1   | 60°        | 1490                                                      | 180°                                 |
+-----+------------+-----------------------------------------------------------+--------------------------------------+
| 2   | 45°        | 1500                                                      | 120°                                 |
+-----+------------+-----------------------------------------------------------+--------------------------------------+
| 3   | 30°        | 1428                                                      | 100°                                 |
+-----+------------+-----------------------------------------------------------+--------------------------------------+
| 4   | 0°         | 1200                                                      | 90°                                  |
+-----+------------+-----------------------------------------------------------+--------------------------------------+
| 5   | 30°        | 672                                                       | 80°                                  |
+-----+------------+-----------------------------------------------------------+--------------------------------------+
| 6   | 45°        | 210                                                       | 60°                                  |
+-----+------------+-----------------------------------------------------------+--------------------------------------+
| 7   | 60°        | -300                                                      | 0°                                   |
+-----+------------+-----------------------------------------------------------+--------------------------------------+

:Note: Position 4 has the target in a flanking or "notching" position making it dissappear inside the MLC filter or MLC ground return. In a look up situation with the MLC filter disabled the target would still be visible.

Additionally all pulse doppler search modes use ground stabilization exclusively and thus the STAB switch is inoperative.


Pulse Doppler Search
^^^^^^^^^^^^^^^^^^^^

The pulse doppler search mode is used mainly as a kind of early warning mode.
It is the search mode with the greatest detection range but it can display no range to the RIO, only closure rate.
For this reason the TID can display no track information.


Range While Search (RWS)
^^^^^^^^^^^^^^^^^^^^^^^^

In range while search a frequency measuring ranging mode is added (FM ranging) to allow the radar to measure range of tracked targets in addition to closure rate. This additional processing does however mean that the effective range of the radar is somewhat lesser.
The display on the DDD is the same as in pulse doppler search, the TID however also shows tracks in this mode showing the targets as tracks momentarily as they're scanned and displaying their position and altitude.
The targets are shown for a maximum of two seconds or until the antenna again scans the same bar at the same azimuth at which time it is removed unless detected again.
Maximum number of concurrently shown tracks are 48.


.. _TWS:

Track While Scan (TWS)
^^^^^^^^^^^^^^^^^^^^^^

The track while scan mode uses the same FM ranging as RWS with the same reduction in range compared to pulse doppler search and the DDD display is also the same.
The main difference that the computer establishes track files and tracks up to 24 targets concurrently of which 18 can be shown on the TID at any given time.

As the computer routine calculating these tracks need a set track refresh time of 2 seconds this limits available azimuth scan area and bar settings to either 20° 4 bars or 40° 2 bars.
When entering TWS the computer automatically selects the ±20° 4 bar scan disregarding the RIO set scan volumes unless those are set to ±40° 2 bars in which case that is used instead.

The TWS mode is also the only mode enabling guidance of the AIM-54 at multiple targets (up to six), and as soon as engagable targets are detected the computer starts assigning them a missile priority number according to optimal missile firing sequence.

The TWS has two submodes available, TWS Auto and TWS Manual, which one is used is selected by the RIO with the corresponding button on the DDD panel.
What differs between the two is that in TWS auto the computer takes control of used scan volume and scan pattern azimuth and elevation as soon as target tracks are present.
The WCS computer automatically tries to optimise the scan volume and direction so that tracking of the prioritized targets is maximised.
If not selected before launch the WCS overrides as soon as the first AIM-54 is launched and selects TWS Auto.

In TWS the pilot is guided to the computed centroid of the tracked targets via the navigational cues and this centroid is also displayed on the TID as a small x-shaped cross.

For additional information about TWS symbology and missile guidance see :ref:`TWSATTK` and :ref:`TIDSYMB`.


Pulse Doppler Single Target Track (PD STT)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. image:: /images/general/awg-9/PDSTT.png

The pulse doppler STT works and looks much like the pulse STT mode. It does however have the same advantages and disadvantages compared to pulse STT as the other pulse doppler modes compared to the pulse modes.
This means that while much better at tracking a target close to the ground it is however vulnerable to notching.

The DDD display for pulse dopple STT looks like pulse STT display except that the target return and antenna azimuth display is moved to the left side of the screen and a generated synthetic target marker is displayed at the correct azimuth instead.
This is so that the targets range can be displayed by the synthetic target unlike the other pulse doppler modes which only shows closure rate.
The other symbology on the DDD in this mode are the same as in pulse STT.

Unlike in pulse STT however the AN/AWG-9 can send missile guidance commands in pulse doppler STT enabling launch of AIM-7 and AIM-54 in pulse doppler mode.
This is the mode with the greatest launch ranges for those missiles with the disadvantage, in the case of the AIM-54, of only being able to engage one target at a time.


Transitional Modes
------------------

The transitional modes are the ones used to transition into the single target tracks from the search modes, ACM modes, via TCS or between the two STT modes.


HCU Stick in Radar Mode
^^^^^^^^^^^^^^^^^^^^^^^

When using the AN/AWG-9 radar in the different search modes it's possible to manually use the HCU stick with radar mode selected to select a target on the DDD for STT lock.

Pressing the HCU trigger to half-action while in radar mode displays the acquisition gates on the DDD and enables the supersearch mode in the radar.
In supersearch mode the antenna does a ±10° search pattern at the selected amount of bars around the acquisition gates.

The acquisition gates can then be steered over the detected position of the target with the HCU, left/right used to steer azimuth and up/down used to steer range or rate depending on if pulse or pulse doppler is used.
The antenna elevation is then fine-tuned using the elevation vernier on the HCU until the target return is visible within the acquisition gates.
At that time the RIO can then select full-action on the HCU trigger, commanding the radar to attempt a lockon at the commanded azimuth, range/rate and elevation.

If successfully executed the radar then transitions into the respective STT mode and the correct indicators on the DDD illuminates. Pulse STT is used if transitioning from pulse search and pulse doppler STT if transitioning from any of the pulse doppler search modes.


TWS STT Acquisition
^^^^^^^^^^^^^^^^^^^

In TWS it is possible to attempt an STT lockon by hooking a track on the TID and then selecting either pulse STT or pulse doppler STT on the DDD panel.
The WCS computer then commands the antenna in supersearch to the hooked tracks azimuth, range/rate and elevation and attemps a lockon if a target is detected.

Unlike in a manual HCU acquisition this process is completely automated but its success rate is also less than a manual transition.


ACM Modes
^^^^^^^^^

The AN/AWG-9 has three distinct ACM acquisition modes. Pilot lockon mode (PLM), vertical scan lockon (VSL) and manual rapid lockon (MRL).

The ACM modes are listed in priority order, the different modes overriding other modes lower in the prioritization.
This means that PLM always overrides VSL and lower modes and VSL overrides PAL and lower modes but not PLM and so on.

All of the modes can be exited by the RIO selecting half-action and release on the HCU except PLM which will be in effect until the pilot releases the PLM button.

.. raw:: html

    <iframe id="jabbers" align="middle" width="560" height="315" src="https://www.youtube.com/embed/Ujk4hL_EnUc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

|


Pilot Lockon Mode (PLM)
"""""""""""""""""""""""
.. image:: /images/general/awg-9/plm.png

The PLM is the ACM mode with the highest priority, it always overrides any other radar mode and is enabled when the pilot presses the PLM button on the front of the right throttle.
Depression of that button commands the antenna to the armament datum line (ADL) and causese it to lock onto the first target seen out to 5 NM.

Thus the procedure to use PLM is for the pilot to fly the ADL marker on the hud over the target and then press and hold the PLM button until lockon occurs.
The PLM continues until a target is detected and transition to pulse STT occurs or the PLM button is released making the radar transition to pulse search instead. 


.. _VSL:

Vertical Scan Lockon (VSL)
""""""""""""""""""""""""""
.. image:: /images/general/awg-9/vsl.png
   :height: 800
   :width: 500


The VSL mode is enabled by the pilot or the RIO and is used to acquire a target at own aircrafts current heading from an elevation of -15° to +55°.
The RIO can use the VSL switch on the sensor control panel in the RIO cockpit. Two submodes are available by placing the switch into either VSL HI (high) or VSL LO (low) and releasing it back to center.
The pilot can enable VSL HI or LO by selecting UP or DN respectively on the target designate switch when not in A/G mode.

This commands the antenna to start a volume 5° wide in a circular fashion. If VSL HI is commanded the vertical area covered is from +15° to +55° and if VSL LO is commanded the area covered is from -15° to +25°.
VSL is indicated on the HUD by the diamond moving with antenna line of sight indicating its current position.

When a target is detected within 5 NM the radar transitions into pulse STT, otherwise it continues in VSL until another mode is selected.


Pilot Automatic Lockon (PAL)
""""""""""""""""""""""""""""

PAL is enabled by the pilot selecting DES on the target designate switch when not in A/G mode.

PAL commands the antenna to a 8-bar ±20° scan pattern locking onto the first target detected out to 15 NM.
This mode is indicated by the diamond on the HUD following current antenna line of sight.


.. _MRL:

Manual Rapid Lockon (MRL)
"""""""""""""""""""""""""
.. image:: /images/general/awg-9/mrl.png
   :width: 400
   :height: 300

The manual rapid lockon (MRL) mode allows the RIO to quickly acquire a target within the antenna limits out to 5 NM.
When the MRL button on the right side of the HCU stick is depressed it commands the radar to start a one-bar supersearch pattern out to 5 NM.

The HCU stick controls the supersearch pattern in azimuth and elevation (left/right controlling azimuth and up/down controlling elevation).
The DDD displays a normal supersearch pattern in 5 NM scale and additionally two tick marks are shown at the edge of the scan pattern indicating current elevation.

When the target is visible the RIO commands full-action to acquire the target and transfer to pulse STT.
If only half-action is commanded  after entering into MRL and then released the radar transfers back to pulse search.


TCS Slave Radar Acquisition
^^^^^^^^^^^^^^^^^^^^^^^^^^^

The TCS can be used to track a target in angle while still using the radar for range and rate.
When selecting the radar to be slaved to the TCS line of sight via the sensor control panel (SLAVE in the RDR position) the radar will still be active but pointing in the direction of the TCS line of sight while the TCS has an active track instead of scanning.

From this state it is possible to command half-action and then position the acquisition gates at the target video and then command full-action.
This will result in either pulse doppler slaved or pulse slaved mode depending on previous radar mode. It is also possible to switch using the P STT and PD STT button on the DDD panel.

The resulting submode entered is equivalent to an STT mode where the TCS is instead used to track the targets angle rather than the radar itself.
The radar is still used to track range and rate, on the DDD the IROT lights instead of the ANT ROT, IROT relating to ir tracking which has been replaced by the TCS in the modelled F-14 versions.

This mode can be used to guide missiles, active and cw modes if in pulse and in PD if in pulse doppler.
If the SLAVE switch is set to INDEP from this mode the system reverts to true pulse STT or pulse doppler STT depending on current mode.


Transition Between the Two STT Modes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If necessary it is possible to transition between pulse STT and pulse doppler STT by pressing the corresponding button.
If the transition fails the radar reverts to the respective search mode of the commanded STT mode. (pulse search if pulse STT was selected and vice versa.)


Transition Back to Search
-------------------------

If the RIO wishes to transition back to a search mode he commands half-action and releases it causing the radar to return to pulse search if in pulse STT and pulse doppler search if in pulse doppler STT.

If the radar loses target lock in STT and can not reacquire it reverts to the respective search mode as when the RIO transitions manually via half-action.

VSL and MRL can also be reset and returned to search the same way but PLM being priorised means that only way to deselect PLM is either target lockon and transition to pulse STT or the pilot selecting the PLM button again telling the radar to return to pulse search.


AN/APX-76 IFF Interrogator
**************************

The AN/APX-76 IFF (Identification Friend or Foe) interrogator is integrated into the AN/AWG-9 operation.
Then interrogator antenna itself is located on the AN/AWG-9 antenna gimbal platform.

An IFF system works by sending out an interrogation pulse and then listening for returns from cooperating transponders.
In addition to the unencrypted civilian mode the AN/APX-76 is capable of interrogating in the encrypted military mode 4.
This ensures that targets replying to mode 4 interrogations are indeed friendly.

The AN/APX-76 can be used both in search radar modes and in STT radar modes.
To enable interrogation the IFF switch is depressed on the :ref:`dddp` which then activates the interrogator for as long as the button is held up to 10 seconds max.

When enabled IFF received IFF returns are then overlaid on the normal AN/AWG-9 radar returns on the DDD.
A friendly target will be indicated with two bars, one above and one below the normal radar return.
As the AN/APX-76 is a secondary mode radar (transponder radar) apart from the AWG-9 the IFF can sometimes also detect targets not detected by the AWG-9.
In this case the IFF return will not have a radar echo inside it.

In the search mode this is overlaid over each target replying and in STT over the STT target.
Additionally, if the STT target is hooked on the TID the DDD will switch from normal range display to a ±10 NM display to enable display of multiple returns in case of closely grouped targets.

.. raw:: html

    <iframe id="jabbers" align="middle" width="560" height="315" src="https://www.youtube.com/embed/YG7sWweg2RQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

|


Television Camera Set (TCS)
***************************

.. figure:: /images/general/tcs/tcs.png

     U.S. Navy photo by Photographer's Mate Airman Justin S. Osborne. (030418-N-0382O-591)

The television camera set, or TCS, was constructed as a replacement for the IRST which was present in the first F-14As produced.
When the IRST was found to have insufficient capability it was decided to replace it with the TCS giving the F-14 a long range visual identification capability.

The TCS is located underneath and behind the radar radome, just in front of the nose gear well.
It contains an aircraft stabilized high resolution (for it's time) closed circuit television camera.
The sensor has two fields of view (FOV), narrow (NFOV) which is 0.44° or 10X magnification and wide (WFOV) which is 1.42° or 4X magnification.
The gimbal limits are +/- 15° except upwards which is limited to +11° and the TCS is capable of independent contrast lock or being slaved to the AN/AWG-9 radar.

The TCS is controlled by the RIO using the sensor control panel, DDD, TID and the HCU. Video from the sensor can be displayed on the TID and the VDI in the front seat.
Also, the video can be recorded using the airborne video tape recorder for later review. (Not currently implemented in DCS.)


TCS Controls and Symbology
==========================

The controls for the TCS are located in the RIO cockpit at the sensor control panel, the DDD and the HCU/TID. The pilot display control panel contains a switch allowing display of TCS video on the VDI.


Sensor Control Panel
--------------------

.. image:: /images/general/tcs/scp.png

The controls on the sensor control panel for the TCS are; the TCS trim knobs, the SLAVE switch, the field of view, FOV, switch and the acquire, ACQ, switch.

The **TCS TRIM** knobs controls TCS sensor line of sight, LOS, calibration relative the AN/AWG-9 radar LOS.
If needed these can be used to trim the TCS so that the two sensors LOS correlate.
They have a ±2° range of motion and the easiest way to check and calibrate the TCS is to lock up a friendly target in STT and adjust the knobs until the TCS LOS is correctly aimed at the locked target.

The **SLAVE** switch controls which sensor is controlled by the other. If set to **RDR** the radar is slaved to the TCS as long as an optical track exists.
If set to **INDEP** each sensor operates independently of the other.
And if set to **TCS** the TCS is slaved to radar LOS as long as an STT track exists.

The **FOV**, field of view switch controls what FOV is used in the TCS. **WIDE** sets the 1.42°, 4X magnification FOV and **NAR** sets the narrow 0.44°, 10X magnification FOV. 

Lastly the **ACQ**, acquire switch controls the acquisition mode in use in the TCS.
**AUTO SRCH** enables an automatic acquisition mode with a search pattern, enabling acquisition of the closest target even if outside current FOV.
**MAN** selects purely manual acquisition with the HCU where the target needs to be pointed at directly.
**AUTO** sets an automatic acquisition mode without a search pattern making the TCS snap to a target as long as it's inside the TCS FOV.


DDD
---

.. image:: /images/general/tcs/tcsddd.png

The DDD contains two indicators pertaining to the TCS.

The **DDD EL** meter shows current elevation of the TCS sensor LOS as long as the IR/TV mode is selected on the HCU.

The **IROT** light indicates the presence of a TCS track. The IROT acronym is inherited from the IRST which the TCS replaced.


HCU/TID
-------

.. image:: /images/general/tcs/hcu.png

The HCU contains the power switch and indicator for the TCS as well as a button enabling selection for using the HCU to control the TCS while the TID itself has a control knob enabling display of the TCS video on the TID as well as a brightness and contrast control for the video on the TID.

The **IR/TV power** switch is located on the top left corner on the HCU panel and controls power to the TCS.
**OFF** disables all power to the TCS.
**STBY** enables power to the cooling fans and heaters in the TCS.
**IR/TV** supplies power to all systems in the TCS, allow 1-2 minutes for the TCS to spin up and deliver video. TCS symbology on the TID on the other hand will be available directly.
There is also no need to select the STBY position first, setting the switch to IR/TV directly works fine.

The indication light next to the power switch indicates a TCS over temperature condition is lit. If present the TCS should be powered off to prevent damage to the system.

The **IR/TV** button next to the HCU stick enables HCU stick control of the TCS sensor, half-action to manually control sensor LOS and full-action to command target acquisition.

On the TID display control the **TID MODE** switch set to **TV** enables display of the TCS video on the TID. Note that this disables the TID repeat on the HSD.

Finally the **CONTRAST** and **BRIGHTNESS** knobs on the upper part of the TID can be used to control the TCS video shown on the TID.


Symbology
---------

.. image:: /images/general/tcs/symbology.png

On the TID in non TV mode a TCS track is indicated by a 1.5" strobe at TCS LOS azimuth with a hollow circle at the end.

The symbology on the video feed from the TCS has indicators for the FOV and two crosshairs indicating TCS LOS relative own aircraft, **GACH**, and AN/AWG-9 radar LOS relative TCS LOS, **RACH**.
Additionally the track window is indicated by 4 small squares representing each corner of that window.

The field of view lines are shown when in the wide FOV indicating the size of the area visible when switching to the narrow FOV.
They consist of two parallell lines together creating the sides of an imaginary box indicating the narrow FOV size.

The gimbal angle crosshairs or **GACH**, which is a solid cross, indicate deflection of the TCS LOS from the aircraft datum line, ADL.
GACH crosshair in center indicates TCS LOS along ADL and deflection towards the edges indicate deflection towards the gimbal limits with the video edges being maximum deflection.

**RACH** or radar angle crosshairs, a dashed crosshair, indicate radar antenna LOS when inside the current TCS FOV. When the sensors are slaved to one another RACH and GACH will coincide creating a single solid crosshair.

The track window indicates the area that the TCS contrast tracker is currently locked on to if it has acquired a target.
When not in an active track these squares collapse into the center of the display being 2% of the screen width when in manual mode and 5% when in an auto mode.


TCS Operation
=============

All acquisition modes of the TCS has in common that they can be controlled using the HCU in IR/TV mode.
Selection of the IR/TV button on the HCU enables this mode and also sets the DDD EL meter (right indicator) to show current TCS sensor LOS elevation.
Half-action enables the HCU to directly control the LOS of the TCS and full-action commands target acquisition using the selected acquistion mode.

For manual, **MAN**, TCS acquisition mode this means that the HCU must be used in half-action to position the tracking window indication over the target and then selecting full-action.
If successfully acquired the track window will then expand to encompass the target and tracking will begin.

In automatic, **AUTO** acquisition mode half-action works the same but when selecting full-action for acquisition the TCS will instead automatically try to lock on to the target closest to the center in the current FOV.
Automatic search, **AUTO SRCH** mode further enhances this by enabling a search pattern around the commanded FOV (by moving the sensor LOS) acquiring the first found target.

When using the TCS slave to radar option the two auto modes will automatically try to lock on to the STT target as soon as it exists and the TCS has been slewed to that target, enabling a fully automatic track of a target locked in STT.
Additionally as soon as a track is acquired from an STT lock the TCS will compare its own LOS to the radar LOS to check if the correct target has been locked, if the two LOS differs by more than a couple of degrees during a 3 second window a new acquisition will be attempted.
The manual mode will also slave to radar LOS but will not lock on, instead just following the radar LOS.

To unlock a tracked target when not being slaved to radar, select half-action and release.

For information about RDR slaved to TCS check relevant header under AN/AWG-9 in this chapter.


LANTIRN
*******

.. figure:: /images/general/lantirn/lantirn.png

    U.S. Navy photo by Photographer's Mate 2nd Class Felix Garza Jr. (030325-N-4142G-009)
    
Description
===========

The LANTIRN or Low Altitude Navigation and Targeting Infrared for Night began life as combined targeting and navigation pods designed for the F-15E and F-16.
When the US Navy became interested in using the F-14 Tomcat in the A/G role Martin Marietta (now Lockheed Martin) began its own program
to show that the LANTIRN could quickly be adapted for F-14 use.

As the pod was adapted for the F-14 the secondary navigational pod was deleted, keeping only the targeting pod.
The pod was wired up to its own control panel as the F-14 didn't have the required 1553-bus for complete integration.
The control panel was patched into the TCS -> TID video feed allowing it to select either the TCS or the LANTIRN for display on the TID and VDI.

While the pod can read waypoints and selected weapon from the WCS, the pod has its own GPS receiver and is otherwise self-contained and controlled only via its own control panel.
Additionally it also has its own weapons release guidance removing the need to boresight the pod to the aircraft, a time-consuming task.

The FLIR sensor itself has three different zoom levels or fields of view (FoV).
The Wide FoV limits are 5.9° and allows a maximum slew rate of 8.5°/s.
The Narrow FoV limits are 1.7° and allows a maximum slew rate of 1.8°/s.
The last mode, the Expanded FoV is a digital zoom of the Narrow FoV, meaning that the resolution will be worse in this mode.
The FoV limits for the Expanded FoV are 0.8° with a max slew rate of 0.7°/s.


Controls and Displays
=====================
    
All the controls for the LANTIRN are situated on its own control panel mounted on the RIO's left side console when the pod is present,
including the switch controlling what video feed the TID and VDI display in the TV mode.
    
.. raw:: latex

    \newpage
    
LANTIRN Video Elements
----------------------

The FLIR (Forward Looking InfraRed) video-feed from the LANTIRN has superimposed data readout for the crew's use.
This video-feed can be viewed both on the TID (in TV-mode) and on the VDI (also in TV-mode) when the FLIR feed is selected on the control panel.

Amongst other things the displays show own aircraft position, target position as well as targeting cues to the crew.
When using the LANTIRN for A/G attack these readouts are also used as targeting and release cues.

.. image:: /images/general/lantirn/FLIR.png

Own aircraft data is shown in the upper left corner (**1**), showing position, altitude, groundspeed and pitch angle (dive).

On the left side (**2**) the pod displays whether it's using white hot or black hot (WHOT and BHOT) 
as well as if the AGC (Automatic Gain Control) or MGC (Manual Gain Control) is in use.

The lower left datablock (**3**) shows pod information, SR is slant range (line of sight range),
AZ and EL is pod line of sight azimuth and elevation relative aircraft ADL (with AZ having L or R for left or right of aircraft heading).
Below that is current UTC time and then IBIT codes below that.

:Note: IBIT codes are not implemented currently and the clock will show local time.

The lower middle (**4**) shows current pod mode (A/A or A/G) and track mode (AREA, POINT or Q designations) on the left side.
The right side shows currently selected weapon and laser code while above and in the center an L is shown when the laser is armed
and flashing when firing the laser.

The lower right (**5**) shows data for currently selected Q (slewpoint) except for QSNO, QADL and QHUD,
TTG being time to go until on top of currently selected Q,
the rows below that, bearing and range to Q, ELEV indicating elevation in feet of Q
and lastly, below that, Q location.

**6** is the crosshairs showing tracked position, in this case we have a bounding box, indicating currently tracked target in point mode.
The two widest zoom modes will have boxes showing the field of view for the next, narrower, mode.
Additionally there's a small white square (FLIR pointing cue) moving around showing the current pod line of sight relative to aircraft from a top down perspective.
In this case it's right next to the upside down ^, top center, indicating that the pod is looking ahead of the aircraft.
If the square is centered the pod is looking straight down and below center it indicates the pod looking aft.

Finally, **7** is the steering guidance towards the selected Q, the top one being commanded heading and the vertical one on the right the bomb release cue.

The commanded heading shows current aircraft heading above the inverted ^, with the commanded heading being displayed as a relative bearing either
L (Left) or R (Right) of current aircraft heading below the line. The commanded heading is also indicated by a vertical line bisecting the horizontal one.

The right, bomb release cue, is only shown if the selected Q is QDES and shows a vertical line along which a release cue travels downwards.
This release cue is only visible with a valid weapon selection (bomb) and when it reaches the two tick marks, that's the cue to release.
Below the line is the indicated TREL (Time to Release) in seconds, changing to TIMP (Time to Impact) after release.

Around this all is the masking curve, indicating at what angles the pod will be masked by own aircraft (looking into the aircraft hull).
This is relative to the FLIR pointing cue, when the cue moves outside the masking curve the sensor will be blocked by the hull.

.. raw:: latex

    \newpage

Control Panel
-------------

The control panel contains all the controls for the pod, including the control stick.

.. image:: /images/general/lantirn/panel.png

The power switch for the LANTIRN pod is located top left (**1**) with **OFF** disabling power to the system,
**IMU** (blocked in above image) powering only the LANTIRN IMU and **POD** powering the whole system.

:Note: IMU selection has no current DCS function.

The **MODE** switch (**2**) switches the POD sensor between **STBY** (Standby) and **OPER** (Operational).

The **LASER ARMED** (**3**) light illuminates when the laser is armed while the **LASER** switch (**4**) arms it. (ARM and SAFE positions available.)

Down right is the **VIDEO** switch (**5**) which controls what video is fed to the TID and VDI, FLIR selecting LANTIRN FLIR video and TCS selecting TCS video.

The four grouped indicator lights (**6**) indicate various error states in the LANTIRN system and the **IBIT** button (**7**) initiates the IBIT (Initialized Built-In-Test).

:Note: The IBIT and fault indicators are not currently implemented in DCS.

.. raw:: latex

    \newpage

Control Stick
-------------

The control stick for the LANTIRN operates the LANTIRN's sensor itself, note though that the stick itself does not move,
the buttons and hats on the stick are used to control the pod.

.. image:: /images/general/lantirn/stick.png

The left four-way hat, S3, (**1**) allows selection of QWp- and QWp+ (left/right) in addition to Point Track (up) and Area Track (down) modes.

The center slew hat (**2**) is used to slew the sensor line of sight itself and depression of this hat switches between white hot (WHOT) and black hot (BHOT) sensor modes.

The right four-way hat, S4, (**3**) allows for selection of QADL/QHUD (up), QDES (right) and QSNO (down) in addition to declutter level which is cycled by momentary depression of the hat.
The left slider additionally changes the right hat function as detailed further down.

The red button on top (**4**) is used to cycle between the three fields of view (zoom levels) of the IR sensor.

The two-way hat on the side (**5**) selects either the A/G or A/A modes of operation for the pod.

Located on the left side of the stick head is a two way slider (**6**), springloaded to return to center. This switch changes the function of the right four-way hat.

Sliding it forwards allows for selection of manual gain while releasing and sliding it forwards again reselects automatic gain.
Change of the manual gain with manual gain already selected can be done by sliding the switch forwards and holding it for 2 seconds.
With this mode active up/down on the right hat increases and decreases the gain while left/right decreases and increases level.

Sliding the switch aft momentarily allows selection of used laser code, while sliding it aft and holding allows for focus control.
When set to laser code change, the right four-way hat selects digit to change with left/right and increases and decreases the selected digit with up/down.
In focus control up/down increases and decreases focus.

Located on the front of the stick (**7**) is a two-stage trigger, first detent manually lasing while the second detent fires the laser and designates QDES at current sensor position.

Lastly on the front side of the stick (**8**) is the latched laser fire button. Selecting it fires the laser for 60 seconds which can be overriden by the pressing and releasing the first trigger detent.
A renewed press on the laser latch button resets the latched laser fire timer to 60 seconds, beginning a new 60 second countdown.


Operation
=========

Startup
-------

To start the LANTIRN from cold, set the power switch to POD.
This will start the LANTIRN power up sequence which takes 8 minutes, when ready this will be indicated by the MODE switch showing STBY.

When at STBY, depression of the MODE button switches the system to OPER (Operational), enabling the LANTIRN sensor after a 30 second initialization.

Lastly, to allow display of LANTIRN FLIR video, select FLIR on the VIDEO switch.


Sensor Modes and Operation
--------------------------

The LANTIRN has two "master" modes, A/A and A/G. Both work similarly but are optimized for different type of targets.
Additionally the A/G mode allows for bomb release guidance.

The pod has two main ways of controlling the sensor line of sight, either via contrast lock (image following) or via being slaved to a Q designation.

The Area and Point Track modes are the two contrast lock modes in which the LANTIRN locks onto contrast differences in the LANTIRN FLIR video itself.
This in itself only allows for angle tracking which give unprecise ranging using own aircraft position and pod line of sight to calculate target position.
It does however allow the system to track moving targets.

The last tracking mode has the sensor slewed to a stored location/direction, called a Q.
The directional Qs do not allow for guidance to a location while the location Qs do.

QSNO and QADL/QHUD are directional.
QSNO slaves the sensor to the ground 15 NM directly in front of the aircraft along own aircraft heading.
QADL and QHUD slave the sensor to either ADL (in A/A) or the aircraft wings symbol on the HUD (in A/G).

The location Qs have two sources, QWp- and QWp+ on the stick's left hat can be used to cycle through the WCS waypoints,
allowing the RIO to slew to the different waypoints for navigation and target localization.

The other source is via pod designation.
By selecting the second detent on the LANTIRN trigger the current sensor track or location is lased and a new location stored using that data.
This is called the QDES and is used to designate targets for engagement as well as allowing the RIO to select a new location for navigational reference on the fly.
The QDES can not however be automatically transferred to the WCS, but the RIO can enter it manually using the target location information in the pod video feed.

The lower right datablock is enabled for the location Qs only but will remain even when the pod is slewed away in area or point track modes.
As soon as another Q is selected however, it will update to that location instead or be removed if a directional Q is selected.


A/G Target Engagement and Designation
-------------------------------------

The LANTIRN steering cues for ground target engagment are automatically enabled when the LANTIRN is slewed to QDES or a new QDES is designated.
The QDES itself will remain even if a new Q is selected and as long as it exists, the steering cues will point towards QDES even if slewed to another point.
This is important to keep in mind as it is easy to think that the steering commands is to the current sensor location instead of the QDES.

The laser designation itself can however point to a different location than the QDES as the laser always point to the current track.
This can be used to quickly change back to a target marked by the QDES if desired and when lasing a moving target a QDES should be set
at an estimated target location at impact (estimated manually) and then the point track mode or manual slew can be used to designate the actual target more precisely.

To change laser code, move the stick left side slider aft and release, this will change right hat (S4) into laser code mode.
The currently selected digit will blink and the S4 hat can then be used to set the digits. Left/right change what digit to set and up/down change the value of the digit.
Renewed selection of aft on the left slider will then exit the laser code mode. 

If the right, S4, hat is depressed while in laser mode the automatic lase mode will be enabled, indicated by the M (for manual) left of the digits changing to an A (autolase).
Repeat to switch back to manual mode. While activated, the autolase mode will begin firing the laser at 10 seconds TIMP until TIMP zero +4 seconds.

The bomb release cue is only visible with a valid weapon (bomb) selected and the selected bomb is read from the weapon selector wheel on the RIO armament panel via the WCS.
The actual bomb release can be accomplished using the computer pilot or computer target modes but the manual mode is recommended.
In manual mode the pilot follows the cues in the LANTIRN video feed on the VDI and releases the bomb when cued by the LANTIRN.


AN/ALR-67 RWR
*************

Description
===========

The AN/ALR-67 radar warning receiver (RWR) is designed to inform and alert the F-14 crew about radar emitters in their general area.
It's also designed to help the crew defend themselves from hostile threats by indicate radar tracking and engagement by radar guided weapons.

The AN/ALR-67 was integrated in the F-14 to replace the ageing AN/ALR-45 and AN/ALR-50, at first for the F-14B and later on for parts of the F-14A fleet. Until the advent of the PMDIG upgrade the AN/ALR-67 used its own stand-alone display system only.
The RWR is however connected to the AN/ALQ-126 allowing it to send info on threat emitters to the jammer and also display jammed targets on its own display.
It can also trigger preprogrammed countermeasure programs set up in the AN/ALE-39 system.

On later F-14B aircraft incorporating the PTID upgrade the AN/ALR-67 was also integrated into the MDIG diplays system, allowing for a more detailed threat display on the ECMD.

The AN/ALR-67 on the F-14B has four small spiral high-band antennas, four wideband high-band quadrant receivers and a low-band array.
Connected to these antennas is a narrowband superheterodyne receiver analysing the received signals and indicating emitters and threats to both pilot and RIO using two displays, one at each seat and by audio signals played to the ICS of both crewmen.


Controls
========
.. image:: /images/general/alr-67/control.png

The AN/ALR-67 RWR is controlled by a control panel on the RIO right side horizontal panel.

The PWR (power) switch control power to the RWR and should be set to ON to operate the system.

The VOL (volume) control knob sets RIO audio level for the RWR sound indications. The pilot has a corresponding control on his Volume/TACAN command panel.

The TEST switch has two selectable modes and is springloaded to center when not held. Momentary selection of the BIT position initiates the AN/ALR-67 built in test and if the switch is held in the SPL (special) position while on the first BIT page displays the special BIT status page as long as it's held in that position.

The MODE switch also has two selectable modes used while held in the respective position, springloaded to return to center when not held. When not activated enables normal operational mode, OFST enables the offset mode when held and LMT the limit mode when held.
The offset mode is indicated by an O in the status ring on the display and separates overlapping threat symbols sacrificing azimuth accuracy to instead show all threats clearly.
The limit mode is indicated by an L in the status ring  on the display and limits the display to only show the threat symbols of the six highest prioritized threats.

The DISPLAY TYPE selector sets what threat display priority to use on the RWR displays.

NORM - Normal is indicated by a N in the status ring on the display and shows threat symbology according to the loaded threat library.

AI - Airborne interceptor is indicated by an I in the status ring on the display and prioritizes all airborne interceptor threats above all other threats.

AAA - Anti-aircraft artillery is indicated by an A in the status ring on the display and prioritizes all anti-aircraft artillery threats above all other threats.

UNK - Unknown is indicated by a U in the status ring on the display and prioritizes all unknown threats above all other threats.

FRIEND - Friendly is indicated by an F in the status ring on the display and allows for the same prioritization as in normal but also displays known friendly emitters.


Displays
========
.. image:: /images/general/alr-67/display.png

The RWR display is identical at both positions in the cockpit and uses three bands (circles) on the display to indicate the threat level of the displayed threat symbols.

The outermost, critical band displays threat symbols belonging to emitters representing an imminent threat to own aircraft, either a locked on tracking radar or a radar detected to be actively engaging own aircraft.
A threat symbol belonging to a track detected as actively engaging own aircraft is enhanced by flashing of its symbol.

The middle, lethal band displays threat symbols belonging to emitters representing threat systems deemed within lethal range of own aircraft but not actively tracking or engaging it.

The inner, non-lethal band displays threat symbols belonging to emitters not representing a system capable of engaging own aircraft or systems capable of but not deemed within range to engage it.

The circle inside the threat bands is the system status circle, indicating various system modes in use or the presence of failures.
The upper left quadrant displays what display type is set (N, I, A, U or F),
the upper right quadrant showing an L if limited display mode is used
and the lower half indicating either the use of the offset display mode by indicating an O, the presence of a BIT failure by showing B or that the system is thermally overloaded (too warm) by showing a T.

On the lower right side is a knob controlling display intensity on display it's attached to.

:Note: The ordering of the three threat bands has changed at least once since the introduction of the AN/ALR-67, and as the modelled AN/ALR-67 represents one of the earlier versions we've chosen the present order.


Warning Lights
==============
+----------------------------------------------------+--------------------------------------------------+
| .. image:: /images/general/alr-67/pilotcaution.png | .. image:: /images/general/alr-67/riocaution.png |
|    :width: 150 px                                  |    :width: 250 px                                |
|    :height: 350 px                                 |    :height: 800 px                               |
+----------------------------------------------------+--------------------------------------------------+

The two crewmembers have warning lights dedicated to specific threats on their front cockpit panels.
The pilot warning lights are situated on the right side of the HUD and the RIO warning lights on the right side of the TID.
The RIO warning light panel also contains lights for the AN/ALQ-126 and the IFF transponder, those are detailed under their respective section.

The different lights illuminate to indicate the presence of a certain type of threat in the critical band of the RWR and when an active engagement is detected the corresponding light starts flashing.
The categories present are SAM (surface to air missile), AAA (anti-air artillery), AI (airborne interceptor) and (only in the RIO pit) CW (continuous wave).


Threat Indication Alert Tones
=============================

The AN/ALR-67 uses four distinct audio tones to indicate threats and status changes of those threats.

A single short tone is used to indicate the presence of a new emitter or when a threat is moved to another threat band.

A slow warbling, alternating tone is used to indicate the presence of a threat in the critical band.

A fast warbling, alternating tone is used to indicate that a threat is actively engaging own aircraft.

A special four tone audio signal, pitch decreasing with each tone, is used to indicate a special event as programmed by the threat library.
In the Heatblur DCS F-14 this represents a new threat tied to a system capable of silently engaging own aircraft, i.e. it can engage own aircraft without causing it's threat symbol to move to the critical band and thus no additional audio warning tones.
This capability is either because of that the launching aircraft is capable of launching missiles in a TWS mode or that a launching SAM system can guide missiles by other means than radar and thus not giving further warning of an active engagement.


BIT
===
.. image:: /images/general/alr-67/bit.gif

The AN/ALR-67 BIT cycles between different test screens testing the screen, symbology and threat indication tones as well as displaying system revision and threat library information.

The first page displayed shows system and threat library revision and the following screens test the symbol generation of the displays.

The threat indication tones are also tested during the bit, first page tests the status change tone, second page the special tone, third page the threat in critical band tone and the fourth the fast warbling active threat tone.

During the tests the threat warning lights also illuminate for both the pilot and the RIO. 


Threat Symbology
================

The following table details the threat symbols used by the Heatblur DCS F-14 with the AN/ALR-67.

+---------------+-----------------------------------------------------------------------+---------------------+
| Threat symbol | Platform/Sensor                                                       | Special Tone        |
+===============+=======================================================================+=====================+
| Ships (Symbology enhanced by being enclosed by an enlarged U symbol.)                                       |
+---------------+-----------------------------------------------------------------------+---------------------+
| AB            | Arleigh Burke                                                         |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| AK            | Admiral Kuznetsov                                                     |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| GR            | Grisha 5 (Albatros)                                                   |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| GZ            | DDG-168 Guangzhou                                                     |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| HP            | Oliver Hazard Perry                                                   |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| HU            | DDG-171 Haikou                                                        |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| KK            | Krivak 3 (Rezky)                                                      |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| KV            | Kirov (Pyotr Velikiy)                                                 |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| N             | | Ships only carrying a navigational radar                            |                     |
|               | | (civilian ships, submarines)                                        |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| NE            | Neustrashimy                                                          |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| NZ            | Nimitz (Vinson, Stennis)                                              |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| SV            | Slava (Moscow)                                                        |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| TC            | Ticonderoga                                                           |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| TT            | Tarantul 3 (Molniya)                                                  |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| TW            | Tarawa                                                                |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| YI            | FFG-538 Yantai                                                        |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| Aircraft                                                                                                    |
+---------------+-----------------------------------------------------------------------+---------------------+
| 14            | F-14A/B                                                               | Yes                 |
+---------------+-----------------------------------------------------------------------+---------------------+
| 15            | F-15C/E                                                               | Yes                 |
+---------------+-----------------------------------------------------------------------+---------------------+
| 16            | F-16C                                                                 | Yes                 |
+---------------+-----------------------------------------------------------------------+---------------------+
| 17            | JF-17                                                                 | Yes                 |
+---------------+-----------------------------------------------------------------------+---------------------+
| 18            | F/A-18C                                                               | Yes                 |
+---------------+-----------------------------------------------------------------------+---------------------+
| 19            | Mig-19                                                                |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| 21            | Mig-21bis                                                             |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| 23            | Mig-23MLD                                                             |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| 24            | Su-24M/MR                                                             |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| 25            | Mig-25PD                                                              |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| 29            | Su-27, Su-33, Mig-29A/G/S and J-11A                                   | Yes                 |
+---------------+-----------------------------------------------------------------------+---------------------+
| 30            | Su-30                                                                 | Yes                 |
+---------------+-----------------------------------------------------------------------+---------------------+
| 31            | Mig-31                                                                |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| 34            | Su-34                                                                 | Yes                 |
+---------------+-----------------------------------------------------------------------+---------------------+
| 37            | AJS-37                                                                |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| 39            | Su-25TM (Su-39)                                                       | Yes                 |
+---------------+-----------------------------------------------------------------------+---------------------+
| 50            | A-50                                                                  |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| 52            | B-52                                                                  |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| AN            | AN-26B and AN-30M                                                     |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| AP            | AH-64D                                                                |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| B1            | B-1B                                                                  |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| BE            | Tu-95 and Tu-142M                                                     |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| BF            | Tu-22M3                                                               |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| BJ            | Tu-160                                                                |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| E2            | E-2D                                                                  |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| E3            | E-3C                                                                  |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| F4            | F-4E                                                                  |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| F5            | F-5E                                                                  |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| HX            | Ka-27                                                                 |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| IL            | IL-76MD and IL-78M                                                    |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| KC            | KC-135                                                                |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| KJ            | KJ-2000                                                               |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| M2            | Mirage 2000-C and 2000-5                                              | Yes                 |
+---------------+-----------------------------------------------------------------------+---------------------+
| S3            | S-3B                                                                  |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| SH            | SH-60B                                                                |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| TO            | Tornado                                                               |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| TR            | C-130 and C-17A                                                       |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| Air Defense                                                                                                 |
+---------------+-----------------------------------------------------------------------+---------------------+
| 2             | S-75 TR SNR (Fan Song)                                                |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| 3             | S-125 TR SNR-125 (SA-3/Low Blow)                                      |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| 6             | Kub SA-6                                                              |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| 7             | HQ-7 TR                                                               |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| 8             | OSA (SA-8)                                                            |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| 10            | S-300PS 30N6 TR (SA-10)                                               |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| 11            | Buk (SA-11)                                                           |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| 12            | S-300V                                                                |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| 15            | Tor 9A331 (SA-15)                                                     |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| 19            | Tunguska 2C6M (SA-19)                                                 | Yes                 |
+---------------+-----------------------------------------------------------------------+---------------------+
| A             | Gepard, M-163 Vulcan and ZSU-23-4 Shilka                              |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| BB            | S-300PS 64H6E SR (SA-10/Big Bird)                                     |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| BF            | Rapier Blindfire TR                                                   |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| CS            | S-300PS 5N66M SR (SA-10/Clam Shell)                                   |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| DE            | Sborka (Dog Ear)                                                      |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| FF            | S-125 P-19 SR (SA-3/Flat Face)                                        |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| GR            | Roland SR                                                             |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| HA            | Hawk SR                                                               |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| HK            | Hawk TR                                                               |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| HQ            | HQ-7 SR                                                               |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| PT            | Patriot                                                               |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| RO            | Roland                                                                |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| RP            | Rapier SR                                                             |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| S             | 1L13 and 55G6 EWR                                                     |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| SD            | Buk TR (SA-11/Snow Drift)                                             |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| SN            | PRW-11 (Side Net)                                                     |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| Missiles                                                                                                    |
+---------------+-----------------------------------------------------------------------+---------------------+
| M             | AIM-54, AIM-120, MICA-EM, R-37, R-77 and SD-10                        |                     |
+---------------+-----------------------------------------------------------------------+---------------------+
| ATC (Air Traffic Control)                                                                                   |
+---------------+-----------------------------------------------------------------------+---------------------+
| T             | Airport ATC Radar                                                     |                     |
+---------------+-----------------------------------------------------------------------+---------------------+

:Note: Aircraft only flown by own faction in a mission are automatically set as friendly and shown only when setting the DISPLAY TYPE selector to FRIEND.
       N are shown only in UNK and T only in FRIEND.


AN/ALE-39 Countermeasures Dispensing Set
****************************************

The AN/ALE-39 is the countermeasures dispensing set installed in the F-14 in this simulation.
It controls its own set of launchers located between the engine nozzles on the underside of the so called beaver-tail.

The launchers each have two sections, one containing 10 cartridges and the other 20.
They are referred to the left and right dispensers even though the left is really the front one and the right the back one with both being mounted in line on the left side of the tailhook.
This is a remnant from the earliest model F-14s carrying the AN/ALE-29.

This all sums up to a capacity of 60 cartridges in the system with each section necessarily holding one type of cartridge meaning that any combination of cartridges is possible as long as each type's quantity is a multiple of 10.
The system itself has no real knowledge of what is loaded where so incorrectly programming the system can lead to the wrong type of cartridge being ejected.

The system itself can be operated manually from the control panel in the RIO pit or the DLC thumbwheel on the pilot stick when the flaps lever is in the up position.
It is also capable of running programmed sequences of ejection which in turn can be initiated manually by the RIO from the control panel or the direction hats mounted on the hand hold over the DDD.
In addition the AN/ALR-67 can also initiate the chaff ejection program if set up correctly on the AN/ALE-39 control panel.


Controls and Operation
======================

:Note: In DCS the F-14 countermeasure loadout is set in the Mission Editor, see :ref:`MESET` or controlled through the radio menu under ground crew.
       The default setting in the mission editor is bypassed. To see the real loadout check the kneeboard.

Programmer
----------

.. image:: /images/general/cmds/programmer.png

The programmer is used to set up what countermeasure cartridges are loaded where and to set up the different ejection programmes.
The panel is located on the right horizontal console of the RIO cockpit.

The left side of the programmer holds the controls (thumbwheels) for the different ejection programmes, one section for each type of cartridge.

| The **CHAFF** section controls how to eject chaff in program mode. The chaff sequences are programmed to launch a number of salvoes, each consisting of a burst of a set amount of cartridges.
| **B QTY** controls how many cartridges to eject in each burst, selection of 1-4 cartridges and C for continuous and R for random (4-6 cartridges) possible.
| **B INTV** sets the time in seconds between each individual cartridge ejection in each burst, possible settings being .1 (0.125), .2 (0.25), .5 (0.5), .7 (0.75), 1 and R for random.
| **S QTY** controls how many salvoes of bursts to eject in each program, settings available are 1, 2, 4, 6, 8, 10 and 15.
| **S INT** sets the time in seconds between each salvo in the program, available settings are 2, 4, 6, 8 and 10.

| When using the random and continuous settings for B special conditions apply.
| **B at C QTY and R INTV** sets the first 3 cartridges to launch at 0.125 second intervals, the rest at random intervals from 0.25 to 4 seconds. Ejection disregards the S settings and continue until all cartridges are ejected.
| **B at R QTY and R INTV** sets each burst to have between 4-6 cartridges and to eject at random intervals between 0.25 to 4 seconds. The first burst in a salvo will always launch the first 3 cartridges at 0.125 second intervals.  
| **B at R QTY and INTV at set number** sets each burst to launch between 4-6 cartridges at set interval. First burst will always launch first 3 cartridges at 0.125 sec interval.
| **B at fixed QTY and R INTV** sets each burst to eject one cartridge disregarding B QTY.

| The **JAMMER** section controls the ejection of jammer cartridges in programmed mode.
| **QTY** sets how many jammer cartridges to eject, possible settings are 1-4.
| **INTV** uses all three indicated thumbwheels to set time in seconds between each ejection in the program. Settings from 1 to 299 possible in 1 second increments.

:Note: Jammer cartridges not currently implemented in DCS.

| The **FLARE** section controls ejection of flares when using programmed mode.
| **QTY** sets amount of flare cartridges to eject, possible settings being 2, 3, 4, 6, 8 and 10.
| **INTV** sets time interval between each ejection in seconds, possible settings being 2, 4, 6, 8 and 10.

The right side of the programmer sets the type of cartridge loaded into each section and the reset switch used after loading new cartridges.

The **L10, L20, R10 and R20** thumbwheels can be set to C, J or F setting what cartridge is loaded into which section.

:Note: Incorrectly setting type of cartridge loaded can result in the launch of the wrong type of cartridge.

The **RESET** switch needs to be used to reset the systems internal counters after loading new cartridges into the launchers. Needs to be held to reset for at least 5 seconds to reset the system.


Control Panel
-------------

.. image:: /images/general/cmds/controller.png

The control panel is used to control system power, to set up automatic ejections and to manually eject cartridges and is also located on the RIO right horizontal console.

The mechanical counters on the upper part of the panel are used to indicate remaining cartridges of each type.
They need to be set up manually using the knob below each counter but decreases automatically as each cartridge ejection pulse is sent.
As they're set manually it's possible to end up in a situation were the counter is at 0 but additional cartridges are still available. In this cases ejection pulses will still be sent but the counter will remain at 0.

Below each counter each cartridge type has a switch for manual ejection commands. The switches are momentary and springloaded to center, each having three positions.
**PRGM** initiates respective set ejection program, **SGL** commands ejection of a single cartridge of respective type and **STBY** is the default center position not commanding manual ejection.

The **PWR/MODE** switch enables power to the AN/ALE-39 and can enable automatic chaff launch via the AN/ALR-67 RWR.
**AUTO (CHAFF) / MAN** enables power to the system and allows the AN/ALR-67 to initiate the set chaff ejection program but flares remain in manual. Chaff ejection is initiated when the RWR detects a threat actively engaging own aircraft, 
after each program initiation a 30 second cooldown is present before next program is initiated if such a detection is still present. Manual ejection is still available as normal.
**MAN** enables power to the system and allows for manual initiation of all functions.
**OFF** disables the system.

The **FLARE MODE** switch controls how flares are ejected and also sets up how the pilot stick **DLC button is used**. The flaps lever needs to be in the up position to enable DLC button cartridge ejection.
The switch has three positions. **MULT**, multiple, sets the system to eject one cartridge from each section set to flares on the programmer for each ejection pulse.
**Note** that this means that if flares are loaded on all four sections this results in 4 flares being launched each time a flare ejection command is sent.
**NORM** sets normal flare ejection pulse behavior. **PILOT** enables ejection of one flare cartridge with each depression of the DLC button. Normal flare ejection still possible.
If the switch is set a position **other than PILOT** the DLC button will command ejection of a single chaff cartridge.

Finally the **SALVO FLARES** switch initiates rapid ejection of all flares using a 0.125 second time interval. Normally springloaded to the **OFF** position.
Can't be stopped once initiated.

:Note: All countermeasure cartridge ejection is inhibited while the weight on wheels sensor is active, preventing countermeasure ejection while on the ground.


RIO Hand Hold Switches
----------------------

.. image:: /images/general/cmds/cmhats.png

Two four-way direction hats are mounted on the RIO hand hold above the DDD to enable quick access to countermeasure ejection.
The two switches are mirrored and **UP** commands ejection of a single chaff cartridge. **DOWN** initiates the chaff ejection program, **INBOARD** (towards center) initiates the jammer ejection program and **OUTBOARD** (towards the sides) initiates the flare ejection program.


LAU-138
=======

The LAU-138 chaff dispenser was developed to meet the need for additional chaff cartridge payload capacity.
The launcher itself was developed in Sweden by CelciusTech as a chaff dispenser integrated into a rail designed to replace the LAU-7 Sidewinder rail.
Each rail holds up to 160 chaff packages, each being smaller than a normal chaff cartridge while still enabling the mounting of single AIM-9 Sidewinder to itself.

On the F-14 the LAU-138 was used mounted on the 1A and 8A stations.
While technically able to be mounted on the respective B stations as well it wasn't possible to refill the launcher while mounted there so wasn't used there operationally.

While having the LAU-138s mounted the R10 and R20 sections in the launcher are both connected to the R20 section and the R10 connected to the LAU-138s.
This means that the R20 section type setting on the programmer controls both R10 and R20 and the R10 section type setting should always be set to C for chaff.

Each launcher holds, as mentioned, 160 chaff packages and each ejection impulse ejects four packages from each launcher, each packages being about 1/4 the size of a normal chaff cartidge.
This results in that each ejection impulse ejects the equivalent of two chaff cartridges in total and that a total of 40 ejections are available from the launchers.

As the launchers use the R10 section of the programmer, mounting two LAU-138s result means that the counter for chaff on the controller should be increased by 40.
A chaff only loadout can result in the number of launches available to be in total 100, which too much for the counter, and that the counter will effectively show one chaff ejection less than what's really available.
The last ejection will still work though.

In summary this means that when using the LAU-138 an additional 40 chaff ejections are available increasing the total number to anywhere from 100 chaff to 40 chaff and 60 flares when combined with the normal AN/ALE-39 loadout
and that the R10 section should always be set to C for chaff when mounted.


AN/ALQ-100 AND 126 DECM (Defensive Electronic CounterMeasures)
**************************************************************

The AN/ALQ-100 and 126 jammers are designed to detect radar threats, analyze them, select the optimum countermeasure technique available and apply it.
Available techniques for jamming are amongst others, mainlobe blanking, inverse con-scan, range-gate pull-off and swept square modes.

In real life these two systems differ greatly with the AN/ALR-126 being by far the most effective system.
In DCS both are modelled as a simple noise jammers due to engine limitations but controlled by the DECM logic as to when it's on or off and thus work the same.


DECM Controls and Indicators
============================

.. image:: /images/general/alq-126/control.png

The controls for the DECM are all located on the right horizontal panel in the RIO pit, panel as image above.
In addition there are two indication lights co-located with the RWR threat indicators on the right side of the TID.

The two indication lights on the threat advisory are RCV (recieve) and XMIT (transmit). RCV illuminates up when the system detects and analyzes a threat while the XMIT illuminates up when it's actively jamming a threat.

The control panel itself contains a STANDBY indicator light, a mode selector knob and an AUDIO volume knob.

The STANDBY light indicates that system warmup is not yet completed and when completed turns off. At other times, illumination of this indicator indicates the presence of a fault in the system.

The AUDIO (volume) knob controls the audio volume of the RIO sound from the system. The pilot has no access to this audio. The audio itself is generated from the PRF of recieved threats with PRF frequency being converted to audio frequency.

The mode selector knob controls power and operational mode that the system is in.

**OFF** turns off power to the system. **STBY** begins pre-warming of the system, taking in all around 5 minutes.

**TEST - HOLD 3 SEC** is used to prepare the system for BIT, after 3 seconds in this mode, turn the knob to TEST - ACT.

**TEST - ACT** starts the BIT in the system. The BIT takes approximately 30 seconds and the RCV light will be illuminated the whole time while the XMIT light will flash twice. If the STANDBY light illuminates it indicates that a no-go condition exists in the system.

**REC** enables the system in recieve only mode, enabling analysation of threats and also the threat audio.

**RPT** enables full system functionality, in addition to REC it also now tries to jam threats according to selected method.

:Note: In DCS jamming is always done with noise jamming, turning on as a threat is detected.


.. _navigation:

Navigation
**********

Navigation System
=================

The F-14’s primary navigation system is a multi-unit Carrier Aircraft Inertial Navigation System (CAINS) designated as AN/ASN-92.
An INS system measures and integrates sensed inertia forces (acceleration) and rotational velocities to calculate aircraft position and linear velocity.
A good navigation system can precisely guide an aircraft on a route to a mission objective hundred or thousand miles-long, and then back to the home base, safely and reliably.
Such a system is even more important when an aircraft is designed to operate over the ocean, far away from any ground-based TACAN or visual references.

Designing an INS (IMU) is an engineering challenge, which requires consideration of such problems as calibration, alignment, Earth’s rotational motion, inertia forces, thermal stability,
analogue-digital converters precision, all different types of corrections which have to be applied to keep the device precise over extended time,
and many more. Simulating an INS platform is very similar - it is a complex undertaking.

At Heatblur, we decided to develop an entirely new mathematical model to simulate the AN/ASN-92 for our F-14.
We included all the potential sources of errors contributing to the final precision of the device, and recreated the characteristic behaviour of a gimballed INS platform.
The result is a set of algorithms providing an authentic representation of the AN/ASN-92 in DCS, yet optimised to have almost no impact on CPU performance.

The main components of the INS are the inertial measurement unit (IMU), the power supply unit and pilot and RIO navigation controls and displays. 

Although from the crew member’s point of view, the INS is used mostly for navigation, it is also essential for proper operations of other aircraft equipment.
For example, the attitude is necessary for the radar. The attitude and the own position are required for some weapon delivery modes, particularly for long shots.
Even more distressing to the crew, a complete failure of the INS renders the more advanced modes of weapons such as the AIM-7 and AIM-54 missiles inoperable.

The same information is used for data-link operations - when using erroneous INS data, own tracks and targets received from cooperating aircraft will not match and result in false contacts being displayed on the TID.
These are only a few examples, and the INS data is used whenever aircraft position or attitude is required. 

Thus the inertial navigation system (INS) integrates with the AWG-9 computer (WCS computer) and the CSDC, the computer signal data converter.
Other related equipment includes the attitude and heading reference system, central air data computer, radar altimeter, instrument landing system, and TACAN. 


WCS Computer
------------

The WCS or weapon control system computer and CSDC use several alignment routines stored on a magnetic tape to perform the necessary computations to align the INS. 

These stored alignment routines in the WCS computer are called SMAL single mode alignment program. When alignment is initiated, the routines are loaded in the computer’s destructive readout memory from magnetic tape. 

This process is called “tape read-in” and is represented by an M on the TID. During the alignment of the IMU platform, the WCS communicates with the CSDC to address specific CSDC navigation routines. 


IMU Platform Alignment
----------------------

When alignment mode is selected, the IMU platform first erects to a coarse alignment with the help of accelerometer output and gives an aircraft heading that represents the angular displacement from true north.
This displacement is referred to as wander angle. The CSDC sends inertial velocity data to the WCS during the alignment process.

The second stage – fine alignment – uses the precise measurement of gyroscope drift to calculate the aircraft’s true heading.
This is possible because of the Earth’s rotation. At no point of alignment, is the magnetic heading used, and the whole process relies only on the sensing of the non-inertial movement of the platform within the 3d space.

The WCS calculates terms for platform alignment corrections and estimates the value of the wander angle, it then sends this data to the CSDC.
The CSDC uses these correction terms in the CSDC inertial equations to generate pulses for the platform torquing that are then transmitted to the IMU.
The CSDC in return receives velocity information from the IMU and sends this new inertial velocity data to the WCS alignment program, upon which the cycle repeats.
The exchange of data continues until INS is entered. 

The leveling process of the platform is achieved by the CSDC generating torquing pulses based on IMU accelerometer off-level indications being sent to the IMU by the CSDC.
With each data exchange, the WCS calculates an error value (delta) between the values of the previous and current wander angle.
This delta is largest at the beginning of the alignment and smallest at the end of alignment.

The alignment is finished when the delta is near zero and near zero velocity is sensed along the platform X and Y axes.
Variable factors required to align the platform are continuously calculated, updated, and saved as calibration data.
When the alignment is complete, the system is ready to enter INS. The last used calibration data and wander angle are stored in the CSDC upon entry into INS.
When in INS, the WCS accepts the velocity and position data and the wander angle from the CSDC.



Navigation Modes
^^^^^^^^^^^^^^^^

Three navigation data mode sources are used for general navigation:

**1. INS** - The primary navigation mode set by the RIO once IMU alignment is complete. The IMU is the primary sensor supplying velocity data that is used to compute all inertial outputs. The IMU is the source for roll and pitch data.

**2. IMU/AM** - A backup mode that can either be selected by the RIO or is automatically entered when the CSDC determines the IMU inertial velocity data is unreliable. In this mode, true airspeed from the CADC and stored or entered winds are combined to provide ground speed and true heading for general navigation. The IMU is the source for pitch and roll.

**3. AHRS/AM** - An even further degraded mode that can be either selected by the RIO or automatically entered when the CSDC detects a total INS failure. Heading in this mode is derived from magnetic heading plus entered or stored magnetic variation (MAG VAR). This heading, TAS from the CADC, and entered or stored wind are used for general navigation. The AHRS is the source of pitch and roll.


Navigation Computations
-----------------------

The CSDC and the WCS are aware of the selected navigation mode.
The CSDC sends the WCS navigation data parameters (TAS from the CADC, latitude and longitude, inertial velocities, true heading, etc.) required to support general navigation calculations.
The WCS uses stored and input navigation data (based on the current navigation mode) to perform the required navigational computations.
The WCS also performs additional computations so that the crew is provided with: 

* Current latitude and longitude
* Attitude
* Heading true and magnetic
* Own ground speed and ground track
* Ability to store and display three waypoints, a fixed point (FP), an initial point (IP), a surface target (ST), a home base (HB), a defended point and a hostile area
* Range, bearing, command course, command heading and time-to-go to a selected destination point
* Calculated wind speed and direction
* Calculated magnetic variation
* Continuous monitoring of the status of the unit, and in case of failure inform the crew with advisory lights and appropriate acronyms displayed on the TID
* Backup navigation modes in case of partial system failure
* Backup present position


Displays
--------

Navigation information is displayed on the TID, HSD, multiple display indicator (MDI), HUD, and VDI, depending on the mode selected by the pilot and RIO.
If an IMU or navigation computer failure occurs, two backup modes are available: IMU airmass (IMU/AM) or AHRS airmass (AHRS/AM).


Inertial Navigation System (INS)
================================

An important feature of the INS is its fast alignment capability over a wide range of temperature.
The INS is a dead-reckoning system that derives speed as a function of aircraft accelerations.
Two accelerometers are used to measure acceleration in the horizontal plane.
These outputs result in velocities along the X and Y axes after corrections for the Earth’s rotational velocity (coriolis acceleration) and integration inputs.
These X and Y velocities can be resolved in the IMU platform coordinate system through wander angle and put in the Earth referenced north/east/down system.
Integration about the north and east axes also provides increments of latitude and longitude.
Navigation in such manner gives the flight crew detailed and precise knowledge of the position, direction and velocity of their aircraft at any time. 

An INS device like the AN/ASN-92 requires a high precision of measurements of the acceleration and the attitude, because even the smallest inaccuracy can result in a significant error when accumulated over extended time.

Consider an example: the inertial platform is slightly tilted from the nominal position, let’s say by 0.002°.
Then, the horizontal accelerometers are no longer parallel to the ground, and this means that they start to be sensitive to gravity.
If not corrected, this gravitational component is interpreted by the navigation computer as a horizontal acceleration.
If the wrong attitude is kept constant for one hour, it will result in an error of the measured position of over one nautical mile.
It is a significant inaccuracy, and it comes as a result of such a minimal alignment error.

The accuracy of the INS degrades with time – usually the longer they operate in the navigation mode, the higher the error they accumulate.


Inertial Measurement Unit 
-------------------------

The IMU is a three-axis, four-gimbal, all-attitude unit containing two gyros and three accelerometers.
The gyros and the accelerometers are mounted to a platform that is free to rotate respect to the base (aircraft).
The four-gimbal system provides gimbal-lock free rotation and uses torquer motors to correct platform attitude errors.
The gyros sense angular rotation about their sensitive axes and are the source of information about the aircraft attitude.
They also stabilise the whole platform and keep the constant orientation of the accelerometers respect to the ground (gravity).
Two accelerometers are used to measure acceleration in the horizontal plane; the third accelerometer measures vertical acceleration.
The sensitive axes of the accelerometers are orthogonal.
Their displacement is sensed by pickoff coils that develop a signal that is amplified, then applied to a torquer that restores the mass to its null position.
The magnitude of torquing current required is proportional to the acceleration.
The sensed acceleration signal is integrated in the computer and used to calculate aircraft velocity and displacement from the initial position.
The attitude of the platform is also corrected continuously to account for the effects associated with the Earth’s rotation and device inaccuracies.

This design is widespread for gimballed inertial navigation systems. It was used for the F-14, but also for the Space Shuttle and many other aircraft of the era. 


IMU BIT
-------

In case of IMU failure, the CSDC automatically switches to a backup navigation mode. The IMU BIT monitors the temperature, internal error signals, and electrical characteristics of the IMU.

If the CSDC detects a failure in the IMU, it informs the WCS computer and the IMU acronym indicating the component of the INS that failed is displayed on the TID.
The IMU advisory light illuminates on the RIO caution/advisory panel.


NAV COMP Light
--------------

If the NAV MODE switch is in INS, and the NAV COMP light illuminates, there is a failure in the INS or CSDC; the navigation system will automatically switch to a backup mode.
The NAV COMP light remains illuminated and the RIO should set the NAV MODE switch to IMU/AM position.
The NAV COMP advisory light indicates that the INS is operating in a degraded mode as a result of manual selection by the RIO using the NAV MODE switch or automatic selection because of a failure of the CSDC or the IMU. 

:Note:  * When an IMU quantizer failure occurs in the INS mode, the system will automatically select the IMU/ AM mode and the STBY/READY and NAV COMP lights will illuminate. The RIO should move the NAV MODE switch from the INS to IMU/AM. The STBY/READY lights go out - but the NAV COMP light will remain illuminated.
        * With a NAV COMP light and a CSI ACRO displayed on the TID, there is no auto-switch to a backup attitude source for the HUD or the VDI nor is the RIO able to manually switch to any backup mode.
        

IMU Light 
---------

If there is a failure in the IMU, the IMU advisory light will illuminate; the navigation system switches to the AHRS/AM mode and accuracy may become degraded
Attitude information for the VDIG and missile control system are now provided by the AHRS. The IMU light remains illuminated until the RIO selects AHRS/AM.
With an AHRS light computed magnetic variation (vC) should be verified and updated if necessary.

+---------------+-------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Standby light | Ready light | Description                                                                                                                                                                      |
+===============+=============+==================================================================================================================================================================================+
| ON            | ON          | Selected navigational mode not functioning correctly due to failure. Normal during first 45 seconds of alignment initialization.                                                 |
+---------------+-------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| ON            | OFF         | Alignment under way (after first 45 seconds) or IMU/AM selected prior to coarse align. Leave switch in selected mode to complete alignment or to wait for IMU erection.          |
+---------------+-------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Flashing      | Flashing    | Alignment not initialized due to parking brake not being set.                                                                                                                    |
+---------------+-------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Flashing      | OFF         | Alignment suspended (paused) due to parking brake not being set.                                                                                                                 |
+---------------+-------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| OFF           | Flashing    | Alignment suspended due to parking brake not being set after second marker.                                                                                                      |
+---------------+-------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| OFF           | ON          | Alignment good enough for weapons employment (second marker on screen), or INS or IMU/AM available when in AHRS/AM. Wait for complete alignment or select mode as desired.       |
+---------------+-------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| OFF           | OFF         | System functioning correctly in set mode or system off.                                                                                                                          |
+---------------+-------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| OFF           | Flashing    | If selection of IMU/AM occurs with system aligned the ready light will flash for 5 seconds indicating that INS should be reselected. After this timeframe the alignment is lost. |
+---------------+-------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

**WARNING:** After RIO selection IMU/AM because of a failure, and a complete IMU failure occurs afterwards, the system will display erroneous attitude information to the pilot. The CSDC will neither automatically exit IMU/AM to the AHRS/AM mode (if a valid AHRS exists) nor remove VDIG/TID/DDD attitude displays. The RIO should manually switch to the AHRS/AM mode.

Whenever the NAV COMP light illuminates the flight crew should be cautious of attitude displays and frequently cross-reference the VDIG/TID/DDD and standby attitude indicator,
particularly during non-VFR conditions and be alert for an IMU failure. If an IMU failure is indicated by the IMU light, display of IMU acronym in OBC continuous monitor,
removal of  the IM acronym in the TID attitude reference source buffer, and the NAV COMP light goes out, the RIO should move the NAV MODE switch from the IMU/AM to the AHRS/AM and disregard the READY light.
If a valid AHRS exists, its attitude information will be displayed, otherwise the VDIG/TID/DDD attitude displays will be removed.


AHRS Light
----------

If the AHRS self-test has detected a failure the AHRS Light will illuminate.
The magnetic heading on the HUD and VDI is now controlled by the WCS computer.
Because it uses the last known value for magnetic variation the heading will degrade over long distances and time, unless new values of magnetic variation are entered by the RIO via the CAP.
IFR flight should be avoided completely.


Navigation Power Supply
-----------------------

The NPS provides electrical power for the IMU and CSDC. A nickel-cadmium battery provides power to the IMU and CSDC for up to 10 seconds if there is a power interruption or transient.


INS Alignment Modes
===================

Before INS can be used for navigation, the inertial platform must be aligned so that it is level relative to local vertical and its orientation relative to true north.
This is done automatically in two phases: coarse alignment and fine alignment.

The coarse phase begins when the initialization sequence is complete and performs initial coarse estimates of the IMU platform wander angle.
The successful completion of this phase requires a minimum local level error in the IMU platform to proceed to the fine alignment phase.

IMU elements that require warmup are being heated by the IMU heaters.
In addition, the IMU gimbals (roll, pitch, azimuth) are caged through their respective synchros to the IMU case (airframe reference).
The IMU gyros are brought up to running speed, and coarse leveling is performed using the accelerometer outputs.

When power is applied to the NPS and IMU, the SMAL program from the bulk storage tape is read into the WCS computer nonwrite-protected memory.
The alignment program estimates a wander angle, velocity errors, and gyro-torquing correction signals.

These values are sent to the CSDC to align the IMU and to initialize the CSDC NAV program.
The following assemblies are used during alignment: IMU, NPS, CSDC, WCS computer, CAP (computer address panel), navigation control and data readout panel.
For carrier alignment also the data link receiver-processor is used.

There are four primary alignment modes: SAT ground and carrier alignment, and NON SAT ground and carrier alignment.
SAT operation allows OBC testing during the alignment. Either alignment mode can be used in SAT or NON SAT. (SAT modes are not yet implemented in DCS) 

The basic TID display formats are represented in the image below. The automatic sequence is the same for all modes, except for CVA ALIGN, where the ship’s motion is inserted by the data link.

The CAT ALIGN overrides the requirement for the parking brake to be on (suspend align).
There are two more alignment submodes: stored heading and handset. The handset mode is used for CVA ALIGN when SINS data is not available.
The stored heading mode is used for rapid alignment, by using a previous alignment (reference alignment) to align the system quickly.

Initialization of any alignment mode requires entry of the following values in either own aircraft or HB (homebase) for the following:

1. Latitude

2. Longitude

3. Corrected pressure altitude.

In addition, if handset alignment is used on the carrier, the following values must also be entered:

1. Speed

2. Ship's true heading.


:Note: The parking brake must be on during initialization of any alignment. When the parking brake is released during coarse alignment, the STBY and READY lights flash and the align program will reinitialize.
       If the parking brake is released during fine alignment, a suspend align discrete is sent to the CSDC, the STBY or READY light blinks, and the time into alignment clock on the TID stops.

.. image:: /images/general/navigation/align.png


Non-SAT Alignments
------------------

Ground Alignment 
^^^^^^^^^^^^^^^^

For land-based operations, the ground alignment procedure is used to align the IMU. Aircraft or homebase latitude, longitude, and altitude are entered into the WCS computer via the CAP.
This may be accomplished before or after selecting GND align. Selecting GND ALIGN on the NAV MODE switch initiates the align operation.
However note that whatever has been hooked when switching to ALIGN, is injected as your own coordinates.
You can use homebase or preset own aircraft coordinates for example, but if you didn’t, you will have between 90 to 120 seconds to enter your own coordinates and you cannot wait for the alignment to finish,
or it will trigger the observable error (O) and alignment will have to be reinitialized.

:Note: If fine align has not been achieved, entry of the own aircraft’s latitude will restart the alignment. On completion of the alignment program read-in, the alignment display appears on the TID (see image above).

During the initialization, the TID will display an alignment time of 0.7. After 42 to 45 seconds, the NAV COMP light on the caution/advisory panel goes out,
indicating that the IMU has entered the ready state; the READY light also goes out. The alignment program will begin with the computation of the alignment parameters.

At this time an alignment status indicator, called a caret (v), will start to move from left to right.
The status of the alignment is indicated by where the caret appears in relationship to three alignment-tick indicators.
The first tick indicator is called the coarse-align complete marker, the second is the alert launch criteria marker, and the third indicator is the fine-align complete marker.
An elapsed time indicator provides alignment time in minutes and tenths. 

The clock indicator will begin with 0.7 displayed and continue after a 42-second delay. After 9.9 minutes, the clock display will pass through zero and begin again.
If the alignment is suspended (parking brake), the clock will stop counting until alignment is resumed.

Between the first and second ticks are the telltale status indicators that indicate a failure of one of four systems: C = calibration data fail,
T = temperature (cold IMU), S = SINS data invalid, and 0 = observable (alignment data bad, i.e., LAT, LONG, SPEED, etc.). The letter that appears indicates which system has a failure. 

A C indicates a failure in the transfer of calibration data between the IMU and the CSDC, and the alignment will not progress.

The T appears normally at the start of alignment and disappears when the IMU has reached operating temperature.
If the T does not disappear, there is a failure in the system and a non-stored heading alignment will not progress.

The S can appear at the start of any CV alignment and will disappear shortly after.
If the S does not disappear, there is a failure and the result will be a bad alignment.
The S also appears if incoming SINS data is not valid, in which case the alignment should not be trusted.

:Note:  * The CSDC and IMU outputs as well as data inputs are constantly monitored and if either an excessive value in the X or Y acceleration is sensed, or a bad value from wrong lat or long data input, a 0 (bad observable) is posted on the TID and the alignment stalls (ceases to continue).
        * The IMU may be preheated by selecting IMU/AM on the TID NAV MODE switch when operating on ground or aircraft power. This energizes the IMU and navigation power supply, which turns on the IMU heater prior to start of a ground or carrier alignment. The IMU should not be preheated for longer than 5 minutes.

During coarse alignment, the alignment caret moves based on the wander angle error. If the parking brake is released during this phase, the alignment will reset.

The V will reach the first tick when coarse alignment is complete.
When the program switches to fine alignment, the caret changes into a diamond, which indicates to the pilot that he may release the parking brake (suspend alignment) and taxi, if OBC is complete.
After the parking brake is reset, alignment will continue and the diamond will move right as alignment improves.

At the second tick, which indicates that alignment meets the minimum criteria to launch weapons, the STBY light will go off and the READY light will illuminate.
The INS mode may be entered at this point. If INS is not selected, the diamond continues to move to the right.
When it reaches the third tick, it indicates that fine alignment is completed and a dot will appear in the diamond (<>). 

You can leave the system in alignment mode even after fine align is complete, which will provide a progressively more accurate alignment.
How much more accuracy is gained depends on the quality of alignment when fine align was completed.
This can be rather minimal in some cases, but, when it is further left in alignment for long enough, it will always provide a certain amount of improvement. 

:Note: If alignment is suspended and the aircraft is taxied over a distance greater than 4000 feet, the quality of the alignment becomes unknown to a point where it might be unreliable. Alignment reinitialization is advised. 

If the caret (v) or diamond stop moving, the program has stopped aligning. If they stop between the first and third ticks (coarse and fine), it means that alignment has been suspended.
The clock will stop counting if that is the case. If alignment continues, the clock resumes counting until switched out of alignment by NAV MODE switch or if the parking brake is released again. 

:Note: The alignment display will not go past the coarse align tick until the IMU temperature has reached 165°. When this temperature is reached, the T symbol will disappear. The temperature interlock is bypassed when performing a stored heading alignment. The IMU should be preheated for a stored heading alignment, as it usually completes in under 2 minutes, which could result in a bad alignment. 

Selecting INS will turn off the READY light, terminate alignment and the tactical display will appear, and the normal navigation display will become available.

:Note: * When the NAV MODE switch is set to INS, the CSDC is in navigation mode and the READY light goes out.
       * After selecting the INS navigation mode, the AWG-9 align program continues for approximately three align data cycles (18 seconds) before entering INS. This also applies if the aircraft takes off before INS is selected.
        
The RIO and pilot can then observe an IN acronym on the attitude status readout on the TID or TID repeat. 

If you want to reinitialize an alignment when observing an acronym during fine alignment or if noting a stalled alignment, the following methods can be used:

1. Select both INS mode switch and WCS PWR switch to off. Allow TID displays to collapse. Proceed with normal start sequence.
2. INS mode switch to desired align mode.
3. INS mode switch to INS. Verify system in INS (IN acronym on TID), cycle mode switch to off and back to desired alignment mode.

Failing to follow above procedures when reinitializing a fine alignment will result in severely degraded alignment quality.
To reinitialize the program during coarse align, the RIO has to unselect GND ALIGN, re-enter LAT and LONG and reselect GND ALIGN. 


Carrier Alignment 
^^^^^^^^^^^^^^^^^

When aligning on a carrier with a changing latitude, longitude and heading, the carrier alignment procedure is used.
INS can be aligned in three different ways on a carrier: with RF data link alignment and manual (handset) alignment - deck-edge cable alignment is not implemented in DCS.
TID displays the same information as during a GND ALIGN procedure. 

Note that you will get erroneous heading readings on a carrier, even if fine align is complete.
The heading can deviate up to 20 or 30 degrees, depending on the parking position on the carrier and the carrier’s heading, due to the carrier’s own magnetic field and induced magnetic field.
It is important that the flight crew know the carrier's BRC. The magnetic variation caused by the carrier’s magnetic distortion will go away shortly after take off.
This magnetic distortion does not impact the alignment quality.


Carrier Data Link Alignment
"""""""""""""""""""""""""""

The primary carrier alignment mode is the RF data link alignment (CAINS). This mode uses the ship’s INS (SINS) to align the IMU.
Inertial inputs including the ship’s longitude, latitude, north and east velocity as well as roll, pitch, heading, and heading rate are transmitted to the WCS computer via the RF data link.

The data is transmitted by the ship’s data link equipment. To align the INS by the CVA alignment method, follow these steps: 

1. Turn on the power to the data link system 
2. Turn the WCS power to STBY 
3. Set the D/L mode on the DATA LINK control panel to CAINS/WAYPT
4. Select CVA ALIGN on the NAV MODE switch. 

The received data is processed by the data link equipment in the aircraft and transmitted to the WCS computer. The WCS computer compares the IMU data with the ship’s INS data and sends correction signals to the CSDC to fine align the IMU. 


:Note: * If CVA or CAT ALIGN is selected prior to selecting OBC BIT, data link OBC testing is inhibited. (Not implemented yet)
       * The fine alignment complete tick mark indicates completion of fine align and whether alignment data is SINS or handset. When good SINS data is not received during a filter cycle, the fine alignment complete tick mark jumps to the left approximately 0.75 inch. The jump indicates the SINS data is intermittent, and handset alignment data is required.
       
CVA ALIGN is much similar to GND ALIGN, and alignment is suspended, stalled and reinitialized in the same manner as during GND ALIGN, depending on whether it has been induced during the coarse or fine alignment phase.
       
:Note: If SINS data link is lost during taxi, a flashing HS will appear on the TID. This will disappear when data link is reacquired; however, because of align timing requirements it may remain flashing up to 8 seconds after data link is reacquired. If the HS flashing does not stop 8 seconds after resetting the parking brake, SINS data is lost but the alignment can continue by entering carrier speed and true heading into the own aircraft file and completing the align in handset mode. If datalink is reacquired during this period, the HS will disappear from the TID and a normal datalink CVA align will continue.

To complete the alignment, set the NAV MODE switch to INS. A successfully aligned INS is indicated by both the STBY and READY lights off and the IN acronym in the status readout on the TID.

:Note: * Do not switch to INS while the ship is in a turn, even if fine align has been completed. This will degrade the alignment quality significantly. If you wait until the ship’s turn is complete, alignment quality will not be affected. Handset alignment is not affected. 
       * If during a CVA alignment the CAINS/WAYPT-TAC switch is unlatched to TAC by power transient, or data link signal is lost, the INS will revert to a handset alignment (HS).
       

Carrier Cable Alignment 
"""""""""""""""""""""""

The deck-edge cable alignment (SINS) is an alternative to the RF data link alignment, where inputs are sent over a secure cable to the data link from the deck-edge outlet box of the carrier.
Switching from RF data link to cable inputs is done automatically when the cable is connected. To initiate a CVA align with SINS via cable, use the same steps as for the RF data link alignment.
As cable and RF data link alignment are virtually the same, it has not been implemented in DCS. 

:Note: The SINS-cable is currently not implemented in DCS.


Handset Alignment
"""""""""""""""""

The HS alignment mode is a manual alignment option available for carrier alignment, should SINS data from RF data link or cable not be available,
inaccurate, or interrupted (indicated by the TILT light on the DDI and/or the fine alignment complete tick mark jumping to the left about 0.75 inch).
The HS is also very similar to the GND ALIGN mode, but the RIO has to input more data and the computer takes longer to process because of the ship movement.

IF CVA ALIGN is selected with the NAV MODE switch and no SINS data is available, a flashing HS acronym will appear on the TID.
Whenever HS flashes on the TID before alignment starts and the RIO chooses to align the system with handset align, he must enter the according ship’s data in the following order:

1. Speed
2. Ship’s true heading
3. Latitude
4. Longitude
5. Corrected pressure altitude.

If during coarse align data link is lost (RF or cable) or during any portion of a stored heading alignment, the alignment will reinitialize and the HS acronym will be flashing.
The alignment can then be continued with the handset mode as described above. 

If the reinitialization occurs during the fine align phase of a stored heading alignment, the CSDC alignment routine must be reset first by turning the AWG-9 OFF for 6 seconds. 

If data link is lost during a normal fine align phase, HS will be entered automatically, but the acronym will not flash and the alignment will continue.
If data link is regained, the HS acronym will disappear and normal CVA align via RF or cable data link will continue. When data link is regained, the acronym can remain for up to 8 seconds. 

:Note: If HS is not flashing, valid SINS data has already been entered. If it is flashing, SINS data has to be entered manually.

On the CAP NAV DATA matrix use OWN AC, and the LAT and LONG prefix push buttons; to enter the ships’ heading and speed use own-aircraft HDG and SPD buttons.
Once this data has been entered HS will stop flashing and the alignment will progress like a normal GND ALIGN, but can take up to 3 times as long.

:Note: The carrier needs to maintain a constant speed and heading during alignment for this method to be successful. Remember that handset alignment quality will always be inferior to a normal CVA ALIGN fine alignment quality. 


Reinitialization 
^^^^^^^^^^^^^^^^

To reinitialize an alignment during the fine align phase, if an observable acronym (O) or a stalled alignment has been noticed, the RIO can use any of the following methods:

1.	Set NAV MODE switch and WCS switch to OFF. Allow TID displays to collapse. Proceed with normal start sequence.
2.	Set NAV MODE switch to OFF. Set NAV MODE switch to desired align mode.
3.	Set NAV MODE switch to INS. Verify system in INS (IN acronym on TID). Cycle NAV MODE switch to OFF and back to desired alignment mode.

Failing to follow above procedures when reinitializing a fine alignment will result in severely degraded alignment quality.
To reinitialize the program during coarse align, the RIO has to unselect GND ALIGN, re-enter LAT and LONG and reselect GND ALIGN. 


Stored Heading Alignment 
^^^^^^^^^^^^^^^^^^^^^^^^

A feature of the INS that allows for quick-reaction response is the stored-heading alignment.
The aircraft has to be parked and tied down in the alert position (wheel-chocks in DCS) for this procedure to be successful.
Additionally the aircraft heading has to be stored with a reference alignment before the aircraft is being powered down (and back up again). 

When the aircraft is powered back up, the system takes less than 2 minutes to align the INS from the stored heading, while providing almost the same accuracy like a full, fine ground or carrier alignment.
When align is selected and a reference alignment is available, an ASH acronym for automatic stored heading will be displayed on the TID and STORED HDG ALIGN will illuminate on the CAP.
The ASH acronym tellsl the RIO that a stored heading has been entered automatically. 

No further action from the RIO is needed, ASH align will continue and ASH will remain on the TID as an advisory.
Pressing once on the STORED HDG ALIGN on the CAP will end the ASH align and initiate normal alignment.
The ASH acronym will disappear. Pressing the STORED HDG ALIGN a second time will reinitialize the stored heading alignment, however ASH won’t be displayed on the TID anymore. 

:Note: STBY/READY lights should be monitored for simultaneous illumination. If simultaneous illumination appears after 42 to 45 seconds, a failure has caused the alignment to reinitiate and may result in an erroneous alignment. The RIO must turn NAV MODE switch to OFF for 1 second, then restart the alignment following normal ground or carrier alignment procedures.

The reference alignment can be done with either internal or external power.
To do a reference alignment, enter the latitude and longitude via the CAP into the own-aircraft file.
This can be achieved by an automatic transfer from homebase entry into own-aircraft before selecting GND ALIGN, or entry into own-aircraft file after GND ALIGN has been selected. 

The aircraft’s latitude and longitude can be entered into homebase and transferred into own-aircraft file through the following steps:

1. Set the NAV MODE switch to GND ALIGN.
2. Select CAP category TAC DATA.
3. Depress HOME BASE and enter aircraft longitude and latitude via the CAP data entry buttons.

Aircraft latitude and longitude can be entered directly through the following steps:

1. Set the NAV MODE switch to either OFF or GND ALIGN.
2. Select CAP category NAV.

Depress OWN A/C and enter aircraft longitude and latitude via the CAP data entry buttons.

:Note: Depressing OWN A/C hooks own aircraft. If longitude and latitude is entered with the NAV MODE switch set to OFF, own aircraft must be hooked when the NAV MODE switch is set from OFF to GND ALIGN again. Be aware that whatever has been hooked (OWN AC or HB) will provide the data that is entered when NAV MODE is set from OFF to GND ALIGN.

For a reference alignment, alignment has to reach fine align complete.
Both CVA ALIGN and GND ALIGN can be used to establish a reference alignment. The reference alignment is complete when a dot appears in the diamond. 

To establish a reference alignment follow these steps:

1.	WCS switch - STBY.
2.	NAV MODE - CVA or GND.
3.	DATA LINK - ON (CV ops only).
4.	D/L MODE - CAINS/WAYPT (CV ops only).
5.	Reference alignment continues to fine align complete.

To store the reference alignment:
6.	NAV MODE switch to INS. 
7.	WCS - OFF.
NAV MODE - OFF. 

:Note: Unstable current or temporary loss of power will cause the CAINS to be deselected and will be indicated by a flashing HS acronym. A reference alignment cannot be done through a handset alignment, even if continued to fine align complete. For a successful reference alignment the aircraft must not move and the parking brake must not be cycled after the reference heading has been stored. For a valid reference alignment, it isn’t necessary to switch NAV MODE to INS, instead it can be switched directly to OFF from either CVA or GND ALIGN. 


Catapult Alignment 
^^^^^^^^^^^^^^^^^^

The CAT ALIGN mode is used to prevent suspend align when positioned on the catapult and the parking brake bas been released.
The purpose of the catapult align mode is to provide normal CVA ALIGN as long as possible.
When CAT ALIGN is selected, large roll, pitch, speed and heading changes of the ship can cause the program to automatically switch to INS.


Navigational Controls and Displays
==================================


Navigational Displays 
---------------------

Tactical navigation information is displayed on the VDIG, MDIG, and BDHI. The type of information displayed is determined by the flight mode and steering command selected.
System navigation information is displayed on the TID and HSD. The table below gives a summary of available outputs for each display.
Refer to the navigation and steering mode section for more detailed presentations of each navigation mode. All displays show navigation information with respect to magnetic north. 

+----------------------------------+-----------------------------------------------+
| Navigation output                | Display                                       |
|                                  +------------------------------+----------------+
|                                  | Pilot                        | RIO            |
+==================================+==============================+================+
| ADF Bearing                      | HSD, BDHI                    | MDI, BDHI      |
+----------------------------------+------------------------------+----------------+
| Corrected Pressure Altitude      | HUD, Altimeter               | TID            |
+----------------------------------+------------------------------+----------------+
| Bearing to Destination           | HSD                          | MDI, TID       |
+----------------------------------+------------------------------+----------------+
| Commanded Course to Destination  | HSD                          | MDI            |
+----------------------------------+------------------------------+----------------+
| Commanded Heading to Destination | HSD, VDI                     | MDI            |
+----------------------------------+------------------------------+----------------+
| Commanded Altitude and Airspeed  | VDI                          |                |
+----------------------------------+------------------------------+----------------+
| Groundspeed                      | HSD                          | MDI, TID       |
+----------------------------------+------------------------------+----------------+
| Ground Track                     | HSD                          | TID            |
+----------------------------------+------------------------------+----------------+
| Latitude and Longitude           | HSD (TID repeat)             | TID            |
+----------------------------------+------------------------------+----------------+
| Magnetic Heading                 | HUD, VDI, HSD, BDHI          | MDI, BDHI, TID |
+----------------------------------+------------------------------+----------------+
| Magnetic Variation               | HSD (TID repeat)             | TID            |
+----------------------------------+------------------------------+----------------+
| Range to Destination             | HSD                          | MDI, TID       |
+----------------------------------+------------------------------+----------------+
| Roll and Pitch                   | HUD, VDI, SAI, HSD           | SAI, TID, DDD  |
+----------------------------------+------------------------------+----------------+
| Steering Error to Destination    | VDI, HSD                     | MDI            |
+----------------------------------+------------------------------+----------------+
| TACAN Deviation                  | HUD, VDI, HSD                | MDI            |
+----------------------------------+------------------------------+----------------+
| TACAN Range and Bearing          | HUD, BDHI                    | MDI, BDHI      |
+----------------------------------+------------------------------+----------------+
| Time to Go                       | HSD (TID repeat)             | TID            |
+----------------------------------+------------------------------+----------------+
| True Airspeed                    | HSD, Airspeed Mach indicator | MDI, TID       |
+----------------------------------+------------------------------+----------------+
| True Heading                     | HSD (TID repeat)             | TID            |
+----------------------------------+------------------------------+----------------+
| Vertical Speed                   | HUD, VSI                     |                |
+----------------------------------+------------------------------+----------------+
| Wind Speed and Direction         | HSD                          | MDI, TID       |
+----------------------------------+------------------------------+----------------+


Navigational Controls
---------------------

To control the INS, use the navigation control and data readout panel and the computer address panel.
See :ref:`TID` and Associated Controls and :ref:`CAP` for a more detailed description. 

The desired operation mode, alignment mode and destination point can be selected at the navigation control and data readout panel.
The CAP allows to enter navigation data and the selected information to be displayed on the TID.
The CATEGORY switch on the lower end of the panel determines the function of the MESSAGE button.
The categories used for navigation are NAV and TAC DATA. The STBY and READY advisory lights on the navigation control and data readout panel indicate the status of the alignment program and navigation system.

Failure indicators for the main components of the navigation system are on the caution/advisory light panels in both cockpits,
however the NAV COMP and IMU indicator are only present on the RIO cockpit caution/advisory light panel.

The pilot displays (HUD, VDI, and HSD) and the RIO multiple display indicator are controlled with either the pilot display control panel or the multiple display indicator control panel.

:Note: For detailed information on CAP operation, refer to :ref:`CAP`.


Navigation Category
^^^^^^^^^^^^^^^^^^^

If the CATEGORY switch is in NAV, the following matrix appears in the MESSAGE windows:
   
+-----------+----------+
| | OWN     | | TACAN  |
| | A/C     | | FIX    |
+-----------+----------+
| | STORED  | | RDR    |
| | HDG     | | FIX    |
| | ALIGN   |          |
+-----------+----------+
|           | | VIS    |
|           | | FIX    |
+-----------+----------+
| | WIND    | | FIX    |
| | SPD HDG | | ENABLE |
+-----------+----------+
|           | | MAG    |
|           | | VAR    |
|           | | (HDG)  |
+-----------+----------+

Each window has a designated button. Pressing this button tells the WCS computer which function of the matrix to use.
If OWN AC, WIND, or MAG VAR is pressed, data can be entered and displayed for each. 

Own-aircraft airspeed and magnetic heading are displayed on the TID. If own-aircraft data file is hooked using the TID cursor, heading will be magnetic.
If OWN AC button was selected (hooked) via the CAP, own-aircraft true heading, speed (groundspeed), altitude, or course can be displayed on the TID by depressing the appropriate prefix button:
 
1. LAT or LONG button will display own-aircraft latitude and longitude. 
2. SPD button displays ground speed and magnetic course. 
3. True airspeed and true heading are displayed when the HDG prefix button is depressed. 
4. Altitude is displayed on the left TID readout (right is blank) when the ALT button is used. 
5. When pressing the WIND button, the TID displays present wind speed (left readout) and magnetic direction (right readout). 
6. The MAG VAR button is used for displaying and entering magnetic variation (MAG VAR).

In order to change own-aircraft lat, long, true heading or altitude, press the according prefix button followed by the desired quantity.
During entry the data is displayed on the upper middle readout on the TID. At the same time, existing data is being displayed on the two lower readouts.
If new data is correct, the RIO can press the ENTER button and the new values will appear on the readout. 

To change wind data entry, press the WIND button, then either the SPD or HDG prefix button and the appropriate numbers: knots (0 to 512) for speed or degrees (000 to 359) for magnetic direction.
The multiple display indicator data readout of WIND direction is always displayed as true.

:Note: In the INS mode, wind is calculated and updated constinously. The manual entry of wind is ignored by the wind calculations even though the system accepts the entry.

Depressing the MAG VAR button displays alternating values of computed MAG VAR (vC) and manual MAG VAR (vM) on the left readout and displays magnetic heading (MH) on the right readout.
The two values alternate every 2 seconds. On the CAP sign/direction buttons, plus (+) corresponds to east variation and minus (-) to west variation.

For manual MAG VAR, press the MAG VAR button. Press HDG, E, or W, the angle in degrees and tenths, and ENTER. Tenths of a degree must be entered even if zero.
The TID displays including the NAV GRID will shift appropriately. Computed MAG VAR is constantly calculated in the AWG-9 by comparing the IMU’s true heading with the magnetic heading from AHRS.
This difference is saved as computed MAG VAR. The table below shows the MAG VAR source used by the computer for displays and CAP entries.

Computed MAG VAR and manual MAG VAR are compared by the AWG-9 computer.
If they differ by a certain value, the acronym MV will alternate with the IN or IM navigation mode acronym on the TID and HSD. The acronym is cleared when the difference falls below 5°.

+-------------------------------------------------------------+--------------------------------------------+
| Condition                                                   | MAG VAR source                             |
+=============================================================+============================================+
| COMP mode selected.                                         | Manual MAG VAR (vM).                       |
+-------------------------------------------------------------+--------------------------------------------+
| RIO updating manual MAG VAR after AHRS selection.           | Manual MAG VAR (vM).                       |
+-------------------------------------------------------------+--------------------------------------------+
| RIO updating manual MAG VAR after IMU or AHRS failure.      | Manual MAG VAR (vM).                       |
+-------------------------------------------------------------+--------------------------------------------+
| All other situations.                                       | Current or last computed MAG VAR (vC).     |
+-------------------------------------------------------------+--------------------------------------------+
| If selection of AHRS/AM occurs and no update (or re-entering of same value) occurs last vC will be used. |
+----------------------------------------------------------------------------------------------------------+

:Note: When operating in SLAVED or COMP mode near a magnetic disturbance, such as aboard a carrier, the MV acronym should be expected to appear.

The table below shows error source analysis and response to the MV acronym appearing in flight.

+------+------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Step | Condition                                                                    | Action                                                                                                                   | Result                                                                                                                                                                                                 |
+======+==============================================================================+==========================================================================================================================+========================================================================================================================================================================================================+
| 1    | MV alternates with selected nav mode on TID without a failure light present. | Re-enter new corrected MAG VAR.                                                                                          | MV acronym should dissappear.                                                                                                                                                                          |
+------+------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 2    | MV remains after step 1 action.                                              | Compare heading on VDIG with standby compass while in INS, IMU/AM or slaved compass mode and level unaccelerated flight. | If headings correlate, problem is likely in the IMU. Continue with step 3.                                                                                                                             |
+------+------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 3    | Source of suspected vC error is the IMU.                                     | Pilot switches to COMP mode on AHRS controller and again compares headings.                                              | If the headings still correlate, the IMU heading is wrong.                                                                                                                                             |
+------+------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 4    | IMU heading is wrong.                                                        | RIO selects AHRS/AM and enters correct MAG VAR.                                                                          | MV acronym should dissappear.                                                                                                                                                                          |
+------+------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 5    | The VDIG does not agree with the standby compass in step 2.                  | Syncronize AHRS with depression of the HDG button. If not possible set AHRS to COMP mode.                                | If now in COMP mode all computer and displays will use IMU true heading with manual MAG VAR. The MV acronym might not dissappear and the BDHI using the MAD might not be correct depending on failure. |
+------+------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+


Tactical Data Category
^^^^^^^^^^^^^^^^^^^^^^

If the CATEGORY switch is in TAC DATA, the following matrix appears in the MESSAGE windows:

+-------+--------+
| | WAY | | HOME |
| | PT  | | BASE |
| | 1   |        |
+-------+--------+
| | WAY | | DEF  |
| | PT  | | PT   |
| | 2   |        |
+-------+--------+
| | WAY | | HOST |
| | PT  | | AREA |
| | 3   |        |
+-------+--------+
| | FIX | | SURF |
| | PT  | | TGT  |
+-------+--------+
| IP    | | PT   |
|       | | TO   |
|       | | PT   |
+-------+--------+

The functions in this category have a TID symbol each, except the PT to PT FUNCTION.
When pressing any one of these MESSAGE buttons, the TID symbol brightens and the activated MESSAGE push button illuminates, indicating a successful hook.
The RIO can then use the functions for which hooking was required. Data regarding the hooked point can be displayed on the TID by pressing the according prefix button.
Additionally, the latitude, longitude, and altitude of the hooked point can be entered by pressing either the LAT, LONG, or ALT button followed by the desired numbers.
Like before, existing data is being displayed on the two lower readouts. If the new data is correct, the RIO can press the ENTER button and the new values will appear on the readout. 


Navigational Caution Lights 
---------------------------

In addition to the NAV COMP, AHRS and IMU lights mentioned above, the RIO caution/advisory panel contains two other advisory lights, C&D HOT and AWG-9 COND,
that are indirectly related to navigation system operation. Illumination of either or both of these lights could mean degraded navigation operation and would require further investigation of the WCS.


Navigation Fix Update
=====================

An error of latitude or longitude in the computer position of the aircraft can be corrected by a navigation fix update.
Updating is especially important in the backup modes (AHRS AM and IMU/ AM) because of the estimated winds and magnetic variation changes.
A nav fix is done via a ground-reference-point (latitude and longitude) position.
The range and bearing of this position to the present aircraft position is used to update or correct existing values.
The nav system may be updated by either a radar fix, a TACAN fix, or a visual fix.

Before performing a nav fix, the latitude and longitude of the desired update point (radar, TACAN, or visual) must be stored in one of eight navigation point locations
(three WPs, FIX PT, HOME BASE, HOST AREA, DEF PT, and IP). This data can be stored prior to flight by data link or by manual insertion. Then follow these steps: 

1.	Hook the Waypoint you choose to select for the nav fix. 
2.	Check the stored latitude and longitude on the TID. 
3.	Rotate the CATEGORY switch to NAV and select the desired type of update.

Note that updating the position while in INS, and to a lesser degree while in IMU, can introduce a greater navigational position error than already present,
in particular if radar fix is used to update the nav system. Updates with a visual or TACAN fix provide reasonable accuracy (assuming a good MAG VAR during TACAN updates).
Updating your nav system via a nav fix should be primarily used in the AHRS mode. 


Radar Update 
------------

A RDR FIX may be selected before or after positioning the DDD cursors.
If the RDR FIX button is depressed, the computer computes the present position of the aircraft by measuring the range and bearing from the selected point.
The delta between the computer position and the position determined by the INS is then displayed on the TID.
If entry of this delta into the navigation computations is desired, press the FIX ENABLE button.
If the delta does not appear to be correct, the computer and the readout can be cleared by pressing the RDR FIX button. The fix may then be attempted again.
The RIO should also perform periodic checks of own aircraft system altitude and update the altitude if necessary.

Radar updating is performed as follows:

1. TID CURSOR/CAP - Hook Desired Navigation Point for Update.
2. PULSE SRCH button - Depress.
3. On sensor control panel: STAB switch - IN. EL BARS switch - 1. AZ SCAN switch - As Desired.
4. RDR FIX button - Depress.
5. DDD CURSOR button - Depress.
6. Action switch - Half Action (first detent).
7. Cursor is displayed on DDD.
8. Manipulate hand control DDD cursor over desired ground map point.
9. Action switch - Full Action and Release. (This will cause the DDD cursor to remain at the selected position.
10. Observe the delta for LAT and LONG on TID.
11. If readouts are unsatisfactory, deselect RDR FIX and repeat steps 4 through 12.
12. FIX ENABLE button - Depress.

:Note: To clear previous hooked DDD cursor position, go to half action and then release prior to initiating full action for new position hook.


TACAN Update
------------

To perform a nav fix by TACAN, requires that a prestored waypoint shares identical LAT and LONG values with the TACAN station that will be used for the fix.
Select the TACAN channel for the desired station and verify by listening to the coded identifier tone in the headset. 

Press the TACAN FIX button to update the aircraft position from a TACAN station.
The WCS computer then calculates the own aircraft position error based on the range and bearing from the TACAN station.
The delta is then entered in the same manner as with a radar fix.

Perform a TACAN fix following these steps:

1. Select a TACAN channel whose latitude and longitude correspond to an update point.
2. Hook desired update point (WAYPT 1, FIX PT, HOME BASE, etc.).
3. CATEGORY switch - NAV.
4. TACAN FIX button - Depress.
5. Observe present position delta readout.
6. If delta is unsatisfactory, deselect TACAN FIX and repeat steps 2 through 7.
7. FIX ENABLE button - Depress.

:Note: During a TACAN FIX, the MAG VAR must be the same as the TACAN station magnetic variation, or the update will be in error. Given a TACAN station with a range of 100 NM from ownship, a 1°MAG VAR error introduces a 1.74nm error into the ownship’s TACAN update.


Visual Update
-------------

To perform a visual fix, fly over a prestored waypoint and press the VIS FIX button. Estimate your timing, because the aircraft nose and fuselage can obscure the fix point during overflight.
It is also difficult to estimate when directly overhead a waypoint if the aircraft altitude is greater than 10.000 feet. The delta for the visual fix is displayed on the TID. Enter the delta by pressing FIX ENABLE. 

To perform a  visual fix use the following steps:

1. Hook desired update point (WAY PT, HB, IP, etc.).
2. Select NAV category on CAP.
3. Overfly the selected prestored point and when over the point, depress the VIS FIX button on the cap.
4. If the delta is not satisfactory, press VIS FIX again to clear the delta and repeat from step 1. 
5. If a satisfactory delta is displayed, depress the FIX ENABLE button; this causes the delta correction of own-aircraft position to be inserted into the computer.


Data Link Update
----------------

To perform a data link update of the aircraft INS to the TDS frame of reference, the aircraft and TDS must share a prebriefed waypoint, identical in latitude and longitude.
Enter this LAT/LONG data into the HOST AREA pseudo target file. The TDS will uplink the common reference point as a data link waypoint.
When the aircraft and TDS INS systems agree, the data link waypoint and host area symbols will be superimposed on the TID. If they drift apart, the two pseudo targets on the TID will drift as well. 

To perform an update via data link, use the following steps:

1. Hook data link waypoint corresponding prebriefed reference point.
2. Select NAV category on CAP.
3. Overfly the hooked data link waypoint. When immediately over the point, press VIS FIX button on CAP.
4. Observe delta LAT and LONG on TID.
5. If deltas are satisfactory and update is desired, depress FIX ENABLE.

After a data link update, HOST AREA and data link waypoint should be superimposed on the TID again.


Fighter-to-Fighter Navigation Update
------------------------------------

Net aircraft that use fighter-to-fighter data link can update their navigation system in the FF/DL mode.
To update LAT/LONG hook the net aircraft symbol of an aircraft that is in close proximity and select F/F NAV UPDATE on the CAP.
This will enter the hooked aircraft’s coordinates into the INS as own-aircraft coordinates.
To update the nav system on an aircraft that is not close, first obtain a radar STT on that aircraft, hook the STT-ed aircraft on the TID and then press F/F NAV UPDATE on the CAP. 

:Note: By updating to the selected aircraft’s INS, its calibration/drift can potentially introduce a larger error into your own INS. Both aircraft will share the same error though.


Position Marking
----------------

To mark the position of a pulse radar target, a visual target or a TACAN station to be displayed on the TID, use the SURF TGT position in the TAC DATA category.
Once displayed on the TID, latitude, longitude, range, bearing, and steering data are available, using the CAP or the navigation destination control or both.

:Note: Do not use the position SURF TGT to update the navigation computer. The surface target position symbol is repositioned with respect to own aircraft instead of own aircraft being updated in reference to the surface target.

To mark a pulse radar target on the TID, follow these steps:
 
1. Select the SURF TGT button. 
2. Establish the location via a radar fix. 
3. Select the DDD CURSOR and use the pulse system for radar mapping. 
4. Designate the point of interest by placing the cursor over that point. 
5. Selecting full action.
6. Select RDR FIX.

This will display a delta from the hooked point to the surface target. Ignore the delta and select FIX ENABLE to position the surface target over the previously identified radar position.
A very accurate readout of latitude, longitude, and steering information will become available for the Surface Target Waypoint. 

The method for visual targets is the same, but a visual fix is required. You can also mark a  TACAN station by using the same method and following the TACAN fix procedures.
After completing any of the above procedures, the SURF TGT symbol will be displayed on the TID at the computed latitude and longitude coordinates.

The surface target symbol can also be used as a destination point. If its position has been previously entered, the symbol will appear on the TID.
One method for special position marking is to hook any point on the TID and select SURF TGT. The surface target symbol now appears over the hooked point and its new position will be stored in the WCS computer.


Attitude and Heading Reference Set (AHRS)
=========================================

The AHRS provides backup pitch and roll information to the CSDC and WCS computer, if attitude data from the INS is not available.
At any time, the AHRS provides prime magnetic heading to the BDHI for direct analog display and to the CSDC where it is converted to digital information for the VDIG, MDIG, and the WCS.
Additionally the autopilot gets its heading reference from the AHRS.

:Note: The only analog cockpit display for magnetic heading is the BDHI. The HUD, VDI, TID, HSD, and multiple display indicator are digital and receive their inputs from the AHRS through the CSDC. Thus. in case of a CSDC failure, the only magnetic heading is displayed on the BDHI.

The main assemblies of the AHRS are a two-gyro platform (vertical and directional displacement gyros), an electronic control amplifier, a compass controller, a magnetic azimuth detector and an electronic compensator. 

In case of an IMU failure, the CSDC automatically selects AHRS attitude information for display and autopilot control.
The directional gyro smoothens the flux valve heading signal in the SLAVED mode or provides a direct heading reference in the DG mode. The resulting heading is transmitted to thee BDHI, the CSDC, and the WCS.

:Note: * In the INS nav mode IMU true heading is used and must be converted to magnetic heading by adding or subtracting the magnetic variation to have a backup magnetic value, if needed. Under normal operation, AHRS magnetic heading is used for all displays.
       * The AHRS is unlimited in roll, but limited to 82° in pitch. If the pitch attitudes exceeds ±82, it will precess. A gradual precession in roll, pitch, and heading can also be expected in sustained turns at slow rates (less than 6° per minute). Large roll and pitch precession errors can be corrected by flying straight and level, without accelerating, and pressing and holding the HDG set button on the compass controller panel. Pressing and holding this button corrects precession errors at a rate of 12° per minute minimum. The HDG set button should be held for a least 3 minutes. Before repeating the 3-minute cycle, it should be released for at least 1 minute.


Compass Controller Panel
------------------------

Use the compass controller panel to select one of three compass modes when the AHRS is used as heading reference. For description see Compass Control Panel.

When magnetic heading references are unreliable, operate the system in the DG mode. When magnetic reference is reliable, operate the system in the SLAVED mode.
When DG or SLAVED modes are inoperable, the COMP mode can be used for emergencies.

:Note: If both the IMU and the AHRS fail, pitch and roll attitude indications from the HUD, TID, and DDD will be removed, and the IMU and AHRS advisory lights illuminate. Select COMP mode on the compass controller panel to possibly restore valid magnetic heading information to the HUD, VDI, and HSD, the AHRS advisory lights will go off. Disregard the invalid pitch and roll attitude information that will be restored to the HUD and VDI.


AHRS Operation
--------------

As a compass, the AHRS operates in three modes:

* The directional gyro (DG) mode provides a free-gyro heading reference with Earthrate correction.
* The SLAVED mode provides a gyrostabilized magnetic heading
* And the compass (COMP) mode provides an emergency magnetic heading from the compass transmitter only.

If the COMP mode is selected, the AFCS is automatically disengaged to prevent erratic steering commands.
The COMP mode cannot provide a sufficiently stable heading signal for AFCS operation and should only be used for emergencies.
To erect the AHRS, press and hold the HDG set button on the compass controller (3 minutes on, 1 minute off cycle) until the needle of the synchronous indicator is bracketing the null mark.

If nav mode is set to INS or IMU/AM, attitude displays will continue to indicate properly when the AHRS pitch limit of 82° is exceeded,
but all displays of magnetic heading will be in error and the advisory lights may be on or off.
If this is encountered, accurate and stable magnetic heading displays on the HUD, VDI, HSD, TID, and multiple display indicator can be regained immediately by inserting the proper MAG VAR via the computer address panel.


TACAN System (AN/ARN-84)
========================

The TACAN system indicates a slant range accurate to within 0.1 NM and a bearing of 0.5° to any surface station selected.
Slant range to airborne stations is provided with an air-to-air (A/A) mode. Operating range is approximately 300 NM, if line of sight is given.

The system offers 126 operating channels in each of 2 modes.
Receiving frequencies for surface-to-air operation are 962 to 1024 MHz and 1151 to 1213 MHz, for air-to-air operations, the frequencies are from 1025 to 1150 MHz.
The TACAN uses two antennas that automatically switch in a 6-second interval until a threshold signal is received.
Note that the TACAN can take up to 2 minutes to warm up, when turned on for the first time after a cold start. 


TACAN Modes
----------- 

The system is capable of receiving valid signals from a ground station simultaneously with 99 other aircraft in either REC or T/R mode. 

In the A/A mode, the system is capable of transponding with each of five cooperating aircraft, indicating slant range information to each, but the system will interrogate and lock on to only one at a time.

Both pilot and RIO share Identical TACAN control panels on the left consoles.
Individual TACAN CMD buttons on both the pilot and RIO left consoles provide transfer of TACAN control between pilot and RIO.
Control of TACAN is indicated by a flip-flop indicator in each cockpit showing PLT (pilot) or RIO. Either crewman may adjust the audio level of the identification signal.
For TACAN panel description see :ref:`TACANcontrol`.


TACAN Displays
--------------

Bearing and distance to a TACAN station is displayed on the BDHI, the HSD, and the multiple display indicator.
Deviation to the TACAN station is displayed on the HUD and VDI (VDIG) and the HSD and multiple display indicator.

The MDIG displays TACAN bearing marker, deviation ticks, range-to-TACAN station, and course.
The HUD and VDI display provide a TACAN deviation bar, which is coded, on the HUD: solid line - TO station, dashed line - FROM station and on the VDI: bright bar - TO station, dark bar - FROM station.

TACAN information is also displayed on both the pilot’s and RIO’s identical BDHI.
The bearing and distance functions of the BDHI come alive when the TACAN mode select switch is set to T/R. In the REC and T/R modes,
magnetic bearings are displayed by the No.2 (large) needle, which unlocks and enters a search mode (spins) whenever bearing information is unreliable.

Range information received in T/R or A/A mode, is displayed in nautical miles on the distance counter.
An OFF flag covers the counter window if the range information is unreliable or not available.
TACAN information is also displayed on the pilot HSD, HUD, and VDI and on the RIO multiple display indicator in other navigation modes.


TACAN Operation
---------------

If after approximately 2 minutes warm up time the range and bearing indications continue to search when a reliable station is selected, check circuit breakers should or select another station.
The system has a memory feature so that tracking will not be interrupted by momentary disruption of received signals.

A range signal that is lost and has been previously tracked for at least 10 seconds, will be sustained by memory for 9 to 12 seconds.
A bearing signal that has been tracked for at least 15 seconds will be retained for 3 to 8 seconds after signal loss. This allows for automatic antenna switching without a loss of TACAN displays.

During the minimum warmup time, failure indications and erroneous readouts should be disregarded and self-test results may be inconclusive.


TACAN BIT 
---------

The TACAN system has a built in test that continuously monitors the TACAN functionality and provides an interruptive self-test.
To start a 22-second interruptive self-test, use the momentary button (BIT switch) and monitor the GO (green) and NO-GO (amber) status lights.

:Note: A BIT performed on TACAN stations within 2 NM can give an invalid indication. If a TCN acronym or NO-GO response is observed while tuned to a local station, along with normal TACAN azimuth and range, the acronym and/or the NO-GO should be disregarded.

The normal BIT sequence is as follows:

1. Set MODE switch to T/R, allow 2 minutes for warmup.
2. Press and hold BIT button.
3. Both GO and NO-GO lights illuminate (light test).
4. BDHI range OFF flag appears.
5. BDHI bearing needle rotates counterclockwise.
6. Release button; both lights go out (self-test starts).
7. After 5 to 6 seconds, BDHI and HSD range reads 2 NM, BDHI and HSD bearing reads 4° (identify TACAN station).
8. After 22 seconds, if good, green GO light illuminates, if bad, amber NO-GO light illuminates.


Bearing Distance and Heading Indicator (BDHI)
=============================================

A BDHI is on the right side of the pilot and RIO instrument panels, see :ref:`BDHIindicator`.
It displays aircraft magnetic heading with navigation bearing data and range information.
The controls on the compass panel set the BDHI compass card to operate in a slaved or nonslaved (FREE DG) compass mode.
A fixed index marker at the 12-o’clock position indicates the magnetic heading.

Two servo-driven bearing needles show magnetic bearings to the selected UHF (ADF) and TACAN stations.
The No.1 (single bar) needle receives signals from the UHF (ADF) system, the No.2 (double bar) needle receives signals from the TACAN coupler.

The No.1 needle will continue to point toward the signal source, even if the compass card is misaligned or a malfunction exists,
but the bearing to the station is displayed on the indicator as a relative bearing and the top of the indicator bezel will show 000°.
The No.2 needle will also continue to show the magnetic bearing to the selected station or may revert to the search mode.


Radar Altimeter System (AN/APN-194)
===================================

The radar altimeter is a low-altitude (0 to 5,000 feet), pulsed, range-tracking radar that measures the surface or terrain clearance below the aircraft.
Altitude information is obtained by radiating a short-duration RF pulse from the transmit antenna to the Earth’s surface and measuring elapsed time until RF energy returns through the receiver antenna.
The altitude is continuously presented to the pilot on an indicator dial in feet AGL. If either Landing or Take off mode is selected on the PDCP, radar altitude is displayed on the HUD from 0 to 1,400 feet.

The radar altimeter can operate in two modes. In the search mode, the system successively examines increments of range until the complete altitude range is searched for a return signal.
When a return signal is detected, the system switches to the track mode and tracks the return signal to provide continuous altitude information.

If the radar altimeter drops out of the track mode, an OFF flag appears and the pointer is hidden by a mask.
The altimeter will remain inoperative until a return signal is received, at which point the altimeter will display altitude above ground again.
Reliable system operation in the altitude range of 0 to 5,000 feet permits close altitude control at minimum altitudes.
The system will operate normally in bank angles up to 45° and in climbs or dives except when the reflected signal is too weak.

The system includes a height indicator (altimeter), a test light on the indicator, a low-altitude warning tone,
a radar receiver-transmitter under the forward cockpit, and two antennas (transmit and receive), one on each side of the IR fairing, in the aircraft skin.
During descent, the warning tone is heard momentarily when the aircraft passes through the altitude set on the limit index.
When the aircraft is below this altitude, the red low-altitude warning light on the indicator will stay on.

:Note: If radar altitude is unreliable, only the OFF flag is present.

The radar altimeter has a minimum warmup time of 3 minutes. During warmup, failure indications and erroneous readouts should be disregarded.

Radar Altimeter
---------------

The only controls for the system are on the :ref:`RADALT` on the pilot instrument panel.
The indicator displays radar altitude above the Earth’s surface on a single-turn dial that is calibrated from 0 to 5,000 feet in decreasing scale to provide greater definition at lower altitudes.
The control knob in the lower left corner of the indicator is a combination power switch, self-test switch, and positioning control for the low-altitude limit bug.


Altimeter Bit 
-------------

To energize the self-test circuitry press and hold the control knob and the green test light will illuminate, the indicator will read 100 ±10 feet,
and the HUD altitude scale should read approximately 100 feet. If the indicator passes below the altimeter limit bug setting, the aural and visual warnings are triggered.
To resume normal operation simply release the control knob again.


Low-Altitude Audio Warning
-------------------------- 

A low-altitude 1,000-Hz tone provides an aural warning, modulated at two pulses per second, lasting for 3 seconds.
The tone is played to both crew members when the aircraft descends below the altitude set on the low-altitude limit bug.


Navigation System Integration
=============================

Navigational Modes
------------------ 

3 navigational modes exist in the F-14. The primary navigation mode is inertial and is achieved by the INS, employing the IMU (and PSU) and the CSDC.
INS provides the flight crew with own-aircraft position, velocity, attitude, and heading information. 

The second mode is the inertial measurement unit/airmass (IMU/AM) mode. It serves as a backup navigation mode and entry into this mode permanently degrades INS platform heading alignment.

The third mode is the AHRS/air mass (AHRS/ AM) mode, which utilizes the AHRS attitude and heading information in place of the IMU and also serves as an additional backup mode if both INS and IMU/AM modes fail.


Inertial Navigation Mode 
^^^^^^^^^^^^^^^^^^^^^^^^

INS mode should be entered following an alignment. The READY light illuminates in GND and CVA alignment positions and stays on after launch in CAT alignment, indicating completion of alignment.
If the INS mode is selected, both the STBY and READY lights will go out.
However, if the INS mode is selected before the caret turns into a diamond, both the STBY and READY lights will illuminate and the system will revert to the IMU/AM backup mode.

In the INS mode, IMU and CSDC provide the following outputs:

1. Aircraft latitude and longitude
2. Aircraft magnetic or true heading (depending on CAP prefix button selected)
3. System altitude (barometric damped inertial altitude)
4. Platform wander angle
5. Velocity components (x, y, z)
6. Vertical acceleration.

Aircraft magnetic heading is derived from the AHRS. If the AHRS fails, magnetic heading is then derived by subtracting the MAG VAR from the true heading.
The available readouts on the TID can display latitude, longitude, ground speed, ground track, true airspeed, wind (speed and direction), MAG VAR, altitude, and aircraft true or magnetic heading. 

The WCS computer makes calculations in true north coordinates for steering and uses the magnetic heading input from the AHRS to update the value.
Wind is computed from the difference between inertial velocities and air mass velocities.
The WCS and CSDC also provide the steering and cueing functions required for display to the flight crew.
The information can be displayed on the TID, HSD, multiple display indicator, HUD, and VDI, depending on the navigation and steering modes selected by the flight crew.

The available destination or navigation points are waypoints 1, 2, or 3, fix point, home base, surface target, and initial point and may be designated by the DEST switch on the TID.

Additionally, navigational points (latitude and longitude) may also be inserted by the RIO using the CAP or by datalink message (when on the deck) using either cable or the RF link. 

The course to set (heading to a selected navigational point), range, bearing, and time-to-go to a point are based on great circle calculations.
The time-to-go assumes the aircraft is flown at its present groundspeed along the great circle heading to the selected point.

:Note: If INS fails, the RIO should verify MAG VAR calculated and WIND data and update via manual entries as required.


IMU/AM Navigation Mode 
^^^^^^^^^^^^^^^^^^^^^^

If a failure of the navigation computer section of the CSDC or certain failures in the IMU are detected, the IMU/AM mode is entered automatically.
The failures are indicated by the STBY and READY lights illuminating and the NAV COMP light illuminating on the RIO CAUTION/ ADVISORY panel.

The switch to IMU/AM is indicated by the IN acronym on the TID and HSD changing to IM.
The RIO should select IMU/AM on the NAV MODE switch to extinguish the STBY and READY lights.
The IMU/AM mode can be entered manually by selecting IMU/AM with the NAV MODE switch.

If the switch is turned off before selecting IMU/AM mode, the computer cannot enter the IMU/AM mode for approximately 3 to 5 minutes.
This is necessary to allow the IMU to level itself after being turned off.
During these 3 to 5 minutes, the aircraft must remain stationary on the ground or in level unaccelerated flight.
Until the IMU is leveled, the computer will use the AHRS/ AM mode.
If the IMU is level (i.e., alignment past coarse align completed), the entry into IMU/AM will occur immediately upon selection.

:Note: If an alignment past coarse exists with no NAV COMP failure and the RIO switches to IMU/AM, the READY light will flash, indicating that if the switch is not returned to INS within 5 seconds the INS mode cannot be re-entered without completing a new alignment.

The WCS computer performs dead-reckoning navigation in the IMU/AM mode, using heading information from the IMU and true airspeed from the CADC.
The same general navigation functions are performed in the backup mode as for the INS mode. The accuracy of the computer outputs degrades because of the inferior available speed and heading information.

Wind can be applied by either using the wind last computed in the INS mode or wind data manually entered through the CAP.
The IMU heading is equally referenced to the last computed INS heading or to manual entry of true heading data via the CAP. 

:Note: After entering the IMU/AM mode, check wind and MAG VAR values. If MV is in error, enter own-aircraft true heading. If winds are in error, update.


IMU Reset Procedure
"""""""""""""""""""

1. NAV MODE switch - OFF, for a few seconds.

2. NAV MODE switch - IMU.

3. Fly straight and level for 5 minutes.

4. Verify IM acronym.


AHRS/Air Mass Mode 
^^^^^^^^^^^^^^^^^^

The AHRS/AM mode is another backup mode for navigation.
It uses the last known aircraft position, by either taking the last navigation computer value or by manual data entry from the RIO.
It then extrapolates the present position of the aircraft.
AHRS/AM mode is automatically selected if the IMU fails or by switching to AHRS/AM on the NAV MODE switch.
An IMU failure is indicated by the STBY and READY status lights and the IMU advisory light illuminating. Additionally, the attitude status readout on the TID changes to AH.

**WARNING:** The navigation mode will not automatically switch to AHRS/AM upon an IMU failure when the navigation system is in IMU/AM mode with a failed IMU quantizer and NAV COMP advisory light illuminated. Because the VDIG/TID/DDD are displaying invalid IMU attitudes, the NAV MODE switch should be moved to AHRS/AM.

:Note: Although the navigation mode automatically switches to AHRS when the IMU fails, the STBY and READY lights will remain on until the RIO selects AHRS/AM on the NAV MODE switch.

When AHRS/AM is selected on the NAV MODE switch, the AHRS provides heading information required for DR navigation in place of the IMU platform and the CSDC provides barometric altitude,
altitude rate, and true airspeed as in the IMU/ AM mode. To update wind speed and direction and magnetic variation, use the CAP. 

The AHRS can be operated in any of three subheading modes selected on the compass controller panel:

1. SLAVED - Magnetic north referenced (flux value), directional gyro is slaved to flux value, used where reliable magnetic heading reference is available.
2. DG - Free azimuth gyro, compensated for drift because of Earth’s (polar operations), used where magnetic reference is unreliable.
3. COMP - Magnetic north reference direct (flux value), no gyro damping. The HUD, VDI, HSD, and multiple display indicator use manual magnetic variation (vM) automatically in this mode.

The RIO can switch from either INS mode to AHRS/AM mode or from IMU/AM mode to AHRS/AM mode for comparison, without fear of degradation, since the AHRS is a separate system.
This cannot be done with the INS and IMU/AM modes since the IMU is used in both cases and it would result in permanent degradation to the IMU alignment.
In the case of an IMU failure the nav system will automatically operate in the AHRS/AM mode with the navigation and data readout panel in INS,
as long as the WCS computer receives heading from the AHRS and airspeed from the CADC.

:Note: If takeoff is performed in the AHRS/AM mode, MAG VAR and WIND must be manually inserted via CAP for proper navigation computations.

When the platform is aligned and the AHRS/AM backup navigation mode is selected, the STBY light is off but the READY light is on,
indicating that the inertial navigation mode can be selected if desired. The same functions and outputs for display are computed as in INS,
however since different inputs are used for some calculations a degraded navigation performance is to be expected.


Steering
--------

There are two basic types of steering: navigation and attack. Attack steering modes will be covered in the Weapons and Weapons Employment overview. 

Navigation steering is computed on either a great circle course or rhumb line to a fixed point on the Earth’s surface or as a deviation from a selected course or heading.
In general, great circle computations are used for long ranges and rhumb line for short distances (where it is close to great circle course).
The point used for steering can be the RIO’s selected destination (three waypoints, fixed point, identification point, surface target, or home base),
a TACAN station, ADF information, ACLS information, or a data link waypoint.


Flight Modes and Steering Submodes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The pilot can choose between five VDIG display formats (HUD modes) on the pilot display control panel.
These five flight modes are arranged as five vertical, mutually exclusive buttons:

1. Take Off (T.O.)
2. Cruise (CRUISE)
3. Air to Air (A/A)
4. Air to Ground (A/G)
5. Landing (LDG)

:Note: ACM cover open selection overrides all modes, except the T.O. and LDG modes.

Apart from the VDIG displays, the flight mode selections also control AFCS, armament, and WCS logic.
In addition to the essential data such as altitude, vertical speed indicator etc. the VDIG format also provides steering cues.

In each of the flight modes, the pilot can choose between the following five types of steering commands:

1. TACAN (TACAN) 
2. Destination (DEST) 
3. AWL/PCD 
4. Vector (VEC) 
5. Manual (MAN)

The five selections are arranged horizontally along the bottom of the PDCP.
These steering modes determine the display format on the pilot HSD and the RIO multiple display indicator.
The HSD and multiple display indicator present, in a horizontal plane, steering to the selected point.
The HSD follows the five submodes when the pilot places the HSD-MODE switch to NAV.

The RIO can do the same by setting the MODE switch on his multiple display indicator control panel to NAV.
Also, when LDG is selected, the pilot has the option of displaying ICLS or ACL information via switches on the PDCP that can be used to individually and independently select the HUD and VDI for display.
A typical choice would be to select ICLS (SPN-41 /ARA-63) for the HUD and for D/L the VDI.

A/A (air-to-air) and A/G (air-to-ground) modes are further explained in the Weapons and Weapons Employement overview.

:Note: The STEERING indicator drum on the navigation control and data readout panel provides a readout for the RIO to inform him of what steering submode the pilot bas chosen.


Takeoff Steering
""""""""""""""""

To enter the takeoff steering mode, press the T.O. button on the display control panel.
The VDIG will display a vertical speed indicator on the left side and an altitude scale on the right side in the HUD.
Before takeoff, the pilot should check the magnetic heading on top of the HUD and VDI against a known reference (i.e. runway heading and most importantly BRC on the carrier,
due to the large magnetic distortion on the ship). The vertical speed indicator should be used to verify a positive climb after takeoff.

After takeoff, the navigation system normally computes wind and magnetic variation, which are needed for steering. For backup modes, the WCS uses the last computed or RIO-entered wind speed, direction, and magnetic variation.


**Take-Off-TACAN Steering**

The TACAN steering submode works the same, whether used for takeoff, cruise, or landing, by providing the pilot with a TACAN deviation.
The pilot can set the course or TACAN radial with the CRS control on the HSD. The TACAN displays are available on the HUD, VDI, HSD, and multiple display indicator.
The HSD and the CMD display TACAN range and the relative bearing to a selected TACAN station.

To enter the submode, press the TACAN button on the PDCP. After selection of TACAN course, the HUD and VDI display the TACAN deviation symbol and a TO and FROM symbology.
This indicates whether the TACAN course is toward or away from the TACAN station.
On the HSD and multiple display indicator, an arrow on the deviation bar pointing in the same direction as the TACAN course indicates a course toward the station,
an arrow pointing in the opposite direction indicates a course away from the station. On the HUD, a dashed line indicates FROM, a solid line indicates TO.
On the VDI, a dark bar indicates FROM, a bright bar indicates TO.

On the HUD, the deviation symbol moves 3° (linear) in the field of view for a 6° deviation from the selected TACAN radial.
These limits prevent the symbol from leaving the field of view or interfering with the scales on the left and right side.
On the VDI, the deviation symbol is scaled to move 1.5 inches (linear) for a 6° deviation.


**Takeoff Manual Steering**

The manual steering mode is similar to the basic takeoff mode. The mode is entered by pressing the MAN button and selecting a desired course with the CRS control on the HSD.
The navigation system will then display a command heading on the VDI as a small diamond under the magnetic heading scale.


Cruise Steering
"""""""""""""""

To enter the cruise flight mode. press the CRUISE button on the PDCP. There are four steering submodes available during cruise operations: TACAN, destination, manual and vector.
While it is physically possible to press the AWL/PCD steering button on the display control panel, the action is without function in cruise mode.

:Note: Should the AWL/PCD submode be selected while in CRUISE, it will inhibit the display of other steering cues.


**Cruise TACAN Steering**

This submode works in the same way as take off TACAN steering and provides the same readouts and displays to the flight crew as described under take off TACAN steering.


**Cruise Destination Steering** 

To enter the cruise destination steering mode, press the DEST button on the PDCP.
This will provide steering as a command heading symbol on the VDI and HSD to a waypoint selected by the RIO on the navigation control and data readout panel.
The RIO can change latitude/longitude of the destination by hooking the point on the TID and inserting new data.

:Note: * Destination steering to the defended point is provided by the RIO selecting MAN with the TID DEST switch. This option is not available in TARPS.
       * In the destination steering submode, the destination selected by the RIO and the NAV MODE in use will be alternately displayed on the bottom center of the HSD.


.. figure:: /images/general/navigation/cruiseman.png
    
   ECMD showing the navigational display for Cruise with Manual steering selected.

.. figure:: /images/general/navigation/cruisetac.png

   VDI and HSD showing navigational displays for Cruise with TACAN steering selected.

.. figure:: /images/general/navigation/cruisedest.png

   HSD showing navigational display for Cruise with Waypoint 1 set as Destination.


Landing Steering Modes
^^^^^^^^^^^^^^^^^^^^^^ 

To enter the landing steering mode, press the LDG button on the PDCP.
Usually the LDG mode is engaged at any point from marshal point on. In the case of a go around, waveoff or bolter, the pilot can press the T.O. button on the PDCP to engage the take off steering mode. 

The landing mode symbology is in general the same as the takeoff mode symbology.
Exceptions are the addition of angle-of-attack error symbol on the HUD (the E-bracket, referenced towards the displayed aircraft wings and not the velocity vector) and the velocity vector symbol,
as well as 5° pitch increments on the VDI.

:Note: In all landing submodes, a VDIG breakaway symbol can be displayed upon receipt of a D/L waveoff message.

There are three steering submodes available during landing.
These are TACAN, VEC, and AWL/PCD. For the TACAN or VEC submodes of LDG, the HUD, VDI,
and HSD displays are similar to the same submodes in CRUISE except that in LDG the HUD display includes the velocity vector symbol, the radar altitude symbol and the vertical speed indicator symbol.


**AWL Steering**

If ICLS information from the ARA-63 is available at the marshalling area, the pilot can select the AWL/PCD sub mode.
To observe glideslope displays, the HUD and VDI AWL switches on the pilot display and control panel should be placed in the ILS position.

The HUD and VDIG will then provide vertical and lateral precision course vector symbols, forming crossed pointers that are driven by the ICLS.
On the HUD, full-scale vector deflection is limited to 2°. Full-scale vector deflection on the VDI is 1.5°.
In the AWL/PCD submode of LDG, the HSD will additionally display TACAN information if the HSD is set to NAV mode on the PDCP.

At the acquisition window, the pilot can either continue with the ILS display, or, if ACL information from the SPN-42 data link is available,
he can select ACL of the AWL switches for either the VDI or HUD displays or both. The ACL display uses the same vertical and lateral precision course vector symbols as the ICLS,
but these are now driven by the SPN-42 data link. A typical display combination during the final stages of landing is ILS on the HUD and ACL on the VDI.
With valid ACL data available, the AFCS may be engaged by selecting ACL on the VEC/PCD, OFF, and ACL switch located on the AFCS control panel.


.. figure:: /images/general/navigation/landingtac.png

   HUD showing Landing mode display with TACAN set as destination source.

.. figure:: /images/general/navigation/landingaclhud.png

   HUD showing Landing mode with AWL/PCD set as Destination source, ACL set as source of glideslope and localiser.

.. figure:: /images/general/navigation/landingaclvdi.png

   VDI showing Landing mode with AWL/PCD set as Destination source, ILS (ICLS) set as source of glideslope and localiser.


Communications Systems
**********************

Antennas
========

Four VHF/UHF/L-band dual-blade antennas provide omnidirectional coverage for VHF/UHF voice, UHF data link, TACAN, and identification friend or foe/selective identification feature transponder (APX-72) operation.
TACAN and VHF/UHF 2 voice communications use one set of antennas; UHF 1 voice communications, the data link and IFF transponder, another set of antennas.
Refer to general arrangement illustration for antenna locations. The IFF interrogator (APX-76) antenna is an integral part of the AWG-9 WCS antenna.

Each individual system is connected to the appropriate portion of an upper or lower antenna through a coaxial switch and diplexer.
The V/UHF 2 ANT switch on the RIO communication TACAN CMD panel must be used to select the upper or lower antenna manually; there is no automatic actuation function in these aircraft.
The data link (DIL) antennas are similarly selected manually. Upper or lower antenna is selected by means of ANTENNA switches on the DATA LINK control panel.
The UHF 1 voice communication ARC-159 antenna is shared with the DIL antenna system and is always on the opposite antenna from the one selected by the ANTENNA switch.

The upper V/UHF 2/TACAN antenna is the first one aft of the canopy on the turtleback, and the lower antenna is imbedded in the bottom of the left ventral fin.
Only one antenna is used at a time. Automatic switching between antennas prevents loss of TACAN information.
If a signal is lost or is too weak to hold receiver lockup, the TACAN automatically cycles between the two antennas every 6 seconds seeking a stronger signal.

During this cycling and search period, memory circuits retain range tracking for 8 to 12 seconds and bearing tracking for 8 seconds.
The IFF antenna lobing switch is controlled by the IFF ANT switch on the RIO right outboard console. In AUTO, the lobing switch cycles the receiver transmitter between upper and lower antenna.
In the LWR (lower) position, only the lower antenna is used to receive and transmit signals. The upper antenna pattern has a slight forward tilt; the lower pattern a slight aft tilt.

:Note: 	In real life it is often necessary to select LWR to improve ground station reception. However due to the limitations of DCS, antenna switching is not modeled and thus not functional.
		The use of antennas is automated and/or neglected for the player. All radios and radio functions work through proper keying.

		
ICS - Intercommunications System
================================

		
The ICS provides normal, backup, or emergency communications between crewmembers. It also combines
and amplifies audio signals received from other electronic receiving equipment (ECM, Sidewinder tone,
IFF/SIF, radar altimeter, and voice radios, etc.). Identical ICS control panels are on the
pilot and RIO left side consoles. The ICS consists of four amplifiers, two at each cockpit station, which permit duplex operation during normal operation.
If one amplifier fails, it may be bypassed by selecting either the B/U (backup) or EMER (emergency) position on the ICS control panel. This permits continued ICS operation.
	
:Note: If two amplifiers fail at the same station, intercommunication is impossible.
 
:Note2: By selecting EMER on respective ICS control panel and using the other crewmember's amplifier you can listen in on audio normally only available at that station (like SW-tone or ALQ-126 PRF) but you lose ability to control the volume of the audio you listen to.

	
The external interphone connection is in the nose-wheel well. When pilot ICS switch is set to HOT MIC,
ground personnel can communicate with the cockpit stations. In DCS this works through selecting the ground crew communication menu in the DCS radio communication menu when activating ICS PTT.	


+-----------------------------------------------------------+---------------------------------------------------------------+
|.. image:: /images/general/communications/throttle.png     |.. image:: /images/general/communications/ics.png              |
+-----------------------------------------------------------+---------------------------------------------------------------+

+---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
|                                       |                                                                                                                                                 |
| Control/Indicator                     | Function                                                                                                                                        |
|                                       |                                                                                                                                                 |
+=======================================+=================================================================================================================================================+
|                                       |                                                                                                                                                 |
| 1. Pilot Radio ICS button             | * ICS – Permits intercommunication when COLD MIC is selected on function selector. Overrides UHF/VHF communications.                            |
|                                       | * Both – Keys both radios for operation. Not functional in DCS.                                                                                 |
|                                       | * UHF 1 – Keys ARC-159 radio for operation.                                                                                                     |
|                                       | * UHF 2 – Keys ARC-182 radio for operation.                                                                                                     |
|                                       |                                                                                                                                                 |
+---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
|                                       |                                                                                                                                                 |
| 2. VOL control                        | Controls intercommunication audio level at that cockpit station.                                                                                |
|                                       | Audio level at other station not affected.                                                                                                      |
|                                       |                                                                                                                                                 |
+---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
|                                       |                                                                                                                                                 |
| 3. Amplifier selector	                | * B/U – (Backup) used to bypass a fault amplifier and uses a backup output amplifier at own station.                                            |
|                                       | * NORM – (Normal) used when all amplifiers are functioning properly.                                                                            |
|                                       | * EMER – (Emergency) used to bypass faulty amplifier and makes use of input amplifier of other station. No HOT MIC.                             |
|                                       |                                                                                                                                                 |
|                                       | :CAUTION: With the front cockpit amplifier selector switch in the EMER position,                                                                |
|                                       |           engine stall/overtemperature and Sidewinder tones will not be available                                                               |
|                                       |           to the pilot.                                                           	                                                          |
|                                       |                                                                                                                                                 |
+---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
|                                       |                                                                                                                                                 |
| 4. Function selector                  | * RADIO OVERRIDE – Attenuates noncritical radio audio to emphasize intercommunication when urgent.                                              |
|                                       | * HOT MIC – Intercommunication without keying.                                                                                                  |
|                                       | * COLD MIC – Intercommunication only when pilot actuates ICS keying switch on inboard throttle or RIO actuates keying switch on left foot rest. |
|                                       |                                                                                                                                                 |
+---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
|                                       |                                                                                                                                                 |
| RIO’s ICS button (Left Foot Rest)     | Permits intercommunication if COLD MIC is selected on the function selector control.                                                            |
|                                       | Overrides UHF communication.                                                                                                                    |
|                                       |                                                                                                                                                 |
+---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
|                                       |                                                                                                                                                 |
| RIO’s MIC button (Right Foot Rest)    | Permits transmission of UHF 1 or UHF 2 radios as selected on the communications/TACAN	                                                          |
|                                       | command panel. Note that BOTH is not functional in DCS.                                                                                         |
|                                       |                                                                                                                                                 |
+---------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

:Note: The two RIO footpedals have axis bindings in DCS to allow sim rudder pedals to trigger these functions.


Audio Warning Signals
=====================
		
Audio warning signals from the weapon system are available to either or both crewmen through the ICS. Each signal has a distinct tone.
A visual display accompanies most audio signals so that the flightcrew can expect the tone and interpret its meaning.
Most audio signals may be attenuated or turned off if not required, allowing the flightcrew to concentrate on more critical tones.

Critical warning tones cannot be attenuated by any mode of ICS operation. The table below provides a glossary of audio warning signals available within the aircraft weapon systems.
Approximately 1 minute of warmup is required in order to achieve normal operating temperature.

+-------------------------------+---------------+---------------------------------------------------------------------------+---------------------------------------------------+-----------------------------------------------------------------------+
|                               |               |                                                                           |                                                   |                                                                       |
| Tone                          | Position      | Controls                                                                  | Function                                          | Characteristics                                                       |
|                               |               |                                                                           |                                                   |                                                                       |
+===============================+===============+===========================================================================+===================================================+=======================================================================+
|                               |               |                                                                           |                                                   |                                                                       |
| Sidewinder                    | Pilot         | Volume/TACAN Command Panel                                                | Missile lock tone                                 | High frequency, increases with lockon indication.                     |
|                               |               |                                                                           |                                                   |                                                                       |
+-------------------------------+---------------+---------------------------------------------------------------------------+---------------------------------------------------+-----------------------------------------------------------------------+
|                               |               |                                                                           |                                                   |                                                                       |
| ALR-67                        | Pilot & RIO   | Volume/TACAN Command Panel (pilot) & Radar Warning Receiver Panel (RIO)   | Threat indication                                 | Low to high frequency, determined by threat level.                    |
|                               |               |                                                                           |                                                   |                                                                       |
+-------------------------------+---------------+---------------------------------------------------------------------------+---------------------------------------------------+-----------------------------------------------------------------------+
|                               |               |                                                                           |                                                   |                                                                       |
| AN/ALQ-126                    | RIO           | DECM Control Panel                                                        | Threat indication                                 | Raw PRF sound.                                                        |
|                               |               |                                                                           |                                                   |                                                                       |
+-------------------------------+---------------+---------------------------------------------------------------------------+---------------------------------------------------+-----------------------------------------------------------------------+
|                               |               |                                                                           |                                                   |                                                                       |
| Radar Altimeter               | Pilot & RIO   | Radar Altimeter Indicator (Pilot)                                         | Low altitude warning                              | 1 000 Hz tone, modulated at 2 pulses per second for 3 seconds.        |
|                               |               |                                                                           |                                                   |                                                                       |
+-------------------------------+---------------+---------------------------------------------------------------------------+---------------------------------------------------+-----------------------------------------------------------------------+
|                               |               |                                                                           |                                                   |                                                                       |
| TACAN                         | Pilot & RIO   | TACAN Control Panel                                                       | Station identification                            | TACAN station morse code.                                             |
|                               |               |                                                                           |                                                   |                                                                       |
+-------------------------------+---------------+---------------------------------------------------------------------------+---------------------------------------------------+-----------------------------------------------------------------------+
|                               |               |                                                                           |                                                   |                                                                       |
| AN/ARC-159 (UHF 1)            | Pilot & RIO   | UHF 1 Control Panel (Pilot) & RIO Communication/TACAN Command Panel       | Own aircraft DF transmission                      | 1 020 Hz                                                              |
|                               |               |                                                                           |                                                   |                                                                       |
+-------------------------------+---------------+---------------------------------------------------------------------------+---------------------------------------------------+-----------------------------------------------------------------------+
|                               |               |                                                                           |                                                   |                                                                       |
| AN/ARC-182 (V/UHF 2)          | Pilot & RIO   | V/UHF 2 Control Panel (RIO) & Volume/TACAN Command Panel (Pilot)          | Other aircraft DF transmission                    | 1 020 Hz, morse code or voice.                                        |
|                               |               |                                                                           |                                                   |                                                                       |
+-------------------------------+---------------+---------------------------------------------------------------------------+---------------------------------------------------+-----------------------------------------------------------------------+
|                               |               |                                                                           |                                                   |                                                                       |
| Engine Stall/Overtemperature  | Pilot         | None                                                                      | Engine stall detection &  EGT overtemp warning    | Modulated 320 Hz for 10 seconds or until fault is removed if before.  |
|                               |               |                                                                           |                                                   |                                                                       |
+-------------------------------+---------------+---------------------------------------------------------------------------+---------------------------------------------------+-----------------------------------------------------------------------+


Pilot Volume/TACAN Command Panel
================================

.. image:: /images/general/communications/volume.png

The Volume/TACAN command panel on the pilot left side console has three volume controls for regulating audio signals from the ALR-67, Sidewinder (SW) and V/UHF 2.

+-------------------------------------------+-----------------------------------------------------------+
|                                           |                                                           |
| Control/Indicator                         | Function                                                  |
|                                           |                                                           |
+===========================================+===========================================================+
|                                           |                                                           |
| 1. ALR-67 Volume control                  | Controls volume for pilot ALR-67 indication.              |
|                                           |                                                           |
+-------------------------------------------+-----------------------------------------------------------+
|                                           |                                                           |
| 2. SW (Sidewinder) Volume control         | Controls volume of pilot's Sidewinder tone.               |
|                                           |                                                           |
+-------------------------------------------+-----------------------------------------------------------+
|                                           |                                                           |
| 3. V/UHF 2 Volume control                 | Controls volume of pilot audio from V/UHF 2 (AN/ARC-182). |
|                                           |                                                           |
+-------------------------------------------+-----------------------------------------------------------+
|                                           |                                                           |
| 4. TACAN CMD control switch/indicator     | Controls and indicate crewmember in control of TACAN.     |
|                                           |                                                           |
+-------------------------------------------+-----------------------------------------------------------+


RIO Communication/TACAN Command Panel
=====================================

Allows RIO to select either UHF 1 (AN/ARC-159), V/UHF 2 (AN/ARC-182), or both radios for transmitting.

:Note: BOTH is not functional in DCS.

The V/UHF 2 ANT switch allows selection of upper or lower antenna to minimize interference between dual UHF or data link operation.
Opposite antenna selection, frequency separation greater than 55 MHz, or turning one radio off is recommended.
In addition, the DATA LINK panel provides lower or upper antenna selection for UHF 1 and DIL operation.

:Note: Antenna Switching is not functional in DCS.

The TACAN CMD push buttons provide for transfer of TACAN control functions between pilot and RIO.
The crewmember (PLT or RIO) in control illuminates when selected.

The UHF 1 VOL control allows the RIO to adjust the audio level of the ARC 159 UHF 1 radio.
The KY MODE switch is operative only when the KY-58 is installed.

:Note: The Heatblur F-14 version uses the KY-28 only.

.. image:: /images/general/communications/comtac.png

+---------------------------------------+-------------------------------------------------------+
|                                       |                                                       |
| Control/Indicator                     | Function                                              |
|                                       |                                                       |
+=======================================+=======================================================+
|                                       |                                                       |
| 1. XMTR SEL switch                    | | Selects desired VHF/UHF radio for use.              |
|                                       | |                                                     |
|                                       | | UHF 1 - Selects ARC-159 UHF 1 radio.                |
|                                       | |                                                     |
|                                       | | V/UHF 2 - Selects ARC-182 VHF/UHF radio.            |
|                                       | |                                                     |
|                                       | | Both - Selects both radios. (Not functional in DCS) |
|                                       |                                                       |
+---------------------------------------+-------------------------------------------------------+
|                                       |                                                       |
| 2. V/UHF 2 ANT switch                 | | UPR - Selects upper antenna for V/UHF 2.            |
|                                       | |                                                     |
|                                       | | LWR - Selects lower antenna for V/UHF 2.            |
|                                       |                                                       |
|                                       | :Note: Non-functional in DCS.                         |
|                                       |                                                       |
+---------------------------------------+-------------------------------------------------------+
|                                       |                                                       |
| 3. TACAN CMD control switch/indicator | Controls and indicate crewmember in control of TACAN. |
|                                       |                                                       |
+---------------------------------------+-------------------------------------------------------+
|                                       |                                                       |
| 4. UHF 1 VOL control                  | Controls volume of RIO audio from UHF 1 (AN/ARC-159). |
|                                       |                                                       |
+---------------------------------------+-------------------------------------------------------+
|                                       |                                                       |
| 5 KY MODE switch                      | Non-functional with KY-28.                            |
|                                       |                                                       |
+---------------------------------------+-------------------------------------------------------+


AN/ARC-159 (UHF 1) Radio
========================

The UHF 1 (ARC-159) radio provides air-to-air and air-to-surface voice communications.
Radio frequency range extends from 225.000 to 399.975 MHz. The equipment allows AM mode transmission and reception
on any of the 20 preset channels and a guard channel (243.000 MHz).
Guard frequency may be monitored simultaneously with any other frequency selected. The ARC-159 has a possible 7 000 frequencies available by manually tuning in 25-kHz steps.
The ARC-159 radio is a solid-state, self-contained unit with a minimum RF output of 10 watts. All controls for operation of the radio are on the front panel of the radio.
The radio is located on the pilot left console.

Note: The UHF 1 (ARC-159) ADF position is non-functional in the modelled version of the F-14; use the DF mode of V/UHF 2 ARC-182.

.. image:: /images/general/communications/arc-159.png

.. table::
    :class: longtable

    +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    |                                                       |                                                                                                                                                                                                                                                               |
    | Control/Indicator                                     | Function                                                                                                                                                                                                                                                      |
    |                                                       |                                                                                                                                                                                                                                                               |
    +=======================================================+===============================================================================================================================================================================================================================================================+
    |                                                       |                                                                                                                                                                                                                                                               |
    | 1. VOL control                                        | Controls volume of pilot audio for UHF 1.                                                                                                                                                                                                                     |
    |                                                       |                                                                                                                                                                                                                                                               |
    +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    |                                                       |                                                                                                                                                                                                                                                               |
    | 2. SQL (Squelch) switch                               | On/off control for radio squelch (noise-blanking when carrier is not present).                                                                                                                                                                                |
    |                                                       |                                                                                                                                                                                                                                                               |
    +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    |                                                       |                                                                                                                                                                                                                                                               |
    | 3. Frequency Tuning switches (Springloaded to Center) | Four frequency tuning switches are used to tune transceiver when the mode selector switch is set to MANUAL.                                                                                                                                                   |
    |                                                       | The left switch controls the hundreds and tens digits, the second switch controls units,                                                                                                                                                                      |
    |                                                       | the third switch controls tenths, and the right switch controls hundredths and thousandths.                                                                                                                                                                   |
    |                                                       | Forward deflection of the switch increases the numeric reading, and aft deflection decreases the numeric reading.                                                                                                                                             |
    |                                                       |                                                                                                                                                                                                                                                               |
    +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    |                                                       |                                                                                                                                                                                                                                                               |
    | 4. FREQ/(CHAN) display                                | Displays frequency when mode selector switch is in MANUAL and displays UHF channel when mode switch is in PRESET.                                                                                                                                             |
    |                                                       |                                                                                                                                                                                                                                                               |
    +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    |                                                       |                                                                                                                                                                                                                                                               |
    | 5. READ switch                                        | Deflection of the switch causes the frequency display to show the preset channel frequency.                                                                                                                                                                   |
    |                                                       |                                                                                                                                                                                                                                                               |
    +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    |                                                       |                                                                                                                                                                                                                                                               |
    | 6. BRT/TEST control                                   | Controls brightness of radio FREQ/(CHAN) display. Turn past max to show 888.888 test display.                                                                                                                                                                 |
    |                                                       |                                                                                                                                                                                                                                                               |
    +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    |                                                       |                                                                                                                                                                                                                                                               |
    | 7. LOAD button                                        | Depressing button saves displayed frequency to selected preset channel.                                                                                                                                                                                       |
    |                                                       |                                                                                                                                                                                                                                                               |
    +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    |                                                       |                                                                                                                                                                                                                                                               |
    | 8. Function selector                                  | | ADF – The UHF 1 ARC-159 ADF function is not functional; use the DF mode of the V/UHF 2 ARC-182.                                                                                                                                                             |
    |                                                       | |                                                                                                                                                                                                                                                             |
    |                                                       | | BOTH – Energizes both the main transceiver and the guard receiver.                                                                                                                                                                                          |
    |                                                       | |                                                                                                                                                                                                                                                             |
    |                                                       | | MAIN – Main transceiver is energized permitting normal transmission and reception. Receive or transmit function is selected by the microphone push-to-talk switch.                                                                                          |
    |                                                       | |                                                                                                                                                                                                                                                             |
    |                                                       | | OFF – Secures UHF 1 radio.                                                                                                                                                                                                                                  |
    |                                                       |                                                                                                                                                                                                                                                               |
    +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    |                                                       |                                                                                                                                                                                                                                                               |
    | 9. CHAN SEL control                                   | Selects one of 20 preset frequency channels to use when the tuning selector switch is set to PRESET.                                                                                                                                                          |
    |                                                       |                                                                                                                                                                                                                                                               |
    +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    |                                                       |                                                                                                                                                                                                                                                               |
    | 10. Frequency Chart                                   | Used to record preset channel frequencies. Frequencies preset in the mission editor will be automatically displayed here in DCS.                                                                                                                              |
    |                                                       |                                                                                                                                                                                                                                                               |
    +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    |                                                       |                                                                                                                                                                                                                                                               |
    | 11. Mode Selector switch                              | | GUARD – Main transceiver is energized and shifted to guard frequency of 243.0 MHz permitting transmission and reception. In this position, both preset and manual frequency selections are not available.                                                   |
    |                                                       | |                                                                                                                                                                                                                                                             |
    |                                                       | | MANUAL – Frequency tuning controls are used to tune the main transceiver to any frequency (7 000 available) within the range of the set. The frequency selected is displayed in the readout window. In this position, PRESET selections are not available.  |
    |                                                       | |                                                                                                                                                                                                                                                             |
    |                                                       | | PRESET – Used to tune the transceiver to any of 20 preset channels using the PRESET channel selector. The selected channel is displayed in the readout window.                                                                                              |
    |                                                       |                                                                                                                                                                                                                                                               |
    +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    |                                                       |                                                                                                                                                                                                                                                               |
    | 12. TONE button                                       | Depressing button causes a steady tone (1 020 Hz) to be transmitted on the frequency or channel selected.                                                                                                                                                     |
    |                                                       |                                                                                                                                                                                                                                                               |
    +-------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

:Note: UHF communication interference with the D/L may cause the TILT light to illuminate and the autopilot ACL or VEC/PCD mode to disengage. Data link interference with the UHF radios may cause audible chirping at the D/L message reply rate. Note: Although antenna switching is not implemented in DCS, it is still recommended to use a frequency separation greater than 55 MHz, and if necessary along with turning UHF 1 or V/UHF 2 radio OFF to avoid mutual interference between UHF communications.

:Note2: Transmissions on both UHF 1 and V/UHF 2 radios, while operating on the same frequency, may result in a squeal. This feedback is a normal condition caused by RF interaction between the two radios operating on the same frequency in close proximity to each other.


AN/ARC-182 (V/UHF 2) Radio
==========================

The ARC-182 radio provides multimode, multichannel, air-to-air/air-to-surface voice and tone communications.
The ARC-182 control panel is located on the RIO left console. Frequency range extends in four bands from 30 to 88, 108 to 156, 156 to 174, and 225 to 399.975 MHz on any of 11,960 channels (separated by 25 kHz).

:Note: The “Have Quick” anti-jam function is not implemented in DCS.

Transmission and reception are available in AM or FM bands. The modulation is selected automatically by the radio except in the 225 to 399.975 band (toggle switch).
30 preset channels are available. Guard frequency of each band may be monitored simultaneously with any other frequency selected.
The radio is used with the ARA-50 to provide automatic direction finding (ADF) to the transmitting station.
The ARC-182 operates with secure-voice equipment (KY-28, the KY-58 is not implemented in DCS). Upper and lower antenna installations provide reliable line-of-sight communications to 200 NM (depending on altitude and atmospheric conditions).
A remote indicator on the pilot instrument panel indicates the channel or frequency selected.

.. image:: /images/general/communications/arc-182.png

.. table::
    :class: longtable

    +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    |                                                       |                                                                                                                                                                                                                                                       |
    | Control/Indicator                                     | Function                                                                                                                                                                                                                                              |
    |                                                       |                                                                                                                                                                                                                                                       |
    +=======================================================+=======================================================================================================================================================================================================================================================+
    |                                                       |                                                                                                                                                                                                                                                       |
    | 1. VOL control                                        | Controls volume of RIO audio for V/UHF 2.                                                                                                                                                                                                             |
    |                                                       |                                                                                                                                                                                                                                                       |
    +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    |                                                       |                                                                                                                                                                                                                                                       |
    | 2. SQL (squelch) switch                               | On/off control for radio squelch (noise-blanking when carrier is not present).                                                                                                                                                                        |
    |                                                       |                                                                                                                                                                                                                                                       |
    +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    |                                                       |                                                                                                                                                                                                                                                       |
    | 3. Frequency Tuning switches (Springloaded to Center) | Four frequency tuning switches are used to tune transceiver when the mode selector switch is set to MANUAL.                                                                                                                                           |
    |                                                       | The left switch controls the hundreds and tens digits, the second switch controls units,                                                                                                                                                              |
    |                                                       | the third switch controls tenths, and the right switch controls hundredths and thousandths.                                                                                                                                                           |
    |                                                       | Forward deflection of the switch increases the numeric reading, and aft deflection decreases the numeric reading.                                                                                                                                     |
    |                                                       |                                                                                                                                                                                                                                                       |
    +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    |                                                       |                                                                                                                                                                                                                                                       |
    | 4. FREQ/(CHAN)                                        | Displays frequency when mode selector switch is in MAN and displays V/UHF channel when mode switch is in PRESET.                                                                                                                                      |
    |                                                       |                                                                                                                                                                                                                                                       |
    +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    |                                                       |                                                                                                                                                                                                                                                       |
    | 5. UHF Mode switch                                    | | Operational when tuned to frequencies in the 225.000 to 399.000 MHz band.                                                                                                                                                                           |
    |                                                       | |                                                                                                                                                                                                                                                     |
    |                                                       | | AM – Selects amplitude modulation signals. Varies with atmospheric conditions, susceptible to electromagnetic interference.                                                                                                                         |
    |                                                       | |                                                                                                                                                                                                                                                     |
    |                                                       | | FM – Selects frequency modulation signals. Reduces electromagnetic interference.                                                                                                                                                                    |
    |                                                       |                                                                                                                                                                                                                                                       |
    +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    |                                                       |                                                                                                                                                                                                                                                       |
    | 6. BRT control                                        | Controls brightness of radio FREQ/(CHAN) display.                                                                                                                                                                                                     |
    |                                                       |                                                                                                                                                                                                                                                       |
    +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    |                                                       |                                                                                                                                                                                                                                                       |
    | 7. MODE selector                                      | | OFF – Secures VHF/UHF radio, unless frequency mode switch is set to 243.                                                                                                                                                                            |
    |                                                       | |                                                                                                                                                                                                                                                     |
    |                                                       | | T/R – Energizes transmitter and main receiver.                                                                                                                                                                                                      |
    |                                                       | |                                                                                                                                                                                                                                                     |
    |                                                       | | T/R&G – Energizes transmitter, main, and guard receivers.                                                                                                                                                                                           |
    |                                                       | |                                                                                                                                                                                                                                                     |
    |                                                       | | DF – Provides automatic direction finding from 108 to 399.975 MHz.                                                                                                                                                                                  |
    |                                                       | |                                                                                                                                                                                                                                                     |
    |                                                       | | TEST – Indicates built-in-test (BIT) AT; displayed on FREQ/(CHAN) indicator.                                                                                                                                                                        |
    |                                                       |                                                                                                                                                                                                                                                       |
    +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    |                                                       |                                                                                                                                                                                                                                                       |
    | 8. Frequency Mode switch (Outer Dial)                 | | 243 – Turns on the transceiver (takes precedence over (outer dial) operational mode control) and causes the main transceiver, and guard receiver to tune to 243.000 MHz (UHF guard frequency). All functions except VOL SQL and BAT are disabled.   |
    |                                                       | |                                                                                                                                                                                                                                                     |
    |                                                       | | MAN – Allows manual selection of an operating frequency using the frequency tuning switches. Transceiver is disabled during a frequency change.                                                                                                     |
    |                                                       | |                                                                                                                                                                                                                                                     |
    |                                                       | | G – Tunes the transceiver to the guard frequency in the band to which the radio was last tuned.                                                                                                                                                     |
    |                                                       | |                                                                                                                                                                                                                                                     |
    |                                                       | | PRESET – Allows selection of any one of 40 present operating frequencies with the CHAN SEL switch. Selected channel is displayed on the FREQ/(CHAN) display. Channels 31 through 40 are for Have Quick (antijam) use and are not implemented in DCS.|
    |                                                       | |                                                                                                                                                                                                                                                     |
    |                                                       | | READ – Displays the frequency (rather than channel) of preset channel selected.                                                                                                                                                                     |
    |                                                       | |                                                                                                                                                                                                                                                     |
    |                                                       | | LOAD – Automatically places the displayed frequency into the memory for the selected preset channel.                                                                                                                                                |
    |                                                       |                                                                                                                                                                                                                                                       |
    +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
    |                                                       |                                                                                                                                                                                                                                                       |
    | 9. CHAN SEL switch (Inner Dial)                       | Selects one of 40 preset frequency channels to use when the tuning selector switch is set to PRESET.                                                                                                                                                  |
    |                                                       |                                                                                                                                                                                                                                                       |
    +-------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+


Loading (saving) Preset Channel(s) on UHF 1 and V/UHF 2
=======================================================

1. MODE selection- T/R or T/R&G.

2. Frequency mode control - PRESET.

3. CHAN SEL switch- Select desired channel.

4. Frequency mode control- READ.

5. Frequency select switches - Slew to desired Frequency.

6. Frequency mode control - LOAD (frequency is stored in memory for selected channel).

7. Frequency mode control- READ, Verify frequency display.

8. Repeat steps 2 through 7 for subsequent channels.


AN/ARC-182 BIT (Built-in Test)
==============================

BIT isolates faults in AN/ARC-182. BIT should be started if the FREQ/(CHAN) display blanks, indicates an erroneous readout or the transceiver otherwise malfunctions.

Proceed as follows:

1. MODE selector - TEST.

2. BRT control- As Required.

3. BIT requires approximately 10 seconds, observe FREQ/(CHAN) display.

a. No fault is indicated by 888.888.

b. Faults are indicated by a number that identifies the module or modules at fault.

+------+---------+-----------+-----------------------+
| Mode | Display | Fault     | Interpretation        |
+======+=========+===========+=======================+
| RCV  | '       | RMT or RT | Select test mode      |
+------+---------+-----------+-----------------------+
| XMT  | '       | LOW PWR   | Select test mode      |
+------+---------+-----------+-----------------------+
| TEST | '       | RMT CTRL  | Defective control     |
+------+---------+-----------+-----------------------+
| TEST | 888.888 | NONE      | RT and CTRL ok        |
+------+---------+-----------+-----------------------+
| TEST | 4 6 5   | RT        | Modules 4, 5 or 6 bad |
+------+---------+-----------+-----------------------+
| TEST | 0 6 1   | VSWR      | RT or antenna system  |
+------+---------+-----------+-----------------------+
| TEST | 6 5 1   | FWD PWR   | RT or antenna system  |
+------+---------+-----------+-----------------------+
| TEST | 1 5 7   | RT        | Modules 1, 5 or 7 bad |
+------+---------+-----------+-----------------------+
| TEST | 3 3 3   | RT        | Module 3 bad          |
+------+---------+-----------+-----------------------+


AN/ARC-159 and AN/ARC-182 Remote Displays
=========================================

Both the pilot and RIO has remote displays for the currently set channel or frequency of the radios.
The pilot has remote displays for both UHF 1 and V/UHF 2 and the RIO only for UHF 1.

+-----------------------------------------------------------+---------------------------------------------------------------+
|.. image:: /images/general/communications/frontremote.png  |.. image:: /images/general/communications/backremote.png       |
+-----------------------------------------------------------+---------------------------------------------------------------+

+-------------------------------------------------------+-----------------------------------------------------------------------------------+
| Control/Indicator                                     | Function                                                                          |
+=======================================================+===================================================================================+
| 1. UHF 1 Remote Channel/Frequency Indicator (Pilot)   | | Displays a readout of the frequency or channel set for the UHF 1 radio.         |
|                                                       | |                                                                                 |
|                                                       | | TEST - Initiates test for the indicator, no fault resulting in 888.888 readout. |
|                                                       | |                                                                                 |
|                                                       | | BRT - Controls display brightness.                                              |
+-------------------------------------------------------+-----------------------------------------------------------------------------------+
| 2. V/UHF 2 Remote Channel/Frequency Indicator (Pilot) | | Displays a readout of the frequency or channel set for the V/UHF 2 radio.       |
|                                                       | |                                                                                 |
|                                                       | | TEST - Initiates test for the indicator, no fault resulting in 888.888 readout. |
|                                                       | |                                                                                 |
|                                                       | | BRT - Controls display brightness.                                              |
+-------------------------------------------------------+-----------------------------------------------------------------------------------+
| 3. UHF 1 Remote Channel/Frequency Indicator (RIO)     | | Displays a readout of the frequency or channel set for the UHF 1 radio.         |
|                                                       | |                                                                                 |
|                                                       | | TEST - Initiates test for the indicator, no fault resulting in 888.888 readout. |
|                                                       | |                                                                                 |
|                                                       | | BRT - Controls display brightness.                                              |
+-------------------------------------------------------+-----------------------------------------------------------------------------------+

AN/ARA-50 UHF Automatic Direction Finder
========================================

The UHF automatic direction finder is used with the ARC-182 radio. ADF provides relative bearings to transmitting ground stations or other aircraft.
It can receive signals on any 1 of 30 preset channels or on any manually set frequency in the 108 to 399.975 MHz range.
The system has a line-of-sight range, varying with altitude.

The system requires a 5-minute warmup period. During the warmup time, failure indications should be disregarded. The system uses the AS-909/ARA-48 ADF antenna.
Bearing to transmitting stations is displayed on the pilot/RIO BDHI (No. 1 needle), pilot HSD, and RIO multiple display indicator. The ADF signal is interrupted during voice UHF transmissions.


TSEC/KY-28 Voice Security Equipment
===================================

The security equipment is integrated, and operates, with the VHF/UHF 2 and UHF 1 communication sets to enable secure voice in a hostile environment.
The KY-28 control panel on the RIO left side console is the only cockpit control for operating the KY-28 in either cipher or plain-language modes.

The KY-28 has two basic modes of operation: plain (P) and cipher (C). The plain mode is used during normal UHF communications.
The cipher mode is used when secure voice communications are desired.
The radio sets must be ON to attain secure operation. The receiving station must be properly equipped to receive transmissions in the proper cipher mode. 

.. image:: /images/general/communications/ky-28.png

+------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Control/Indicator      | Function                                                                                                                                                                                     |
+========================+==============================================================================================================================================================================================+
| 1. ZEROIZE switch      | | By lifting the guard the preloaded codes are erased and must be loaded on the ground before cipher mode can be used again.                                                                 |
|                        | |                                                                                                                                                                                            |
|                        | | In DCS this is done via the ground crew communications menu.                                                                                                                               |
+------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 2. Power-mode switch   | | P/OFF - UHF radio is used as a plain-language transceiver. Removes power from the system.                                                                                                  |
|                        | |                                                                                                                                                                                            |
|                        | | C - Used to transmit and receive in secure mode (cipher) using preloaded codes. Also applies power to the system. To preload codes the system must be in this mode and power be applied.   |
|                        | |                                                                                                                                                                                            |
|                        | | DELAY - Provides a time-delay between ptt and actual transmission.                                                                                                                         |
+------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| 3. Radio-select switch | | RELAY - Re-transmits information acting as a relay for other stations, increasing their range. (Not functional in DCS)                                                                     |
|                        | |                                                                                                                                                                                            |
|                        | | RAD-2 - Selects V/UHF 2 for secure voice.                                                                                                                                                  |
|                        | |                                                                                                                                                                                            |
|                        | | RAD-1 - Selects UHF 1 for secure voice.                                                                                                                                                    |
+------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+		


KY-28 Operation
===============

Prelaunch
---------

1. Determine that proper code has been set by personnel qualified in voice security equipment. In DCS and in combination with SRS (Simple Radio) this is done through the ground crew communication menu in the DCS communications menu.

2. VHF/UHF radios - ON.

3. Power mode switch - C.

4. Radio selector - RAD-1 or RAD-2.

5. If a ground test of equipment is desired, establish two-way, plain-text radio communications on the plain-voice radio with a suitable remote station and request an equipment check. (In DCS another player is needed)

6. After a 2-minute warmup period, on the cipher selected radio listen for a steady, unbroken tone in the headset followed by a double-pitched broken tone.

7. Key the appropriate radio selected for transmission, hold for approximately 2 seconds, and release. Double-pitched broken tone will cease and no sound will be heard. 

8. Key radio and hold. A single-beep tone will be heard in approximately 1-1/2 seconds. When this tone is heard, the equipment is ready to cipher transmission.

9. After beep tone is heard, establish two-way cipher radio communications with a cooperating ground station and check for readability and signal strength.

10. Set power mode and radio selector switches in accordance with the tactical situation.

Note: The above procedures may be used to perform an in-flight check of the equipment.


Postlaunch 
----------

The speech security equipment shall be operated as briefed.

Note: If ZEROIZE is pressed during flight, ciphered communication is not possible. The code can only be reset (or changed) through the ground crew communications menu after landing.


After Landing
-------------

1. ZEROIZE switch - ZEROIZE (as briefed).

2. Power switch - OFF.

Note: If ZEROIZE has been pressed and the POWER MODE switch is in C, both crewmembers will be warned by a continuing beeping sound. 


Link 4A & C Data Link
=====================

The F-14 Tomcat is equipped with the Link 4 data link system to allow for transmission and reception of target track, waypoint information and steering commands.
Link 4 exists in two versions, the first being Link 4A which allows a surface ship or airborne AWACS to control the aircraft and also Link 4C, unique to the F-14, which is a fighter to fighter data link.

The Link 4A or TADIL C data link allows the F-14 to connect to a data link network controlled by a surface ship or an AWACS.
The data source (or really its operator) will then provide the F-14 with target tracks, waypoints and control commands.
Additionally, it's also used for the carrier automatic landing system (ACLS).

Link 4C on the other hand allows up to four F-14 Tomcats to interconnect and share target tracks to coordinate their engagements.

The system does not allow an F-14 to use both at the same time as the same transmitter and receiver are used for both A and C links.
The Link 4 system itself, operates using the UHF radio band at 5,000 bits per second.

The Link 4 is controlled using the Data Link Control Panel and the Data Link Reply and Antenna Control Panel.
Received control signals are displayed on the pilot VDI indicators (:ref:`VDI`) and the RIO DDI panel (:ref:`ddi`).


Link 4 Controls
---------------

.. image:: /images/general/communications/datalink.png

The Data Link Control Panel contains the main Link 4 system power switches and the frequency selection wheels.

The first switch (**1**) controls the Link 4 built in test and also enables the anti-jam (**A-J**) function, this control is currently non-functional in DCS and should be set to **NORMAL**.

The frequency thumbwheels (**2**) are used to set used data link frequency, note that the first digit (3) is set and displayed as a fixed number before the first wheel. The allowable frequency range is 300.0 MHz to 324.9 MHz.

The third switch (**3**) controls power and operational mode of the Link 4. **ON** turns on and enables the Link 4A data link, **OFF** disables the system and **AUX** enables the Link 4C data link.

.. image:: /images/general/communications/datalinkantenna.png

The Data Link Reply and Antenna Control Panel is used to select what antenna to use, own aircraft data link address, whether to transmit and which mode the Link 4A is used in.

The **ANTENNA** switch (**1**) sets if the data link uses the upper or lower antenna. As these are the same antennas that the UHF 1 (AN/ARC-159) uses it automatically sets that radio to the other antenna.

The **REPLY** switch (**2**) sets whether own aircraft replies to data link messages. **NORM** allows for normal operation while **CANC** turns off the transmitter and sets the data link to receive only.

The **MODE** switch (**3**) controls whether the Link 4A operates in the normal **TAC** (Tactical) mode or the **CAINS/WAYPT** (Carrier Aircraft Inertial Navigation System/Waypoint) mode.
The TAC mode is the normal airborne mode while the CAINS/WAYPT mode is used while on the carrier deck to receive preflight waypoints and INS alignment data from the ships INS system.
The switch is solenoid held and springloaded to the TAC position, if the data link reception is lost or the power lost the switch automatically returns to the TAC mode, forcing an ongoing INS alignment to the backup handset mode.
If the aircraft takes off with the switch in the CAINS/WAYPT position the weight on wheels sensor will also release it to TAC.

The two address thumbwheel sets the least significant bits (two lowest numbers) of the aircraft data link address, the rest has to be set by the ground crew.


Link 4 in DCS
-------------

The Link 4 implementation in the Heatblur DCS F-14 implements both the Link 4A and C versions.

To use Link 4A the data link has to be powered on, set to Link 4A mode (ON) and tuned to the correct data link frequency for the desired host which can be found on the kneeboard.
On the ground and set to the CAINS/WAYPT mode the data link will receive the ME set waypoints and allow for CVA alignment if on a carrier.
The frequency does not need to be set to use CAINS/WAYPT as that frequency is set with jumpers on the actual equipment by the ground crew.

When set to TAC the data link will then receive the 8 target tracks with the highest priority from the TDS controller.
The Link 4A also allows for automatic carrier landings with the data link set to use the carrier as a host.

To use Link 4C the data link should be set to Link 4C (AUX) and be tuned to a frequency agreed upon between participating aircraft.
Up to four aircraft can participate within a flight and all four aircraft should have different adresses set. As the ground crew set the two most significant bits to be the same for a flight automatically the link can only be used within the same flight currently.

In Link 4C the participating aircraft shares up to 4 target tracks, selected by the RIO using the CAP as well as own aircraft position.
The CAP also allows the RIO to update own aircraft INS position to another aircraft on the link to correlate track transmissions.
