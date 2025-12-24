# autoware_map_msgs

## AreaInfo.msg

The message represents an area information. This is intended to be used as a query for partial / differential map loading (see `GetPartialPointCloudMap.srv` and `GetDifferentialPointCloudMap.srv` section).

| field                 | detail | constraint | note |
| --------------------- | ------ | ---------- | ---- |
| `center_x`: `float32` | -      | -          | -    |
| `center_y`: `float32` | -      | -          | -    |
| `radius`: `float32`   | -      | -          | -    |

## PointCloudMapCellMetaData.msg

The message represents the range of pointcloud cell.

| field              | detail | constraint | note |
| ------------------ | ------ | ---------- | ---- |
| `min_x`: `float32` | -      | -          | -    |
| `min_y`: `float32` | -      | -          | -    |
| `max_x`: `float32` | -      | -          | -    |
| `max_y`: `float32` | -      | -          | -    |

## PointCloudMapCellWithID.msg

The message contains a pointcloud data attached with an ID.

| field                                   | detail | constraint | note |
| --------------------------------------- | ------ | ---------- | ---- |
| `cell_id`: `string`                     | -      | -          | -    |
| `pointcloud`: `sensor_msgs/PointCloud2` | -      | -          | -    |
| `metadata`: `PointCloudMapCellMetaData` | -      | -          | -    |

## GetPartialPointCloudMap.srv

Given an area query (`AreaInfo`), the response is expected to contain the PCD maps (each of which attached with unique ID) whose area overlaps with the query.

<img src="./media/partial_area_loading.png" alt="drawing" width="400"/>

| field                                                  | detail                                                      | constraint | note |
| ------------------------------------------------------ | ----------------------------------------------------------- | ---------- | ---- |
| (req)                                                  |                                                             |            |      |
| `area`: `AreaInfo`                                     | -                                                           | -          | -    |
| (res)                                                  |                                                             |            |      |
| `header`: `std_msgs/Header`                            | The timestamp when the data is generated or to be published | -          | -    |
| `new_pointcloud_with_ids`: `PointCloudMapCellWithID[]` | -                                                           | -          | -    |

## GetDifferentialPointCloudMap.srv

Given an area query and the IDs that the client node already has, the response is expected to contain the PCD maps (each of which attached with unique ID) that...

- overlaps with the area query
- is not possessed by the client node

Let $X_0$ be a set of PCD map ID that the client node has, $X_1$ be a set of PCD map ID that overlaps with the area query, ${\rm pcd}(id)$ be a function that returns PCD data that corresponds to ID $id$. In this case, the response would be

- `loaded_pcds`: $\lbrace [id,{\rm pcd}(id)]~|~id \in X_1 \backslash X_0 \rbrace$
- `ids_to_remove`: $\lbrace id~|~id \in X_0 \backslash X_1 \rbrace$

( $x \in A\backslash B \iff x \in A \wedge x \notin B$ )

<img src="./media/differential_area_loading.gif" alt="drawing" width="400"/>

| field                                                  | detail                                                      | constraint                              | note |
| ------------------------------------------------------ | ----------------------------------------------------------- | --------------------------------------- | ---- |
| (req)                                                  |                                                             |                                         |      |
| `area`: `AreaInfo`                                     | -                                                           | -                                       | -    |
| `cache_ids`: `string[]`                                | -                                                           | -                                       | -    |
| (res)                                                  |                                                             |                                         |      |
| `header`: `std_msgs/Header`                            | The timestamp when the data is generated or to be published | -                                       | -    |
| `new_pointcloud_with_ids`: `PointCloudMapCellWithID[]` | -                                                           | -                                       | -    |
| `ids_to_remove`: `string[]`                            | -                                                           | This field is the subset of `cache_ids` | -    |

## GetSelectedPointCloudMap.srv

Given IDs query, the response is expected to contain the PCD maps (each of which attached with unique ID) specified by query. Before using this interface, the client is expected to receive the `PointCloudMapCellMetaDataWithID.msg` metadata to retrieve information about IDs.

## PointCloudMapMetaData.msg

| field                                                | detail                                                      | constraint | note |
| ---------------------------------------------------- | ----------------------------------------------------------- | ---------- | ---- |
| `header`: `std_msgs/Header`                          | The timestamp when the data is generated or to be published | -          | -    |
| `metadata_list`: `PointCloudMapCellMetaDataWithID[]` | -                                                           | -          | -    |

### PointCloudMapCellMetaDataWithID.msg

| field                                   | detail | constraint | note |
| --------------------------------------- | ------ | ---------- | ---- |
| `cell_id`: `string`                     | -      | -          | -    |
| `metadata`: `PointCloudMapCellMetaData` | -      | -          | -    |

## LaneletMapBin.msg

| field                          | detail                                                      | constraint                         | note                                                    |
| ------------------------------ | ----------------------------------------------------------- | ---------------------------------- | ------------------------------------------------------- |
| `header`: `std_msgs/Header`    | The timestamp when the data is generated or to be published | -                                  | -                                                       |
| `version_map_format`: `string` | For Lanelet2 map, "format_version" tag is used              | this should be the form of "x.y.z" | -                                                       |
| `version_map`: `string`        | This field is not used by Autoware implementation           | -                                  | -                                                       |
| `name_map`: `string`           | This field is reserved                                      | -                                  | -                                                       |
| `data`: `uint8[]`              | This field contains serialized data of Lanelet map          | -                                  | Currently this field is obtained by Boost.Serialization |

## MapProjectorInfo.msg

The message contains the information required to project global coordinates to local coordinates used by Autoware, which includes the name of the projection method and the parameters for the projection.
For further information, please refer to [map_projection_loader](https://autowarefoundation.github.io/autoware_core/main/map/autoware_map_projection_loader/).

| field                                    | detail                                               | constraint  | note |
| ---------------------------------------- | ---------------------------------------------------- | ----------- | ---- |
| `projector_type`: `string`               | -                                                    | -           | -    |
| `vertical_datum`: `string`               | -                                                    | -           | -    |
| `mgrs_grid`: `string`                    | this field is valid iff `projector_type` is `"MGRS"` | -           | -    |
| `map_origin`: `geographic_msgs/GeoPoint` | this field is used for some projector type           | -           | -    |
| `scale_factor`: `float32`                | this value is fixed for each projector type          | fixed value | -    |
