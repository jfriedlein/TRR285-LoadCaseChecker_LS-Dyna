*KEYWORD
*PARAMETER
$
$#   prmr1      val1     prmr2      val2     prmr3      val3     prmr4      val4
$ Initial implicit time step size
R dt0           1e-3
$ Maximum implicit time step size (for adaptive time stepping)
R DTMAX         1e-2
$ Output interval of the d3plot files
R DT_D3   1e-2
$ Output interval of the remaining output files
R DT_OUT  1e-2
$ End time of the simulation
R tmax    1
$ Choose time integration method (implicit, explicit)
C tIntegr   explicit
$ Number of history variables to be output
I neip    15
$
*INCLUDE
03_control/3_Define_Transformations.inc
$
$ Choose 
*INCLUDE
03_control/3_control-&tIntegr^.inc
$
*DATABASE_EXTENT_BINARY
$#   neiph     neips    maxint    strflg    sigflg    epsflg    rltflg    engflg
     &neip     &neip         3         0         1         1         1         1
$#  cmpflg    ieverp    beamip     dcomp      shge     stssz    n3thdt   ialemat
         0         0         0         1         1         1         2         1
$# nintsld   pkp_sen      sclp     hydro     msscl     therm    intout    nodout
         0         0       1.0         0         0         0STRAIN        
$#    dtdt    resplt     neipb     quadr     cubic     
         0         0         0         0         0
$
$ ******************************************************************************
$
$ Material model:
*INCLUDE
05_materialModelCards/5_MAT224-example.inc
$
$ ******************************************************************************
$
$ ******************************************************************************
$
$ Element formulation:
*INCLUDE
03_control/3_ELFORM1.inc
$
$ ******************************************************************************
$
*CONTROL_TERMINATION
$#  endtim    endcyc     dtmin    endeng    endmas     nosol     
     &tmax
*CONTROL_SOLUTION
$#    soln       nlq     isnan     lcint     lcacc     ncdcf     
         0         0         0      1000         0         1   
*DATABASE_BINARY_D3PLOT
$#      dt      lcdt      beam     npltc    psetid      
    &DT_D3         0         0         0         0
$#   ioopt      rate    cutoff    window      type      pset    
         0       0.0       0.0       0.0         0         0
*DATABASE_NODFOR
$       dt      lcdt
   &DT_OUT
$
$ ******************************************************************************
$
$ Choose the desired element test by adding or removing "*COMMENT"
$ The "tranid" define the row and column to arrange the tests.
$  E.g. tranid=13: x-position 1 and y-position 3
$
*INCLUDE_TRANSFORM
./02_OET/02_OET_UniaxialTensionX.inc
$#  idnoff    ideoff    idpoff    idmoff    idsoff    idfoff    iddoff      
      1100      1100      1100         0      1100
$#  idroff      
         0
$#  fctmas    fcttim    fctlen    fcttem   incout1    unused      
       0.0       0.0       0.0                   0          
$#  tranid      
        11
$
*INCLUDE_TRANSFORM
./02_OET/02_OET_UniaxialTensionY.inc
$#  idnoff    ideoff    idpoff    idmoff    idsoff    idfoff    iddoff      
      1200      1200      1200         0      1200
$#  idroff      
         0
$#  fctmas    fcttim    fctlen    fcttem   incout1    unused      
       0.0       0.0       0.0                   0          
$#  tranid      
        12
$
*INCLUDE_TRANSFORM
./02_OET/02_OET_UniaxialTensionZ.inc
$#  idnoff    ideoff    idpoff    idmoff    idsoff    idfoff    iddoff      
      1300      1300      1300         0      1300
$#  idroff      
         0
$#  fctmas    fcttim    fctlen    fcttem   incout1    unused      
       0.0       0.0       0.0                   0          
$#  tranid      
        13
$
*INCLUDE_TRANSFORM
./02_OET/02_OET_UniaxialTension_45Degree.inc
$#  idnoff    ideoff    idpoff    idmoff    idsoff    idfoff    iddoff      
      1400      1400      1400         0      1400
$#  idroff      
         0
$#  fctmas    fcttim    fctlen    fcttem   incout1    unused      
       0.0       0.0       0.0                   0          
$#  tranid      
        14
$
*INCLUDE_TRANSFORM
./02_OET/02_OET_StretchX_zFree_rotZ.inc
$#  idnoff    ideoff    idpoff    idmoff    idsoff    idfoff    iddoff      
      1500      1500      1500         0      1500
$#  idroff      
         0
$#  fctmas    fcttim    fctlen    fcttem   incout1    unused      
       0.0       0.0       0.0                   0          
$#  tranid      
        15
$
*INCLUDE_TRANSFORM
./02_OET/02_OET_UniaxialCompressionX.inc
$#  idnoff    ideoff    idpoff    idmoff    idsoff    idfoff    iddoff      
      2100      2100      2100         0      2100         0         0
$#  idroff      
         0
$#  fctmas    fcttim    fctlen    fcttem   incout1    unused      
       0.0       0.0       0.0                   0          
$#  tranid      
        21
$
*INCLUDE_TRANSFORM
./02_OET/02_OET_UniaxialCompressionY.inc
$#  idnoff    ideoff    idpoff    idmoff    idsoff    idfoff    iddoff      
      2200      2200      2200         0      2200         0         0
$#  idroff      
         0
$#  fctmas    fcttim    fctlen    fcttem   incout1    unused      
       0.0       0.0       0.0                   0          
$#  tranid      
        22
$
*INCLUDE_TRANSFORM
./02_OET/02_OET_UniaxialCompressionZ.inc
$#  idnoff    ideoff    idpoff    idmoff    idsoff    idfoff    iddoff      
      2300      2300      2300         0      2300         0         0
$#  idroff      
         0
$#  fctmas    fcttim    fctlen    fcttem   incout1    unused      
       0.0       0.0       0.0                   0          
$#  tranid      
        23
$
*INCLUDE_TRANSFORM
./02_OET/02_OET_TriaxialCompression.inc
$#  idnoff    ideoff    idpoff    idmoff    idsoff    idfoff    iddoff      
      3100      3100      3100         0      3100         0         0
$#  idroff      
         0
$#  fctmas    fcttim    fctlen    fcttem   incout1    unused      
       0.0       0.0       0.0                   0          
$#  tranid      
        31
$
*INCLUDE_TRANSFORM
./02_OET/02_OET_TriaxialTension.inc
$#  idnoff    ideoff    idpoff    idmoff    idsoff    idfoff    iddoff      
      3200      3200      3200         0      3200         0         0
$#  idroff      
         0
$#  fctmas    fcttim    fctlen    fcttem   incout1    unused      
       0.0       0.0       0.0                   0          
$#  tranid      
        32
$
*INCLUDE_TRANSFORM
./02_OET/02_OET_StretchX.inc
$#  idnoff    ideoff    idpoff    idmoff    idsoff    idfoff    iddoff      
      4100      4100      4100         0      4100         0         0
$#  idroff      
         0
$#  fctmas    fcttim    fctlen    fcttem   incout1    unused      
       0.0       0.0       0.0                   0          
$#  tranid      
        41
$
*INCLUDE_TRANSFORM
./02_OET/02_OET_StretchX_yFree.inc
$#  idnoff    ideoff    idpoff    idmoff    idsoff    idfoff    iddoff      
      4200      4200      4200         0      4200         0         0
$#  idroff      
         0
$#  fctmas    fcttim    fctlen    fcttem   incout1    unused      
       0.0       0.0       0.0                   0          
$#  tranid      
        42
$
*INCLUDE_TRANSFORM
./02_OET/02_OET_UniaxialTensionZ_Distorted.inc
$#  idnoff    ideoff    idpoff    idmoff    idsoff    idfoff    iddoff      
      4300      4300      4300         0      4300         0         0
$#  idroff      
         0
$#  fctmas    fcttim    fctlen    fcttem   incout1    unused      
       0.0       0.0       0.0                   0          
$#  tranid      
        43
$
*INCLUDE_TRANSFORM
./02_OET/02_OET_UniaxialTensionX_NeumannZ.inc
$#  idnoff    ideoff    idpoff    idmoff    idsoff    idfoff    iddoff      
      4400      4400      4400         0      4400
$#  idroff      
         0
$#  fctmas    fcttim    fctlen    fcttem   incout1    unused      
       0.0       0.0       0.0                   0          
$#  tranid      
        44
$
*INCLUDE_TRANSFORM
$#                                                                      filename
./02_OET/02_OET_PureShearXZ.inc
$#  idnoff    ideoff    idpoff    idmoff    idsoff    idfoff    iddoff      
      5100      5100      5100         0      5100
$#  idroff      
         0
$#  fctmas    fcttim    fctlen    fcttem   incout1    unused      
       0.0       0.0       0.0                   0          
$#  tranid      
        51
$
*INCLUDE_TRANSFORM
$#                                                                      filename
./02_OET/02_OET_SimpleGlideXZ.inc
$#  idnoff    ideoff    idpoff    idmoff    idsoff    idfoff    iddoff      
      5200      5200      5200         0      5200
$#  idroff      
         0
$#  fctmas    fcttim    fctlen    fcttem   incout1    unused      
       0.0       0.0       0.0                   0          
$#  tranid      
        52
$
*INCLUDE_TRANSFORM
$#                                                                      filename
./02_OET/02_OET_RightFiniteSimpleShearXZ.inc
$#  idnoff    ideoff    idpoff    idmoff    idsoff    idfoff    iddoff      
      5300      5300      5300         0      5300      5300      5300
$#  idroff      
         0
$#  fctmas    fcttim    fctlen    fcttem   incout1    unused      
       0.0       0.0       0.0                   0          
$#  tranid      
        53
$
*INCLUDE_TRANSFORM
$#                                                                      filename
./02_OET/02_OET_BiaxialTensionXY.inc
$#  idnoff    ideoff    idpoff    idmoff    idsoff    idfoff    iddoff      
      6100      6100      6100         0      6100         0         0
$#  idroff      
         0
$#  fctmas    fcttim    fctlen    fcttem   incout1    unused      
       0.0       0.0       0.0                   0          
$#  tranid      
        61
$
*INCLUDE_TRANSFORM
$#                                                                      filename
./02_OET/02_OET_TorsionZ.inc
$#  idnoff    ideoff    idpoff    idmoff    idsoff    idfoff    iddoff      
      7100      7100      7100         0      7100      7100         0
$#  idroff      
         0
$#  fctmas    fcttim    fctlen    fcttem   incout1    unused      
       0.0       0.0       0.0                   0          
$#  tranid      
        71
$
*INCLUDE_TRANSFORM
$#                                                                      filename
./02_OET/02_OET_TorsionZ_zFree.inc
$#  idnoff    ideoff    idpoff    idmoff    idsoff    idfoff    iddoff      
      7200      7200      7200         0      7200      7200         0
$#  idroff      
         0
$#  fctmas    fcttim    fctlen    fcttem   incout1    unused      
       0.0       0.0       0.0                   0          
$#  tranid      
        72
$
*END
