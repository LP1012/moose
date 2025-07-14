[Mesh]
  [gmg]
    type = GeneratedMeshGenerator
    dim = 2
    nx = 4
    ny = 4
    xmax = 0
    xmin = -1
    ymax = 5.5
    ymin = 4.5
  []
  [bscg]
    type = BSplineCurveGenerator
    start_point = '0 5 0'
    end_point = '5 0 0'
    start_direction = '1 0 0'
    end_direction = '0 1 0'
    num_elements = 10
  []
  [ext_along_curve]
    type = AdvancedExtruderGenerator
    input = gmg
    extrusion_curve = bscg
  []
  # [stitcher]
  #   type = StitchedMeshGenerator
  #   inputs = 'gmg ext_along_curve'
  #   stitch_boundaries_pairs = '1 1'
  # []
[]