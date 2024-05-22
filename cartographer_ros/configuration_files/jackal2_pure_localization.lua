-- Copyright 2016 The Cartographer Authors
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--      http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

include "jackal2.lua"

TRAJECTORY_BUILDER.pure_localization_trimmer = {
  max_submaps_to_keep = 3,
}

-- Reducing Global Latency
POSE_GRAPH.optimize_every_n_nodes = 5 -- default 100
TRAJECTORY_BUILDER_3D.use_online_correlative_scan_matching = true -- default false -- for more computationally intensive localization
-- -- TRAJECTORY_BUILDER.pure_localization = true
-- POSE_GRAPH.global_sampling_ratio = 0.00003 -- default 0.003
-- POSE_GRAPH.constraint_builder.sampling_ratio = 0.003 -- default 0.3
-- MAP_BUILDER.num_background_threads = 8 -- default 4 -- This should be the same as the number of cores which I am not sure about
-- POSE_GRAPH.constraint_builder.min_score = 0.75 -- default 0.55
-- POSE_GRAPH.constraint_builder.fast_correlative_scan_matcher_3d.linear_xy_search_window = 2 -- default 5.
-- POSE_GRAPH.constraint_builder.fast_correlative_scan_matcher_3d.linear_z_search_window = 0.5 -- default 1.
-- POSE_GRAPH.constraint_builder.fast_correlative_scan_matcher_3d.angular_search_window = math.rad(5.) -- default math.rad(15.)
-- POSE_GRAPH.global_constraint_search_after_n_seconds = 30 -- default 10

-- -- Tuning Local SLAM for Lower Latency
-- TRAJECTORY_BUILDER_3D.voxel_filter_size = 0.3 -- default 0.15
-- TRAJECTORY_BUILDER_3D.submaps.high_resolution = 0.25 -- default 0.1
-- TRAJECTORY_BUILDER_3D.submaps.low_resolution = 0.6 -- default 0.45
-- TRAJECTORY_BUILDER_3D.submaps.num_range_data = 50 -- default 160

-- TRAJECTORY_BUILDER_3D.high_resolution_adaptive_voxel_filter.min_num_points = 100 -- default 150
-- TRAJECTORY_BUILDER_3D.high_resolution_adaptive_voxel_filter.max_range = 10. -- default 15.
-- TRAJECTORY_BUILDER_3D.high_resolution_adaptive_voxel_filter.max_length = 3. -- default 2.

-- TRAJECTORY_BUILDER_3D.low_resolution_adaptive_voxel_filter.min_num_points = 125 -- default 200
-- TRAJECTORY_BUILDER_3D.low_resolution_adaptive_voxel_filter.max_range = 30. -- default 60.
-- TRAJECTORY_BUILDER_3D.low_resolution_adaptive_voxel_filter.max_length = 5. -- default 4.

return options
