*PARAMETER
$
$#   prmr1      val1     prmr2      val2     prmr3      val3     prmr4      val4
R MID     1                                                                     
R TMID    0                                                                     
R tmax    1                                                                     
$
*PARAMETER_LOCAL
$
R loadMax 1                                                                     
I LCID    1400                                                                  
$
*PART
$#                                                                         title
OET_UniaxialTension_45Degree
$#     pid     secid       mid     eosid      hgid      grav    adpopt      tmid
         1         1&mid               0         0         0         0&tmid     
*ELEMENT_SOLID
$#   eid     pid      n1      n2      n3      n4      n5      n6      n7      n8
       1       1       1       2       4       3       5       6       8       7
*NODE
$#   nid               x               y               z      tc      rc  
       1             0.0             0.0             0.0       0       0
       2       0.7071067             0.0       0.7071067       0       0
       3             0.0             1.0             0.0       0       0
       4       0.7071067             1.0       0.7071067       0       0
       5      -0.7071067             0.0       0.7071067       0       0
       6             0.0             0.0        1.414213       0       0
       7      -0.7071067             1.0       0.7071067       0       0
       8             0.0             1.0        1.414213       0       0
*BOUNDARY_PRESCRIBED_MOTION_SET_ID
$
$#      id                                                               heading
         0                                                                      
$#    nsid       dof       vad      lcid        sf       vid     death     birth
        10         4         2&lcid            1.0      14001.00000E28       0.0
*BOUNDARY_SPC_SET
$#    nsid       cid      dofx      dofy      dofz     dofrx     dofry     dofrz
        11      1400         1         0         0         0         0         0
*SET_NODE_LIST_TITLE
NodeSet_X-
$#     sid       da1       da2       da3       da4    solver      
        11       0.0       0.0       0.0       0.0MECH
$#    nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
         1         3         5         7         0         0         0         0
*BOUNDARY_SPC_SET
$#    nsid       cid      dofx      dofy      dofz     dofrx     dofry     dofrz
        21      1400         0         1         0         0         0         0
*SET_NODE_LIST_TITLE
NodeSet_Y-
$#     sid       da1       da2       da3       da4    solver      
        21       0.0       0.0       0.0       0.0MECH
$#    nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
         1         2         5         6         0         0         0         0
*BOUNDARY_SPC_SET
$#    nsid       cid      dofx      dofy      dofz     dofrx     dofry     dofrz
        31      1400         0         0         1         0         0         0
*SET_NODE_LIST_TITLE
NodeSet_Z-
$#     sid       da1       da2       da3       da4    solver      
        31       0.0       0.0       0.0       0.0MECH
$#    nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
         1         2         3         4         0         0         0         0
*DEFINE_CURVE_TITLE
tension curve
$#    lcid      sidr       sfa       sfo      offa      offo    dattyp     lcint
&lcid              0       1.0       1.0       0.0       0.0         0         0
$#                a1                  o1  
                 0.0                 0.0
               &tmax            &loadMax
           <&tmax+1>,           &loadMax
*DEFINE_VECTOR
$#     vid        xt        yt        zt        xh        yh        zh       cid
      1400       0.0       0.0       0.0       1.0       0.0       1.0         0
*DEFINE_COORDINATE_SYSTEM
$#     cid        xo        yo        zo        xl        yl        zl      cidl
      1400       0.0       0.0       0.0       1.0       0.0       1.0         0
$#      xp        yp        zp  
       0.0       1.0       0.0      
*SET_NODE_LIST_TITLE
NodeSet_X+
$#     sid       da1       da2       da3       da4    solver      
        10       0.0       0.0       0.0       0.0MECH
$#    nid1      nid2      nid3      nid4      nid5      nid6      nid7      nid8
         6         8         2         4         0         0         0         0
