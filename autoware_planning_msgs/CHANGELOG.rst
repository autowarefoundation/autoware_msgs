^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package autoware_planning_msgs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

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
* fix: planning_msg (`#76 <https://github.com/youtalk/autoware_msgs/issues/76>`_)
  * fix:planning_msg
  * fix:planning_msg
  ---------
* feat(autoware_planning_msgs): migrate autoware_auto_planning_msg to autoware_planning_msg (`#66 <https://github.com/youtalk/autoware_msgs/issues/66>`_)
  * add-autoware-planning-msg
  * add-autoware-planning-msg
  * add-autoware-planning-msg
  * add-autoware-planning-msg
  * add-autoware-planning-msg
  * delete old port
  * delete old port
  * delete old port
  * delete old port
  * add-autoware-planning-msg
  * style(pre-commit): autofix
  ---------
  Co-authored-by: pre-commit-ci[bot] <66853113+pre-commit-ci[bot]@users.noreply.github.com>
  Co-authored-by: Ryohsuke Mitsudome <43976834+mitsudome-r@users.noreply.github.com>
* feat(autoware_planning_msgs): remove SetPoseWithUuidStamped (`#59 <https://github.com/youtalk/autoware_msgs/issues/59>`_)
  * feat: rename route with uuid
  * feat: remove route with uuid
  ---------
* feat: remove set route service (`#58 <https://github.com/youtalk/autoware_msgs/issues/58>`_)
* feat(autoware_planning_msgs): add allow_modification option (`#55 <https://github.com/youtalk/autoware_msgs/issues/55>`_)
  * feat(autoware_planning_msgs): add allow_modification option to PoseWithUuidStamped
  * move allow_modification
  ---------
* feat(autoware_planning_msgs): add the service to set uuid pose (`#54 <https://github.com/youtalk/autoware_msgs/issues/54>`_)
* feat(autoware_planning_msgs): move header to the top in PoseWithUuidStamped (`#50 <https://github.com/youtalk/autoware_msgs/issues/50>`_)
* feat(autoware_planning_msgs): change PoseWithUuid to PoseStampedWithUuid (`#47 <https://github.com/youtalk/autoware_msgs/issues/47>`_)
* feat(autoware_planning_msgs): create PoseWithUuid and add uuid to VectorMapRoute  (`#42 <https://github.com/youtalk/autoware_msgs/issues/42>`_)
  feat(autoware_planning_msgs): add PoseWithUuid and add uuid to LaneletRoute
* refactor(planning-messages)!: rename VectorMap to Lanelet (`#41 <https://github.com/youtalk/autoware_msgs/issues/41>`_)
* feat(autoware_planning_msgs): add autoware planning messages (`#33 <https://github.com/youtalk/autoware_msgs/issues/33>`_)
  Co-authored-by: kenji-miyake <kenji-miyake@users.noreply.github.com>
* Contributors: Kosuke Takeuchi, M. Fatih Cırıt, Takagi, Isamu, Yukihiro Saito, Yutaka Kondo, shulanbushangshu
