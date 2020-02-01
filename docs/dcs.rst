DCS Specific Functions
######################

Jester
******


.. image:: /images/jester/jester.png
   :align: center

The Jester AI aims to be a functional AI radar intercept officer, RIO, for the Heatblur DCS F-14B, enabling a multicrew experience in a single player (per aircraft) environment.

He is fully integrated into the rear cockpit controlling nearly all back seat systems with a focus on systems not controllable from the pilot seat.
He is also modelled to take into account the limitations of a real human meaning that, amongst other things, his current headposition, visual spotting range and what his hands are doing are modelled fully.
When controlling the systems at the RIO seat he performs all actions that a human RIO would have to do.

To order/control Jester a command wheel is used for quick access, this wheel is dynamic depending on current mode selected and also depending on current situation.
Feedback to the pilot from Jester is via the ICS using a library of recorded audio, simulating the experience of having a RIO actually talking to you and apart from acknowledging orders he will also communicate pertinent information to the pilot depending on situation.

Finally, in a multiplayer environment a RIO joining a Tomcat in flight will find all controls at the rear seat in the position where Jester left them and if the human RIO disconnects Jester will resume control of the systems in the configuration the human player left them.


Functionality
=============

.. image:: /images/jester/menu.png

The Jester menu is by default brought up using **A** and selection of a menu item (1 to 8) are done using **CTRL + 1** to **8**. These keycommands can be changed or set to a controller using the Jester category under F-14 Pilot in the DCS keybinds.
The keycommands for the menu petals are designed in a way as to enable them to be mapped to an eight way hat on a game controller.
In addition it's possible to use the viewing angle in the cockpit to select a petal while holding the Jester menu keybind for more than 0.5 seconds. This can be enabled or disabled in the F-14B options.

Pictured above is the main Jester menu which contains all the different available contextual menus. The first press of the Jester menu command normally brings up one of the contextual menus depending on which mode and situation the aircraft is in.
Air to air mode while airborne as an example lands the user directly into the **BEYOND VISUAL RANGE - RADAR** menu while airborne and in air to ground mode brings up the **AIR TO GROUND - WEAPONS** menu.
In addition the take-off and landing modes have their own contextual menus only available when in those modes.

After pressing the Jester menu command and landing in the relavant contextual menu another press of the same command then brings up the main Jester menu enabling selection of a different contextual menu than the automatic one.

The normal sequence pressing the Jester menu command (defaulting to **A**) is thus, **Menu OFF** -> **Contextual menu depending on mode and situation** -> **Main Menu** -> **Menu OFF**.

From these menus it is then possible to control the various systems at the RIO seat.
Depending on previous commands options in the different contextual menus might change and some systems use the petals of the menu as inputs/keypads to set frequencies and other numbers in those systems.

As an example it is possible to tell Jester to set a waypoint in the navigational systems like this but it will require a lot of consecutive keypresses, as a shortcut it is in this case also possible have him enter a waypoint from a map marker set in the F10 view.
To help with selecting a marker in this case the menu will show the user time since created and the name entered for the marker.

In the case of a system needing to select a specific symbol, like choosing a target on the TID to lock in STT, the menu will allow the pilot to tell Jester to either lock the closest target, closest hostile target and so on.
In addition it is also possible to specify a specific symbol/track to look using an azimuth/range system.

Lastly, Jester is also able to read out the startup checklist helping the pilot to coldstart the F-14 in the assisted startup detailed further down.


Iceman
======

.. image:: /images/jester/pilot.png

In addition to Jester, or rather, as a subset of the Jester AI, the Heatblur DCS F-14B also has Iceman, a basic autopilot/AI.
This is intended for use in singleplayer where a player might jump between the front and back seats to control both positions and enables a basic autopilot controllable from the back seat using the same methodology as the Jester controls from the front seat.

The basic functionality is that when the player switches to the RIO seat, Iceman takes control and on the current heading and altitude. The, now Iceman, menu then allows the player to set heading, altitude and speed. Heading and altitude can be set relative a target or as absolutes not referencing an external target.


Assisted Startup
================

.. image:: /images/jester/startup.png

For aircraft cold start, Jester can either perform his checklist like a real RIO would, or he can also help the pilot with an assisted startup in which he reads the pilot's checklist to him while starting.

To access the normal, unassisted startup, select startup, Jester will then go through his checklist. He will at times ask the pilot if he has completed certain checks or ask for specific tests, this is answered via the Jester menu using the options appearing there.
As an example he will start by asking for a comms check which is answered via the Jester menu. Note that after engine startup and EMERG GEN Master test he will ask for what INS alignment to go for, select this via the Jester menu as well.

To access the assisted startup select assisted start on the Jester menu. Jester will now read out the checklist to the pilot and highlight the relevant indicators and switches during startup. Use the Jester menu to tell Jester when a check/step is complete.

.. image:: /images/jester/highlight.png


HB DCS F-14 Specific Configuration Options
******************************************

The Heatblur F-14 in DCS has a set of options available affecting only the F-14.
These are located under **OPTIONS** -> **SPECIAL** -> **F-14B** on the main DCS menu.

The available options are:

+-----------------------------------------------------------+-----------------------------------------------------------------------------------------------+
| Control                                                   | Function                                                                                      |
+===========================================================+===============================================================================================+
| Radio Menu and PTT Behavior                               | Sets up how the radio PTT buttons affect the DCS radio menu, useful if PTTs are used for SRS. |
+-----------------------------------------------------------+-----------------------------------------------------------------------------------------------+
| **Jester AI Options:**                                    |                                                                                               |
+-----------------------------------------------------------+-----------------------------------------------------------------------------------------------+
| Use Head Movement in Order to Select Items in Jester Menu | Enable use of head movement with VR or Track-IR to select Jester Menu items.                  |
+-----------------------------------------------------------+-----------------------------------------------------------------------------------------------+
| Boring Jester                                             | Disables Jester embellishments and jokes. Currently not implemented.                          |
+-----------------------------------------------------------+-----------------------------------------------------------------------------------------------+
| Switch PD-STT to P-STT lock when going WVR                | Jester will automatically switch to P-STT within ACM ranges.                                  |
+-----------------------------------------------------------+-----------------------------------------------------------------------------------------------+
| Jester Menu Camera                                        | Enables or disables live Jester view on the Jester Menu Radial.                               |
+-----------------------------------------------------------+-----------------------------------------------------------------------------------------------+


.. _MESET:

DCS Mission Editor Functions Specific to the HB DCS F-14
********************************************************

The F-14 has special options and waypoints available in the DCS Mission Editor.

Aircraft specific options are set up under the Additional Properties for Aircraft page available when setting up an aircraft group containing F-14s.

The waypoints, apart from waypoint 1-3 and Home Base are set up using the Navigation Target Points page also available when configuring an aircraft group containing F-14s.


Heatblur DCS F-14 Specific Options in the Mission Editor
========================================================

+---------------------------------+------------------------------------------------------------------------------------+
| Option                          | Sets                                                                               |
+=================================+====================================================================================+
| M-61 Burst Mode                 | Sets M-61 maximum burst length, manual lets cannon fire until empty.               |
+---------------------------------+------------------------------------------------------------------------------------+
| AN/ALE-39 Loadout               | Sets AN/ALE-39 countermeasure launcher loadout.                                    |
+---------------------------------+------------------------------------------------------------------------------------+
| Fill LAU-138 With Chaff         | Sets whether LAU-138s are empty or loaded with chaff on aircraft spawn.            |
+---------------------------------+------------------------------------------------------------------------------------+
| INS Reference Alignment Stored  | Sets whether a Reference Alignment is prestored for the INS on aircraft spawn.     |
+---------------------------------+------------------------------------------------------------------------------------+
| TACAN Channel Presel (0 = Auto) | Sets preselected TACAN channel on aircraft spawn. 0 sets closest station on spawn. |
+---------------------------------+------------------------------------------------------------------------------------+
| TACAN Band                      | Sets preselected TACAN band on aircraft spawn. X or Y.                             |
+---------------------------------+------------------------------------------------------------------------------------+
| ILS Channel Presel              | Sets preselected ICLS channel on aircraft spawn.                                   |
+---------------------------------+------------------------------------------------------------------------------------+
| KY-28 Encryption Key            | Sets what encryption key is loaded into the KY-28 on aircraft spawn.               |
+---------------------------------+------------------------------------------------------------------------------------+
| Laser Code 1st-4th Digit        | Sets preset laser code for loaded laser guided munitions on aircraft spawn.        |
+---------------------------------+------------------------------------------------------------------------------------+


F-14 Waypoints in the Mission Editor
====================================

As the F-14's navigational system only has three numbered waypoints, most other waypoints are set using Navigation Target Points.

Waypoint 1 through 3 are set from their respective waypoints in the mission editor.

Home Base is set to the landing waypoint.

The rest are set by creating and naming Navigation Target Points as per below list.

+-------------------------------+---------------------------+
| Waypoint                      | Set by waypoint with name |
+===============================+===========================+
| Fix Point                     | FP                        |
+-------------------------------+---------------------------+
| Initial Point                 | IP                        |
+-------------------------------+---------------------------+
| Surface Target                | ST                        |
+-------------------------------+---------------------------+
| Defended Point                | DP                        |
+-------------------------------+---------------------------+
| Hostile Area                  | HA                        |
+-------------------------------+---------------------------+
| Datalink Waypoint 1 Through 3 | DLWP1, DLWP2 and DLWP3    |
+-------------------------------+---------------------------+
| Datalink Surface Target       | DLST                      |
+-------------------------------+---------------------------+
| Datalink Fixed Point          | DLFP                      |
+-------------------------------+---------------------------+