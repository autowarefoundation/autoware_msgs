^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Changelog for package autoware_system_msgs
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

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
* Contributors: Yutaka Kondo

1.11.0 (2025-10-23)
-------------------

1.10.0 (2025-07-18)
-------------------
* chore: update maintainer for autoware_msgs packages (`#143 <https://github.com/autowarefoundation/autoware_msgs/issues/143>`_)
* Contributors: Ryohsuke Mitsudome

1.9.0 (2025-06-18)
------------------
* feat(autoware_system_msgs): move services from tier4_system_msgs (`#140 <https://github.com/autowarefoundation/autoware_msgs/issues/140>`_)
* Contributors: Ryohsuke Mitsudome

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
* fix: add system msg (`#79 <https://github.com/autowarefoundation/autoware_msgs/issues/79>`_)
  * fix:add system msg
  * fix:add system msgs
  * fix:add system msgs
  * fix:add system msgs
  * style(pre-commit): autofix
  ---------
  Co-authored-by: pre-commit-ci[bot] <66853113+pre-commit-ci[bot]@users.noreply.github.com>
* Contributors: Yutaka Kondo, shulanbushangshu
