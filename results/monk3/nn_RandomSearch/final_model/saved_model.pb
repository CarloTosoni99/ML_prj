??
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
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
?
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( ?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
0
Sigmoid
x"T
y"T"
Ttype:

2
?
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8??
?
SGD/dense_11/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameSGD/dense_11/bias/momentum
?
.SGD/dense_11/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_11/bias/momentum*
_output_shapes
:*
dtype0
?
SGD/dense_11/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nameSGD/dense_11/kernel/momentum
?
0SGD/dense_11/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_11/kernel/momentum*
_output_shapes

:*
dtype0
?
SGD/dense_10/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameSGD/dense_10/bias/momentum
?
.SGD/dense_10/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_10/bias/momentum*
_output_shapes
:*
dtype0
?
SGD/dense_10/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*-
shared_nameSGD/dense_10/kernel/momentum
?
0SGD/dense_10/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_10/kernel/momentum*
_output_shapes

:*
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
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes
:*
dtype0
z
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_11/kernel
s
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes

:*
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
:*
dtype0
z
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_10/kernel
s
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes

:*
dtype0
?
serving_default_dense_10_inputPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_10_inputdense_10/kerneldense_10/biasdense_11/kerneldense_11/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_5447904

NoOpNoOp
? 
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*? 
value? B?  B? 
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
 
0
1
2
3*
 
0
1
2
3*
* 
?
non_trainable_variables

layers
metrics
layer_regularization_losses
 layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
!trace_0
"trace_1
#trace_2
$trace_3* 
6
%trace_0
&trace_1
'trace_2
(trace_3* 
* 
z
)iter
	*decay
+learning_rate
,momentummomentumOmomentumPmomentumQmomentumR*

-serving_default* 

0
1*

0
1*
* 
?
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses
__call__
3activity_regularizer_fn
*&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*

5trace_0* 

6trace_0* 
_Y
VARIABLE_VALUEdense_10/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_10/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
?
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses
__call__
<activity_regularizer_fn
*&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*

>trace_0* 

?trace_0* 
_Y
VARIABLE_VALUEdense_11/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_11/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

@0
A1*
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
Btrace_0* 

Ctrace_0* 
* 
* 
* 
* 
* 
* 
* 

Dtrace_0* 

Etrace_0* 
* 
* 
8
F	variables
G	keras_api
	Htotal
	Icount*
H
J	variables
K	keras_api
	Ltotal
	Mcount
N
_fn_kwargs*
* 
* 
* 
* 

H0
I1*

F	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

L0
M1*

J	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
??
VARIABLE_VALUESGD/dense_10/kernel/momentumYlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUESGD/dense_10/bias/momentumWlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUESGD/dense_11/kernel/momentumYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUESGD/dense_11/bias/momentumWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp0SGD/dense_10/kernel/momentum/Read/ReadVariableOp.SGD/dense_10/bias/momentum/Read/ReadVariableOp0SGD/dense_11/kernel/momentum/Read/ReadVariableOp.SGD/dense_11/bias/momentum/Read/ReadVariableOpConst*
Tin
2	*
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
GPU 2J 8? *)
f$R"
 __inference__traced_save_5448147
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_10/kerneldense_10/biasdense_11/kerneldense_11/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotal_1count_1totalcountSGD/dense_10/kernel/momentumSGD/dense_10/bias/momentumSGD/dense_11/kernel/momentumSGD/dense_11/bias/momentum*
Tin
2*
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
GPU 2J 8? *,
f'R%
#__inference__traced_restore_5448205??
?

?
E__inference_dense_11_layer_call_and_return_conditional_losses_5447670

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
H
1__inference_dense_10_activity_regularizer_5447619
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
 *Ɉ?9L
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
?B
?	
#__inference__traced_restore_5448205
file_prefix2
 assignvariableop_dense_10_kernel:.
 assignvariableop_1_dense_10_bias:4
"assignvariableop_2_dense_11_kernel:.
 assignvariableop_3_dense_11_bias:%
assignvariableop_4_sgd_iter:	 &
assignvariableop_5_sgd_decay: .
$assignvariableop_6_sgd_learning_rate: )
assignvariableop_7_sgd_momentum: $
assignvariableop_8_total_1: $
assignvariableop_9_count_1: #
assignvariableop_10_total: #
assignvariableop_11_count: B
0assignvariableop_12_sgd_dense_10_kernel_momentum:<
.assignvariableop_13_sgd_dense_10_bias_momentum:B
0assignvariableop_14_sgd_dense_11_kernel_momentum:<
.assignvariableop_15_sgd_dense_11_bias_momentum:
identity_17??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp assignvariableop_dense_10_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_10_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_11_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_11_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_sgd_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_sgd_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp$assignvariableop_6_sgd_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_sgd_momentumIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_total_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_count_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp0assignvariableop_12_sgd_dense_10_kernel_momentumIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp.assignvariableop_13_sgd_dense_10_bias_momentumIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp0assignvariableop_14_sgd_dense_11_kernel_momentumIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp.assignvariableop_15_sgd_dense_11_bias_momentumIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_17IdentityIdentity_16:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_17Identity_17:output:0*5
_input_shapes$
": : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152(
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
?
?
.__inference_sequential_5_layer_call_fn_5447821
dense_10_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_10_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????: : *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_5_layer_call_and_return_conditional_losses_5447793o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:?????????
(
_user_specified_namedense_10_input
?
?
*__inference_dense_11_layer_call_fn_5448054

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_5447670o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?)
?
 __inference__traced_save_5448147
file_prefix.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop;
7savev2_sgd_dense_10_kernel_momentum_read_readvariableop9
5savev2_sgd_dense_10_bias_momentum_read_readvariableop;
7savev2_sgd_dense_11_kernel_momentum_read_readvariableop9
5savev2_sgd_dense_11_bias_momentum_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop7savev2_sgd_dense_10_kernel_momentum_read_readvariableop5savev2_sgd_dense_10_bias_momentum_read_readvariableop7savev2_sgd_dense_11_kernel_momentum_read_readvariableop5savev2_sgd_dense_11_bias_momentum_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
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

identity_1Identity_1:output:0*g
_input_shapesV
T: ::::: : : : : : : : ::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :
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
: :$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
?
?
*__inference_dense_10_layer_call_fn_5448023

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_5447645o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
H
1__inference_dense_11_activity_regularizer_5447627
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
 *Ɉ?9L
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
?.
?
I__inference_sequential_5_layer_call_and_return_conditional_losses_5447974

inputs9
'dense_10_matmul_readvariableop_resource:6
(dense_10_biasadd_readvariableop_resource:9
'dense_11_matmul_readvariableop_resource:6
(dense_11_biasadd_readvariableop_resource:
identity

identity_1

identity_2??dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?dense_11/BiasAdd/ReadVariableOp?dense_11/MatMul/ReadVariableOp?
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:*
dtype0{
dense_10/MatMulMatMulinputs&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????k
#dense_10/ActivityRegularizer/L2LossL2Lossdense_10/Relu:activations:0*
T0*
_output_shapes
: g
"dense_10/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ɉ?9?
 dense_10/ActivityRegularizer/mulMul+dense_10/ActivityRegularizer/mul/x:output:0,dense_10/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: m
"dense_10/ActivityRegularizer/ShapeShapedense_10/Relu:activations:0*
T0*
_output_shapes
:z
0dense_10/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_10/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_10/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_10/ActivityRegularizer/strided_sliceStridedSlice+dense_10/ActivityRegularizer/Shape:output:09dense_10/ActivityRegularizer/strided_slice/stack:output:0;dense_10/ActivityRegularizer/strided_slice/stack_1:output:0;dense_10/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_10/ActivityRegularizer/CastCast3dense_10/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_10/ActivityRegularizer/truedivRealDiv$dense_10/ActivityRegularizer/mul:z:0%dense_10/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_11/MatMulMatMuldense_10/Relu:activations:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_11/SigmoidSigmoiddense_11/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
#dense_11/ActivityRegularizer/L2LossL2Lossdense_11/Sigmoid:y:0*
T0*
_output_shapes
: g
"dense_11/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ɉ?9?
 dense_11/ActivityRegularizer/mulMul+dense_11/ActivityRegularizer/mul/x:output:0,dense_11/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: f
"dense_11/ActivityRegularizer/ShapeShapedense_11/Sigmoid:y:0*
T0*
_output_shapes
:z
0dense_11/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_11/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_11/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_11/ActivityRegularizer/strided_sliceStridedSlice+dense_11/ActivityRegularizer/Shape:output:09dense_11/ActivityRegularizer/strided_slice/stack:output:0;dense_11/ActivityRegularizer/strided_slice/stack_1:output:0;dense_11/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_11/ActivityRegularizer/CastCast3dense_11/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_11/ActivityRegularizer/truedivRealDiv$dense_11/ActivityRegularizer/mul:z:0%dense_11/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: c
IdentityIdentitydense_11/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????h

Identity_1Identity(dense_10/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_2Identity(dense_11/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_dense_11_layer_call_and_return_all_conditional_losses_5448065

inputs
unknown:
	unknown_0:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_5447670?
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
GPU 2J 8? *:
f5R3
1__inference_dense_11_activity_regularizer_5447627o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????X

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
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_5447904
dense_10_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_10_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_5447611o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:?????????
(
_user_specified_namedense_10_input
?

?
E__inference_dense_10_layer_call_and_return_conditional_losses_5447645

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
I__inference_dense_10_layer_call_and_return_all_conditional_losses_5448034

inputs
unknown:
	unknown_0:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_5447645?
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
GPU 2J 8? *:
f5R3
1__inference_dense_10_activity_regularizer_5447619o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????X

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
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?.
?
I__inference_sequential_5_layer_call_and_return_conditional_losses_5448014

inputs9
'dense_10_matmul_readvariableop_resource:6
(dense_10_biasadd_readvariableop_resource:9
'dense_11_matmul_readvariableop_resource:6
(dense_11_biasadd_readvariableop_resource:
identity

identity_1

identity_2??dense_10/BiasAdd/ReadVariableOp?dense_10/MatMul/ReadVariableOp?dense_11/BiasAdd/ReadVariableOp?dense_11/MatMul/ReadVariableOp?
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:*
dtype0{
dense_10/MatMulMatMulinputs&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????b
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*'
_output_shapes
:?????????k
#dense_10/ActivityRegularizer/L2LossL2Lossdense_10/Relu:activations:0*
T0*
_output_shapes
: g
"dense_10/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ɉ?9?
 dense_10/ActivityRegularizer/mulMul+dense_10/ActivityRegularizer/mul/x:output:0,dense_10/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: m
"dense_10/ActivityRegularizer/ShapeShapedense_10/Relu:activations:0*
T0*
_output_shapes
:z
0dense_10/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_10/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_10/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_10/ActivityRegularizer/strided_sliceStridedSlice+dense_10/ActivityRegularizer/Shape:output:09dense_10/ActivityRegularizer/strided_slice/stack:output:0;dense_10/ActivityRegularizer/strided_slice/stack_1:output:0;dense_10/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_10/ActivityRegularizer/CastCast3dense_10/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_10/ActivityRegularizer/truedivRealDiv$dense_10/ActivityRegularizer/mul:z:0%dense_10/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_11/MatMulMatMuldense_10/Relu:activations:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_11/SigmoidSigmoiddense_11/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d
#dense_11/ActivityRegularizer/L2LossL2Lossdense_11/Sigmoid:y:0*
T0*
_output_shapes
: g
"dense_11/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ɉ?9?
 dense_11/ActivityRegularizer/mulMul+dense_11/ActivityRegularizer/mul/x:output:0,dense_11/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: f
"dense_11/ActivityRegularizer/ShapeShapedense_11/Sigmoid:y:0*
T0*
_output_shapes
:z
0dense_11/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_11/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_11/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_11/ActivityRegularizer/strided_sliceStridedSlice+dense_11/ActivityRegularizer/Shape:output:09dense_11/ActivityRegularizer/strided_slice/stack:output:0;dense_11/ActivityRegularizer/strided_slice/stack_1:output:0;dense_11/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_11/ActivityRegularizer/CastCast3dense_11/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_11/ActivityRegularizer/truedivRealDiv$dense_11/ActivityRegularizer/mul:z:0%dense_11/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: c
IdentityIdentitydense_11/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????h

Identity_1Identity(dense_10/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_2Identity(dense_11/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?4
?
"__inference__wrapped_model_5447611
dense_10_inputF
4sequential_5_dense_10_matmul_readvariableop_resource:C
5sequential_5_dense_10_biasadd_readvariableop_resource:F
4sequential_5_dense_11_matmul_readvariableop_resource:C
5sequential_5_dense_11_biasadd_readvariableop_resource:
identity??,sequential_5/dense_10/BiasAdd/ReadVariableOp?+sequential_5/dense_10/MatMul/ReadVariableOp?,sequential_5/dense_11/BiasAdd/ReadVariableOp?+sequential_5/dense_11/MatMul/ReadVariableOp?
+sequential_5/dense_10/MatMul/ReadVariableOpReadVariableOp4sequential_5_dense_10_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_5/dense_10/MatMulMatMuldense_10_input3sequential_5/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,sequential_5/dense_10/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_5/dense_10/BiasAddBiasAdd&sequential_5/dense_10/MatMul:product:04sequential_5/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|
sequential_5/dense_10/ReluRelu&sequential_5/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
0sequential_5/dense_10/ActivityRegularizer/L2LossL2Loss(sequential_5/dense_10/Relu:activations:0*
T0*
_output_shapes
: t
/sequential_5/dense_10/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ɉ?9?
-sequential_5/dense_10/ActivityRegularizer/mulMul8sequential_5/dense_10/ActivityRegularizer/mul/x:output:09sequential_5/dense_10/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: ?
/sequential_5/dense_10/ActivityRegularizer/ShapeShape(sequential_5/dense_10/Relu:activations:0*
T0*
_output_shapes
:?
=sequential_5/dense_10/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
?sequential_5/dense_10/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?sequential_5/dense_10/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7sequential_5/dense_10/ActivityRegularizer/strided_sliceStridedSlice8sequential_5/dense_10/ActivityRegularizer/Shape:output:0Fsequential_5/dense_10/ActivityRegularizer/strided_slice/stack:output:0Hsequential_5/dense_10/ActivityRegularizer/strided_slice/stack_1:output:0Hsequential_5/dense_10/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
.sequential_5/dense_10/ActivityRegularizer/CastCast@sequential_5/dense_10/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
1sequential_5/dense_10/ActivityRegularizer/truedivRealDiv1sequential_5/dense_10/ActivityRegularizer/mul:z:02sequential_5/dense_10/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
+sequential_5/dense_11/MatMul/ReadVariableOpReadVariableOp4sequential_5_dense_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential_5/dense_11/MatMulMatMul(sequential_5/dense_10/Relu:activations:03sequential_5/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
,sequential_5/dense_11/BiasAdd/ReadVariableOpReadVariableOp5sequential_5_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_5/dense_11/BiasAddBiasAdd&sequential_5/dense_11/MatMul:product:04sequential_5/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
sequential_5/dense_11/SigmoidSigmoid&sequential_5/dense_11/BiasAdd:output:0*
T0*'
_output_shapes
:?????????~
0sequential_5/dense_11/ActivityRegularizer/L2LossL2Loss!sequential_5/dense_11/Sigmoid:y:0*
T0*
_output_shapes
: t
/sequential_5/dense_11/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *Ɉ?9?
-sequential_5/dense_11/ActivityRegularizer/mulMul8sequential_5/dense_11/ActivityRegularizer/mul/x:output:09sequential_5/dense_11/ActivityRegularizer/L2Loss:output:0*
T0*
_output_shapes
: ?
/sequential_5/dense_11/ActivityRegularizer/ShapeShape!sequential_5/dense_11/Sigmoid:y:0*
T0*
_output_shapes
:?
=sequential_5/dense_11/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
?sequential_5/dense_11/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?sequential_5/dense_11/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7sequential_5/dense_11/ActivityRegularizer/strided_sliceStridedSlice8sequential_5/dense_11/ActivityRegularizer/Shape:output:0Fsequential_5/dense_11/ActivityRegularizer/strided_slice/stack:output:0Hsequential_5/dense_11/ActivityRegularizer/strided_slice/stack_1:output:0Hsequential_5/dense_11/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
.sequential_5/dense_11/ActivityRegularizer/CastCast@sequential_5/dense_11/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
1sequential_5/dense_11/ActivityRegularizer/truedivRealDiv1sequential_5/dense_11/ActivityRegularizer/mul:z:02sequential_5/dense_11/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: p
IdentityIdentity!sequential_5/dense_11/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp-^sequential_5/dense_10/BiasAdd/ReadVariableOp,^sequential_5/dense_10/MatMul/ReadVariableOp-^sequential_5/dense_11/BiasAdd/ReadVariableOp,^sequential_5/dense_11/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2\
,sequential_5/dense_10/BiasAdd/ReadVariableOp,sequential_5/dense_10/BiasAdd/ReadVariableOp2Z
+sequential_5/dense_10/MatMul/ReadVariableOp+sequential_5/dense_10/MatMul/ReadVariableOp2\
,sequential_5/dense_11/BiasAdd/ReadVariableOp,sequential_5/dense_11/BiasAdd/ReadVariableOp2Z
+sequential_5/dense_11/MatMul/ReadVariableOp+sequential_5/dense_11/MatMul/ReadVariableOp:W S
'
_output_shapes
:?????????
(
_user_specified_namedense_10_input
?'
?
I__inference_sequential_5_layer_call_and_return_conditional_losses_5447853
dense_10_input"
dense_10_5447824:
dense_10_5447826:"
dense_11_5447837:
dense_11_5447839:
identity

identity_1

identity_2?? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCalldense_10_inputdense_10_5447824dense_10_5447826*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_5447645?
,dense_10/ActivityRegularizer/PartitionedCallPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *:
f5R3
1__inference_dense_10_activity_regularizer_5447619{
"dense_10/ActivityRegularizer/ShapeShape)dense_10/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_10/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_10/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_10/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_10/ActivityRegularizer/strided_sliceStridedSlice+dense_10/ActivityRegularizer/Shape:output:09dense_10/ActivityRegularizer/strided_slice/stack:output:0;dense_10/ActivityRegularizer/strided_slice/stack_1:output:0;dense_10/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_10/ActivityRegularizer/CastCast3dense_10/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_10/ActivityRegularizer/truedivRealDiv5dense_10/ActivityRegularizer/PartitionedCall:output:0%dense_10/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_5447837dense_11_5447839*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_5447670?
,dense_11/ActivityRegularizer/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *:
f5R3
1__inference_dense_11_activity_regularizer_5447627{
"dense_11/ActivityRegularizer/ShapeShape)dense_11/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_11/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_11/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_11/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_11/ActivityRegularizer/strided_sliceStridedSlice+dense_11/ActivityRegularizer/Shape:output:09dense_11/ActivityRegularizer/strided_slice/stack:output:0;dense_11/ActivityRegularizer/strided_slice/stack_1:output:0;dense_11/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_11/ActivityRegularizer/CastCast3dense_11/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_11/ActivityRegularizer/truedivRealDiv5dense_11/ActivityRegularizer/PartitionedCall:output:0%dense_11/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????h

Identity_1Identity(dense_10/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_2Identity(dense_11/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall:W S
'
_output_shapes
:?????????
(
_user_specified_namedense_10_input
?
?
.__inference_sequential_5_layer_call_fn_5447934

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????: : *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_5_layer_call_and_return_conditional_losses_5447793o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?'
?
I__inference_sequential_5_layer_call_and_return_conditional_losses_5447885
dense_10_input"
dense_10_5447856:
dense_10_5447858:"
dense_11_5447869:
dense_11_5447871:
identity

identity_1

identity_2?? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCalldense_10_inputdense_10_5447856dense_10_5447858*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_5447645?
,dense_10/ActivityRegularizer/PartitionedCallPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *:
f5R3
1__inference_dense_10_activity_regularizer_5447619{
"dense_10/ActivityRegularizer/ShapeShape)dense_10/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_10/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_10/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_10/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_10/ActivityRegularizer/strided_sliceStridedSlice+dense_10/ActivityRegularizer/Shape:output:09dense_10/ActivityRegularizer/strided_slice/stack:output:0;dense_10/ActivityRegularizer/strided_slice/stack_1:output:0;dense_10/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_10/ActivityRegularizer/CastCast3dense_10/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_10/ActivityRegularizer/truedivRealDiv5dense_10/ActivityRegularizer/PartitionedCall:output:0%dense_10/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_5447869dense_11_5447871*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_5447670?
,dense_11/ActivityRegularizer/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *:
f5R3
1__inference_dense_11_activity_regularizer_5447627{
"dense_11/ActivityRegularizer/ShapeShape)dense_11/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_11/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_11/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_11/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_11/ActivityRegularizer/strided_sliceStridedSlice+dense_11/ActivityRegularizer/Shape:output:09dense_11/ActivityRegularizer/strided_slice/stack:output:0;dense_11/ActivityRegularizer/strided_slice/stack_1:output:0;dense_11/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_11/ActivityRegularizer/CastCast3dense_11/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_11/ActivityRegularizer/truedivRealDiv5dense_11/ActivityRegularizer/PartitionedCall:output:0%dense_11/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????h

Identity_1Identity(dense_10/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_2Identity(dense_11/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall:W S
'
_output_shapes
:?????????
(
_user_specified_namedense_10_input
?'
?
I__inference_sequential_5_layer_call_and_return_conditional_losses_5447793

inputs"
dense_10_5447764:
dense_10_5447766:"
dense_11_5447777:
dense_11_5447779:
identity

identity_1

identity_2?? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCallinputsdense_10_5447764dense_10_5447766*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_5447645?
,dense_10/ActivityRegularizer/PartitionedCallPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *:
f5R3
1__inference_dense_10_activity_regularizer_5447619{
"dense_10/ActivityRegularizer/ShapeShape)dense_10/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_10/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_10/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_10/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_10/ActivityRegularizer/strided_sliceStridedSlice+dense_10/ActivityRegularizer/Shape:output:09dense_10/ActivityRegularizer/strided_slice/stack:output:0;dense_10/ActivityRegularizer/strided_slice/stack_1:output:0;dense_10/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_10/ActivityRegularizer/CastCast3dense_10/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_10/ActivityRegularizer/truedivRealDiv5dense_10/ActivityRegularizer/PartitionedCall:output:0%dense_10/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_5447777dense_11_5447779*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_5447670?
,dense_11/ActivityRegularizer/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *:
f5R3
1__inference_dense_11_activity_regularizer_5447627{
"dense_11/ActivityRegularizer/ShapeShape)dense_11/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_11/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_11/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_11/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_11/ActivityRegularizer/strided_sliceStridedSlice+dense_11/ActivityRegularizer/Shape:output:09dense_11/ActivityRegularizer/strided_slice/stack:output:0;dense_11/ActivityRegularizer/strided_slice/stack_1:output:0;dense_11/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_11/ActivityRegularizer/CastCast3dense_11/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_11/ActivityRegularizer/truedivRealDiv5dense_11/ActivityRegularizer/PartitionedCall:output:0%dense_11/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????h

Identity_1Identity(dense_10/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_2Identity(dense_11/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?'
?
I__inference_sequential_5_layer_call_and_return_conditional_losses_5447687

inputs"
dense_10_5447646:
dense_10_5447648:"
dense_11_5447671:
dense_11_5447673:
identity

identity_1

identity_2?? dense_10/StatefulPartitionedCall? dense_11/StatefulPartitionedCall?
 dense_10/StatefulPartitionedCallStatefulPartitionedCallinputsdense_10_5447646dense_10_5447648*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_5447645?
,dense_10/ActivityRegularizer/PartitionedCallPartitionedCall)dense_10/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *:
f5R3
1__inference_dense_10_activity_regularizer_5447619{
"dense_10/ActivityRegularizer/ShapeShape)dense_10/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_10/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_10/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_10/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_10/ActivityRegularizer/strided_sliceStridedSlice+dense_10/ActivityRegularizer/Shape:output:09dense_10/ActivityRegularizer/strided_slice/stack:output:0;dense_10/ActivityRegularizer/strided_slice/stack_1:output:0;dense_10/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_10/ActivityRegularizer/CastCast3dense_10/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_10/ActivityRegularizer/truedivRealDiv5dense_10/ActivityRegularizer/PartitionedCall:output:0%dense_10/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_5447671dense_11_5447673*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_5447670?
,dense_11/ActivityRegularizer/PartitionedCallPartitionedCall)dense_11/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *:
f5R3
1__inference_dense_11_activity_regularizer_5447627{
"dense_11/ActivityRegularizer/ShapeShape)dense_11/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0dense_11/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_11/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_11/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_11/ActivityRegularizer/strided_sliceStridedSlice+dense_11/ActivityRegularizer/Shape:output:09dense_11/ActivityRegularizer/strided_slice/stack:output:0;dense_11/ActivityRegularizer/strided_slice/stack_1:output:0;dense_11/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!dense_11/ActivityRegularizer/CastCast3dense_11/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$dense_11/ActivityRegularizer/truedivRealDiv5dense_11/ActivityRegularizer/PartitionedCall:output:0%dense_11/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????h

Identity_1Identity(dense_10/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: h

Identity_2Identity(dense_11/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
E__inference_dense_11_layer_call_and_return_conditional_losses_5448076

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_5_layer_call_fn_5447919

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????: : *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_5_layer_call_and_return_conditional_losses_5447687o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
E__inference_dense_10_layer_call_and_return_conditional_losses_5448045

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
.__inference_sequential_5_layer_call_fn_5447700
dense_10_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_10_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????: : *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *R
fMRK
I__inference_sequential_5_layer_call_and_return_conditional_losses_5447687o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:?????????
(
_user_specified_namedense_10_input"?	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
I
dense_10_input7
 serving_default_dense_10_input:0?????????<
dense_110
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?p
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures"
_tf_keras_sequential
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables

layers
metrics
layer_regularization_losses
 layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
!trace_0
"trace_1
#trace_2
$trace_32?
.__inference_sequential_5_layer_call_fn_5447700
.__inference_sequential_5_layer_call_fn_5447919
.__inference_sequential_5_layer_call_fn_5447934
.__inference_sequential_5_layer_call_fn_5447821?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z!trace_0z"trace_1z#trace_2z$trace_3
?
%trace_0
&trace_1
'trace_2
(trace_32?
I__inference_sequential_5_layer_call_and_return_conditional_losses_5447974
I__inference_sequential_5_layer_call_and_return_conditional_losses_5448014
I__inference_sequential_5_layer_call_and_return_conditional_losses_5447853
I__inference_sequential_5_layer_call_and_return_conditional_losses_5447885?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z%trace_0z&trace_1z'trace_2z(trace_3
?B?
"__inference__wrapped_model_5447611dense_10_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
)iter
	*decay
+learning_rate
,momentummomentumOmomentumPmomentumQmomentumR"
	optimizer
,
-serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses
__call__
3activity_regularizer_fn
*&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
?
5trace_02?
*__inference_dense_10_layer_call_fn_5448023?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z5trace_0
?
6trace_02?
I__inference_dense_10_layer_call_and_return_all_conditional_losses_5448034?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z6trace_0
!:2dense_10/kernel
:2dense_10/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses
__call__
<activity_regularizer_fn
*&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
?
>trace_02?
*__inference_dense_11_layer_call_fn_5448054?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z>trace_0
?
?trace_02?
I__inference_dense_11_layer_call_and_return_all_conditional_losses_5448065?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
!:2dense_11/kernel
:2dense_11/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
.__inference_sequential_5_layer_call_fn_5447700dense_10_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
.__inference_sequential_5_layer_call_fn_5447919inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
.__inference_sequential_5_layer_call_fn_5447934inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
.__inference_sequential_5_layer_call_fn_5447821dense_10_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
I__inference_sequential_5_layer_call_and_return_conditional_losses_5447974inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
I__inference_sequential_5_layer_call_and_return_conditional_losses_5448014inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
I__inference_sequential_5_layer_call_and_return_conditional_losses_5447853dense_10_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
I__inference_sequential_5_layer_call_and_return_conditional_losses_5447885dense_10_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
?B?
%__inference_signature_wrapper_5447904dense_10_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?
Btrace_02?
1__inference_dense_10_activity_regularizer_5447619?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?zBtrace_0
?
Ctrace_02?
E__inference_dense_10_layer_call_and_return_conditional_losses_5448045?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zCtrace_0
?B?
*__inference_dense_10_layer_call_fn_5448023inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
I__inference_dense_10_layer_call_and_return_all_conditional_losses_5448034inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
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
?
Dtrace_02?
1__inference_dense_11_activity_regularizer_5447627?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?zDtrace_0
?
Etrace_02?
E__inference_dense_11_layer_call_and_return_conditional_losses_5448076?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zEtrace_0
?B?
*__inference_dense_11_layer_call_fn_5448054inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
I__inference_dense_11_layer_call_and_return_all_conditional_losses_5448065inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
N
F	variables
G	keras_api
	Htotal
	Icount"
_tf_keras_metric
^
J	variables
K	keras_api
	Ltotal
	Mcount
N
_fn_kwargs"
_tf_keras_metric
?B?
1__inference_dense_10_activity_regularizer_5447619x"?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
?B?
E__inference_dense_10_layer_call_and_return_conditional_losses_5448045inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
1__inference_dense_11_activity_regularizer_5447627x"?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
?B?
E__inference_dense_11_layer_call_and_return_conditional_losses_5448076inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
H0
I1"
trackable_list_wrapper
-
F	variables"
_generic_user_object
:  (2total
:  (2count
.
L0
M1"
trackable_list_wrapper
-
J	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
,:*2SGD/dense_10/kernel/momentum
&:$2SGD/dense_10/bias/momentum
,:*2SGD/dense_11/kernel/momentum
&:$2SGD/dense_11/bias/momentum?
"__inference__wrapped_model_5447611t7?4
-?*
(?%
dense_10_input?????????
? "3?0
.
dense_11"?
dense_11?????????[
1__inference_dense_10_activity_regularizer_5447619&?
?
?	
x
? "? ?
I__inference_dense_10_layer_call_and_return_all_conditional_losses_5448034j/?,
%?"
 ?
inputs?????????
? "3?0
?
0?????????
?
?	
1/0 ?
E__inference_dense_10_layer_call_and_return_conditional_losses_5448045\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? }
*__inference_dense_10_layer_call_fn_5448023O/?,
%?"
 ?
inputs?????????
? "??????????[
1__inference_dense_11_activity_regularizer_5447627&?
?
?	
x
? "? ?
I__inference_dense_11_layer_call_and_return_all_conditional_losses_5448065j/?,
%?"
 ?
inputs?????????
? "3?0
?
0?????????
?
?	
1/0 ?
E__inference_dense_11_layer_call_and_return_conditional_losses_5448076\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? }
*__inference_dense_11_layer_call_fn_5448054O/?,
%?"
 ?
inputs?????????
? "???????????
I__inference_sequential_5_layer_call_and_return_conditional_losses_5447853???<
5?2
(?%
dense_10_input?????????
p 

 
? "A?>
?
0?????????
?
?	
1/0 
?	
1/1 ?
I__inference_sequential_5_layer_call_and_return_conditional_losses_5447885???<
5?2
(?%
dense_10_input?????????
p

 
? "A?>
?
0?????????
?
?	
1/0 
?	
1/1 ?
I__inference_sequential_5_layer_call_and_return_conditional_losses_5447974?7?4
-?*
 ?
inputs?????????
p 

 
? "A?>
?
0?????????
?
?	
1/0 
?	
1/1 ?
I__inference_sequential_5_layer_call_and_return_conditional_losses_5448014?7?4
-?*
 ?
inputs?????????
p

 
? "A?>
?
0?????????
?
?	
1/0 
?	
1/1 ?
.__inference_sequential_5_layer_call_fn_5447700a??<
5?2
(?%
dense_10_input?????????
p 

 
? "???????????
.__inference_sequential_5_layer_call_fn_5447821a??<
5?2
(?%
dense_10_input?????????
p

 
? "???????????
.__inference_sequential_5_layer_call_fn_5447919Y7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
.__inference_sequential_5_layer_call_fn_5447934Y7?4
-?*
 ?
inputs?????????
p

 
? "???????????
%__inference_signature_wrapper_5447904?I?F
? 
??<
:
dense_10_input(?%
dense_10_input?????????"3?0
.
dense_11"?
dense_11?????????