*PARAMETER
$ The transformation-ID are chosen such that the first digit gives the x-offset
$ and the second the y-offset. Thus tranid=32, shifts the element by 3 units
$ in x-direction and by 2 units in y-direction.
$
$#   prmr1      val1     prmr2      val2     prmr3      val3     prmr4      val4
R xdist   3.0    
R ydist   3.0  
*PARAMETER_EXPRESSION
R x1      0.0*xdist
R y1      0.0*ydist
R x2      1.0*xdist
R y2      1.0*ydist
R x3      2.0*xdist
R y3      2.0*ydist
R x4      3.0*xdist
R y4      3.0*ydist
R x5      4.0*xdist
R y5      4.0*ydist
R x6      5.0*xdist
R y6      5.0*ydist
R x7      6.0*xdist
R y7      6.0*ydist
*DEFINE_TRANSFORMATION
$#  tranid      
        11
$#  option        a1        a2        a3        a4        a5        a6        a7
TRANSL    &x1       &y1              0.0       0.0       0.0       0.0       0.0
*DEFINE_TRANSFORMATION
$#  tranid      
        12
$#  option        a1        a2        a3        a4        a5        a6        a7
TRANSL    &x1       &y2              0.0       0.0       0.0       0.0       0.0
*DEFINE_TRANSFORMATION
$#  tranid      
        13
$#  option        a1        a2        a3        a4        a5        a6        a7
TRANSL    &x1       &y3              0.0       0.0       0.0       0.0       0.0
*DEFINE_TRANSFORMATION
$#  tranid      
        14
$#  option        a1        a2        a3        a4        a5        a6        a7
TRANSL    &x1       &y4              0.0       0.0       0.0       0.0       0.0
*DEFINE_TRANSFORMATION
$#  tranid      
        15
$#  option        a1        a2        a3        a4        a5        a6        a7
TRANSL    &x1       &y5              0.0       0.0       0.0       0.0       0.0
*DEFINE_TRANSFORMATION
$#  tranid      
        21
$#  option        a1        a2        a3        a4        a5        a6        a7
TRANSL    &x2       &y1              0.0       0.0       0.0       0.0       0.0
*DEFINE_TRANSFORMATION
$#  tranid      
        22
$#  option        a1        a2        a3        a4        a5        a6        a7
TRANSL    &x2       &y2              0.0       0.0       0.0       0.0       0.0
*DEFINE_TRANSFORMATION
$#  tranid      
        23
$#  option        a1        a2        a3        a4        a5        a6        a7
TRANSL    &x2       &y3              0.0       0.0       0.0       0.0       0.0
*DEFINE_TRANSFORMATION
$#  tranid      
        31
$#  option        a1        a2        a3        a4        a5        a6        a7
TRANSL    &x3       &y1              0.0       0.0       0.0       0.0       0.0
*DEFINE_TRANSFORMATION
$#  tranid      
        32
$#  option        a1        a2        a3        a4        a5        a6        a7
TRANSL    &x3       &y2              0.0       0.0       0.0       0.0       0.0
*DEFINE_TRANSFORMATION
$#  tranid      
        41
$#  option        a1        a2        a3        a4        a5        a6        a7
TRANSL    &x4       &y1              0.0       0.0       0.0       0.0       0.0
*DEFINE_TRANSFORMATION
$#  tranid      
        42
$#  option        a1        a2        a3        a4        a5        a6        a7
TRANSL    &x4       &y2              0.0       0.0       0.0       0.0       0.0
*DEFINE_TRANSFORMATION
$#  tranid      
        43
$#  option        a1        a2        a3        a4        a5        a6        a7
TRANSL    &x4       &y3              0.0       0.0       0.0       0.0       0.0
*DEFINE_TRANSFORMATION
$#  tranid      
        44
$#  option        a1        a2        a3        a4        a5        a6        a7
TRANSL    &x4       &y4              0.0       0.0       0.0       0.0       0.0
*DEFINE_TRANSFORMATION
$#  tranid      
        45
$#  option        a1        a2        a3        a4        a5        a6        a7
TRANSL    &x4       &y5              0.0       0.0       0.0       0.0       0.0
*DEFINE_TRANSFORMATION
$#  tranid      
        51
$#  option        a1        a2        a3        a4        a5        a6        a7
TRANSL    &x5       &y1              0.0       0.0       0.0       0.0       0.0
*DEFINE_TRANSFORMATION
$#  tranid      
        52
$#  option        a1        a2        a3        a4        a5        a6        a7
TRANSL    &x5       &y2              0.0       0.0       0.0       0.0       0.0
*DEFINE_TRANSFORMATION
$#  tranid      
        53
$#  option        a1        a2        a3        a4        a5        a6        a7
TRANSL    &x5       &y3              0.0       0.0       0.0       0.0       0.0
*DEFINE_TRANSFORMATION
$#  tranid      
        61
$#  option        a1        a2        a3        a4        a5        a6        a7
TRANSL    &x6       &y1              0.0       0.0       0.0       0.0       0.0
*DEFINE_TRANSFORMATION
$#  tranid      
        62
$#  option        a1        a2        a3        a4        a5        a6        a7
TRANSL    &x6       &y2              0.0       0.0       0.0       0.0       0.0
*DEFINE_TRANSFORMATION
$#  tranid      
        71
$#  option        a1        a2        a3        a4        a5        a6        a7
TRANSL    &x7       &y1              0.0       0.0       0.0       0.0       0.0
*DEFINE_TRANSFORMATION
$#  tranid      
        72
$#  option        a1        a2        a3        a4        a5        a6        a7
TRANSL    &x7       &y2              0.0       0.0       0.0       0.0       0.0
