.. _weaponsemploy:

Weapons and Weapons Employment Overview
#######################################

M-61 Vulcan Six-Barreled Gatling Cannon
***************************************
.. figure:: /images/weapons/m61.jpg

    U.S. Navy photo by Photographers Mate Airman Kristopher Wilson. (041129-N-5345W-034)

The M-61 Vulcan is a six-barreled hydraulically driven 20 mm automatic cannon capable of firing over 6,000 rpm (rounds per minute).

The F-14 carries the gun internally mounted beneath the cockpit with the muzzle being located on the lower left side of the fuselage.
676 20 mm rounds are carried in the ammunition drum for the gun and retains the spent cases after the rounds have been fired.

The gun itself is mounted to be elevated slightly more than 3° from the ADL to provide built-in lead for dog-fight situations.

To fire the gun, no input is needed from the WCS, the gun can be fired by the trigger on the pilot stick when selected by the weapons selector on that same stick,
provided master arm is on. The WCS can however provide symbology on the HUD to increase gun accuracy.
For both air-to-air and air-to-ground modes the gun has two sights available. For air-to-air it's the manual sight and the RTGS (real-time gun sight).

Selection of the gun is indicated on the bottom of the hud by a capital G with remaining hundreds of rounds indicated below.

.. image:: /images/weapons/rounds.png

Apart from the indication on the HUD the rounds remaining indicator on the pilot right vertical panel also shows remaining rounds.
The indicator counts down from 650 but can manually be reset by rotating the knob below the indicator to the desired quantity.

.. image:: /images/weapons/rate.png
    :align: left
    :width: 150 px
    :height: 150 px

The gun is capable of a 4 000 rpm or 6 000 rpm mode. The lower rate normally used for air-to-ground engagement and the higher rate for air-to-air engagement.
The gun rate is selected by the GUN RATE switch on the ACM which also indicates selected option. Selection of ACM will set it to high automatically.
The maximum number of bullets fired by a trigger pull can be set to be either 50, 100, 200 or unlimited. The default value is 200 bullets but can be set otherwise by the ground crew.

:Note: In DCS this is set via the kneeboard.


.. raw:: latex

    \newpage

**Manual Air-to-Air Sight**

.. image:: /images/weapons/gunhudmanual.png

In manual the HUD displays the ADL, the armament legend and the manual pipper. This mode is accessed by depressing and releasing the CAGE/SEAM pushbutton on the left throttle when in the air-to-air mode with the gun selected.
In this mode the pilot has to manually aim the gun using the manual pipper as reference to hit the target. Real target range and needed deflection needs to be estimated by the pilot.

The manual piper is adjustable to enable selection of desired lead. The GUN ELEV panel on the pilot right vertical panel sets the lead, normally this should be set to 53 milliradians to place the manual pipper on the gun sight line.

.. image:: /images/weapons/gunelevation.png

.. raw:: latex

    \newpage

**Real-Time Gunsight (RTGS)**

.. image:: /images/weapons/gunhudrtgsnotarget.png

The real-time gunsight mode is the standard gun mode when in the air-to-air mode with the gun selected.

In RTGS the WCS computes the bullet trajectory and displays the location the bullets will pass through at 1,000 and 2,000 feet, if no target data is available from the WCS.
The pipper representing bullet location at 1,000 feet and the diamond representing the bullet location at 2,000 feet.

.. image:: /images/weapons/gunhudrtgs.png

If target data is available from the WCS (target tracked in an STT mode) the pipper instead displays bullet location at the target's current range out to 4,000 feet.
The diamond will display radar line of sight to the target (target location).
This means that when having a target track the pilot should fly the aircraft to place the pipper over the target to hit it.

In addition to computing the solution to put bullets at the targets location the RTGS sight will also calculate where the bullets actually are in relation to the target when at target range.
When the bullets fired are computed to be at the target's location the diamond switches from target indication to indicating bullet position at target range (BATR).
This is also indicated by the diamond flashing.

Using this symbology it's possible to see where the target would have needed to be to be hit by the bullets.
If the gun engagement was executed successfully this means that the diamond should still be on top of the target, blinking, indicating that the bullets passed through the target's location.

.. raw:: latex

    \newpage

**Manual Air-to-Ground Sight**

.. image:: /images/weapons/attkmode.png
    :align: left
    :scale: 50%

The manual air-to-ground sight works and looks the same way as the manual air-to-air sight except that it's set by the RIO using the ATTK MODE selector on the armament control panel that's located on the RIO left vertical panel.
Selecting MAN on that selector enables the same HUD symbology as in the manual air-to-air sight upon selection of the air-to-ground mode,
the only additional HUD symbology being the display of the radar altitude on the right side of the HUD.
The gun deflection should instead be set according to a pre-calculated setting depending on airspeed, target range and dive angle.


**Computer/Pilot Mode**

.. image:: /images/weapons/guncomputerpilot.png

Computer/pilot mode is used to have the WCS continuously compute a weapon impact point for, among other air-to-ground weapons, the gun.
It is set by the RIO on the ATTK MODE selector, as for manual air-to-ground sight, by selecting CMPTR-PLT.

In this mode the AN/AWG-9 radar is slaved to the weapon impact point for accurate range measurements and enable the HUD display of that same impact point.

The HUD uses the pipper to indicate real-time weapon impact point and the diamond to indicate out of range. When the diamond dissappears, the gun is in range to engage a target under the pipper.
The pull up cue moves vertically on the HUD and when it's at or above the weapon impact point (pipper) it indicates that an immediate pull up is required to avoid striking the ground and that the target is too close to engage safely.

The right side of the HUD displays the barometric altitude scale.
 

**Mixed Gun Mode**

.. image:: /images/weapons/gunmixed.png
    :align: left
    :scale: 50%

The gun can also be used at the same time as another air-to-ground munition is selected by setting the A/G GUN switch on the armament panel (on the RIO left vertical panel) to MIXED.
This enables the trigger to fire the gun but no HUD symbology is available for the gun as it's being used to display release data for the selected munition.
In this mode the pilot needs to estimate the gun impact point manually with the ADL as the only reference on the HUD.
 
 
Air-to-Air Weapons
******************

HUD Symbology for Air-to-Air Missiles
=====================================

.. image:: /images/weapons/a2ahud.png

The above image shows the HUD with Phoenixes selected while in air-to-air display mode.

As standard the HUD shows the **Closure Rate** on the left side in hundreths of knots, from -200 to +1,000 knots.
Current closure rate as displayed by a **<**.

Additionally it displays the **Target Range Scale** on the right side, showing target range at the displayed scale, 10 NM in this case as display at the upper end.
The target range scale shows the current target range with a **>** and selected weapon max and minimum ranges as indicated by the dashes (**-**).

The **Movable Reticle** (called pipper for air to ground and gun employment) and the **Target Designator** can show different things depending on current situation.

The **Movable Reticle** shows current TCS line of sight if it exists at the same time as a radar STT lock except for when AIM-9s are selected.
In the AIM-9 case it instead shows current AIM-9 seeker head line of sight.

The **Target Designator** diamond shows current radar STT line of sight if present and if not it instead shows the current TCS line of sight.

So effectually the TCS line of sight can be shown either by the movable reticle or the target designator depending on if a radar STT is also present
and if a radar STT is present with AIM-9 selected it's not shown at all.


AIM-7 Sparrow
=============
.. figure:: /images/weapons/aim-7.jpg
    
    U.S. Navy photo by Photographer's Mate 3rd Class Joshua Karsten. (041108-N-8704K-008)

The AIM-7 Sparrow air-to-air missile is a supersonic boost-glide missile capable of engaging both aircraft and missiles in all weather conditions.
AIM-7 Sparrow missile is a medium range air-to-air missile with a max range of at least 16 NM (30 km) for the AIM-7E and at least 38 NM (70 km) for the AIM-7F and AIM-7M. 
The all weather capability comes from the missile being radar guided, more exactly SARH (semi-active radar homing).
This means that the seeker of the Sparrow relies on the AN/AWG-9 painting the targets for it and following the radar emissions being reflected off the target.

The F-14 can carry the AIM-7E, AIM-7F and AIM-7M on four dedicated recesses on the aircraft fuselage and one each on the glove pylons.

Apart from the various improvements to the missile range, seeker and warhead, the major difference between the different versions is that the AIM-7F and newer missiles can
also be guided via pulse doppler illumination in addition to CW as opposed to only CW.


Missile Preparation
-------------------

.. image:: /images/weapons/mslprep.png
    :align: left
    :width: 125 px
    :height: 125 px

Before launch the AIM-7 missiles need to be prepared by selection of the MSL PREP-ON pushbutton on the pilot ACM panel.
This commands the WCS to start missile preparation for the AIM-7 and AIM-54.

In the case of the AIM-7 the WCS applies electrical power to the missile to pre-heat the electronics and gyros.
It also injects CW radar video from the radar to the missiles via an emitter on the aft end of the rail to a receiver at the aft end of the missile.
This video is used to tune the AIM-7 missile to the selected CW frequency on the RIO DDD panel.
When the individual missiles are tuned and ready the corresponding missile status windows turns white to indicate a ready missile.


Launch Modes
------------

The two available launch modes for the AIM-7 on the F-14 is the normal mode and the boresight mode.
To select the AIM-7 for launch the pilot selects the SP/PH (sparrow/phoenix) position on the stick weapon selector.
Selection of which Sparrow to launch is done automatically by the WCS.

Depression of the weapon selector switches from SP to PH and vice versa.
If a STT target is available the WCS will automatically use the normal mode for launch unless BRSIT (boresight) is selected on the MSL MODE (missile mode) switch on the ACM panel.
In all other cases the boresight mode will be used.


Normal Mode
^^^^^^^^^^^

.. image:: /images/weapons/msloptionsp.png
    :align: left
    :scale: 35%

As the normal mode is used to engage a target tracked in STT the WCS is capable of using both CW and pulse doppler for guidance.
When using CW in the normal mode the AN/AWG-9 radar uses a dedicated CW antenna to spotlight the tracked target more directly than via the flood antenna.
While CW is the normal guidance mode for all AIM-7 variants it is possible to select the pulse doppler guidance mode instead when using the AIM-7F and AIM-7M missiles.

This is done on the RIO's armament panel with the MSL OPTIONS switch by setting it to SP DP (sparrow doppler).
When selected this causes the WCS to guide the sparrow missiles using pulse doppler illumination instead.

Regardless of guidance mode the WCS calculates the missile LAR (launch acceptance region) and displays the missile launch ranges on the VDI and TID.
The HUD shows the target diamond and current target range, Rmin and Rmax, while the VDI, DDD and TID displays the attack guidance symbology as well as the above mentioned missile LAR indications.


Boresight Mode
^^^^^^^^^^^^^^

The boresight mode uses the CW flood antenna on the AN/AWG-9 radar and will cause the missile to track the strongest target return within the flood area.
In addition to when launched in boresight mode the radar will also switch to flood mode when a target is lost, either before launch or after launch, enabling the pilot to try and save the shot by keeping the target within the flood area.

.. image:: /images/weapons/cwflood.png


AIM-9 Sidewinder
================
.. figure:: /images/weapons/aim-9.jpg

    U.S. Navy photo by Photographer's Mate Airman Kristopher Wilson. (050112-N-5345W-066)

The AIM-9 Sidewinder is a short range air-to-air missile.
It uses an infrared seeker locking on to a targets IR signature making it capable of tracking a target both during daytime and at night.

The F-14 Tomcat is capable of carrying all navy versions of the AIM-9 Sidewinder from the AIM-9D up to the AIM-9M.
The Heatblur F-14 Tomcat is currently modelled as carrying the AIM-9L and AIM-9M.

The F-14 is capable of carrying the AIM-9 on stations 1A & B and 8A & B.
Stations 1 & 8 are the glove pylons which both can carry two AIM-9s for a total of 4.
Station 1A & 8A are dedicated to carry only the AIM-9 and are normally used when only carrying two to allow station 1B & 8B to carry other munitions.


Missile Preparation
-------------------

.. image:: /images/weapons/swcool.png
    :align: left
    :width: 100 px
    :height: 100 px

The cooling of the AIM-9 seeker head needs to be enabled before launch.
This is done by pressing the SW COOL switch on the pilot ACM panel or by selecting the ACM mode on the same panel.
This commands cooling of the missiles seeker head, the missile will immediately show ready but full seeker head performance will take at least 60 seconds.

.. raw:: latex

    \newpage

Seeker Head Modes
-----------------

The AIM-9G introduced a seeker head capable of the Sidewinder expanded acquisition mode (SEAM) and all later Sidewinders carried by the F-14 are also capable of that mode.
The SEAM allows the missile seeker head to be uncaged to track a target within the seeker limits (40° from ADL) allowing the pilot to lead the target, improving missile performance.
It also allows for the WCS on the F-14 to slave the seeker to a tracked target within 20° from ADL, allowing for off boresight acquisition.

The AIM-9 on the F-14 can still use the old boresight mode where the seeker head remains slaved to ADL (2.5° field of view) but normally SEAM is used to scan the seeker about either ADL or a tracked target.
This scan is not visual to the pilot and is done to increase effective seekerhead field of view.
Like in all Sidewinders target detection is indicated by an aural tone. That growling tone is present while scanning but increases in intensity while the seeker is looking at an IR-source.

.. raw:: latex

    \newpage

Missile Operation
-----------------

The AIM-9 Sidewinder is selected for launch with the weapon selector on the pilot stick.
The weapon selector can be used to cycle which AIM-9 that is selected for launch by depressing it, indicating on the ACM panel which missile is selected by a checkerboard indication in the corresponding status window.
When using the AIM-9 the HUD uses the diamond to indicate a tracked target and the pipper (crosshair) to indicate current seeker head position.
If a WCS track with range is available the HUD also displays range to target and Rmin and Rmax.
The VDI, DDD and TID displays the attack guidance symbology if a WCS track is present.

The basic missile boresight mode without SEAM (no scan) is commanded by depressing the BRSIT (boresight) switch on the pilot ACM panel while not having the ACM mode active.
In this mode the pilot puts the target at ADL and fires when the aural tone is present.

If the BRSIT switch is not used or the ACM mode is active the AIM-9 will use the SEAM and set the missile to use the double-D scan pattern.
If a WCS target is present the seeker head will scan around the radar or TCS line of sight, otherwise the missile will scan around the ADL.

.. image:: /images/weapons/seamlock.png
    :align: left
    :height: 100 px
    :width: 100 px

To enable lock-on to a target in SEAM the pilot depresses the CAGE/SEAM pushbutton on the left throttle.
This illuminates the SEAM LOCK light on the ACM panel and uncages the seeker for 4.5 seconds and allows it to track a target present in the seeker field of view.
If no IR sources is found the missile is again caged and the SEAM LOCK light is deactivated.

If lock-on is successful the aural tone will remain and the SEAM LOCK light stays illuminated allowing the pilot to launch the missile by pressing the stick trigger.
After launch the next AIM-9 will automatically be selected.

.. raw:: html

    <iframe id="jabbers" align="middle" width="560" height="315" src="https://www.youtube.com/embed/4m-Q02gxFEA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

|

.. raw:: latex

    \newpage

AIM-54 Phoenix
==============
.. figure:: /images/weapons/aim-54.jpg

    U.S. Navy photo by Photographer's Mate 2nd Class Felix Garza Jr. (030320-N-4142G-013)

:Note: Depicted missile has yet to have the forward fins attached.

The AIM-54 Phoenix is a long range air-to-air missile which was originally designed to be used with the F-111B fleet air defence fighter which never materialised.
When the F-111B project was scrapped the AIM-54 and the corresponding AN/AWG-9 WCS eventually found its way to the F-14 instead.

The F-14 is capable of carrying up to 6 AIM-54 missiles, four on rails on the fuselage and one each on the glove pylons.
Because of the missile cooling system used the two front phoenix pylons must always be mounted meaning that the rear fuselage pylons can't be used if the front ones aren't present.
The glove pylons contain their own cooling systems.

The missile is capable of engagement both against a single target in STT and multiple targets using track-while-search (TWS).

The AIM-54 is available in two different versions, the AIM-54A and the AIM-54C.
The Heatblur Simulations F-14 Tomcat is modelled with both versions as well as modelling the AIM-54A with both mk47 and mk60 rocket motors.
The two motors on the AIM-54A differing in effective range while the AIM-54C differs by having a digital seeker instead of an analog one, increasing its performance, as well as an improved, smokeless, mk47 rocket motor.

The AIM-54 has a range of at least 60 NM against a fighter sized target at high altitudes in pulse doppler STT.
When using TWS for engagement against multiple targets this drops to about 50 NM.
It has a greater range against large targets and vice versa against smaller targets.

If launched in active mode the range drops to about 10 NM for a fighter sized target, varying slightly with target size.
Notable though that the missile will revert to SARH mode if no target is detected if selected for active launch in a SARH mode.


Missile Preparation
-------------------

The AIM-54 missile preparation is started with selection of the MSL PREP switch on the pilot ACM panel or by activation of the ACM.
This enables power and cooling to the missile and also starts the built in tests in the missile (BIT).

As with the AIM-7 the AIM-54 is tuned before launch using a transmitter on the rear end of the missile rail, transmitting to the rear receiver of the missile.
The whole missile preparation cycle is completed after around 2 minutes at which time the AIM-54 missiles are indicated ready in the corresponding missile status windows on the pilot ACM.


Launch Modes
------------

The seeker head used in the AIM-54 is capable of both semi-active radar homing (SARH) and active radar homing (ARH).

Normally the launch to eject (LTE) cycle of the missile is 3 seconds meaning time from trigger depression to missile ejection.
The exception is the ACM active mode where the LTE is shortened to 1 second if within 10° from ADL.


TWS SARH/ARH
^^^^^^^^^^^^

In TWS the AN/AWG-9 is capable of supporting the launch of up to 6 AIM-54 missiles against 6 different targets concurrently.
In the first stage of the AIM-54 engagement, the missile is guided semi-actively by the AN/AWG-9 radar using both guidance commands transmitted via the radar and radar energy reflected off the target.
Then when the missile is within range of its seeker's ARH mode the AN/AWG-9 commands the missile to switch to ARH.

Absence of this command via the AN/AWG-9 radar means that the missile won't switch to the ARH mode.
The AN/AWG-9, however, continues to transmit guidance commands to the missile as a fallback in case the missile can't acquire the target autonomously.
This means that the AIM-54 isn't a "fire and forget" missile per se but it can be considered autonomous after transfer to ARH.

PD STT SARH
^^^^^^^^^^^

In pulse doppler STT the AIM-54 uses SARH all the way to the target receiving guidance commands at a greater rate than in TWS and also continous spotlighting of the target because of the STT mode being used.
This increases the effective range of the AIM-54 seeker slightly.


Active-Radar Homing (ARH)
^^^^^^^^^^^^^^^^^^^^^^^^^

.. image:: /images/weapons/msloptionph.png
    :align: left
    :scale: 45%
    
The AIM-54 can also be commanded to go active directly after launch in both TWS and pulse doppler STT modes by setting the MSL OPTIONS switch to PH ACT before launch.
This tells the WCS to immediately command the AIM-54 to go active in the first guidance command after launch.
If launched at a target within 6 NM if in the targets rear hemisphere or 10 NM miles if in its forward hemisphere the WCS will also automatically command this mode instead of a SARH mode.

If the target is not detected actively by the seeker it will still fall back to SARH until the seeker can acquire on its own like in the two SARH modes.

:Note: Setting the MSL OPTIONS switch to PH ACT with an AIM-54 in the air will not make it go active, the PH ACT option can only be set before missile launch.

ACM Active
^^^^^^^^^^

The last mode is ACM active in which the missile is commanded active before launch making this the only mode where the missile is truly fire and forget.
The AIM-54 missile receives the active message before launch from the WCS in addition to a command prepositioning the seeker-head to have it look at the current WCS track if available.

ACM active is commanded when BRSIT (boresight) is selected on the pilot ACM panel, when having the ACM active without a WCS track and when using a non pulse doppler radar mode or TCS track.
When using boresight or ACM without a track the missile will launch along the ADL locking onto the first target seen while launching at a non pulse doppler radar track the seeker head will be prepositioned onto that track.


ECM Mode
^^^^^^^^

In all of the guidance modes the seeker head automatically switches to a passive ECM follow if jammed, angle-tracking the target until it can again track the target using SARH or ARH.
This is done without crew action and is not indicated to the operator.


Missile Operation
-----------------

The AIM-54 missile is selected with the weapon selector on the pilot stick by selecting the SP/PH (sparrow/phoenix) position and then depressing the selector to switch from SP to PH.
It is possible to switch back to SP by again depressing the weapon selector.

When used in boresight or ACM without a WCS track the HUD will not indicate any symbology apart from the ADL which is used to aim the missile.

When selected with a WCS track in STT the HUD will display the Target Designator and if a TCS track exists, the Movable Reticle overlaying the target, the former indicating WCS track and the latter TCS line of sight.
The range scale on the right side of the HUD indicates range to target and Rmin and Rmax, while the VDI, DDD and TID displays the attack guidance symbology.


.. _TWSATTK:

TWS
^^^

When using the AIM-54 with TWS the WCS automatically prioritizes the tracked targets, giving them a firing order number indicating missile launch order.
As the first target is launched at the first track's number is removed and the other tracks' numbers are decreased by one.

To continue to engage track 2 through 6 the pilot thus depresses the trigger once for each target, waits until the missile is clear and then depresses the trigger again for the next missile and so on until the desired number of missiles are away.

After missile launch the prioritisation numbers on the right side of the targeted tracks are replaced with the TTI or Time to Impact number, showing calculated time until missile hits the target.

Additionally when the AN/AWG-9 have sent the active command to the missile the TTI numbers blink, indicating that the missile targeting the track has been commanded to active mode.
When this happens depends on the setting of the TGTS switch on the DDD. SMALL equals 6NM, NORM equals 10NM and LARGE equals 13NM. The setting set before launch is used.

The targets currently under missile attack brightens until estimated time to target plus 15 seconds has elapsed and when at 15 seconds past estimated time to last target the break-away cross is also displayed on the VDI, DDD and TID.

For more info regarding the applicable TID symbology see :ref:`TIDSYMB`.

.. image:: /images/weapons/TWS.png


It is possible to force the WCS to include a target by setting it to mandatory attack using the CAP and also to exclude a target by setting it to do not attack on the same panel.
In addition it is possible to command the WCS to set a track as priority 1 in the firing order by hooking it and pressing NEXT LAUNCH on the RIO armament panel.

If not already in TWS AUTO the WCS automatically switches to this mode thus assuming control over the AN/AWG-9 radar to keep the engaged targets illuminated.
In addition to the track numbering the TID also displays a steering centroid indicating the center weight of the TWS scan pattern.

The HUD and VDI displays a steering cue guiding the pilot towards optimal target illumination and also displays range and Rmin and Rmax to target number 1.
The TID displays the complete attack symbology with target prioritisation numbers and individual optimum launch ranges, for more info see :ref:`TWS`.

AIM-54 in DCS
-------------

The HB DCS F-14 includes custom AIM-54A and AIM-54C missiles, the AIM-54A with a choice of two different rocket motors.
The aerodynamics and engine perfomance for these missiles have been extensively researched and computer simulated to make the included missiles behave as realistically as possible in regards to aerodynamics.

In regards to missile seeker and flight profile we've worked with Eagle Dynamics to enable our F-14 AN/AWG-9 to control the AIM-54 to a degree.
In DCS this means the following:

In TWS the missiles will fly out using guidance from the AN/AWG-9 until at 16 seconds to impact at which time the AN/AWG-9 will tell the missile to go active if it's still within the radar scan zone.
This results in a silent engagement until the missiles go active at which time the target's radar warning receiver will get indication of an active missile engaging it.
If fired at range the AIM-54 will loft for greater range. Setting the different seeker activation ranges impacts the amount of warning the target will get but also the amount of time the missile needs to be supported.

In PD-STT (Pulse-Doppler Single Target Track) the AIM-54 will be launched in a pure semi-active mode and be guided in that mode all the way to target without going active.
This means that the engaged target will get an immediate engagement warning through its radar warning receiver from the AN/AWG-9 as soon as the AIM-54 leaves the rail.
Like in TWS the missile will loft if fired at range.

For all other modes and within 10NM of target (or in ACM or PH ACT) the AIM-54 will launch active off the rail and the targeted aircraft will immediately see the missile's own radar actively engaging it.
It will not loft in this case and thus the range is less than in the other two cases.

Air-to-Ground Weapons
*********************

Despite being primarily designed as an air superioty fighter and an interceptor the F-14 was from the very start cleared and tested to carry all of the modern American general purpose bombs (GP) of the Mk-80 series.
In addition it was also cleared to carry the Mk-20 Rockeye cluster bomb and the 5" Zuni folding-fin aircraft rocket (FFAR).

As the F-14's combat role changed to include the precision ground attack mission it was also cleared to carry several of the guided bomb unit (GBU) versions of the Mk-80 series bombs, more specifically, some of the laser guided versions.


Air-to-Ground Weapon Settings
=============================
.. image:: /images/weapons/armamentpanel.png


The air-to-ground weapon delivery is set up by the RIO on his armament panel on the left vertical panel of the RIO cockpit.

The type of munition for delivery is set up by the wheel on the top of the panel, turning it to the correct munition.
This configures the WCS with the correct parameters for the selected munition.

:Note: The Mk-81, 82 and 83 have both a L and a H option being for low-drag and high-drag versions respectively. 

Under DLVY MODE (delivery mode) it is possible to set STP/RPL (step/ripple) and SGL/PRS (single/pairs).
The possible combinations are:

*   STP and SGL - Releases one store with each depression of the bomb relase button on the pilot stick.
*   STP and PRS - As with STP and SGL but each depression of the bomb release button on the pilot stick releases a pair of stores. Only works for paired stations, 1 with 8, 3 with 6 and 4 with 5.
*   RPL and SGL - Used with all attack modes, each depression of the bomb release button on the pilot stick releases set amount of stores set by the QTY (quantity) wheels with the interval set by the INTERVAL wheels (in milliseconds).
*   RPL and PRS - As RPL and SGL but each release pulse releases a pair of stores, QTY still sets total amount of stores to be released.

The MECH FUSE switch sets which mechanical fuse to arm on the stores. NOSE arms the nose fuse, SAFE inhibits arming of the fuses and NOSE/TAIL arms both fuses.

The ELEC FUSE selector knob sets the electrical fuse of the store to be released:

*   SAFE - Inhibits electrical bomb fusing.
*   VT - Sets air-burst mode at preset burst height for compatible stores.
*   INST - Sets instantaneous burst mode.
*   DLY 1 - Sets preset time delay 1.
*   DLY 2 - Sets preset time delay 2.

The INTERVAL and QTY (quantity) wheels set the release interval (in milliseconds) and quantity of stores to be released, compatible with the delivery modes as seen above under DLVY MODE.

Lastly, the 6 STA SEL (station select) switches set which pylons to use for store delivery. (Also used for selection of what stores to jettison.)
To select a pylon for store delivery, set the corresponding switch to SEL. Stations 1 and 8 should be set to B for selection, SW was used to jettison AIM-9 Sidewinders but is now inoperable.

:Note: All F-14 bombs in DCS are assumed to have both types of fuzes so need both the mechanical and electrical fuze set. GBUs, Mk-20s and Mk-81 to 84s need the mechanical fuze set to either N or N/T settings, the Mk-82AIR (ballute) and Mk-82 Snake-Eye can be dropped in free-fall with N and retarded with N/T.

Air-to-Ground Weapon Delivery
=============================

Air-to-ground delivery is initiated by pilot selection of the A/G mode on the display control panel.
After tape read-in (about 30 seconds) the WCS initiates the Air-to-ground mode and enables relevant symbology on the displays.

The weapon selection automatically switches to ordnance (ORD on the HUD) unless the pilot has selected another weapon.
All other options are set by the RIO in the back seat.

The available attack modes in the F-14 are set by the ATTK MODE selector in the RIO pit and are:

*   CMPTR TGT - Computer target, a semi-automatic computer guided mode similar to a CCRP mode in newer aircraft.
*   CMPTR IP - Computer initial point, an extended CMPTR TGT mode using a known initial point (IP) as reference for store delivery. Mostly used in situations where the actual target is expected to be hard to locate visually and is located closely to an easily identifiable reference point/landmark.
*   CMPTR PLT - Computer pilot, a manual computer and pilot guided mode using the WCS for store impact point indication on HUD. Similar to a CCIP mode in newer aircraft.
*   MAN - Manual, manual backup mode in which the HUD displays a pipper (crosshair) on the HUD at the deflection set by the pilot. Used in case of a systems failure prehibiting the other modes.
*   D/L BOMB - Data-link bomb, an automatic mode in which the pilot is steered via data-link cues for remotely controlled store delivery. (Not implemented in DCS at this point in time.) 


Computer Target
---------------
.. image:: /images/weapons/cmptrtgt.png

The computer target mode allows the pilot to designate a target onto which the WCS then guides the pilot towards store release.
This mode is usable for all air-to-ground stores, including rockets.

When selected the HUD displays the diamond as target designator and the bomb fall line (BFL) through the velocity vector and store impact point pipper (crosshair).

To designate a target the pilot steers the aircraft in azimuth to place the target along the BFL.
Then UP/DN on the target designate switch on the left wall of the pilot cockpit is used to slew the target designator along the BFL until it overlays the target.
At that point the target is designated by pressing the target designate switch to DES.

After designation the target designation diamond becomes stabilized to the designated position on the ground and the AN/AWG-9 is slewed to it for range measurements.
The BFL now remains overlaying the designated target while the store impact point pipper and aircraft velocity vector continues to follow aircraft movements.
In addition the HUD now displays the upper and lower solution cues on the BFL.

The pilot should now fly the velocity vector and store impact point over the BFL until the solution cues reaches them.
The lower solution cue indicates imminent store release when passing the velocity vector and the pilot should by now be holding the bomb release button depressed to authorize WCS store release.
When the upper solution cue reaches the velocity vector the WCS automatically releases set stores on the condition that the bomb release buttons is depressed.

The pull up cue (bracket on the HUD) moves upwards on the HUD towards the velocity vector with decreasing altitude. When it reaches the velocity vector it indicates that the aircraft is below safe altitude for store release.


.. _CIP:

Computer Initial Point
----------------------

Functionally identical to the Computer target mode except that a preset initial point (IP) is designated instead of the actual target.
The IP is preset before takeoff using data-link or manually by the RIO using the CAP.

The IP waypoint should be a terrain feature expected to be visually identifiable by the pilot even if the target is not.

To set the CAP the RIO designates the location of the IP waypoint as per the other waypoints in the system. (See CAP heading under AN/AWG-9 in the General design and systems overview section or the Navigation systems heading in the same section)

The message (function) IP TO TGT on the CAP under the SPL category is then used with the prefixes ALT, RNG and BRG to readout and set the following datapoints:
*   ALT - Sets altitude difference of the target relative the IP waypoint.
*   RNG - Sets range to target from the IP waypoint.
*   BRG - Sets the bearing to the target from the IP waypoint.

When the pilot designates the IP visually on the HUD the WCS recalculates the target location using the data set under the IP TO TGT function on the CAP, moves the target diamond to that location and instead displays guidance towards the real target location.

All other functions of this mode are identical to the Computer target mode.


Computer Pilot
--------------
.. image:: /images/weapons/cmptrpilot.png

The computer pilot mode uses the WCS to continually calculate and display an impact point for the configured store on the HUD.

When selected the HUD displays the current store impact point in real-time using the pipper (crosshair).
The target designation diamond is used when the WCS is configured for rockets and overlays the pipper to indicate that the configured store is out of range when displayed.
As in the Computer target and IP modes the pull-up cue is used to indicate aircraft below safe store release altitude when at or above the velocity vector.

To correctly engage the desired target the pilot flies the impact point pipper on the HUD over the target and then depresses the bomb release button.

When using rockets the pilot should wait until the diamond dissappears, indicating that the selected store is within range and then use the control stick trigger to fire the rockets.


Manual
------
.. image:: /images/weapons/man.png

The manual Air-to-ground mode is used as a back-up when the other modes are unavailable.

By principle it works the same as the Computer pilot mode in that the pilot should fly the pipper on the HUD over the desired target.
The pipper is in this mode not updated by the WCS however but instead set at a deflection from the ADL according to desired engagement speed, dive-angle and release altitude.

This is set using the elevation lead panel on the pilot right side vertical panel using weapon engagement tables or by pilot estimation.


Mk-81, 82, 83 and 84 GP Bombs
=============================
.. figure:: /images/weapons/dumb.jpg

    U.S. Navy photo by Photographer's Mate Airman Justin S. Osborne. (030321-N-0382O-506)

The Mk-80 series bombs are the standard general purpose bombs used by the US Navy and allies and where first dropped in combat during the Vietnam war.
The Mk-82 also has the capability to mount a retardation system using either folding fins or an inflated ballute to brake the bomb after release allowing them to be dropped at lower altitudes as the dropping aircraft has more time to move away from them.
Those versions are called the Mk-82 Snake Eye (fins) and Mk-82AIR (ballute) in DCS.

The F-14 is capable of carrying all the various bombs in the Mk-80s series, 81 through to 84.
While the ground attack mission never really materialised for the F-14 in the navy it was tested for and cleared to deliver these weapons from the start.

The F-14 uses the Phoenix rails (stations 3-6) and the glove pylons' lower stations to mount the bombs.
The rails themselves can carry all four variants while the 81 to 83 can also be mounted on substations along the sides of the phoenix rails as well as on TERs on the glove pylons.

All of the Mk-80 bombs has nose fuzes only and should be dropped with the nose (N) fuze setting on the mechanical fuze switch on the RIO armament panel.
The Mk-82AIR and Snake Eye variants use the tail fuze wire to enable bomb retardation meaning that the nose/tail (N/T) mechanical fuze option should be used if retardation is needed.

The total amount of the different bombs carried depends on weapon weight and weapon clearance between the rails, the actual number varies from 18 for the 81s and 82s to just 4 for the 84s as those can only be mounted on the rails themselves.
For more info see the F-14 loadout diagrams.


GBU-10, 12, 16 and 24
=====================
.. figure:: /images/weapons/gbu.jpg

    U.S. Navy photo by Photographer's Mate Airman Milosz Reterski. (040105-N-9742R-001)

The GBU (guided bomb unit) are bombs from the Mk-80s series with an attached seeker unit and fin (control) unit converting them into guided precision bombs, and in the case of the GBU-10, 12, 16 and 24 carried by the F-14, laser guided bombs to be more precise.

When the F-14B gained the ability to mount and use the LANTIRN pod it was also cleared to carry some of the GBU variants of the Mk-80 series bombs.
It can either deliver them onto designation from a self-carried LANTIRN pod or onto a laser designation from another aircraft or ground source.

The GBUs carried are mounted on the Phoenix rails themselves on stations 3-6 as the additional size of a GBU compared to a normal Mk-80 series bomb makes it impossible to use the substations on the rails for those.
Each station is capable of carrying one GBU up to the size of the GBU-16. As for the GBU-10 and 24, the 10 can be carried on the front rails (3 and 6) and the 24 on one front rail and one back rail as they need to be carried on opposite sides of the aircraft due to the larger wing assembly.

:Note: GBU laser codes are set as per :ref:`MESET` or via the kneeboard.


Mk-20 Rockeye
=============

The Mk-20 Rockeye is a conventional free fall bomb like the Mk-80 series bombs but instead of a conventional charge it carries anti-tank submunitions.
The Rockeye contains 247 of these anti-tank submunitions which are released at a set height using a radar altimeter, 
the design being that the submunitions are dispersed over a large area for greater effect.

The fuze height itself is set by the ground crew as they're loaded and can't be changed by the pilot.
To arm the Rockeye correctly the mechanical fuse should be set to nose (N).

The F-14 can carry up to 10 Mk-20 Rockeyes using the Phoenix rails and substations as well as TERs on the glove pylons.

:Note: Additional fuse settings (FMU-140 fuse) pending additional weapon code implementation.


Zuni Rockets
============

The Zuni 5-inch folding-fin aircraft rocket (FFAR) was developed to replace the high velocity aircraft rocket (HVAR) of world war 2 vintage.
As part of its design it's modular and capable of using different warheads as well as different fuzes.

The Zuni rockets are carried in LAU-10 pods, each carrying 4 rockets. The pods can fire in either salvo mode or ripple mode, salvo launching one rocket and ripple all.

The F-14 Tomcat can carry LAU-10 rocket pods on stations 1B, 3, 6 and 8B using TERs, each TER holding up to two pods except on of either 3 or 6 which must only carry one as not to clash with a pod on the adjacent station.
The TERs are used to gain separation from the station for safe rocket firing and the reason for not being able to use three pods on the TERs are that on the glove pylons the inner TER station would conflict with the main landing gear
and on stations 3 and 6 with the fuselage.

The Zuni rockets are set up for launch by the RIO on the armament panel as with bombs, the delivery mode (DLVY MODE) switches being used to configure how many pods to activate at a time.

.. raw:: html

    <iframe id="jabbers" align="middle" width="560" height="315" src="https://www.youtube.com/embed/wftck0C3fJ8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

|


BDU-33 Practice Bombs
=====================

The BDU-33 practice bomb is a training round used to simulate a Mk-82 general purpose bomb for training purposes.
They can be carried three to a TER on each of station 3, 4, 5 and 6 on the F-14 Tomcat.

They are set up for release as with the real general purpose bombs.


Special Munitions
*****************

ADM-141 TALD
=============
.. figure:: /images/weapons/tald.jpg

    U.S. Navy photo by Photographer's Mate 3rd Class Mark J. Rebilas. (041018-N-6213R-021)

The ADM-141 tactical air-launched decoy (TALD) is a gliding decoy simulating real aircraft using active and passive means.
There are several versions of the TALD, examples being a version equipped to launch chaff and another version using a Luneberg lens to increase its cross-section to simulate a larger aircraft.

All versions are pre-programmed before take-off and are unpowered, gliding through the air on fold-out wings.

The F-14 can carry up to four ADM-141 TALDs, one each on stations 3 through 6, using a TER each to gain separation from the aircraft fuselage.

:Note: In DCS these currently glide straight ahead until they run out of speed and altitude.


LUU-2 Parachute Flare
=====================

The LUU-2 parachute flare is an air-launched flare suspended by a parachute used to illuminate the ground during night-time.

The F-14 can carry up to 16 LUU-2 flares in up to 4 SUU-25 flare dispensers on TERs at stations 4 and 5, each TER capable of carrying up to 2 dispensers in order not to conflict with the fuselage.

The LUU-2 parachute flare is launched and set up in the same way as a general purpose bomb.


Smokewinder
===========

The Smokewinder is a smoke pod used for aerial displays simulating an AIM-9 missile to the aircraft interface.

To enable and disable a Smokewinder, select AIM-9 for launch using boresight (BRSIT) and select the corresponding weapon station using the weapon selector on the pilot stick.
When set up thusly and with master arm on, each pull of the trigger enables or disable the Smokewinder discharging smoke.


Pods and Tanks
**************

LAU-138 Chaff Adapter
=====================

The LAU-138 chaff adapter (or BOL rail) was designed by Celcius Tech in Sweden to enhance a combat aircraft's capability to carry chaff countermeasures.
The chaff launcher is unusual in that it doesn't use pyrotechnics to fire the chaff packages but instead uses a mechanical action.

While each adapter can carry up to 160 chaff packages in total, each package is not the equal to a standard chaff bundle.
Because of this fact, each launcher is set to eject four packages in total for each release impulse.
This means that the pair of LAU-138s ejects in total 8 chaff packages per impulse and that 40 dispensation cycles are available.

The adapter itself replaces the normal LAU-7 Sidewinder launch rail allowing the F-14 to carry additional chaff without impacting the ability to carry other weapons.
While technically capable of carrying the LAU-138 on both A & B stations on the glove pylons, in practice it was impossible to access the cooling bottle for an AIM-9 carried on the B station meaning that operationally only the A stations were loaded with LAU-138 adapters.

For more information about the LAU-138 and its use, see the section about the AN/ALE-29 and 39 under the General design and systems overview chapter.


TACTS Pods
==========

The TACTS pod is an analysis pod used during training missions, it is carried on LAU-7 rails instead of AIM-9s, normally on station 1A and 8A.
They are normally carried as a pair of two, one on each side.

:Note: In DCS their functionality is purely cosmetic.


FPU-1 Fuel Tank
===============

The FPU-1 fuel tank is carried by the F-14 Tomcat on stations 2 and 7 on each engine nacelle.
They each carry up to 2 000 pounds of fuel and can be jettisoned in the same way as other stores using the normal procedures.


LANTIRN
=======
.. figure:: /images/weapons/lantirn.jpg

     U.S. Navy photo by Photographers Mate Airman Jason Frost. (030122-N-9403F-002)

The LANTIRN was adapted for use on the F-14 Tomcats during the 1990s as the F-14's role started to gravitate towards including the precision strike role.

The version carried on the Heatblur DCS F-14B Tomcat represents the earliest integrations of the LANTIRN, the pod being carried only on station 8B and 
hardwired to the control panel in the RIO cockpit and to the video input on the TID/VDI.

For more information regarding the use of the LANTIRN pod, see the section about it under the General design and systems overview chapter.


CNU-188 External Baggage Container
==================================

The CNU-188 external baggage container is a converted fuel tank used to carry equipment and supplies during aircraft transfer.
One such container can be carried by a F-14 on either station 4 or 5, maximum load carried being 350 pounds. 

:Note: Pending implementation in DCS.


F-14 Loadout Diagram
********************
.. image:: /images/weapons/F14.png

+------------------------------------+----+----+---+---+---+---+---+---+----+----+-------+
| Weapon \ Station                   | 1A | 1B | 2 | 3 | 4 | 5 | 6 | 7 | 8B | 8A | Total |
+====================================+====+====+===+===+===+===+===+===+====+====+=======+
| AIM-9                              | 1  | 1  |   |   |   |   |   |   | 1  | 1  | 4     |
+------------------------------------+----+----+---+---+---+---+---+---+----+----+-------+
| AIM-7                              |    | 1  |   | 1 | 1 | 1 | 1 |   | 1  |    | 6     |
+------------------------------------+----+----+---+---+---+---+---+---+----+----+-------+
| AIM-54                             |    | 1  |   | 1 | 1 | 1 | 1 |   | 1  |    | 6     |
+------------------------------------+----+----+---+---+---+---+---+---+----+----+-------+
| Mk-81                              |    | 2  |   | 4 | 3 | 3 | 4 |   | 2  |    | 18    |
+------------------------------------+----+----+---+---+---+---+---+---+----+----+-------+
| Mk-82                              |    | 2  |   | 4 | 3 | 3 | 4 |   | 2  |    | 18    |
+------------------------------------+----+----+---+---+---+---+---+---+----+----+-------+
| Mk-82AIR                           |    | 2  |   | 4 | 3 | 3 | 4 |   | 2  |    | 18    |
+------------------------------------+----+----+---+---+---+---+---+---+----+----+-------+
| Mk-82 Snake Eye                    |    | 2  |   | 4 | 3 | 3 | 4 |   | 2  |    | 18    |
+------------------------------------+----+----+---+---+---+---+---+---+----+----+-------+
| Mk-83                              |    | 1  |   | 3 | 1 | 1 | 3 |   | 1  |    | 10    |
+------------------------------------+----+----+---+---+---+---+---+---+----+----+-------+
| Mk-84                              |    |    |   | 1 | 1 | 1 | 1 |   |    |    | 4     |
+------------------------------------+----+----+---+---+---+---+---+---+----+----+-------+
| Mk-20                              |    | 2  |   | 2 | 1 | 1 | 2 |   | 2  |    | 10    |
+------------------------------------+----+----+---+---+---+---+---+---+----+----+-------+
| GBU-10                             |    |    |   | 1 |   |   | 1 |   |    |    | 2     |
+------------------------------------+----+----+---+---+---+---+---+---+----+----+-------+
| GBU-12                             |    |    |   | 1 | 1 | 1 | 1 |   |    |    | 4     |
+------------------------------------+----+----+---+---+---+---+---+---+----+----+-------+
| GBU-16                             |    |    |   | 1 | 1 | 1 | 1 |   |    |    | 4     |
+------------------------------------+----+----+---+---+---+---+---+---+----+----+-------+
| GBU-24                             |    |    |   | 1 |   | 1 |   |   |    |    | 2     |
+------------------------------------+----+----+---+---+---+---+---+---+----+----+-------+
| BDU-33                             |    | 3  |   | 3 | 3 | 3 | 3 |   | 3  |    | 18    |
+------------------------------------+----+----+---+---+---+---+---+---+----+----+-------+
| LAU-10 (ZUNI)                      |    | 2  |   | 2 |   |   | 1 |   | 2  |    | 7(28) |
+------------------------------------+----+----+---+---+---+---+---+---+----+----+-------+
| ADM-141A TALD                      |    |    |   | 1 | 1 | 1 | 1 |   |    |    | 4     |
+------------------------------------+----+----+---+---+---+---+---+---+----+----+-------+
| SUU-25 F/A Flare Dispenser         |    |    |   |   | 2 | 2 |   |   |    |    | 4(16) |
+------------------------------------+----+----+---+---+---+---+---+---+----+----+-------+
| LAU-138 Chaff Adapter              | 1  |    |   |   |   |   |   |   |    | 1  | 2     |
+------------------------------------+----+----+---+---+---+---+---+---+----+----+-------+
| Smokewinder                        | 1  | 1  |   |   |   |   |   |   | 1  | 1  | 4     |
+------------------------------------+----+----+---+---+---+---+---+---+----+----+-------+
| TACTS                              | 1  |    |   |   |   |   |   |   |    | 1  | 2     |
+------------------------------------+----+----+---+---+---+---+---+---+----+----+-------+
| LANTIRN                            |    |    |   |   |   |   |   |   | 1  |    | 1     |
+------------------------------------+----+----+---+---+---+---+---+---+----+----+-------+
| FPU-1 Fuel Tank                    |    |    | 1 |   |   |   |   | 1 |    |    | 2     |
+------------------------------------+----+----+---+---+---+---+---+---+----+----+-------+
| CNU-188 External Baggage Container |    |    |   |   | 1 | 1 |   |   |    |    | 1     |
+------------------------------------+----+----+---+---+---+---+---+---+----+----+-------+