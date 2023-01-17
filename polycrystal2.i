[Mesh]
  file = test.inp
[]

[GlobalParams]
  displacements = 'disp_x disp_y'
[]

[Variables]
  [./disp_x]
    order = FIRST
    family = LAGRANGE
  [../]

  [./disp_y]
    order = FIRST
    family = LAGRANGE
  [../]
[]

[UserObjects]
  [./prop_read]
    type = PropertyReadFile
    prop_file_name = 'euler_ang_test.inp'
    # Enter file data as prop#1, prop#2, .., prop#nprop
    nprop = 3
	nblock = 3
    read_type = block
  [../]
[]


[GlobalParams]
  volumetric_locking_correction = true
[]

[AuxVariables]
  [./stress_xx]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [./stress_yy]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [./stress_zz]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [slip_increment_0]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_1]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_2]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_3]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_4]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_5]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_6]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_7]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_8]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_9]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_10]
    order = CONSTANT
    family = MONOMIAL
  []
  [slip_increment_11]
    order = CONSTANT
    family = MONOMIAL
  []
  [shearstrain_0]
    order = CONSTANT
    family = MONOMIAL
  []
  [shearstrain_1]
    order = CONSTANT
    family = MONOMIAL
  []
  [shearstrain_2]
    order = CONSTANT
    family = MONOMIAL
  []
  [shearstrain_3]
    order = CONSTANT
    family = MONOMIAL
  []
  [shearstrain_4]
    order = CONSTANT
    family = MONOMIAL
  []
  [shearstrain_5]
    order = CONSTANT
    family = MONOMIAL
  []
  [shearstrain_6]
    order = CONSTANT
    family = MONOMIAL
  []
  [shearstrain_7]
    order = CONSTANT
    family = MONOMIAL
  []
  [shearstrain_8]
    order = CONSTANT
    family = MONOMIAL
  []
  [shearstrain_9]
    order = CONSTANT
    family = MONOMIAL
  []
  [shearstrain_10]
    order = CONSTANT
    family = MONOMIAL
  []
  [shearstrain_11]
    order = CONSTANT
    family = MONOMIAL
  []
  [./fp_xx]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [./e_xx]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [./elastic_strain_xx]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [./tot_strain_xx]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [./rotout]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [./vonmises]
    order = CONSTANT
    family = MONOMIAL
  [../]
  [euler_angle_1]
    order = CONSTANT
    family = MONOMIAL
  []
  [euler_angle_2]
    family = MONOMIAL
  []
  [euler_angle_3]
    order = CONSTANT
    family = MONOMIAL
  []

  [./resid_x]  #-----------This is for the reaction force along the x direction
  [../]

  [./resid_y]  #-----------This is for the reaction force along the y direction
  [../]

[]

[Functions]
  [./tdisp]
    type = ParsedFunction
    value = 0.01*t
  [../]
[]



[AuxKernels]
  [./stress_xx]
    type = RankTwoAux
    variable = stress_xx
    rank_two_tensor = stress
    index_j = 0
    index_i = 0
    execute_on = timestep_end
  [../]
  [./stress_yy]
    type = RankTwoAux
    rank_two_tensor = stress
    variable = stress_yy
    index_i = 1
    index_j = 1
    execute_on = timestep_end
  [../]
  [./stress_zz]
    type = RankTwoAux
    rank_two_tensor = stress
    variable = stress_zz
    index_i = 2
    index_j = 2
    execute_on = timestep_end
  [../]
  [slip_increment_0]
   type = MaterialStdVectorAux
   variable = slip_increment_0
   property = slip_increment
   index = 0
   execute_on = timestep_end
  []
  [slip_increment_1]
   type = MaterialStdVectorAux
   variable = slip_increment_1
   property = slip_increment
   index = 1
   execute_on = timestep_end
  []
  [slip_increment_2]
   type = MaterialStdVectorAux
   variable = slip_increment_2
   property = slip_increment
   index = 2
   execute_on = timestep_end
  []
  [slip_increment_3]
   type = MaterialStdVectorAux
   variable = slip_increment_3
   property = slip_increment
   index = 3
   execute_on = timestep_end
  []
  [slip_increment_4]
   type = MaterialStdVectorAux
   variable = slip_increment_4
   property = slip_increment
   index = 4
   execute_on = timestep_end
  []
  [slip_increment_5]
   type = MaterialStdVectorAux
   variable = slip_increment_5
   property = slip_increment
   index = 5
   execute_on = timestep_end
  []
  [slip_increment_6]
   type = MaterialStdVectorAux
   variable = slip_increment_6
   property = slip_increment
   index = 6
   execute_on = timestep_end
  []
  [slip_increment_7]
   type = MaterialStdVectorAux
   variable = slip_increment_7
   property = slip_increment
   index = 7
   execute_on = timestep_end
  []
  [slip_increment_8]
   type = MaterialStdVectorAux
   variable = slip_increment_8
   property = slip_increment
   index = 8
   execute_on = timestep_end
  []
  [slip_increment_9]
   type = MaterialStdVectorAux
   variable = slip_increment_9
   property = slip_increment
   index = 9
   execute_on = timestep_end
  []
  [slip_increment_10]
   type = MaterialStdVectorAux
   variable = slip_increment_10
   property = slip_increment
   index = 10
   execute_on = timestep_end
  []
  [slip_increment_11]
   type = MaterialStdVectorAux
   variable = slip_increment_11
   property = slip_increment
   index = 11
   execute_on = timestep_end
  []
  [shearstrain_0]
   type = MaterialStdVectorAux
   variable = shearstrain_0
   property = shearstrain
   index = 0
   execute_on = timestep_end
  []
  [shearstrain_1]
   type = MaterialStdVectorAux
   variable = shearstrain_1
   property = shearstrain
   index = 1
   execute_on = timestep_end
  []
  [shearstrain_2]
   type = MaterialStdVectorAux
   variable = shearstrain_2
   property = shearstrain
   index = 2
   execute_on = timestep_end
  []
  [shearstrain_3]
   type = MaterialStdVectorAux
   variable = shearstrain_3
   property = shearstrain
   index = 3
   execute_on = timestep_end
  []
  [shearstrain_4]
   type = MaterialStdVectorAux
   variable = shearstrain_4
   property = shearstrain
   index = 4
   execute_on = timestep_end
  []
  [shearstrain_5]
   type = MaterialStdVectorAux
   variable = shearstrain_5
   property = shearstrain
   index = 5
   execute_on = timestep_end
  []
  [shearstrain_6]
   type = MaterialStdVectorAux
   variable = shearstrain_6
   property = shearstrain
   index = 6
   execute_on = timestep_end
  []
  [shearstrain_7]
   type = MaterialStdVectorAux
   variable = shearstrain_7
   property = shearstrain
   index = 7
   execute_on = timestep_end
  []
  [shearstrain_8]
   type = MaterialStdVectorAux
   variable = shearstrain_8
   property = shearstrain
   index = 8
   execute_on = timestep_end
  []
  [shearstrain_9]
   type = MaterialStdVectorAux
   variable = shearstrain_9
   property = shearstrain
   index = 9
   execute_on = timestep_end
  []
  [shearstrain_10]
   type = MaterialStdVectorAux
   variable = shearstrain_10
   property = shearstrain
   index = 10
   execute_on = timestep_end
  []
  [shearstrain_11]
   type = MaterialStdVectorAux
   variable = shearstrain_11
   property = shearstrain
   index = 11
   execute_on = timestep_end
  []
  [./fp_xx]
    type = RankTwoAux
    variable = fp_xx
    rank_two_tensor = plastic_deformation_gradient
    index_j = 0
    index_i = 0
    execute_on = timestep_end
  [../]
  [./e_xx]
    type = RankTwoAux
    variable = e_xx
    rank_two_tensor = total_lagrangian_strain
    index_j = 0
    index_i = 0
    execute_on = timestep_end
  [../]
  [./elastic_strain_xx]
    type = RankTwoAux
    rank_two_tensor = elastic_strain
    variable = elastic_strain_xx
    index_i = 0
    index_j = 0
    execute_on = timestep_end
  [../]
  [./tot_strain_xx]
    type = RankTwoAux
    rank_two_tensor = total_strain
    variable = tot_strain_xx
    index_i = 0
    index_j = 0
    execute_on = timestep_end
  [../]
  [./vonmises]
    type = RankTwoScalarAux
    rank_two_tensor = stress
    variable = vonmises
    scalar_type = VonMisesStress
    execute_on = timestep_end
  [../]
  [euler_angle_1]
    type = MaterialRealVectorValueAux
    variable = euler_angle_1
    property = updated_Euler_angle
    component = 0
    execute_on = timestep_end
  []
  [euler_angle_2]
    type = MaterialRealVectorValueAux
    variable = euler_angle_2
    property = updated_Euler_angle
    component = 1
    execute_on = timestep_end
  []
  [euler_angle_3]
    type = MaterialRealVectorValueAux
    variable = euler_angle_3
    property = updated_Euler_angle
    component = 2
    execute_on = timestep_end
  []
[]

[BCs]
  [fix_x]
    type = DirichletBC
    variable = disp_x
    boundary = 'FixedX'
    value = 0
  []
  [fix_y]
    type = DirichletBC
    variable = disp_y
    boundary = 'FixedY'
    value = 0
  []
  [tdisp]
    type = FunctionDirichletBC
    variable = disp_x
    boundary = 'DispX'
    function = '1.0*t'
  []
[]

[Modules/TensorMechanics/Master/all]
  strain = FINITE
  add_variables = true
    save_in = 'resid_x resid_y'
[]

[Materials]
  [./elasticity_tensor]
    type = ComputeElasticityTensorCP
    C_ijkl = '243.3e3 156.7e3 156.7e3 243.3e3 156.7e3 243.3e3 117.8e3 117.8e3 117.8e3'
    fill_method = symmetric9
    read_prop_user_object = prop_read
  [../]
[./stress]
  type = ComputeMultipleCrystalPlasticityStressAddStateVars
  crystal_plasticity_models = 'trial_xtalpl'
  tan_mod_type = exact
[../]
[./trial_xtalpl]
  type = CrystalPlasticityKalidindiUpdateAddStateVars
  number_slip_systems = 12
  slip_sys_file_name = input_slip_sys.txt

    r=1.0  #-- latent hardening coefficient
    h=916.5 #-- h0 in the hardening rule
    t_sat=109.8 #-- g_sat
    gss_a=1.0  #-- exponential in the hardening rule
    ao=1.15e-6  #-- this is \dot{gammo}_0  
    xm=0.1 #-- m, the exponential in the power law flow rule
    gss_initial=60.8 # Initial slip resistance
[../]

  [updated_euler_angle]
    type = ComputeUpdatedEulerAngle
    radian_to_degree = true
  []

[]
[Postprocessors]
  [./stress_xx]
    type = ElementAverageValue
    variable = stress_xx
  [../]
  [./stress_yy]
    type = ElementAverageValue
    variable = stress_yy
  [../]
  [./stress_zz]
    type = ElementAverageValue
    variable = stress_zz
  [../]
  [slip_increment_0]
    type = ElementAverageValue
    variable = slip_increment_0
  []
  [slip_increment_1]
    type = ElementAverageValue
    variable = slip_increment_1
  []
  [slip_increment_2]
    type = ElementAverageValue
    variable = slip_increment_2
  []
  [slip_increment_3]
    type = ElementAverageValue
    variable = slip_increment_3
  []
  [slip_increment_4]
    type = ElementAverageValue
    variable = slip_increment_4
  []
  [slip_increment_5]
    type = ElementAverageValue
    variable = slip_increment_5
  []
  [slip_increment_6]
    type = ElementAverageValue
    variable = slip_increment_6
  []
  [slip_increment_7]
    type = ElementAverageValue
    variable = slip_increment_7
  []
  [slip_increment_8]
    type = ElementAverageValue
    variable = slip_increment_8
  []
  [slip_increment_9]
    type = ElementAverageValue
    variable = slip_increment_9
  []
  [slip_increment_10]
    type = ElementAverageValue
    variable = slip_increment_10
  []
  [slip_increment_11]
    type = ElementAverageValue
    variable = slip_increment_11
  []
  [shearstrain_0]
    type = ElementAverageValue
    variable = shearstrain_0
  []
  [shearstrain_1]
    type = ElementAverageValue
    variable = shearstrain_1
  []
  [shearstrain_2]
    type = ElementAverageValue
    variable = shearstrain_2
  []
  [shearstrain_3]
    type = ElementAverageValue
    variable = shearstrain_3
  []
  [shearstrain_4]
    type = ElementAverageValue
    variable = shearstrain_4
  []
  [shearstrain_5]
    type = ElementAverageValue
    variable = shearstrain_5
  []
  [shearstrain_6]
    type = ElementAverageValue
    variable = shearstrain_6
  []
  [shearstrain_7]
    type = ElementAverageValue
    variable = shearstrain_7
  []
  [shearstrain_8]
    type = ElementAverageValue
    variable = shearstrain_8
  []
  [shearstrain_9]
    type = ElementAverageValue
    variable = shearstrain_9
  []
  [shearstrain_10]
    type = ElementAverageValue
    variable = shearstrain_10
  []
  [shearstrain_11]
    type = ElementAverageValue
    variable = shearstrain_11
  []
  [./fp_xx]
    type = ElementAverageValue
    variable = fp_xx
  [../]
  [./e_xx]
    type = ElementAverageValue
    variable = e_xx
  [../]
  [./el_strain_xx]
    type = ElementAverageValue
    variable = elastic_strain_xx
  [../]
  [./tot_strain_xx]
    type = ElementAverageValue
    variable = tot_strain_xx
  [../]
  [./vonmises]
    type = ElementAverageValue
    variable = vonmises
  [../]
  [euler_angle_1]
    type = ElementAverageValue
    variable = euler_angle_1
  []
  [euler_angle_2]
    type = ElementAverageValue
    variable = euler_angle_2
  []
  [euler_angle_3]
    type = ElementAverageValue
    variable = euler_angle_3
  []

[]

[Preconditioning]
  [./smp]
    type = SMP
    full = true
  [../]
[]

[Executioner]
  type = Transient

  #Preconditioned JFNK (default)
  solve_type = 'PJFNK'

  petsc_options_iname = '-pc_type'
  petsc_options_value = 'lu'

  nl_rel_tol = 1e-10
  nl_abs_tol = 1e-10

  dt = 0.01
  dtmax = 0.1
  end_time = 1.0
  dtmin = 0.00000001

  num_steps = 1000000
[]

[Outputs]
  file_base = test
  exodus = true
  csv=true
[]


