
Ö
.
Abs
x"T
y"T"
Ttype:

2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
2
L2Loss
t"T
output"T"
Ttype:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
÷
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58ùæ

SGD/dense_77/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameSGD/dense_77/bias/momentum

.SGD/dense_77/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_77/bias/momentum*
_output_shapes
:*
dtype0

SGD/dense_77/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:**-
shared_nameSGD/dense_77/kernel/momentum

0SGD/dense_77/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_77/kernel/momentum*
_output_shapes

:**
dtype0

SGD/dense_76/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:**+
shared_nameSGD/dense_76/bias/momentum

.SGD/dense_76/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_76/bias/momentum*
_output_shapes
:**
dtype0

SGD/dense_76/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:***-
shared_nameSGD/dense_76/kernel/momentum

0SGD/dense_76/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_76/kernel/momentum*
_output_shapes

:***
dtype0

SGD/dense_75/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:**+
shared_nameSGD/dense_75/bias/momentum

.SGD/dense_75/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_75/bias/momentum*
_output_shapes
:**
dtype0

SGD/dense_75/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	**-
shared_nameSGD/dense_75/kernel/momentum

0SGD/dense_75/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_75/kernel/momentum*
_output_shapes

:	**
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
r
dense_77/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_77/bias
k
!dense_77/bias/Read/ReadVariableOpReadVariableOpdense_77/bias*
_output_shapes
:*
dtype0
z
dense_77/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:** 
shared_namedense_77/kernel
s
#dense_77/kernel/Read/ReadVariableOpReadVariableOpdense_77/kernel*
_output_shapes

:**
dtype0
r
dense_76/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namedense_76/bias
k
!dense_76/bias/Read/ReadVariableOpReadVariableOpdense_76/bias*
_output_shapes
:**
dtype0
z
dense_76/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*** 
shared_namedense_76/kernel
s
#dense_76/kernel/Read/ReadVariableOpReadVariableOpdense_76/kernel*
_output_shapes

:***
dtype0
r
dense_75/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namedense_75/bias
k
!dense_75/bias/Read/ReadVariableOpReadVariableOpdense_75/bias*
_output_shapes
:**
dtype0
z
dense_75/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	** 
shared_namedense_75/kernel
s
#dense_75/kernel/Read/ReadVariableOpReadVariableOpdense_75/kernel*
_output_shapes

:	**
dtype0

serving_default_dense_75_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ	
§
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_75_inputdense_75/kerneldense_75/biasdense_76/kerneldense_76/biasdense_77/kerneldense_77/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 */
f*R(
&__inference_signature_wrapper_60888668

NoOpNoOp
¯*
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ê)
valueà)BÝ) BÖ)
Á
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
¦
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
¦
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
¦
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias*
.
0
1
2
3
#4
$5*
.
0
1
2
3
#4
$5*
* 
°
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
6
*trace_0
+trace_1
,trace_2
-trace_3* 
6
.trace_0
/trace_1
0trace_2
1trace_3* 
* 

2iter
	3decay
4learning_rate
5momentummomentumcmomentumdmomentumemomentumf#momentumg$momentumh*

6serving_default* 

0
1*

0
1*
* 
°
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses
__call__
<activity_regularizer_fn
*&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*

>trace_0* 

?trace_0* 
_Y
VARIABLE_VALUEdense_75/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_75/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
°
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
Eactivity_regularizer_fn
*&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses*

Gtrace_0* 

Htrace_0* 
_Y
VARIABLE_VALUEdense_76/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_76/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

#0
$1*

#0
$1*
* 
°
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
Nactivity_regularizer_fn
*"&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses*

Ptrace_0* 

Qtrace_0* 
_Y
VARIABLE_VALUEdense_77/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_77/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

R0
S1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
KE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 

Ttrace_0* 

Utrace_0* 
* 
* 
* 
* 
* 
* 
* 

Vtrace_0* 

Wtrace_0* 
* 
* 
* 
* 
* 
* 
* 

Xtrace_0* 

Ytrace_0* 
* 
* 
8
Z	variables
[	keras_api
	\total
	]count*
H
^	variables
_	keras_api
	`total
	acount
b
_fn_kwargs*
* 
* 
* 
* 
* 
* 

\0
]1*

Z	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

`0
a1*

^	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

VARIABLE_VALUESGD/dense_75/kernel/momentumYlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUESGD/dense_75/bias/momentumWlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUESGD/dense_76/kernel/momentumYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUESGD/dense_76/bias/momentumWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUESGD/dense_77/kernel/momentumYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUESGD/dense_77/bias/momentumWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¥
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_75/kernel/Read/ReadVariableOp!dense_75/bias/Read/ReadVariableOp#dense_76/kernel/Read/ReadVariableOp!dense_76/bias/Read/ReadVariableOp#dense_77/kernel/Read/ReadVariableOp!dense_77/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp0SGD/dense_75/kernel/momentum/Read/ReadVariableOp.SGD/dense_75/bias/momentum/Read/ReadVariableOp0SGD/dense_76/kernel/momentum/Read/ReadVariableOp.SGD/dense_76/bias/momentum/Read/ReadVariableOp0SGD/dense_77/kernel/momentum/Read/ReadVariableOp.SGD/dense_77/bias/momentum/Read/ReadVariableOpConst*!
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_save_60889005

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_75/kerneldense_75/biasdense_76/kerneldense_76/biasdense_77/kerneldense_77/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotal_1count_1totalcountSGD/dense_75/kernel/momentumSGD/dense_75/bias/momentumSGD/dense_76/kernel/momentumSGD/dense_76/bias/momentumSGD/dense_77/kernel/momentumSGD/dense_77/bias/momentum* 
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference__traced_restore_60889075
É	
÷
F__inference_dense_77_layer_call_and_return_conditional_losses_60888345

inputs0
matmul_readvariableop_resource:*-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:**
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ*: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
 
_user_specified_nameinputs
¶G
¼
K__inference_sequential_25_layer_call_and_return_conditional_losses_60888830

inputs9
'dense_75_matmul_readvariableop_resource:	*6
(dense_75_biasadd_readvariableop_resource:*9
'dense_76_matmul_readvariableop_resource:**6
(dense_76_biasadd_readvariableop_resource:*9
'dense_77_matmul_readvariableop_resource:*6
(dense_77_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3¢dense_75/BiasAdd/ReadVariableOp¢dense_75/MatMul/ReadVariableOp¢dense_76/BiasAdd/ReadVariableOp¢dense_76/MatMul/ReadVariableOp¢dense_77/BiasAdd/ReadVariableOp¢dense_77/MatMul/ReadVariableOp
dense_75/MatMul/ReadVariableOpReadVariableOp'dense_75_matmul_readvariableop_resource*
_output_shapes

:	**
dtype0{
dense_75/MatMulMatMulinputs&dense_75/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dense_75/BiasAdd/ReadVariableOpReadVariableOp(dense_75_biasadd_readvariableop_resource*
_output_shapes
:**
dtype0
dense_75/BiasAddBiasAdddense_75/MatMul:product:0'dense_75/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*b
dense_75/ReluReludense_75/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*v
 dense_75/ActivityRegularizer/AbsAbsdense_75/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*s
"dense_75/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
 dense_75/ActivityRegularizer/SumSum$dense_75/ActivityRegularizer/Abs:y:0+dense_75/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_75/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *>PÅ: 
 dense_75/ActivityRegularizer/mulMul+dense_75/ActivityRegularizer/mul/x:output:0)dense_75/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: m
"dense_75/ActivityRegularizer/ShapeShapedense_75/Relu:activations:0*
T0*
_output_shapes
:z
0dense_75/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_75/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_75/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*dense_75/ActivityRegularizer/strided_sliceStridedSlice+dense_75/ActivityRegularizer/Shape:output:09dense_75/ActivityRegularizer/strided_slice/stack:output:0;dense_75/ActivityRegularizer/strided_slice/stack_1:output:0;dense_75/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
!dense_75/ActivityRegularizer/CastCast3dense_75/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 
$dense_75/ActivityRegularizer/truedivRealDiv$dense_75/ActivityRegularizer/mul:z:0%dense_75/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 
dense_76/MatMul/ReadVariableOpReadVariableOp'dense_76_matmul_readvariableop_resource*
_output_shapes

:***
dtype0
dense_76/MatMulMatMuldense_75/Relu:activations:0&dense_76/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dense_76/BiasAdd/ReadVariableOpReadVariableOp(dense_76_biasadd_readvariableop_resource*
_output_shapes
:**
dtype0
dense_76/BiasAddBiasAdddense_76/MatMul:product:0'dense_76/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*b
dense_76/ReluReludense_76/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*v
 dense_76/ActivityRegularizer/AbsAbsdense_76/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*s
"dense_76/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
 dense_76/ActivityRegularizer/SumSum$dense_76/ActivityRegularizer/Abs:y:0+dense_76/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_76/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *>PÅ: 
 dense_76/ActivityRegularizer/mulMul+dense_76/ActivityRegularizer/mul/x:output:0)dense_76/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: m
"dense_76/ActivityRegularizer/ShapeShapedense_76/Relu:activations:0*
T0*
_output_shapes
:z
0dense_76/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_76/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_76/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*dense_76/ActivityRegularizer/strided_sliceStridedSlice+dense_76/ActivityRegularizer/Shape:output:09dense_76/ActivityRegularizer/strided_slice/stack:output:0;dense_76/ActivityRegularizer/strided_slice/stack_1:output:0;dense_76/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
!dense_76/ActivityRegularizer/CastCast3dense_76/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 
$dense_76/ActivityRegularizer/truedivRealDiv$dense_76/ActivityRegularizer/mul:z:0%dense_76/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 
dense_77/MatMul/ReadVariableOpReadVariableOp'dense_77_matmul_readvariableop_resource*
_output_shapes

:**
dtype0
dense_77/MatMulMatMuldense_76/Relu:activations:0&dense_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_77/BiasAdd/ReadVariableOpReadVariableOp(dense_77_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_77/BiasAddBiasAdddense_77/MatMul:product:0'dense_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
#dense_77/ActivityRegularizer/L2LossL2Lossdense_77/BiasAdd:output:0*
T0*
_output_shapes
: g
"dense_77/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *>PE;£
 dense_77/ActivityRegularizer/mulMul+dense_77/ActivityRegularizer/mul/x:output:0,dense_77/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: k
"dense_77/ActivityRegularizer/ShapeShapedense_77/BiasAdd:output:0*
T0*
_output_shapes
:z
0dense_77/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_77/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_77/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*dense_77/ActivityRegularizer/strided_sliceStridedSlice+dense_77/ActivityRegularizer/Shape:output:09dense_77/ActivityRegularizer/strided_slice/stack:output:0;dense_77/ActivityRegularizer/strided_slice/stack_1:output:0;dense_77/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
!dense_77/ActivityRegularizer/CastCast3dense_77/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 
$dense_77/ActivityRegularizer/truedivRealDiv$dense_77/ActivityRegularizer/mul:z:0%dense_77/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: h
IdentityIdentitydense_77/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh

Identity_1Identity(dense_75/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_2Identity(dense_76/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_3Identity(dense_77/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp ^dense_75/BiasAdd/ReadVariableOp^dense_75/MatMul/ReadVariableOp ^dense_76/BiasAdd/ReadVariableOp^dense_76/MatMul/ReadVariableOp ^dense_77/BiasAdd/ReadVariableOp^dense_77/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ	: : : : : : 2B
dense_75/BiasAdd/ReadVariableOpdense_75/BiasAdd/ReadVariableOp2@
dense_75/MatMul/ReadVariableOpdense_75/MatMul/ReadVariableOp2B
dense_76/BiasAdd/ReadVariableOpdense_76/BiasAdd/ReadVariableOp2@
dense_76/MatMul/ReadVariableOpdense_76/MatMul/ReadVariableOp2B
dense_77/BiasAdd/ReadVariableOpdense_77/BiasAdd/ReadVariableOp2@
dense_77/MatMul/ReadVariableOpdense_77/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
	

0__inference_sequential_25_layer_call_fn_60888553
dense_75_input
unknown:	*
	unknown_0:*
	unknown_1:**
	unknown_2:*
	unknown_3:*
	unknown_4:
identity¢StatefulPartitionedCall¥
StatefulPartitionedCallStatefulPartitionedCalldense_75_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: : : *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_25_layer_call_and_return_conditional_losses_60888515o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ	: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
(
_user_specified_namedense_75_input

Ç
J__inference_dense_75_layer_call_and_return_all_conditional_losses_60888850

inputs
unknown:	*
	unknown_0:*
identity

identity_1¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_75_layer_call_and_return_conditional_losses_60888296¦
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *;
f6R4
2__inference_dense_75_activity_regularizer_60888257o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*X

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs


÷
F__inference_dense_76_layer_call_and_return_conditional_losses_60888321

inputs0
matmul_readvariableop_resource:**-
biasadd_readvariableop_resource:*
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:***
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:**
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ*: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
 
_user_specified_nameinputs
ÃR

#__inference__wrapped_model_60888244
dense_75_inputG
5sequential_25_dense_75_matmul_readvariableop_resource:	*D
6sequential_25_dense_75_biasadd_readvariableop_resource:*G
5sequential_25_dense_76_matmul_readvariableop_resource:**D
6sequential_25_dense_76_biasadd_readvariableop_resource:*G
5sequential_25_dense_77_matmul_readvariableop_resource:*D
6sequential_25_dense_77_biasadd_readvariableop_resource:
identity¢-sequential_25/dense_75/BiasAdd/ReadVariableOp¢,sequential_25/dense_75/MatMul/ReadVariableOp¢-sequential_25/dense_76/BiasAdd/ReadVariableOp¢,sequential_25/dense_76/MatMul/ReadVariableOp¢-sequential_25/dense_77/BiasAdd/ReadVariableOp¢,sequential_25/dense_77/MatMul/ReadVariableOp¢
,sequential_25/dense_75/MatMul/ReadVariableOpReadVariableOp5sequential_25_dense_75_matmul_readvariableop_resource*
_output_shapes

:	**
dtype0
sequential_25/dense_75/MatMulMatMuldense_75_input4sequential_25/dense_75/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
-sequential_25/dense_75/BiasAdd/ReadVariableOpReadVariableOp6sequential_25_dense_75_biasadd_readvariableop_resource*
_output_shapes
:**
dtype0»
sequential_25/dense_75/BiasAddBiasAdd'sequential_25/dense_75/MatMul:product:05sequential_25/dense_75/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*~
sequential_25/dense_75/ReluRelu'sequential_25/dense_75/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
.sequential_25/dense_75/ActivityRegularizer/AbsAbs)sequential_25/dense_75/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
0sequential_25/dense_75/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Å
.sequential_25/dense_75/ActivityRegularizer/SumSum2sequential_25/dense_75/ActivityRegularizer/Abs:y:09sequential_25/dense_75/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: u
0sequential_25/dense_75/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *>PÅ:Ê
.sequential_25/dense_75/ActivityRegularizer/mulMul9sequential_25/dense_75/ActivityRegularizer/mul/x:output:07sequential_25/dense_75/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 
0sequential_25/dense_75/ActivityRegularizer/ShapeShape)sequential_25/dense_75/Relu:activations:0*
T0*
_output_shapes
:
>sequential_25/dense_75/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
@sequential_25/dense_75/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
@sequential_25/dense_75/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¨
8sequential_25/dense_75/ActivityRegularizer/strided_sliceStridedSlice9sequential_25/dense_75/ActivityRegularizer/Shape:output:0Gsequential_25/dense_75/ActivityRegularizer/strided_slice/stack:output:0Isequential_25/dense_75/ActivityRegularizer/strided_slice/stack_1:output:0Isequential_25/dense_75/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskª
/sequential_25/dense_75/ActivityRegularizer/CastCastAsequential_25/dense_75/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ç
2sequential_25/dense_75/ActivityRegularizer/truedivRealDiv2sequential_25/dense_75/ActivityRegularizer/mul:z:03sequential_25/dense_75/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ¢
,sequential_25/dense_76/MatMul/ReadVariableOpReadVariableOp5sequential_25_dense_76_matmul_readvariableop_resource*
_output_shapes

:***
dtype0º
sequential_25/dense_76/MatMulMatMul)sequential_25/dense_75/Relu:activations:04sequential_25/dense_76/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
-sequential_25/dense_76/BiasAdd/ReadVariableOpReadVariableOp6sequential_25_dense_76_biasadd_readvariableop_resource*
_output_shapes
:**
dtype0»
sequential_25/dense_76/BiasAddBiasAdd'sequential_25/dense_76/MatMul:product:05sequential_25/dense_76/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*~
sequential_25/dense_76/ReluRelu'sequential_25/dense_76/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
.sequential_25/dense_76/ActivityRegularizer/AbsAbs)sequential_25/dense_76/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
0sequential_25/dense_76/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Å
.sequential_25/dense_76/ActivityRegularizer/SumSum2sequential_25/dense_76/ActivityRegularizer/Abs:y:09sequential_25/dense_76/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: u
0sequential_25/dense_76/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *>PÅ:Ê
.sequential_25/dense_76/ActivityRegularizer/mulMul9sequential_25/dense_76/ActivityRegularizer/mul/x:output:07sequential_25/dense_76/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 
0sequential_25/dense_76/ActivityRegularizer/ShapeShape)sequential_25/dense_76/Relu:activations:0*
T0*
_output_shapes
:
>sequential_25/dense_76/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
@sequential_25/dense_76/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
@sequential_25/dense_76/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¨
8sequential_25/dense_76/ActivityRegularizer/strided_sliceStridedSlice9sequential_25/dense_76/ActivityRegularizer/Shape:output:0Gsequential_25/dense_76/ActivityRegularizer/strided_slice/stack:output:0Isequential_25/dense_76/ActivityRegularizer/strided_slice/stack_1:output:0Isequential_25/dense_76/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskª
/sequential_25/dense_76/ActivityRegularizer/CastCastAsequential_25/dense_76/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ç
2sequential_25/dense_76/ActivityRegularizer/truedivRealDiv2sequential_25/dense_76/ActivityRegularizer/mul:z:03sequential_25/dense_76/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ¢
,sequential_25/dense_77/MatMul/ReadVariableOpReadVariableOp5sequential_25_dense_77_matmul_readvariableop_resource*
_output_shapes

:**
dtype0º
sequential_25/dense_77/MatMulMatMul)sequential_25/dense_76/Relu:activations:04sequential_25/dense_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
-sequential_25/dense_77/BiasAdd/ReadVariableOpReadVariableOp6sequential_25_dense_77_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0»
sequential_25/dense_77/BiasAddBiasAdd'sequential_25/dense_77/MatMul:product:05sequential_25/dense_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1sequential_25/dense_77/ActivityRegularizer/L2LossL2Loss'sequential_25/dense_77/BiasAdd:output:0*
T0*
_output_shapes
: u
0sequential_25/dense_77/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *>PE;Í
.sequential_25/dense_77/ActivityRegularizer/mulMul9sequential_25/dense_77/ActivityRegularizer/mul/x:output:0:sequential_25/dense_77/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: 
0sequential_25/dense_77/ActivityRegularizer/ShapeShape'sequential_25/dense_77/BiasAdd:output:0*
T0*
_output_shapes
:
>sequential_25/dense_77/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
@sequential_25/dense_77/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
@sequential_25/dense_77/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¨
8sequential_25/dense_77/ActivityRegularizer/strided_sliceStridedSlice9sequential_25/dense_77/ActivityRegularizer/Shape:output:0Gsequential_25/dense_77/ActivityRegularizer/strided_slice/stack:output:0Isequential_25/dense_77/ActivityRegularizer/strided_slice/stack_1:output:0Isequential_25/dense_77/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskª
/sequential_25/dense_77/ActivityRegularizer/CastCastAsequential_25/dense_77/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: Ç
2sequential_25/dense_77/ActivityRegularizer/truedivRealDiv2sequential_25/dense_77/ActivityRegularizer/mul:z:03sequential_25/dense_77/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: v
IdentityIdentity'sequential_25/dense_77/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿã
NoOpNoOp.^sequential_25/dense_75/BiasAdd/ReadVariableOp-^sequential_25/dense_75/MatMul/ReadVariableOp.^sequential_25/dense_76/BiasAdd/ReadVariableOp-^sequential_25/dense_76/MatMul/ReadVariableOp.^sequential_25/dense_77/BiasAdd/ReadVariableOp-^sequential_25/dense_77/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ	: : : : : : 2^
-sequential_25/dense_75/BiasAdd/ReadVariableOp-sequential_25/dense_75/BiasAdd/ReadVariableOp2\
,sequential_25/dense_75/MatMul/ReadVariableOp,sequential_25/dense_75/MatMul/ReadVariableOp2^
-sequential_25/dense_76/BiasAdd/ReadVariableOp-sequential_25/dense_76/BiasAdd/ReadVariableOp2\
,sequential_25/dense_76/MatMul/ReadVariableOp,sequential_25/dense_76/MatMul/ReadVariableOp2^
-sequential_25/dense_77/BiasAdd/ReadVariableOp-sequential_25/dense_77/BiasAdd/ReadVariableOp2\
,sequential_25/dense_77/MatMul/ReadVariableOp,sequential_25/dense_77/MatMul/ReadVariableOp:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
(
_user_specified_namedense_75_input
	

0__inference_sequential_25_layer_call_fn_60888381
dense_75_input
unknown:	*
	unknown_0:*
	unknown_1:**
	unknown_2:*
	unknown_3:*
	unknown_4:
identity¢StatefulPartitionedCall¥
StatefulPartitionedCallStatefulPartitionedCalldense_75_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: : : *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_25_layer_call_and_return_conditional_losses_60888363o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ	: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
(
_user_specified_namedense_75_input


÷
F__inference_dense_75_layer_call_and_return_conditional_losses_60888296

inputs0
matmul_readvariableop_resource:	*-
biasadd_readvariableop_resource:*
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	**
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:**
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
Õ9
Ý
K__inference_sequential_25_layer_call_and_return_conditional_losses_60888645
dense_75_input#
dense_75_60888602:	*
dense_75_60888604:*#
dense_76_60888615:**
dense_76_60888617:*#
dense_77_60888628:*
dense_77_60888630:
identity

identity_1

identity_2

identity_3¢ dense_75/StatefulPartitionedCall¢ dense_76/StatefulPartitionedCall¢ dense_77/StatefulPartitionedCallþ
 dense_75/StatefulPartitionedCallStatefulPartitionedCalldense_75_inputdense_75_60888602dense_75_60888604*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_75_layer_call_and_return_conditional_losses_60888296Ì
,dense_75/ActivityRegularizer/PartitionedCallPartitionedCall)dense_75/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *;
f6R4
2__inference_dense_75_activity_regularizer_60888257{
"dense_75/ActivityRegularizer/ShapeShape)dense_75/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_75/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_75/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_75/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*dense_75/ActivityRegularizer/strided_sliceStridedSlice+dense_75/ActivityRegularizer/Shape:output:09dense_75/ActivityRegularizer/strided_slice/stack:output:0;dense_75/ActivityRegularizer/strided_slice/stack_1:output:0;dense_75/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
!dense_75/ActivityRegularizer/CastCast3dense_75/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ®
$dense_75/ActivityRegularizer/truedivRealDiv5dense_75/ActivityRegularizer/PartitionedCall:output:0%dense_75/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 
 dense_76/StatefulPartitionedCallStatefulPartitionedCall)dense_75/StatefulPartitionedCall:output:0dense_76_60888615dense_76_60888617*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_76_layer_call_and_return_conditional_losses_60888321Ì
,dense_76/ActivityRegularizer/PartitionedCallPartitionedCall)dense_76/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *;
f6R4
2__inference_dense_76_activity_regularizer_60888270{
"dense_76/ActivityRegularizer/ShapeShape)dense_76/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_76/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_76/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_76/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*dense_76/ActivityRegularizer/strided_sliceStridedSlice+dense_76/ActivityRegularizer/Shape:output:09dense_76/ActivityRegularizer/strided_slice/stack:output:0;dense_76/ActivityRegularizer/strided_slice/stack_1:output:0;dense_76/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
!dense_76/ActivityRegularizer/CastCast3dense_76/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ®
$dense_76/ActivityRegularizer/truedivRealDiv5dense_76/ActivityRegularizer/PartitionedCall:output:0%dense_76/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 
 dense_77/StatefulPartitionedCallStatefulPartitionedCall)dense_76/StatefulPartitionedCall:output:0dense_77_60888628dense_77_60888630*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_77_layer_call_and_return_conditional_losses_60888345Ì
,dense_77/ActivityRegularizer/PartitionedCallPartitionedCall)dense_77/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *;
f6R4
2__inference_dense_77_activity_regularizer_60888278{
"dense_77/ActivityRegularizer/ShapeShape)dense_77/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_77/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_77/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_77/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*dense_77/ActivityRegularizer/strided_sliceStridedSlice+dense_77/ActivityRegularizer/Shape:output:09dense_77/ActivityRegularizer/strided_slice/stack:output:0;dense_77/ActivityRegularizer/strided_slice/stack_1:output:0;dense_77/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
!dense_77/ActivityRegularizer/CastCast3dense_77/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ®
$dense_77/ActivityRegularizer/truedivRealDiv5dense_77/ActivityRegularizer/PartitionedCall:output:0%dense_77/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_77/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh

Identity_1Identity(dense_75/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_2Identity(dense_76/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_3Identity(dense_77/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ¯
NoOpNoOp!^dense_75/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall!^dense_77/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ	: : : : : : 2D
 dense_75/StatefulPartitionedCall dense_75/StatefulPartitionedCall2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2D
 dense_77/StatefulPartitionedCall dense_77/StatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
(
_user_specified_namedense_75_input
½9
Õ
K__inference_sequential_25_layer_call_and_return_conditional_losses_60888515

inputs#
dense_75_60888472:	*
dense_75_60888474:*#
dense_76_60888485:**
dense_76_60888487:*#
dense_77_60888498:*
dense_77_60888500:
identity

identity_1

identity_2

identity_3¢ dense_75/StatefulPartitionedCall¢ dense_76/StatefulPartitionedCall¢ dense_77/StatefulPartitionedCallö
 dense_75/StatefulPartitionedCallStatefulPartitionedCallinputsdense_75_60888472dense_75_60888474*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_75_layer_call_and_return_conditional_losses_60888296Ì
,dense_75/ActivityRegularizer/PartitionedCallPartitionedCall)dense_75/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *;
f6R4
2__inference_dense_75_activity_regularizer_60888257{
"dense_75/ActivityRegularizer/ShapeShape)dense_75/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_75/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_75/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_75/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*dense_75/ActivityRegularizer/strided_sliceStridedSlice+dense_75/ActivityRegularizer/Shape:output:09dense_75/ActivityRegularizer/strided_slice/stack:output:0;dense_75/ActivityRegularizer/strided_slice/stack_1:output:0;dense_75/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
!dense_75/ActivityRegularizer/CastCast3dense_75/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ®
$dense_75/ActivityRegularizer/truedivRealDiv5dense_75/ActivityRegularizer/PartitionedCall:output:0%dense_75/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 
 dense_76/StatefulPartitionedCallStatefulPartitionedCall)dense_75/StatefulPartitionedCall:output:0dense_76_60888485dense_76_60888487*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_76_layer_call_and_return_conditional_losses_60888321Ì
,dense_76/ActivityRegularizer/PartitionedCallPartitionedCall)dense_76/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *;
f6R4
2__inference_dense_76_activity_regularizer_60888270{
"dense_76/ActivityRegularizer/ShapeShape)dense_76/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_76/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_76/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_76/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*dense_76/ActivityRegularizer/strided_sliceStridedSlice+dense_76/ActivityRegularizer/Shape:output:09dense_76/ActivityRegularizer/strided_slice/stack:output:0;dense_76/ActivityRegularizer/strided_slice/stack_1:output:0;dense_76/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
!dense_76/ActivityRegularizer/CastCast3dense_76/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ®
$dense_76/ActivityRegularizer/truedivRealDiv5dense_76/ActivityRegularizer/PartitionedCall:output:0%dense_76/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 
 dense_77/StatefulPartitionedCallStatefulPartitionedCall)dense_76/StatefulPartitionedCall:output:0dense_77_60888498dense_77_60888500*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_77_layer_call_and_return_conditional_losses_60888345Ì
,dense_77/ActivityRegularizer/PartitionedCallPartitionedCall)dense_77/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *;
f6R4
2__inference_dense_77_activity_regularizer_60888278{
"dense_77/ActivityRegularizer/ShapeShape)dense_77/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_77/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_77/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_77/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*dense_77/ActivityRegularizer/strided_sliceStridedSlice+dense_77/ActivityRegularizer/Shape:output:09dense_77/ActivityRegularizer/strided_slice/stack:output:0;dense_77/ActivityRegularizer/strided_slice/stack_1:output:0;dense_77/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
!dense_77/ActivityRegularizer/CastCast3dense_77/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ®
$dense_77/ActivityRegularizer/truedivRealDiv5dense_77/ActivityRegularizer/PartitionedCall:output:0%dense_77/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_77/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh

Identity_1Identity(dense_75/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_2Identity(dense_76/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_3Identity(dense_77/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ¯
NoOpNoOp!^dense_75/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall!^dense_77/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ	: : : : : : 2D
 dense_75/StatefulPartitionedCall dense_75/StatefulPartitionedCall2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2D
 dense_77/StatefulPartitionedCall dense_77/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
ú
I
2__inference_dense_77_activity_regularizer_60888278
x
identity4
L2LossL2Lossx*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *>PE;L
mulMulmul/x:output:0L2Loss:output:0*
T0*
_output_shapes
: >
IdentityIdentitymul:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
ÿ
I
2__inference_dense_76_activity_regularizer_60888270
x
identity0
AbsAbsx*
T0*
_output_shapes
:6
RankRankAbs:y:0*
T0*
_output_shapes
: M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
SumSumAbs:y:0range:output:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *>PÅ:I
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: >
IdentityIdentitymul:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
Æ

+__inference_dense_76_layer_call_fn_60888870

inputs
unknown:**
	unknown_0:*
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_76_layer_call_and_return_conditional_losses_60888321o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ*: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
 
_user_specified_nameinputs

Ç
J__inference_dense_77_layer_call_and_return_all_conditional_losses_60888912

inputs
unknown:*
	unknown_0:
identity

identity_1¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_77_layer_call_and_return_conditional_losses_60888345¦
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *;
f6R4
2__inference_dense_77_activity_regularizer_60888278o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿX

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ*: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
 
_user_specified_nameinputs
É	
÷
F__inference_dense_77_layer_call_and_return_conditional_losses_60888922

inputs0
matmul_readvariableop_resource:*-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:**
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ*: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
 
_user_specified_nameinputs

Ç
J__inference_dense_76_layer_call_and_return_all_conditional_losses_60888881

inputs
unknown:**
	unknown_0:*
identity

identity_1¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_76_layer_call_and_return_conditional_losses_60888321¦
PartitionedCallPartitionedCall StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *;
f6R4
2__inference_dense_76_activity_regularizer_60888270o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*X

Identity_1IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ*: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
 
_user_specified_nameinputs
	

0__inference_sequential_25_layer_call_fn_60888688

inputs
unknown:	*
	unknown_0:*
	unknown_1:**
	unknown_2:*
	unknown_3:*
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: : : *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_25_layer_call_and_return_conditional_losses_60888363o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ	: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
ÿ
I
2__inference_dense_75_activity_regularizer_60888257
x
identity0
AbsAbsx*
T0*
_output_shapes
:6
RankRankAbs:y:0*
T0*
_output_shapes
: M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
SumSumAbs:y:0range:output:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *>PÅ:I
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: >
IdentityIdentitymul:z:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
½9
Õ
K__inference_sequential_25_layer_call_and_return_conditional_losses_60888363

inputs#
dense_75_60888297:	*
dense_75_60888299:*#
dense_76_60888322:**
dense_76_60888324:*#
dense_77_60888346:*
dense_77_60888348:
identity

identity_1

identity_2

identity_3¢ dense_75/StatefulPartitionedCall¢ dense_76/StatefulPartitionedCall¢ dense_77/StatefulPartitionedCallö
 dense_75/StatefulPartitionedCallStatefulPartitionedCallinputsdense_75_60888297dense_75_60888299*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_75_layer_call_and_return_conditional_losses_60888296Ì
,dense_75/ActivityRegularizer/PartitionedCallPartitionedCall)dense_75/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *;
f6R4
2__inference_dense_75_activity_regularizer_60888257{
"dense_75/ActivityRegularizer/ShapeShape)dense_75/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_75/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_75/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_75/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*dense_75/ActivityRegularizer/strided_sliceStridedSlice+dense_75/ActivityRegularizer/Shape:output:09dense_75/ActivityRegularizer/strided_slice/stack:output:0;dense_75/ActivityRegularizer/strided_slice/stack_1:output:0;dense_75/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
!dense_75/ActivityRegularizer/CastCast3dense_75/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ®
$dense_75/ActivityRegularizer/truedivRealDiv5dense_75/ActivityRegularizer/PartitionedCall:output:0%dense_75/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 
 dense_76/StatefulPartitionedCallStatefulPartitionedCall)dense_75/StatefulPartitionedCall:output:0dense_76_60888322dense_76_60888324*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_76_layer_call_and_return_conditional_losses_60888321Ì
,dense_76/ActivityRegularizer/PartitionedCallPartitionedCall)dense_76/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *;
f6R4
2__inference_dense_76_activity_regularizer_60888270{
"dense_76/ActivityRegularizer/ShapeShape)dense_76/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_76/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_76/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_76/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*dense_76/ActivityRegularizer/strided_sliceStridedSlice+dense_76/ActivityRegularizer/Shape:output:09dense_76/ActivityRegularizer/strided_slice/stack:output:0;dense_76/ActivityRegularizer/strided_slice/stack_1:output:0;dense_76/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
!dense_76/ActivityRegularizer/CastCast3dense_76/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ®
$dense_76/ActivityRegularizer/truedivRealDiv5dense_76/ActivityRegularizer/PartitionedCall:output:0%dense_76/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 
 dense_77/StatefulPartitionedCallStatefulPartitionedCall)dense_76/StatefulPartitionedCall:output:0dense_77_60888346dense_77_60888348*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_77_layer_call_and_return_conditional_losses_60888345Ì
,dense_77/ActivityRegularizer/PartitionedCallPartitionedCall)dense_77/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *;
f6R4
2__inference_dense_77_activity_regularizer_60888278{
"dense_77/ActivityRegularizer/ShapeShape)dense_77/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_77/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_77/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_77/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*dense_77/ActivityRegularizer/strided_sliceStridedSlice+dense_77/ActivityRegularizer/Shape:output:09dense_77/ActivityRegularizer/strided_slice/stack:output:0;dense_77/ActivityRegularizer/strided_slice/stack_1:output:0;dense_77/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
!dense_77/ActivityRegularizer/CastCast3dense_77/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ®
$dense_77/ActivityRegularizer/truedivRealDiv5dense_77/ActivityRegularizer/PartitionedCall:output:0%dense_77/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_77/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh

Identity_1Identity(dense_75/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_2Identity(dense_76/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_3Identity(dense_77/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ¯
NoOpNoOp!^dense_75/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall!^dense_77/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ	: : : : : : 2D
 dense_75/StatefulPartitionedCall dense_75/StatefulPartitionedCall2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2D
 dense_77/StatefulPartitionedCall dense_77/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
Þ

&__inference_signature_wrapper_60888668
dense_75_input
unknown:	*
	unknown_0:*
	unknown_1:**
	unknown_2:*
	unknown_3:*
	unknown_4:
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCalldense_75_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__wrapped_model_60888244o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ	: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
(
_user_specified_namedense_75_input


÷
F__inference_dense_76_layer_call_and_return_conditional_losses_60888892

inputs0
matmul_readvariableop_resource:**-
biasadd_readvariableop_resource:*
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:***
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:**
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ*: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
 
_user_specified_nameinputs
ú0
¾
!__inference__traced_save_60889005
file_prefix.
*savev2_dense_75_kernel_read_readvariableop,
(savev2_dense_75_bias_read_readvariableop.
*savev2_dense_76_kernel_read_readvariableop,
(savev2_dense_76_bias_read_readvariableop.
*savev2_dense_77_kernel_read_readvariableop,
(savev2_dense_77_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop;
7savev2_sgd_dense_75_kernel_momentum_read_readvariableop9
5savev2_sgd_dense_75_bias_momentum_read_readvariableop;
7savev2_sgd_dense_76_kernel_momentum_read_readvariableop9
5savev2_sgd_dense_76_bias_momentum_read_readvariableop;
7savev2_sgd_dense_77_kernel_momentum_read_readvariableop9
5savev2_sgd_dense_77_bias_momentum_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*«

value¡
B
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B ì
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_75_kernel_read_readvariableop(savev2_dense_75_bias_read_readvariableop*savev2_dense_76_kernel_read_readvariableop(savev2_dense_76_bias_read_readvariableop*savev2_dense_77_kernel_read_readvariableop(savev2_dense_77_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop7savev2_sgd_dense_75_kernel_momentum_read_readvariableop5savev2_sgd_dense_75_bias_momentum_read_readvariableop7savev2_sgd_dense_76_kernel_momentum_read_readvariableop5savev2_sgd_dense_76_bias_momentum_read_readvariableop7savev2_sgd_dense_77_kernel_momentum_read_readvariableop5savev2_sgd_dense_77_bias_momentum_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *#
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:³
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapesv
t: :	*:*:**:*:*:: : : : : : : : :	*:*:**:*:*:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:	*: 

_output_shapes
:*:$ 

_output_shapes

:**: 

_output_shapes
:*:$ 

_output_shapes

:*: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:	*: 

_output_shapes
:*:$ 

_output_shapes

:**: 

_output_shapes
:*:$ 

_output_shapes

:*: 

_output_shapes
::

_output_shapes
: 
Õ9
Ý
K__inference_sequential_25_layer_call_and_return_conditional_losses_60888599
dense_75_input#
dense_75_60888556:	*
dense_75_60888558:*#
dense_76_60888569:**
dense_76_60888571:*#
dense_77_60888582:*
dense_77_60888584:
identity

identity_1

identity_2

identity_3¢ dense_75/StatefulPartitionedCall¢ dense_76/StatefulPartitionedCall¢ dense_77/StatefulPartitionedCallþ
 dense_75/StatefulPartitionedCallStatefulPartitionedCalldense_75_inputdense_75_60888556dense_75_60888558*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_75_layer_call_and_return_conditional_losses_60888296Ì
,dense_75/ActivityRegularizer/PartitionedCallPartitionedCall)dense_75/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *;
f6R4
2__inference_dense_75_activity_regularizer_60888257{
"dense_75/ActivityRegularizer/ShapeShape)dense_75/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_75/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_75/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_75/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*dense_75/ActivityRegularizer/strided_sliceStridedSlice+dense_75/ActivityRegularizer/Shape:output:09dense_75/ActivityRegularizer/strided_slice/stack:output:0;dense_75/ActivityRegularizer/strided_slice/stack_1:output:0;dense_75/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
!dense_75/ActivityRegularizer/CastCast3dense_75/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ®
$dense_75/ActivityRegularizer/truedivRealDiv5dense_75/ActivityRegularizer/PartitionedCall:output:0%dense_75/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 
 dense_76/StatefulPartitionedCallStatefulPartitionedCall)dense_75/StatefulPartitionedCall:output:0dense_76_60888569dense_76_60888571*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_76_layer_call_and_return_conditional_losses_60888321Ì
,dense_76/ActivityRegularizer/PartitionedCallPartitionedCall)dense_76/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *;
f6R4
2__inference_dense_76_activity_regularizer_60888270{
"dense_76/ActivityRegularizer/ShapeShape)dense_76/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_76/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_76/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_76/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*dense_76/ActivityRegularizer/strided_sliceStridedSlice+dense_76/ActivityRegularizer/Shape:output:09dense_76/ActivityRegularizer/strided_slice/stack:output:0;dense_76/ActivityRegularizer/strided_slice/stack_1:output:0;dense_76/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
!dense_76/ActivityRegularizer/CastCast3dense_76/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ®
$dense_76/ActivityRegularizer/truedivRealDiv5dense_76/ActivityRegularizer/PartitionedCall:output:0%dense_76/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 
 dense_77/StatefulPartitionedCallStatefulPartitionedCall)dense_76/StatefulPartitionedCall:output:0dense_77_60888582dense_77_60888584*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_77_layer_call_and_return_conditional_losses_60888345Ì
,dense_77/ActivityRegularizer/PartitionedCallPartitionedCall)dense_77/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *;
f6R4
2__inference_dense_77_activity_regularizer_60888278{
"dense_77/ActivityRegularizer/ShapeShape)dense_77/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_77/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_77/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_77/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*dense_77/ActivityRegularizer/strided_sliceStridedSlice+dense_77/ActivityRegularizer/Shape:output:09dense_77/ActivityRegularizer/strided_slice/stack:output:0;dense_77/ActivityRegularizer/strided_slice/stack_1:output:0;dense_77/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
!dense_77/ActivityRegularizer/CastCast3dense_77/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ®
$dense_77/ActivityRegularizer/truedivRealDiv5dense_77/ActivityRegularizer/PartitionedCall:output:0%dense_77/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_77/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh

Identity_1Identity(dense_75/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_2Identity(dense_76/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_3Identity(dense_77/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ¯
NoOpNoOp!^dense_75/StatefulPartitionedCall!^dense_76/StatefulPartitionedCall!^dense_77/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ	: : : : : : 2D
 dense_75/StatefulPartitionedCall dense_75/StatefulPartitionedCall2D
 dense_76/StatefulPartitionedCall dense_76/StatefulPartitionedCall2D
 dense_77/StatefulPartitionedCall dense_77/StatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
(
_user_specified_namedense_75_input
¶G
¼
K__inference_sequential_25_layer_call_and_return_conditional_losses_60888769

inputs9
'dense_75_matmul_readvariableop_resource:	*6
(dense_75_biasadd_readvariableop_resource:*9
'dense_76_matmul_readvariableop_resource:**6
(dense_76_biasadd_readvariableop_resource:*9
'dense_77_matmul_readvariableop_resource:*6
(dense_77_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3¢dense_75/BiasAdd/ReadVariableOp¢dense_75/MatMul/ReadVariableOp¢dense_76/BiasAdd/ReadVariableOp¢dense_76/MatMul/ReadVariableOp¢dense_77/BiasAdd/ReadVariableOp¢dense_77/MatMul/ReadVariableOp
dense_75/MatMul/ReadVariableOpReadVariableOp'dense_75_matmul_readvariableop_resource*
_output_shapes

:	**
dtype0{
dense_75/MatMulMatMulinputs&dense_75/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dense_75/BiasAdd/ReadVariableOpReadVariableOp(dense_75_biasadd_readvariableop_resource*
_output_shapes
:**
dtype0
dense_75/BiasAddBiasAdddense_75/MatMul:product:0'dense_75/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*b
dense_75/ReluReludense_75/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*v
 dense_75/ActivityRegularizer/AbsAbsdense_75/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*s
"dense_75/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
 dense_75/ActivityRegularizer/SumSum$dense_75/ActivityRegularizer/Abs:y:0+dense_75/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_75/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *>PÅ: 
 dense_75/ActivityRegularizer/mulMul+dense_75/ActivityRegularizer/mul/x:output:0)dense_75/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: m
"dense_75/ActivityRegularizer/ShapeShapedense_75/Relu:activations:0*
T0*
_output_shapes
:z
0dense_75/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_75/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_75/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*dense_75/ActivityRegularizer/strided_sliceStridedSlice+dense_75/ActivityRegularizer/Shape:output:09dense_75/ActivityRegularizer/strided_slice/stack:output:0;dense_75/ActivityRegularizer/strided_slice/stack_1:output:0;dense_75/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
!dense_75/ActivityRegularizer/CastCast3dense_75/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 
$dense_75/ActivityRegularizer/truedivRealDiv$dense_75/ActivityRegularizer/mul:z:0%dense_75/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 
dense_76/MatMul/ReadVariableOpReadVariableOp'dense_76_matmul_readvariableop_resource*
_output_shapes

:***
dtype0
dense_76/MatMulMatMuldense_75/Relu:activations:0&dense_76/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dense_76/BiasAdd/ReadVariableOpReadVariableOp(dense_76_biasadd_readvariableop_resource*
_output_shapes
:**
dtype0
dense_76/BiasAddBiasAdddense_76/MatMul:product:0'dense_76/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*b
dense_76/ReluReludense_76/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*v
 dense_76/ActivityRegularizer/AbsAbsdense_76/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*s
"dense_76/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       
 dense_76/ActivityRegularizer/SumSum$dense_76/ActivityRegularizer/Abs:y:0+dense_76/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_76/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *>PÅ: 
 dense_76/ActivityRegularizer/mulMul+dense_76/ActivityRegularizer/mul/x:output:0)dense_76/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: m
"dense_76/ActivityRegularizer/ShapeShapedense_76/Relu:activations:0*
T0*
_output_shapes
:z
0dense_76/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_76/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_76/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*dense_76/ActivityRegularizer/strided_sliceStridedSlice+dense_76/ActivityRegularizer/Shape:output:09dense_76/ActivityRegularizer/strided_slice/stack:output:0;dense_76/ActivityRegularizer/strided_slice/stack_1:output:0;dense_76/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
!dense_76/ActivityRegularizer/CastCast3dense_76/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 
$dense_76/ActivityRegularizer/truedivRealDiv$dense_76/ActivityRegularizer/mul:z:0%dense_76/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 
dense_77/MatMul/ReadVariableOpReadVariableOp'dense_77_matmul_readvariableop_resource*
_output_shapes

:**
dtype0
dense_77/MatMulMatMuldense_76/Relu:activations:0&dense_77/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_77/BiasAdd/ReadVariableOpReadVariableOp(dense_77_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_77/BiasAddBiasAdddense_77/MatMul:product:0'dense_77/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
#dense_77/ActivityRegularizer/L2LossL2Lossdense_77/BiasAdd:output:0*
T0*
_output_shapes
: g
"dense_77/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *>PE;£
 dense_77/ActivityRegularizer/mulMul+dense_77/ActivityRegularizer/mul/x:output:0,dense_77/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: k
"dense_77/ActivityRegularizer/ShapeShapedense_77/BiasAdd:output:0*
T0*
_output_shapes
:z
0dense_77/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_77/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_77/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
*dense_77/ActivityRegularizer/strided_sliceStridedSlice+dense_77/ActivityRegularizer/Shape:output:09dense_77/ActivityRegularizer/strided_slice/stack:output:0;dense_77/ActivityRegularizer/strided_slice/stack_1:output:0;dense_77/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
!dense_77/ActivityRegularizer/CastCast3dense_77/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 
$dense_77/ActivityRegularizer/truedivRealDiv$dense_77/ActivityRegularizer/mul:z:0%dense_77/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: h
IdentityIdentitydense_77/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh

Identity_1Identity(dense_75/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_2Identity(dense_76/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_3Identity(dense_77/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp ^dense_75/BiasAdd/ReadVariableOp^dense_75/MatMul/ReadVariableOp ^dense_76/BiasAdd/ReadVariableOp^dense_76/MatMul/ReadVariableOp ^dense_77/BiasAdd/ReadVariableOp^dense_77/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ	: : : : : : 2B
dense_75/BiasAdd/ReadVariableOpdense_75/BiasAdd/ReadVariableOp2@
dense_75/MatMul/ReadVariableOpdense_75/MatMul/ReadVariableOp2B
dense_76/BiasAdd/ReadVariableOpdense_76/BiasAdd/ReadVariableOp2@
dense_76/MatMul/ReadVariableOpdense_76/MatMul/ReadVariableOp2B
dense_77/BiasAdd/ReadVariableOpdense_77/BiasAdd/ReadVariableOp2@
dense_77/MatMul/ReadVariableOpdense_77/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs


÷
F__inference_dense_75_layer_call_and_return_conditional_losses_60888861

inputs0
matmul_readvariableop_resource:	*-
biasadd_readvariableop_resource:*
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	**
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:**
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
­X
ï
$__inference__traced_restore_60889075
file_prefix2
 assignvariableop_dense_75_kernel:	*.
 assignvariableop_1_dense_75_bias:*4
"assignvariableop_2_dense_76_kernel:**.
 assignvariableop_3_dense_76_bias:*4
"assignvariableop_4_dense_77_kernel:*.
 assignvariableop_5_dense_77_bias:%
assignvariableop_6_sgd_iter:	 &
assignvariableop_7_sgd_decay: .
$assignvariableop_8_sgd_learning_rate: )
assignvariableop_9_sgd_momentum: %
assignvariableop_10_total_1: %
assignvariableop_11_count_1: #
assignvariableop_12_total: #
assignvariableop_13_count: B
0assignvariableop_14_sgd_dense_75_kernel_momentum:	*<
.assignvariableop_15_sgd_dense_75_bias_momentum:*B
0assignvariableop_16_sgd_dense_76_kernel_momentum:**<
.assignvariableop_17_sgd_dense_76_bias_momentum:*B
0assignvariableop_18_sgd_dense_77_kernel_momentum:*<
.assignvariableop_19_sgd_dense_77_bias_momentum:
identity_21¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*«

value¡
B
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOpAssignVariableOp assignvariableop_dense_75_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_75_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:¹
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_76_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_76_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:¹
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_77_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_77_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:²
AssignVariableOp_6AssignVariableOpassignvariableop_6_sgd_iterIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_7AssignVariableOpassignvariableop_7_sgd_decayIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_8AssignVariableOp$assignvariableop_8_sgd_learning_rateIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_9AssignVariableOpassignvariableop_9_sgd_momentumIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_10AssignVariableOpassignvariableop_10_total_1Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:´
AssignVariableOp_11AssignVariableOpassignvariableop_11_count_1Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:É
AssignVariableOp_14AssignVariableOp0assignvariableop_14_sgd_dense_75_kernel_momentumIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ç
AssignVariableOp_15AssignVariableOp.assignvariableop_15_sgd_dense_75_bias_momentumIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:É
AssignVariableOp_16AssignVariableOp0assignvariableop_16_sgd_dense_76_kernel_momentumIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ç
AssignVariableOp_17AssignVariableOp.assignvariableop_17_sgd_dense_76_bias_momentumIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:É
AssignVariableOp_18AssignVariableOp0assignvariableop_18_sgd_dense_77_kernel_momentumIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ç
AssignVariableOp_19AssignVariableOp.assignvariableop_19_sgd_dense_77_bias_momentumIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 
Identity_20Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_21IdentityIdentity_20:output:0^NoOp_1*
T0*
_output_shapes
: ô
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_21Identity_21:output:0*=
_input_shapes,
*: : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
	

0__inference_sequential_25_layer_call_fn_60888708

inputs
unknown:	*
	unknown_0:*
	unknown_1:**
	unknown_2:*
	unknown_3:*
	unknown_4:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: : : *(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_25_layer_call_and_return_conditional_losses_60888515o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ	: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
Æ

+__inference_dense_77_layer_call_fn_60888901

inputs
unknown:*
	unknown_0:
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_77_layer_call_and_return_conditional_losses_60888345o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ*: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
 
_user_specified_nameinputs
Æ

+__inference_dense_75_layer_call_fn_60888839

inputs
unknown:	*
	unknown_0:*
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ**$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dense_75_layer_call_and_return_conditional_losses_60888296o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs"
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¹
serving_default¥
I
dense_75_input7
 serving_default_dense_75_input:0ÿÿÿÿÿÿÿÿÿ	<
dense_770
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:
Û
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
»
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses

#kernel
$bias"
_tf_keras_layer
J
0
1
2
3
#4
$5"
trackable_list_wrapper
J
0
1
2
3
#4
$5"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
õ
*trace_0
+trace_1
,trace_2
-trace_32
0__inference_sequential_25_layer_call_fn_60888381
0__inference_sequential_25_layer_call_fn_60888688
0__inference_sequential_25_layer_call_fn_60888708
0__inference_sequential_25_layer_call_fn_60888553¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z*trace_0z+trace_1z,trace_2z-trace_3
á
.trace_0
/trace_1
0trace_2
1trace_32ö
K__inference_sequential_25_layer_call_and_return_conditional_losses_60888769
K__inference_sequential_25_layer_call_and_return_conditional_losses_60888830
K__inference_sequential_25_layer_call_and_return_conditional_losses_60888599
K__inference_sequential_25_layer_call_and_return_conditional_losses_60888645¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z.trace_0z/trace_1z0trace_2z1trace_3
ÕBÒ
#__inference__wrapped_model_60888244dense_75_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
©
2iter
	3decay
4learning_rate
5momentummomentumcmomentumdmomentumemomentumf#momentumg$momentumh"
	optimizer
,
6serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses
__call__
<activity_regularizer_fn
*&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
ï
>trace_02Ò
+__inference_dense_75_layer_call_fn_60888839¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z>trace_0

?trace_02ñ
J__inference_dense_75_layer_call_and_return_all_conditional_losses_60888850¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z?trace_0
!:	*2dense_75/kernel
:*2dense_75/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
Eactivity_regularizer_fn
*&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
ï
Gtrace_02Ò
+__inference_dense_76_layer_call_fn_60888870¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zGtrace_0

Htrace_02ñ
J__inference_dense_76_layer_call_and_return_all_conditional_losses_60888881¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zHtrace_0
!:**2dense_76/kernel
:*2dense_76/bias
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
Inon_trainable_variables

Jlayers
Kmetrics
Llayer_regularization_losses
Mlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
Nactivity_regularizer_fn
*"&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
ï
Ptrace_02Ò
+__inference_dense_77_layer_call_fn_60888901¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zPtrace_0

Qtrace_02ñ
J__inference_dense_77_layer_call_and_return_all_conditional_losses_60888912¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zQtrace_0
!:*2dense_77/kernel
:2dense_77/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
0__inference_sequential_25_layer_call_fn_60888381dense_75_input"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Bþ
0__inference_sequential_25_layer_call_fn_60888688inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Bþ
0__inference_sequential_25_layer_call_fn_60888708inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
0__inference_sequential_25_layer_call_fn_60888553dense_75_input"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
K__inference_sequential_25_layer_call_and_return_conditional_losses_60888769inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
K__inference_sequential_25_layer_call_and_return_conditional_losses_60888830inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¤B¡
K__inference_sequential_25_layer_call_and_return_conditional_losses_60888599dense_75_input"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¤B¡
K__inference_sequential_25_layer_call_and_return_conditional_losses_60888645dense_75_input"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
ÔBÑ
&__inference_signature_wrapper_60888668dense_75_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ý
Ttrace_02à
2__inference_dense_75_activity_regularizer_60888257©
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢
	zTtrace_0

Utrace_02í
F__inference_dense_75_layer_call_and_return_conditional_losses_60888861¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zUtrace_0
ßBÜ
+__inference_dense_75_layer_call_fn_60888839inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þBû
J__inference_dense_75_layer_call_and_return_all_conditional_losses_60888850inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ý
Vtrace_02à
2__inference_dense_76_activity_regularizer_60888270©
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢
	zVtrace_0

Wtrace_02í
F__inference_dense_76_layer_call_and_return_conditional_losses_60888892¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zWtrace_0
ßBÜ
+__inference_dense_76_layer_call_fn_60888870inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þBû
J__inference_dense_76_layer_call_and_return_all_conditional_losses_60888881inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ý
Xtrace_02à
2__inference_dense_77_activity_regularizer_60888278©
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢
	zXtrace_0

Ytrace_02í
F__inference_dense_77_layer_call_and_return_conditional_losses_60888922¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zYtrace_0
ßBÜ
+__inference_dense_77_layer_call_fn_60888901inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þBû
J__inference_dense_77_layer_call_and_return_all_conditional_losses_60888912inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
N
Z	variables
[	keras_api
	\total
	]count"
_tf_keras_metric
^
^	variables
_	keras_api
	`total
	acount
b
_fn_kwargs"
_tf_keras_metric
èBå
2__inference_dense_75_activity_regularizer_60888257x"©
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢
	
úB÷
F__inference_dense_75_layer_call_and_return_conditional_losses_60888861inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
èBå
2__inference_dense_76_activity_regularizer_60888270x"©
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢
	
úB÷
F__inference_dense_76_layer_call_and_return_conditional_losses_60888892inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
èBå
2__inference_dense_77_activity_regularizer_60888278x"©
²
FullArgSpec
args
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢
	
úB÷
F__inference_dense_77_layer_call_and_return_conditional_losses_60888922inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
.
\0
]1"
trackable_list_wrapper
-
Z	variables"
_generic_user_object
:  (2total
:  (2count
.
`0
a1"
trackable_list_wrapper
-
^	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
,:*	*2SGD/dense_75/kernel/momentum
&:$*2SGD/dense_75/bias/momentum
,:***2SGD/dense_76/kernel/momentum
&:$*2SGD/dense_76/bias/momentum
,:**2SGD/dense_77/kernel/momentum
&:$2SGD/dense_77/bias/momentum
#__inference__wrapped_model_60888244v#$7¢4
-¢*
(%
dense_75_inputÿÿÿÿÿÿÿÿÿ	
ª "3ª0
.
dense_77"
dense_77ÿÿÿÿÿÿÿÿÿe
2__inference_dense_75_activity_regularizer_60888257/¢
¢
	
x
ª "
unknown Æ
J__inference_dense_75_layer_call_and_return_all_conditional_losses_60888850x/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ	
ª "A¢>
"
tensor_0ÿÿÿÿÿÿÿÿÿ*



tensor_1_0 ­
F__inference_dense_75_layer_call_and_return_conditional_losses_60888861c/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ	
ª ",¢)
"
tensor_0ÿÿÿÿÿÿÿÿÿ*
 
+__inference_dense_75_layer_call_fn_60888839X/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ	
ª "!
unknownÿÿÿÿÿÿÿÿÿ*e
2__inference_dense_76_activity_regularizer_60888270/¢
¢
	
x
ª "
unknown Æ
J__inference_dense_76_layer_call_and_return_all_conditional_losses_60888881x/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ*
ª "A¢>
"
tensor_0ÿÿÿÿÿÿÿÿÿ*



tensor_1_0 ­
F__inference_dense_76_layer_call_and_return_conditional_losses_60888892c/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ*
ª ",¢)
"
tensor_0ÿÿÿÿÿÿÿÿÿ*
 
+__inference_dense_76_layer_call_fn_60888870X/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ*
ª "!
unknownÿÿÿÿÿÿÿÿÿ*e
2__inference_dense_77_activity_regularizer_60888278/¢
¢
	
x
ª "
unknown Æ
J__inference_dense_77_layer_call_and_return_all_conditional_losses_60888912x#$/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ*
ª "A¢>
"
tensor_0ÿÿÿÿÿÿÿÿÿ



tensor_1_0 ­
F__inference_dense_77_layer_call_and_return_conditional_losses_60888922c#$/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ*
ª ",¢)
"
tensor_0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_77_layer_call_fn_60888901X#$/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ*
ª "!
unknownÿÿÿÿÿÿÿÿÿ
K__inference_sequential_25_layer_call_and_return_conditional_losses_60888599¶#$?¢<
5¢2
(%
dense_75_inputÿÿÿÿÿÿÿÿÿ	
p 

 
ª "k¢h
"
tensor_0ÿÿÿÿÿÿÿÿÿ
B?


tensor_1_0 


tensor_1_1 


tensor_1_2 
K__inference_sequential_25_layer_call_and_return_conditional_losses_60888645¶#$?¢<
5¢2
(%
dense_75_inputÿÿÿÿÿÿÿÿÿ	
p

 
ª "k¢h
"
tensor_0ÿÿÿÿÿÿÿÿÿ
B?


tensor_1_0 


tensor_1_1 


tensor_1_2 þ
K__inference_sequential_25_layer_call_and_return_conditional_losses_60888769®#$7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "k¢h
"
tensor_0ÿÿÿÿÿÿÿÿÿ
B?


tensor_1_0 


tensor_1_1 


tensor_1_2 þ
K__inference_sequential_25_layer_call_and_return_conditional_losses_60888830®#$7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "k¢h
"
tensor_0ÿÿÿÿÿÿÿÿÿ
B?


tensor_1_0 


tensor_1_1 


tensor_1_2  
0__inference_sequential_25_layer_call_fn_60888381l#$?¢<
5¢2
(%
dense_75_inputÿÿÿÿÿÿÿÿÿ	
p 

 
ª "!
unknownÿÿÿÿÿÿÿÿÿ 
0__inference_sequential_25_layer_call_fn_60888553l#$?¢<
5¢2
(%
dense_75_inputÿÿÿÿÿÿÿÿÿ	
p

 
ª "!
unknownÿÿÿÿÿÿÿÿÿ
0__inference_sequential_25_layer_call_fn_60888688d#$7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "!
unknownÿÿÿÿÿÿÿÿÿ
0__inference_sequential_25_layer_call_fn_60888708d#$7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "!
unknownÿÿÿÿÿÿÿÿÿ³
&__inference_signature_wrapper_60888668#$I¢F
¢ 
?ª<
:
dense_75_input(%
dense_75_inputÿÿÿÿÿÿÿÿÿ	"3ª0
.
dense_77"
dense_77ÿÿÿÿÿÿÿÿÿ