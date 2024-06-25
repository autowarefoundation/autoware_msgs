^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package autoware_perception_msgs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1.1.0 (2024-05-10)
------------------
* chore: update `package.xml` and fix `CMakeLists.txt` (`#91 <https://github.com/youtalk/autoware_msgs/issues/91>`_)
  update package.xml and fix cmakefiles
* feat: update msg definitions (`#87 <https://github.com/youtalk/autoware_msgs/issues/87>`_)
  * feat(autoware_perception_msgs): Add DetectedObjects messages and TrackedObjects messages
  * feat!(autoware_planning_msgs): remove PathWithLaneId msgs
  * feat!(autoware_perception_msgs): rename traffic signals to traffic lights
  * remove control mode command msg
  * fix(autoware_vehicle_msgs): remove ControlModeCommands.msg in CMakeLists.txt (`#90 <https://github.com/youtalk/autoware_msgs/issues/90>`_)
  * feat(autoware_vehicle_msgs)!: remove VehicleControlCommand, VehicleKinematicState, and VehicleOdometry messages (`#88 <https://github.com/youtalk/autoware_msgs/issues/88>`_)
  feat!(autoware_vehicle_msgs): remove VehicleControlCommand, VehicleKinematicState, and VehicleOdometry messages
  * Revert "feat!(autoware_perception_msgs): rename traffic signals to traffic lights"
  This reverts commit 768bb854036fc94db4364168e68d48b21401c17b.
  * add TrafficLight msgs
  * add todo
  ---------
  Co-authored-by: Ryohsuke Mitsudome <ryohsuke.mitsudome@tier4.jp>
  Co-authored-by: Ryohsuke Mitsudome <43976834+mitsudome-r@users.noreply.github.com>
  Co-authored-by: Yutaka Kondo <yutaka.kondo@youtalk.jp>
* fix(autoware_perception_msgs): fix sequence length to dynamic (`#74 <https://github.com/youtalk/autoware_msgs/issues/74>`_)
* fix(autoware_perception_msgs): fix error in PredictedObject.msg (`#72 <https://github.com/youtalk/autoware_msgs/issues/72>`_)
* feat(autoware_perception_msgs): add PredictedObjects msgs (`#63 <https://github.com/youtalk/autoware_msgs/issues/63>`_)
  * feat(autoware_perception_msgs): add PredictedObjects msgs
  * style(pre-commit): autofix
  * feat(autoware_perception_msgs): fix conflicting msgs
  ---------
  Co-authored-by: pre-commit-ci[bot] <66853113+pre-commit-ci[bot]@users.noreply.github.com>
  Co-authored-by: Ryohsuke Mitsudome <43976834+mitsudome-r@users.noreply.github.com>
* feat(autoware_perception_msgs): remove traffic light messages (`#70 <https://github.com/youtalk/autoware_msgs/issues/70>`_)
* revert: "fix(autoware_perception_msgs): add Header to tlr messages and change TrafficLightElement.msg status" (`#69 <https://github.com/youtalk/autoware_msgs/issues/69>`_)
  Revert "fix(autoware_perception_msgs): add Header to tlr messages and change TrafficLightElement.msg status (`#68 <https://github.com/youtalk/autoware_msgs/issues/68>`_)"
  This reverts commit 18588df6eb7e7f694bd725bebd44f569f616964f.
* fix(autoware_perception_msgs): add Header to tlr messages and change TrafficLightElement.msg status (`#68 <https://github.com/youtalk/autoware_msgs/issues/68>`_)
  * add UP_LEFT_ARROW and UP_RIGHT_ARROW to traffic_light_element
  * add header to tlr messages and change status values of TrafficLight.msg
  ---------
* feat(autoware_perception_msgs): add UP_LEFT_ARROW and UP_RIGHT_ARROW to traffic_light_element (`#67 <https://github.com/youtalk/autoware_msgs/issues/67>`_)
  add UP_LEFT_ARROW and UP_RIGHT_ARROW to traffic_light_element
* build: package.xml dependencies  (`#60 <https://github.com/youtalk/autoware_msgs/issues/60>`_)
  * mark rosidl_default_generators as <build_depend>
  * add missing rosidl_default_runtime <exec_depend>
  ---------
* feat(autoware_perception_msgs): add traffic light messages (`#48 <https://github.com/youtalk/autoware_msgs/issues/48>`_)
* Contributors: Mingyu1991, Takagi, Isamu, Vincent Richard, Yukihiro Saito, Yutaka Kondo, beginningfan
