^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package autoware_vehicle_msgs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1.13.0 (2026-05-20)
-------------------
* feat(`autoware_vehicle_msgs`): port actuation command/status messages from `tier4_vehicle_msgs` (`#165 <https://github.com/autowarefoundation/autoware_msgs/issues/165>`_)
  * feat(`autoware_vehicle_msgs`): add actuation command/status messages
  * rename: `[accel,brake,steer]_status` to `[accel,brake,steer]_report`
  * Apply the following review comment
  - https://github.com/autowarefoundation/autoware_msgs/pull/165#discussion_r3172838038
  * rename: `ActuationStatus.msg` -> `ActuationReport.msg`
  * Apply the following review comment
  - https://github.com/autowarefoundation/autoware_msgs/pull/165#discussion_r3172838038
  * docs(autoware_vehicle_msgs): add README describing actuation messages
  Documents ActuationCommand / ActuationCommandStamped / ActuationReport /
  ActuationReportStamped, including the relationship to autoware_control_msgs/Control.msg,
  per-field ranges and units, and the three steer_cmd modes selected by
  convert_steer_cmd_method.
  * refactor: make field name explicit (`status` => `actuation_report`)
  Co-authored-by: Mete Fatih Cırıt <mfc@autoware.org>
  * refactor: make field name explicit (`actuation` => `actuation_command`)
  Co-authored-by: Mete Fatih Cırıt <mfc@autoware.org>
  * bug: fix format violation (details below)
  * The format is defined in the following official page
  - https://autowarefoundation.github.io/autoware-documentation/main/contributing/coding-guidelines/ros-nodes/message-guidelines/#format
  * fix: `README.md`, based on the information below
  * https://autowarefoundation.github.io/autoware_universe/main/vehicle/autoware_accel_brake_map_calibrator/
  * style(pre-commit): autofix
  * fix: by `pre-commit`
  ---------
  Co-authored-by: Mete Fatih Cırıt <mfc@autoware.org>
  Co-authored-by: pre-commit-ci[bot] <66853113+pre-commit-ci[bot]@users.noreply.github.com>
* refactor(autoware_msgs): add USE_SCOPED_HEADER_INSTALL_DIR (`#161 <https://github.com/autowarefoundation/autoware_msgs/issues/161>`_)
  Co-authored-by: github-actions <github-actions@github.com>
* Contributors: Junya Sasaki, Vishal Chauhan

1.12.0 (2026-04-27)
-------------------
* docs: add documentation to remaining msg/srv fields (`#156 <https://github.com/autowarefoundation/autoware_msgs/issues/156>`_)
  * docs: add unit and range documentation to message fields
  Add inline comments to clarify units and valid ranges for:
  - TrafficLightElement.msg: confidence range (0.0-1.0)
  - ObjectClassification.msg: probability range (0.0-1.0)
  - SteeringReport.msg: steering_tire_angle unit [rad]
  - VelocityReport.msg: velocity units [m/s], heading_rate [rad/s]
  Related to https://github.com/autowarefoundation/autoware_adapi_msgs/issues/106
  * add comments
  * style(pre-commit): autofix
  * Apply suggestions from code review
  Co-authored-by: Mete Fatih Cırıt <mfc@autoware.org>
  * Update autoware_system_msgs/srv/ChangeOperationMode.srv
  Co-authored-by: Mete Fatih Cırıt <mfc@autoware.org>
  * Update autoware_vehicle_msgs/srv/ControlModeCommand.srv
  Co-authored-by: Mete Fatih Cırıt <mfc@autoware.org>
  * Update autoware_planning_msgs/srv/SetWaypointRoute.srv
  ---------
  Co-authored-by: pre-commit-ci[bot] <66853113+pre-commit-ci[bot]@users.noreply.github.com>
  Co-authored-by: Mete Fatih Cırıt <mfc@autoware.org>
* docs: add unit and range documentation to message fields (`#155 <https://github.com/autowarefoundation/autoware_msgs/issues/155>`_)
  Add inline comments to clarify units and valid ranges for:
  - TrafficLightElement.msg: confidence range (0.0-1.0)
  - ObjectClassification.msg: probability range (0.0-1.0)
  - SteeringReport.msg: steering_tire_angle unit [rad]
  - VelocityReport.msg: velocity units [m/s], heading_rate [rad/s]
  Related to https://github.com/autowarefoundation/autoware_adapi_msgs/issues/106
* Contributors: Yutaka Kondo

1.11.0 (2025-10-23)
-------------------

1.10.0 (2025-07-18)
-------------------
* chore: update maintainer for autoware_msgs packages (`#143 <https://github.com/autowarefoundation/autoware_msgs/issues/143>`_)
* Contributors: Ryohsuke Mitsudome

1.9.0 (2025-06-18)
------------------

1.8.0 (2025-05-21)
------------------
* chore: fix email domain (`#133 <https://github.com/autowarefoundation/autoware_msgs/issues/133>`_)
* chore: update maintainers (`#132 <https://github.com/autowarefoundation/autoware_msgs/issues/132>`_)
* Contributors: Mete Fatih Cırıt

1.7.0 (2025-04-21)
------------------

1.6.0 (2025-04-07)
------------------

1.5.0 (2025-04-02)
------------------

1.4.0 (2025-02-25)
------------------
* fix(autoware_msgs): fix links to issues in CHANGELOG.rst files (`#108 <https://github.com/autowarefoundation/autoware_msgs/issues/108>`_)
* Contributors: Esteve Fernandez

1.3.0 (2024-11-25)
------------------

1.2.0 (2024-10-01)
------------------

1.1.0 (2024-05-10)
------------------
* chore: update `package.xml` and fix `CMakeLists.txt` (`#91 <https://github.com/autowarefoundation/autoware_msgs/issues/91>`_)
  update package.xml and fix cmakefiles
* feat: update msg definitions (`#87 <https://github.com/autowarefoundation/autoware_msgs/issues/87>`_)
  * feat(autoware_perception_msgs): Add DetectedObjects messages and TrackedObjects messages
  * feat!(autoware_planning_msgs): remove PathWithLaneId msgs
  * feat!(autoware_perception_msgs): rename traffic signals to traffic lights
  * remove control mode command msg
  * fix(autoware_vehicle_msgs): remove ControlModeCommands.msg in CMakeLists.txt (`#90 <https://github.com/autowarefoundation/autoware_msgs/issues/90>`_)
  * feat(autoware_vehicle_msgs)!: remove VehicleControlCommand, VehicleKinematicState, and VehicleOdometry messages (`#88 <https://github.com/autowarefoundation/autoware_msgs/issues/88>`_)
  feat!(autoware_vehicle_msgs): remove VehicleControlCommand, VehicleKinematicState, and VehicleOdometry messages
  * Revert "feat!(autoware_perception_msgs): rename traffic signals to traffic lights"
  This reverts commit 768bb854036fc94db4364168e68d48b21401c17b.
  * add TrafficLight msgs
  * add todo
  ---------
  Co-authored-by: Ryohsuke Mitsudome <ryohsuke.mitsudome@tier4.jp>
  Co-authored-by: Ryohsuke Mitsudome <43976834+mitsudome-r@users.noreply.github.com>
  Co-authored-by: Yutaka Kondo <yutaka.kondo@youtalk.jp>
* fix(autoware_vehicle_msgs): add missed vehicle msgs (`#80 <https://github.com/autowarefoundation/autoware_msgs/issues/80>`_)
  * fix(autoware_vehicle_msgs): add missed vehicle msgs
  * style(pre-commit): autofix
  ---------
  Co-authored-by: pre-commit-ci[bot] <66853113+pre-commit-ci[bot]@users.noreply.github.com>
* feat(autoware_vehicle_msgs): add autoware_vehicle_msgs (`#78 <https://github.com/autowarefoundation/autoware_msgs/issues/78>`_)
  * feat(autoware_vehicle_msgs): add autoware_vehicle_msgs
  * feat(autoware_vehicle_msgs): add ControlModeCommand.srv
  * style(pre-commit): autofix
  * fix(autoware_vehicle_msgs): remove msgs unused
  * style(pre-commit): autofix
  ---------
  Co-authored-by: pre-commit-ci[bot] <66853113+pre-commit-ci[bot]@users.noreply.github.com>
* Contributors: Yukihiro Saito, Yutaka Kondo, beginningfan
