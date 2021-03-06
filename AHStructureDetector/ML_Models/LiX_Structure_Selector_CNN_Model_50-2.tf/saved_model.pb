??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

;
Elu
features"T
activations"T"
Ttype:
2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
3
Square
x"T
y"T"
Ttype:
2
	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
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
executor_typestring ?
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
Ttype"
Indextype:
2	"

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
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??

?
conv1d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	0*!
shared_nameconv1d_17/kernel
y
$conv1d_17/kernel/Read/ReadVariableOpReadVariableOpconv1d_17/kernel*"
_output_shapes
:	0*
dtype0
t
conv1d_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*
shared_nameconv1d_17/bias
m
"conv1d_17/bias/Read/ReadVariableOpReadVariableOpconv1d_17/bias*
_output_shapes
:0*
dtype0
{
dense_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	0?* 
shared_namedense_34/kernel
t
#dense_34/kernel/Read/ReadVariableOpReadVariableOpdense_34/kernel*
_output_shapes
:	0?*
dtype0
s
dense_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_34/bias
l
!dense_34/bias/Read/ReadVariableOpReadVariableOpdense_34/bias*
_output_shapes	
:?*
dtype0
{
dense_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?* 
shared_namedense_35/kernel
t
#dense_35/kernel/Read/ReadVariableOpReadVariableOpdense_35/kernel*
_output_shapes
:	?*
dtype0
r
dense_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_35/bias
k
!dense_35/bias/Read/ReadVariableOpReadVariableOpdense_35/bias*
_output_shapes
:*
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

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
	optimizer

signatures
#	_self_saveable_object_factories

trainable_variables
	variables
regularization_losses
	keras_api
?

kernel
bias
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
w
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
?

kernel
bias
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
 	keras_api
w
#!_self_saveable_object_factories
"trainable_variables
#	variables
$regularization_losses
%	keras_api
?

&kernel
'bias
#(_self_saveable_object_factories
)trainable_variables
*	variables
+regularization_losses
,	keras_api
w
#-_self_saveable_object_factories
.trainable_variables
/	variables
0regularization_losses
1	keras_api
 
 
 
*
0
1
2
3
&4
'5
*
0
1
2
3
&4
'5
 
?

trainable_variables
2non_trainable_variables
	variables
3metrics
4layer_metrics
regularization_losses

5layers
6layer_regularization_losses
\Z
VARIABLE_VALUEconv1d_17/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv1d_17/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
 
?
trainable_variables
7non_trainable_variables
	variables
8metrics
9layer_metrics
regularization_losses

:layers
;layer_regularization_losses
 
 
 
 
?
trainable_variables
<non_trainable_variables
	variables
=metrics
>layer_metrics
regularization_losses

?layers
@layer_regularization_losses
[Y
VARIABLE_VALUEdense_34/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_34/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
 
?
trainable_variables
Anon_trainable_variables
	variables
Bmetrics
Clayer_metrics
regularization_losses

Dlayers
Elayer_regularization_losses
 
 
 
 
?
"trainable_variables
Fnon_trainable_variables
#	variables
Gmetrics
Hlayer_metrics
$regularization_losses

Ilayers
Jlayer_regularization_losses
[Y
VARIABLE_VALUEdense_35/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_35/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

&0
'1

&0
'1
 
?
)trainable_variables
Knon_trainable_variables
*	variables
Lmetrics
Mlayer_metrics
+regularization_losses

Nlayers
Olayer_regularization_losses
 
 
 
 
?
.trainable_variables
Pnon_trainable_variables
/	variables
Qmetrics
Rlayer_metrics
0regularization_losses

Slayers
Tlayer_regularization_losses
 

U0
V1
 
*
0
1
2
3
4
5
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Wtotal
	Xcount
Y	variables
Z	keras_api
D
	[total
	\count
]
_fn_kwargs
^	variables
_	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

W0
X1

Y	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

[0
\1

^	variables
?
serving_default_conv1d_17_inputPlaceholder*+
_output_shapes
:?????????	*
dtype0* 
shape:?????????	
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv1d_17_inputconv1d_17/kernelconv1d_17/biasdense_34/kerneldense_34/biasdense_35/kerneldense_35/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? *.
f)R'
%__inference_signature_wrapper_1520293
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv1d_17/kernel/Read/ReadVariableOp"conv1d_17/bias/Read/ReadVariableOp#dense_34/kernel/Read/ReadVariableOp!dense_34/bias/Read/ReadVariableOp#dense_35/kernel/Read/ReadVariableOp!dense_35/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *)
f$R"
 __inference__traced_save_1520822
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_17/kernelconv1d_17/biasdense_34/kerneldense_34/biasdense_35/kerneldense_35/biastotalcounttotal_1count_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *,
f'R%
#__inference__traced_restore_1520862??

?
?
I__inference_dense_35_layer_call_and_return_all_conditional_losses_1520654

inputs
unknown:	?
	unknown_0:
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
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_dense_35_layer_call_and_return_conditional_losses_15198032
StatefulPartitionedCall?
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
 *2
config_proto" 

CPU

GPU2 *0J 8? *:
f5R3
1__inference_dense_35_activity_regularizer_15196922
PartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identityy

Identity_1IdentityPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?"
?
F__inference_conv1d_17_layer_call_and_return_conditional_losses_1520736

inputsA
+conv1d_expanddims_1_readvariableop_resource:	0-
biasadd_readvariableop_resource:0
identity??BiasAdd/ReadVariableOp?&bias/Regularizer/Square/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOp?(kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????	2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	0*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	02
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:?????????0*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????02	
BiasAddY
EluEluBiasAdd:output:0*
T0*+
_output_shapes
:?????????02
Elu?
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	0*
dtype02*
(kernel/Regularizer/Square/ReadVariableOp?
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	02
kernel/Regularizer/Square?
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
kernel/Regularizer/Const?
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
kernel/Regularizer/mul/x?
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mul?
&bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02(
&bias/Regularizer/Square/ReadVariableOp?
bias/Regularizer/SquareSquare.bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:02
bias/Regularizer/Squarez
bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer/Const?
bias/Regularizer/SumSumbias/Regularizer/Square:y:0bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/Sumu
bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer/mul/x?
bias/Regularizer/mulMulbias/Regularizer/mul/x:output:0bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/mul?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp'^bias/Regularizer/Square/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*
T0*+
_output_shapes
:?????????02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2P
&bias/Regularizer/Square/ReadVariableOp&bias/Regularizer/Square/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?

?
__inference_loss_fn_1_1520686=
/bias_regularizer_square_readvariableop_resource:0
identity??&bias/Regularizer/Square/ReadVariableOp?
&bias/Regularizer/Square/ReadVariableOpReadVariableOp/bias_regularizer_square_readvariableop_resource*
_output_shapes
:0*
dtype02(
&bias/Regularizer/Square/ReadVariableOp?
bias/Regularizer/SquareSquare.bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:02
bias/Regularizer/Squarez
bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer/Const?
bias/Regularizer/SumSumbias/Regularizer/Square:y:0bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/Sumu
bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer/mul/x?
bias/Regularizer/mulMulbias/Regularizer/mul/x:output:0bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/mul?
IdentityIdentitybias/Regularizer/mul:z:0'^bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2P
&bias/Regularizer/Square/ReadVariableOp&bias/Regularizer/Square/ReadVariableOp
?
I
2__inference_conv1d_17_activity_regularizer_1519666
x
identity@
SquareSquarex*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:?????????2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
?
?
J__inference_conv1d_17_layer_call_and_return_all_conditional_losses_1520564

inputs
unknown:	0
	unknown_0:0
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????0*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_conv1d_17_layer_call_and_return_conditional_losses_15197272
StatefulPartitionedCall?
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
 *2
config_proto" 

CPU

GPU2 *0J 8? *;
f6R4
2__inference_conv1d_17_activity_regularizer_15196662
PartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????02

Identityy

Identity_1IdentityPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????	: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
e
F__inference_dropout_1_layer_call_and_return_conditional_losses_1519918

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
J__inference_sequential_17_layer_call_and_return_conditional_losses_1520429

inputsK
5conv1d_17_conv1d_expanddims_1_readvariableop_resource:	07
)conv1d_17_biasadd_readvariableop_resource:0:
'dense_34_matmul_readvariableop_resource:	0?7
(dense_34_biasadd_readvariableop_resource:	?:
'dense_35_matmul_readvariableop_resource:	?6
(dense_35_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3??&bias/Regularizer/Square/ReadVariableOp?(bias/Regularizer_1/Square/ReadVariableOp?(bias/Regularizer_2/Square/ReadVariableOp? conv1d_17/BiasAdd/ReadVariableOp?,conv1d_17/conv1d/ExpandDims_1/ReadVariableOp?dense_34/BiasAdd/ReadVariableOp?dense_34/MatMul/ReadVariableOp?dense_35/BiasAdd/ReadVariableOp?dense_35/MatMul/ReadVariableOp?(kernel/Regularizer/Square/ReadVariableOp?
conv1d_17/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
conv1d_17/conv1d/ExpandDims/dim?
conv1d_17/conv1d/ExpandDims
ExpandDimsinputs(conv1d_17/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????	2
conv1d_17/conv1d/ExpandDims?
,conv1d_17/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_17_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	0*
dtype02.
,conv1d_17/conv1d/ExpandDims_1/ReadVariableOp?
!conv1d_17/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv1d_17/conv1d/ExpandDims_1/dim?
conv1d_17/conv1d/ExpandDims_1
ExpandDims4conv1d_17/conv1d/ExpandDims_1/ReadVariableOp:value:0*conv1d_17/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	02
conv1d_17/conv1d/ExpandDims_1?
conv1d_17/conv1dConv2D$conv1d_17/conv1d/ExpandDims:output:0&conv1d_17/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
2
conv1d_17/conv1d?
conv1d_17/conv1d/SqueezeSqueezeconv1d_17/conv1d:output:0*
T0*+
_output_shapes
:?????????0*
squeeze_dims

?????????2
conv1d_17/conv1d/Squeeze?
 conv1d_17/BiasAdd/ReadVariableOpReadVariableOp)conv1d_17_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02"
 conv1d_17/BiasAdd/ReadVariableOp?
conv1d_17/BiasAddBiasAdd!conv1d_17/conv1d/Squeeze:output:0(conv1d_17/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????02
conv1d_17/BiasAddw
conv1d_17/EluEluconv1d_17/BiasAdd:output:0*
T0*+
_output_shapes
:?????????02
conv1d_17/Elu?
$conv1d_17/ActivityRegularizer/SquareSquareconv1d_17/Elu:activations:0*
T0*+
_output_shapes
:?????????02&
$conv1d_17/ActivityRegularizer/Square?
#conv1d_17/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_17/ActivityRegularizer/Const?
!conv1d_17/ActivityRegularizer/SumSum(conv1d_17/ActivityRegularizer/Square:y:0,conv1d_17/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv1d_17/ActivityRegularizer/Sum?
#conv1d_17/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72%
#conv1d_17/ActivityRegularizer/mul/x?
!conv1d_17/ActivityRegularizer/mulMul,conv1d_17/ActivityRegularizer/mul/x:output:0*conv1d_17/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv1d_17/ActivityRegularizer/mul?
#conv1d_17/ActivityRegularizer/ShapeShapeconv1d_17/Elu:activations:0*
T0*
_output_shapes
:2%
#conv1d_17/ActivityRegularizer/Shape?
1conv1d_17/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1conv1d_17/ActivityRegularizer/strided_slice/stack?
3conv1d_17/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3conv1d_17/ActivityRegularizer/strided_slice/stack_1?
3conv1d_17/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3conv1d_17/ActivityRegularizer/strided_slice/stack_2?
+conv1d_17/ActivityRegularizer/strided_sliceStridedSlice,conv1d_17/ActivityRegularizer/Shape:output:0:conv1d_17/ActivityRegularizer/strided_slice/stack:output:0<conv1d_17/ActivityRegularizer/strided_slice/stack_1:output:0<conv1d_17/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+conv1d_17/ActivityRegularizer/strided_slice?
"conv1d_17/ActivityRegularizer/CastCast4conv1d_17/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2$
"conv1d_17/ActivityRegularizer/Cast?
%conv1d_17/ActivityRegularizer/truedivRealDiv%conv1d_17/ActivityRegularizer/mul:z:0&conv1d_17/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2'
%conv1d_17/ActivityRegularizer/truedivu
flatten_17/ConstConst*
_output_shapes
:*
dtype0*
valueB"????0   2
flatten_17/Const?
flatten_17/ReshapeReshapeconv1d_17/Elu:activations:0flatten_17/Const:output:0*
T0*'
_output_shapes
:?????????02
flatten_17/Reshape?
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes
:	0?*
dtype02 
dense_34/MatMul/ReadVariableOp?
dense_34/MatMulMatMulflatten_17/Reshape:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_34/MatMul?
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_34/BiasAdd/ReadVariableOp?
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_34/BiasAdd}
dense_34/SigmoidSigmoiddense_34/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_34/Sigmoid?
#dense_34/ActivityRegularizer/SquareSquaredense_34/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2%
#dense_34/ActivityRegularizer/Square?
"dense_34/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_34/ActivityRegularizer/Const?
 dense_34/ActivityRegularizer/SumSum'dense_34/ActivityRegularizer/Square:y:0+dense_34/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_34/ActivityRegularizer/Sum?
"dense_34/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_34/ActivityRegularizer/mul/x?
 dense_34/ActivityRegularizer/mulMul+dense_34/ActivityRegularizer/mul/x:output:0)dense_34/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_34/ActivityRegularizer/mul?
"dense_34/ActivityRegularizer/ShapeShapedense_34/Sigmoid:y:0*
T0*
_output_shapes
:2$
"dense_34/ActivityRegularizer/Shape?
0dense_34/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_34/ActivityRegularizer/strided_slice/stack?
2dense_34/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_34/ActivityRegularizer/strided_slice/stack_1?
2dense_34/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_34/ActivityRegularizer/strided_slice/stack_2?
*dense_34/ActivityRegularizer/strided_sliceStridedSlice+dense_34/ActivityRegularizer/Shape:output:09dense_34/ActivityRegularizer/strided_slice/stack:output:0;dense_34/ActivityRegularizer/strided_slice/stack_1:output:0;dense_34/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_34/ActivityRegularizer/strided_slice?
!dense_34/ActivityRegularizer/CastCast3dense_34/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_34/ActivityRegularizer/Cast?
$dense_34/ActivityRegularizer/truedivRealDiv$dense_34/ActivityRegularizer/mul:z:0%dense_34/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_34/ActivityRegularizer/truediv}
dropout_1/IdentityIdentitydense_34/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
dropout_1/Identity?
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_35/MatMul/ReadVariableOp?
dense_35/MatMulMatMuldropout_1/Identity:output:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_35/MatMul?
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_35/BiasAdd/ReadVariableOp?
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_35/BiasAdd?
#dense_35/ActivityRegularizer/SquareSquaredense_35/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2%
#dense_35/ActivityRegularizer/Square?
"dense_35/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_35/ActivityRegularizer/Const?
 dense_35/ActivityRegularizer/SumSum'dense_35/ActivityRegularizer/Square:y:0+dense_35/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_35/ActivityRegularizer/Sum?
"dense_35/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_35/ActivityRegularizer/mul/x?
 dense_35/ActivityRegularizer/mulMul+dense_35/ActivityRegularizer/mul/x:output:0)dense_35/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_35/ActivityRegularizer/mul?
"dense_35/ActivityRegularizer/ShapeShapedense_35/BiasAdd:output:0*
T0*
_output_shapes
:2$
"dense_35/ActivityRegularizer/Shape?
0dense_35/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_35/ActivityRegularizer/strided_slice/stack?
2dense_35/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_35/ActivityRegularizer/strided_slice/stack_1?
2dense_35/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_35/ActivityRegularizer/strided_slice/stack_2?
*dense_35/ActivityRegularizer/strided_sliceStridedSlice+dense_35/ActivityRegularizer/Shape:output:09dense_35/ActivityRegularizer/strided_slice/stack:output:0;dense_35/ActivityRegularizer/strided_slice/stack_1:output:0;dense_35/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_35/ActivityRegularizer/strided_slice?
!dense_35/ActivityRegularizer/CastCast3dense_35/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_35/ActivityRegularizer/Cast?
$dense_35/ActivityRegularizer/truedivRealDiv$dense_35/ActivityRegularizer/mul:z:0%dense_35/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_35/ActivityRegularizer/truediv?
softmax_17/SoftmaxSoftmaxdense_35/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
softmax_17/Softmax?
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp5conv1d_17_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	0*
dtype02*
(kernel/Regularizer/Square/ReadVariableOp?
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	02
kernel/Regularizer/Square?
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
kernel/Regularizer/Const?
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
kernel/Regularizer/mul/x?
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mul?
&bias/Regularizer/Square/ReadVariableOpReadVariableOp)conv1d_17_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02(
&bias/Regularizer/Square/ReadVariableOp?
bias/Regularizer/SquareSquare.bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:02
bias/Regularizer/Squarez
bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer/Const?
bias/Regularizer/SumSumbias/Regularizer/Square:y:0bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/Sumu
bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer/mul/x?
bias/Regularizer/mulMulbias/Regularizer/mul/x:output:0bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/mul?
(bias/Regularizer_1/Square/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(bias/Regularizer_1/Square/ReadVariableOp?
bias/Regularizer_1/SquareSquare0bias/Regularizer_1/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
bias/Regularizer_1/Square~
bias/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer_1/Const?
bias/Regularizer_1/SumSumbias/Regularizer_1/Square:y:0!bias/Regularizer_1/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer_1/Sumy
bias/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer_1/mul/x?
bias/Regularizer_1/mulMul!bias/Regularizer_1/mul/x:output:0bias/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer_1/mul?
(bias/Regularizer_2/Square/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(bias/Regularizer_2/Square/ReadVariableOp?
bias/Regularizer_2/SquareSquare0bias/Regularizer_2/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
bias/Regularizer_2/Square~
bias/Regularizer_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer_2/Const?
bias/Regularizer_2/SumSumbias/Regularizer_2/Square:y:0!bias/Regularizer_2/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer_2/Sumy
bias/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer_2/mul/x?
bias/Regularizer_2/mulMul!bias/Regularizer_2/mul/x:output:0bias/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer_2/mul?
IdentityIdentitysoftmax_17/Softmax:softmax:0'^bias/Regularizer/Square/ReadVariableOp)^bias/Regularizer_1/Square/ReadVariableOp)^bias/Regularizer_2/Square/ReadVariableOp!^conv1d_17/BiasAdd/ReadVariableOp-^conv1d_17/conv1d/ExpandDims_1/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity)conv1d_17/ActivityRegularizer/truediv:z:0'^bias/Regularizer/Square/ReadVariableOp)^bias/Regularizer_1/Square/ReadVariableOp)^bias/Regularizer_2/Square/ReadVariableOp!^conv1d_17/BiasAdd/ReadVariableOp-^conv1d_17/conv1d/ExpandDims_1/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_34/ActivityRegularizer/truediv:z:0'^bias/Regularizer/Square/ReadVariableOp)^bias/Regularizer_1/Square/ReadVariableOp)^bias/Regularizer_2/Square/ReadVariableOp!^conv1d_17/BiasAdd/ReadVariableOp-^conv1d_17/conv1d/ExpandDims_1/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_35/ActivityRegularizer/truediv:z:0'^bias/Regularizer/Square/ReadVariableOp)^bias/Regularizer_1/Square/ReadVariableOp)^bias/Regularizer_2/Square/ReadVariableOp!^conv1d_17/BiasAdd/ReadVariableOp-^conv1d_17/conv1d/ExpandDims_1/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : 2P
&bias/Regularizer/Square/ReadVariableOp&bias/Regularizer/Square/ReadVariableOp2T
(bias/Regularizer_1/Square/ReadVariableOp(bias/Regularizer_1/Square/ReadVariableOp2T
(bias/Regularizer_2/Square/ReadVariableOp(bias/Regularizer_2/Square/ReadVariableOp2D
 conv1d_17/BiasAdd/ReadVariableOp conv1d_17/BiasAdd/ReadVariableOp2\
,conv1d_17/conv1d/ExpandDims_1/ReadVariableOp,conv1d_17/conv1d/ExpandDims_1/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
+__inference_conv1d_17_layer_call_fn_1520553

inputs
unknown:	0
	unknown_0:0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????0*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_conv1d_17_layer_call_and_return_conditional_losses_15197272
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????	: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?

?
__inference_loss_fn_2_1520697>
/bias_regularizer_square_readvariableop_resource:	?
identity??&bias/Regularizer/Square/ReadVariableOp?
&bias/Regularizer/Square/ReadVariableOpReadVariableOp/bias_regularizer_square_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&bias/Regularizer/Square/ReadVariableOp?
bias/Regularizer/SquareSquare.bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
bias/Regularizer/Squarez
bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer/Const?
bias/Regularizer/SumSumbias/Regularizer/Square:y:0bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/Sumu
bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer/mul/x?
bias/Regularizer/mulMulbias/Regularizer/mul/x:output:0bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/mul?
IdentityIdentitybias/Regularizer/mul:z:0'^bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2P
&bias/Regularizer/Square/ReadVariableOp&bias/Regularizer/Square/ReadVariableOp
?
c
G__inference_flatten_17_layer_call_and_return_conditional_losses_1520575

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????0   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????02	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????0:S O
+
_output_shapes
:?????????0
 
_user_specified_nameinputs
? 
?
 __inference__traced_save_1520822
file_prefix/
+savev2_conv1d_17_kernel_read_readvariableop-
)savev2_conv1d_17_bias_read_readvariableop.
*savev2_dense_34_kernel_read_readvariableop,
(savev2_dense_34_bias_read_readvariableop.
*savev2_dense_35_kernel_read_readvariableop,
(savev2_dense_35_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv1d_17_kernel_read_readvariableop)savev2_conv1d_17_bias_read_readvariableop*savev2_dense_34_kernel_read_readvariableop(savev2_dense_34_bias_read_readvariableop*savev2_dense_35_kernel_read_readvariableop(savev2_dense_35_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*V
_input_shapesE
C: :	0:0:	0?:?:	?:: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:	0: 

_output_shapes
:0:%!

_output_shapes
:	0?:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::
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
: 
?
?
*__inference_dense_34_layer_call_fn_1520590

inputs
unknown:	0?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_dense_34_layer_call_and_return_conditional_losses_15197662
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????0: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_1520293
conv1d_17_input
unknown:	0
	unknown_0:0
	unknown_1:	0?
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv1d_17_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? *+
f&R$
"__inference__wrapped_model_15196532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:?????????	
)
_user_specified_nameconv1d_17_input
?

?
__inference_loss_fn_3_1520708=
/bias_regularizer_square_readvariableop_resource:
identity??&bias/Regularizer/Square/ReadVariableOp?
&bias/Regularizer/Square/ReadVariableOpReadVariableOp/bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype02(
&bias/Regularizer/Square/ReadVariableOp?
bias/Regularizer/SquareSquare.bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
bias/Regularizer/Squarez
bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer/Const?
bias/Regularizer/SumSumbias/Regularizer/Square:y:0bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/Sumu
bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer/mul/x?
bias/Regularizer/mulMulbias/Regularizer/mul/x:output:0bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/mul?
IdentityIdentitybias/Regularizer/mul:z:0'^bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2P
&bias/Regularizer/Square/ReadVariableOp&bias/Regularizer/Square/ReadVariableOp
?
c
G__inference_flatten_17_layer_call_and_return_conditional_losses_1519747

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????0   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????02	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????0:S O
+
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_1520675G
1kernel_regularizer_square_readvariableop_resource:	0
identity??(kernel/Regularizer/Square/ReadVariableOp?
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp1kernel_regularizer_square_readvariableop_resource*"
_output_shapes
:	0*
dtype02*
(kernel/Regularizer/Square/ReadVariableOp?
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	02
kernel/Regularizer/Square?
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
kernel/Regularizer/Const?
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
kernel/Regularizer/mul/x?
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mul?
IdentityIdentitykernel/Regularizer/mul:z:0)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
?
c
G__inference_softmax_17_layer_call_and_return_conditional_losses_1519822

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_dense_35_layer_call_and_return_conditional_losses_1519803

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?&bias/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
&bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&bias/Regularizer/Square/ReadVariableOp?
bias/Regularizer/SquareSquare.bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
bias/Regularizer/Squarez
bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer/Const?
bias/Regularizer/SumSumbias/Regularizer/Square:y:0bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/Sumu
bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer/mul/x?
bias/Regularizer/mulMulbias/Regularizer/mul/x:output:0bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/mul?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp'^bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2P
&bias/Regularizer/Square/ReadVariableOp&bias/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?y
?
"__inference__wrapped_model_1519653
conv1d_17_inputY
Csequential_17_conv1d_17_conv1d_expanddims_1_readvariableop_resource:	0E
7sequential_17_conv1d_17_biasadd_readvariableop_resource:0H
5sequential_17_dense_34_matmul_readvariableop_resource:	0?E
6sequential_17_dense_34_biasadd_readvariableop_resource:	?H
5sequential_17_dense_35_matmul_readvariableop_resource:	?D
6sequential_17_dense_35_biasadd_readvariableop_resource:
identity??.sequential_17/conv1d_17/BiasAdd/ReadVariableOp?:sequential_17/conv1d_17/conv1d/ExpandDims_1/ReadVariableOp?-sequential_17/dense_34/BiasAdd/ReadVariableOp?,sequential_17/dense_34/MatMul/ReadVariableOp?-sequential_17/dense_35/BiasAdd/ReadVariableOp?,sequential_17/dense_35/MatMul/ReadVariableOp?
-sequential_17/conv1d_17/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2/
-sequential_17/conv1d_17/conv1d/ExpandDims/dim?
)sequential_17/conv1d_17/conv1d/ExpandDims
ExpandDimsconv1d_17_input6sequential_17/conv1d_17/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????	2+
)sequential_17/conv1d_17/conv1d/ExpandDims?
:sequential_17/conv1d_17/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpCsequential_17_conv1d_17_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	0*
dtype02<
:sequential_17/conv1d_17/conv1d/ExpandDims_1/ReadVariableOp?
/sequential_17/conv1d_17/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 21
/sequential_17/conv1d_17/conv1d/ExpandDims_1/dim?
+sequential_17/conv1d_17/conv1d/ExpandDims_1
ExpandDimsBsequential_17/conv1d_17/conv1d/ExpandDims_1/ReadVariableOp:value:08sequential_17/conv1d_17/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	02-
+sequential_17/conv1d_17/conv1d/ExpandDims_1?
sequential_17/conv1d_17/conv1dConv2D2sequential_17/conv1d_17/conv1d/ExpandDims:output:04sequential_17/conv1d_17/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
2 
sequential_17/conv1d_17/conv1d?
&sequential_17/conv1d_17/conv1d/SqueezeSqueeze'sequential_17/conv1d_17/conv1d:output:0*
T0*+
_output_shapes
:?????????0*
squeeze_dims

?????????2(
&sequential_17/conv1d_17/conv1d/Squeeze?
.sequential_17/conv1d_17/BiasAdd/ReadVariableOpReadVariableOp7sequential_17_conv1d_17_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype020
.sequential_17/conv1d_17/BiasAdd/ReadVariableOp?
sequential_17/conv1d_17/BiasAddBiasAdd/sequential_17/conv1d_17/conv1d/Squeeze:output:06sequential_17/conv1d_17/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????02!
sequential_17/conv1d_17/BiasAdd?
sequential_17/conv1d_17/EluElu(sequential_17/conv1d_17/BiasAdd:output:0*
T0*+
_output_shapes
:?????????02
sequential_17/conv1d_17/Elu?
2sequential_17/conv1d_17/ActivityRegularizer/SquareSquare)sequential_17/conv1d_17/Elu:activations:0*
T0*+
_output_shapes
:?????????024
2sequential_17/conv1d_17/ActivityRegularizer/Square?
1sequential_17/conv1d_17/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          23
1sequential_17/conv1d_17/ActivityRegularizer/Const?
/sequential_17/conv1d_17/ActivityRegularizer/SumSum6sequential_17/conv1d_17/ActivityRegularizer/Square:y:0:sequential_17/conv1d_17/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 21
/sequential_17/conv1d_17/ActivityRegularizer/Sum?
1sequential_17/conv1d_17/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'723
1sequential_17/conv1d_17/ActivityRegularizer/mul/x?
/sequential_17/conv1d_17/ActivityRegularizer/mulMul:sequential_17/conv1d_17/ActivityRegularizer/mul/x:output:08sequential_17/conv1d_17/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 21
/sequential_17/conv1d_17/ActivityRegularizer/mul?
1sequential_17/conv1d_17/ActivityRegularizer/ShapeShape)sequential_17/conv1d_17/Elu:activations:0*
T0*
_output_shapes
:23
1sequential_17/conv1d_17/ActivityRegularizer/Shape?
?sequential_17/conv1d_17/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2A
?sequential_17/conv1d_17/ActivityRegularizer/strided_slice/stack?
Asequential_17/conv1d_17/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2C
Asequential_17/conv1d_17/ActivityRegularizer/strided_slice/stack_1?
Asequential_17/conv1d_17/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2C
Asequential_17/conv1d_17/ActivityRegularizer/strided_slice/stack_2?
9sequential_17/conv1d_17/ActivityRegularizer/strided_sliceStridedSlice:sequential_17/conv1d_17/ActivityRegularizer/Shape:output:0Hsequential_17/conv1d_17/ActivityRegularizer/strided_slice/stack:output:0Jsequential_17/conv1d_17/ActivityRegularizer/strided_slice/stack_1:output:0Jsequential_17/conv1d_17/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2;
9sequential_17/conv1d_17/ActivityRegularizer/strided_slice?
0sequential_17/conv1d_17/ActivityRegularizer/CastCastBsequential_17/conv1d_17/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 22
0sequential_17/conv1d_17/ActivityRegularizer/Cast?
3sequential_17/conv1d_17/ActivityRegularizer/truedivRealDiv3sequential_17/conv1d_17/ActivityRegularizer/mul:z:04sequential_17/conv1d_17/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 25
3sequential_17/conv1d_17/ActivityRegularizer/truediv?
sequential_17/flatten_17/ConstConst*
_output_shapes
:*
dtype0*
valueB"????0   2 
sequential_17/flatten_17/Const?
 sequential_17/flatten_17/ReshapeReshape)sequential_17/conv1d_17/Elu:activations:0'sequential_17/flatten_17/Const:output:0*
T0*'
_output_shapes
:?????????02"
 sequential_17/flatten_17/Reshape?
,sequential_17/dense_34/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_34_matmul_readvariableop_resource*
_output_shapes
:	0?*
dtype02.
,sequential_17/dense_34/MatMul/ReadVariableOp?
sequential_17/dense_34/MatMulMatMul)sequential_17/flatten_17/Reshape:output:04sequential_17/dense_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_17/dense_34/MatMul?
-sequential_17/dense_34/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_34_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_17/dense_34/BiasAdd/ReadVariableOp?
sequential_17/dense_34/BiasAddBiasAdd'sequential_17/dense_34/MatMul:product:05sequential_17/dense_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_17/dense_34/BiasAdd?
sequential_17/dense_34/SigmoidSigmoid'sequential_17/dense_34/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2 
sequential_17/dense_34/Sigmoid?
1sequential_17/dense_34/ActivityRegularizer/SquareSquare"sequential_17/dense_34/Sigmoid:y:0*
T0*(
_output_shapes
:??????????23
1sequential_17/dense_34/ActivityRegularizer/Square?
0sequential_17/dense_34/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       22
0sequential_17/dense_34/ActivityRegularizer/Const?
.sequential_17/dense_34/ActivityRegularizer/SumSum5sequential_17/dense_34/ActivityRegularizer/Square:y:09sequential_17/dense_34/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 20
.sequential_17/dense_34/ActivityRegularizer/Sum?
0sequential_17/dense_34/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'722
0sequential_17/dense_34/ActivityRegularizer/mul/x?
.sequential_17/dense_34/ActivityRegularizer/mulMul9sequential_17/dense_34/ActivityRegularizer/mul/x:output:07sequential_17/dense_34/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 20
.sequential_17/dense_34/ActivityRegularizer/mul?
0sequential_17/dense_34/ActivityRegularizer/ShapeShape"sequential_17/dense_34/Sigmoid:y:0*
T0*
_output_shapes
:22
0sequential_17/dense_34/ActivityRegularizer/Shape?
>sequential_17/dense_34/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>sequential_17/dense_34/ActivityRegularizer/strided_slice/stack?
@sequential_17/dense_34/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_17/dense_34/ActivityRegularizer/strided_slice/stack_1?
@sequential_17/dense_34/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_17/dense_34/ActivityRegularizer/strided_slice/stack_2?
8sequential_17/dense_34/ActivityRegularizer/strided_sliceStridedSlice9sequential_17/dense_34/ActivityRegularizer/Shape:output:0Gsequential_17/dense_34/ActivityRegularizer/strided_slice/stack:output:0Isequential_17/dense_34/ActivityRegularizer/strided_slice/stack_1:output:0Isequential_17/dense_34/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8sequential_17/dense_34/ActivityRegularizer/strided_slice?
/sequential_17/dense_34/ActivityRegularizer/CastCastAsequential_17/dense_34/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 21
/sequential_17/dense_34/ActivityRegularizer/Cast?
2sequential_17/dense_34/ActivityRegularizer/truedivRealDiv2sequential_17/dense_34/ActivityRegularizer/mul:z:03sequential_17/dense_34/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 24
2sequential_17/dense_34/ActivityRegularizer/truediv?
 sequential_17/dropout_1/IdentityIdentity"sequential_17/dense_34/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2"
 sequential_17/dropout_1/Identity?
,sequential_17/dense_35/MatMul/ReadVariableOpReadVariableOp5sequential_17_dense_35_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02.
,sequential_17/dense_35/MatMul/ReadVariableOp?
sequential_17/dense_35/MatMulMatMul)sequential_17/dropout_1/Identity:output:04sequential_17/dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_17/dense_35/MatMul?
-sequential_17/dense_35/BiasAdd/ReadVariableOpReadVariableOp6sequential_17_dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_17/dense_35/BiasAdd/ReadVariableOp?
sequential_17/dense_35/BiasAddBiasAdd'sequential_17/dense_35/MatMul:product:05sequential_17/dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_17/dense_35/BiasAdd?
1sequential_17/dense_35/ActivityRegularizer/SquareSquare'sequential_17/dense_35/BiasAdd:output:0*
T0*'
_output_shapes
:?????????23
1sequential_17/dense_35/ActivityRegularizer/Square?
0sequential_17/dense_35/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       22
0sequential_17/dense_35/ActivityRegularizer/Const?
.sequential_17/dense_35/ActivityRegularizer/SumSum5sequential_17/dense_35/ActivityRegularizer/Square:y:09sequential_17/dense_35/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 20
.sequential_17/dense_35/ActivityRegularizer/Sum?
0sequential_17/dense_35/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'722
0sequential_17/dense_35/ActivityRegularizer/mul/x?
.sequential_17/dense_35/ActivityRegularizer/mulMul9sequential_17/dense_35/ActivityRegularizer/mul/x:output:07sequential_17/dense_35/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 20
.sequential_17/dense_35/ActivityRegularizer/mul?
0sequential_17/dense_35/ActivityRegularizer/ShapeShape'sequential_17/dense_35/BiasAdd:output:0*
T0*
_output_shapes
:22
0sequential_17/dense_35/ActivityRegularizer/Shape?
>sequential_17/dense_35/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>sequential_17/dense_35/ActivityRegularizer/strided_slice/stack?
@sequential_17/dense_35/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_17/dense_35/ActivityRegularizer/strided_slice/stack_1?
@sequential_17/dense_35/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_17/dense_35/ActivityRegularizer/strided_slice/stack_2?
8sequential_17/dense_35/ActivityRegularizer/strided_sliceStridedSlice9sequential_17/dense_35/ActivityRegularizer/Shape:output:0Gsequential_17/dense_35/ActivityRegularizer/strided_slice/stack:output:0Isequential_17/dense_35/ActivityRegularizer/strided_slice/stack_1:output:0Isequential_17/dense_35/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8sequential_17/dense_35/ActivityRegularizer/strided_slice?
/sequential_17/dense_35/ActivityRegularizer/CastCastAsequential_17/dense_35/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 21
/sequential_17/dense_35/ActivityRegularizer/Cast?
2sequential_17/dense_35/ActivityRegularizer/truedivRealDiv2sequential_17/dense_35/ActivityRegularizer/mul:z:03sequential_17/dense_35/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 24
2sequential_17/dense_35/ActivityRegularizer/truediv?
 sequential_17/softmax_17/SoftmaxSoftmax'sequential_17/dense_35/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2"
 sequential_17/softmax_17/Softmax?
IdentityIdentity*sequential_17/softmax_17/Softmax:softmax:0/^sequential_17/conv1d_17/BiasAdd/ReadVariableOp;^sequential_17/conv1d_17/conv1d/ExpandDims_1/ReadVariableOp.^sequential_17/dense_34/BiasAdd/ReadVariableOp-^sequential_17/dense_34/MatMul/ReadVariableOp.^sequential_17/dense_35/BiasAdd/ReadVariableOp-^sequential_17/dense_35/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : 2`
.sequential_17/conv1d_17/BiasAdd/ReadVariableOp.sequential_17/conv1d_17/BiasAdd/ReadVariableOp2x
:sequential_17/conv1d_17/conv1d/ExpandDims_1/ReadVariableOp:sequential_17/conv1d_17/conv1d/ExpandDims_1/ReadVariableOp2^
-sequential_17/dense_34/BiasAdd/ReadVariableOp-sequential_17/dense_34/BiasAdd/ReadVariableOp2\
,sequential_17/dense_34/MatMul/ReadVariableOp,sequential_17/dense_34/MatMul/ReadVariableOp2^
-sequential_17/dense_35/BiasAdd/ReadVariableOp-sequential_17/dense_35/BiasAdd/ReadVariableOp2\
,sequential_17/dense_35/MatMul/ReadVariableOp,sequential_17/dense_35/MatMul/ReadVariableOp:\ X
+
_output_shapes
:?????????	
)
_user_specified_nameconv1d_17_input
?"
?
F__inference_conv1d_17_layer_call_and_return_conditional_losses_1519727

inputsA
+conv1d_expanddims_1_readvariableop_resource:	0-
biasadd_readvariableop_resource:0
identity??BiasAdd/ReadVariableOp?&bias/Regularizer/Square/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOp?(kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
conv1d/ExpandDims/dim?
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????	2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	0*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim?
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	02
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:?????????0*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????02	
BiasAddY
EluEluBiasAdd:output:0*
T0*+
_output_shapes
:?????????02
Elu?
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	0*
dtype02*
(kernel/Regularizer/Square/ReadVariableOp?
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	02
kernel/Regularizer/Square?
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
kernel/Regularizer/Const?
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
kernel/Regularizer/mul/x?
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mul?
&bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02(
&bias/Regularizer/Square/ReadVariableOp?
bias/Regularizer/SquareSquare.bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:02
bias/Regularizer/Squarez
bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer/Const?
bias/Regularizer/SumSumbias/Regularizer/Square:y:0bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/Sumu
bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer/mul/x?
bias/Regularizer/mulMulbias/Regularizer/mul/x:output:0bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/mul?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp'^bias/Regularizer/Square/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*
T0*+
_output_shapes
:?????????02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2P
&bias/Regularizer/Square/ReadVariableOp&bias/Regularizer/Square/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
G
+__inference_dropout_1_layer_call_fn_1520606

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_15197852
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
/__inference_sequential_17_layer_call_fn_1520313

inputs
unknown:	0
	unknown_0:0
	unknown_1:	0?
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????: : : *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? *S
fNRL
J__inference_sequential_17_layer_call_and_return_conditional_losses_15198522
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
E__inference_dense_34_layer_call_and_return_conditional_losses_1520753

inputs1
matmul_readvariableop_resource:	0?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?&bias/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	0?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoid?
&bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&bias/Regularizer/Square/ReadVariableOp?
bias/Regularizer/SquareSquare.bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
bias/Regularizer/Squarez
bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer/Const?
bias/Regularizer/SumSumbias/Regularizer/Square:y:0bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/Sumu
bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer/mul/x?
bias/Regularizer/mulMulbias/Regularizer/mul/x:output:0bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/mul?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp'^bias/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2P
&bias/Regularizer/Square/ReadVariableOp&bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_1520616

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
H
,__inference_softmax_17_layer_call_fn_1520659

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_softmax_17_layer_call_and_return_conditional_losses_15198222
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
/__inference_sequential_17_layer_call_fn_1520104
conv1d_17_input
unknown:	0
	unknown_0:0
	unknown_1:	0?
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv1d_17_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????: : : *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? *S
fNRL
J__inference_sequential_17_layer_call_and_return_conditional_losses_15200662
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:?????????	
)
_user_specified_nameconv1d_17_input
?
d
+__inference_dropout_1_layer_call_fn_1520611

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_15199182
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
J__inference_sequential_17_layer_call_and_return_conditional_losses_1520532

inputsK
5conv1d_17_conv1d_expanddims_1_readvariableop_resource:	07
)conv1d_17_biasadd_readvariableop_resource:0:
'dense_34_matmul_readvariableop_resource:	0?7
(dense_34_biasadd_readvariableop_resource:	?:
'dense_35_matmul_readvariableop_resource:	?6
(dense_35_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3??&bias/Regularizer/Square/ReadVariableOp?(bias/Regularizer_1/Square/ReadVariableOp?(bias/Regularizer_2/Square/ReadVariableOp? conv1d_17/BiasAdd/ReadVariableOp?,conv1d_17/conv1d/ExpandDims_1/ReadVariableOp?dense_34/BiasAdd/ReadVariableOp?dense_34/MatMul/ReadVariableOp?dense_35/BiasAdd/ReadVariableOp?dense_35/MatMul/ReadVariableOp?(kernel/Regularizer/Square/ReadVariableOp?
conv1d_17/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2!
conv1d_17/conv1d/ExpandDims/dim?
conv1d_17/conv1d/ExpandDims
ExpandDimsinputs(conv1d_17/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????	2
conv1d_17/conv1d/ExpandDims?
,conv1d_17/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_17_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	0*
dtype02.
,conv1d_17/conv1d/ExpandDims_1/ReadVariableOp?
!conv1d_17/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2#
!conv1d_17/conv1d/ExpandDims_1/dim?
conv1d_17/conv1d/ExpandDims_1
ExpandDims4conv1d_17/conv1d/ExpandDims_1/ReadVariableOp:value:0*conv1d_17/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	02
conv1d_17/conv1d/ExpandDims_1?
conv1d_17/conv1dConv2D$conv1d_17/conv1d/ExpandDims:output:0&conv1d_17/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????0*
paddingVALID*
strides
2
conv1d_17/conv1d?
conv1d_17/conv1d/SqueezeSqueezeconv1d_17/conv1d:output:0*
T0*+
_output_shapes
:?????????0*
squeeze_dims

?????????2
conv1d_17/conv1d/Squeeze?
 conv1d_17/BiasAdd/ReadVariableOpReadVariableOp)conv1d_17_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02"
 conv1d_17/BiasAdd/ReadVariableOp?
conv1d_17/BiasAddBiasAdd!conv1d_17/conv1d/Squeeze:output:0(conv1d_17/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????02
conv1d_17/BiasAddw
conv1d_17/EluEluconv1d_17/BiasAdd:output:0*
T0*+
_output_shapes
:?????????02
conv1d_17/Elu?
$conv1d_17/ActivityRegularizer/SquareSquareconv1d_17/Elu:activations:0*
T0*+
_output_shapes
:?????????02&
$conv1d_17/ActivityRegularizer/Square?
#conv1d_17/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2%
#conv1d_17/ActivityRegularizer/Const?
!conv1d_17/ActivityRegularizer/SumSum(conv1d_17/ActivityRegularizer/Square:y:0,conv1d_17/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2#
!conv1d_17/ActivityRegularizer/Sum?
#conv1d_17/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72%
#conv1d_17/ActivityRegularizer/mul/x?
!conv1d_17/ActivityRegularizer/mulMul,conv1d_17/ActivityRegularizer/mul/x:output:0*conv1d_17/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2#
!conv1d_17/ActivityRegularizer/mul?
#conv1d_17/ActivityRegularizer/ShapeShapeconv1d_17/Elu:activations:0*
T0*
_output_shapes
:2%
#conv1d_17/ActivityRegularizer/Shape?
1conv1d_17/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1conv1d_17/ActivityRegularizer/strided_slice/stack?
3conv1d_17/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3conv1d_17/ActivityRegularizer/strided_slice/stack_1?
3conv1d_17/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3conv1d_17/ActivityRegularizer/strided_slice/stack_2?
+conv1d_17/ActivityRegularizer/strided_sliceStridedSlice,conv1d_17/ActivityRegularizer/Shape:output:0:conv1d_17/ActivityRegularizer/strided_slice/stack:output:0<conv1d_17/ActivityRegularizer/strided_slice/stack_1:output:0<conv1d_17/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+conv1d_17/ActivityRegularizer/strided_slice?
"conv1d_17/ActivityRegularizer/CastCast4conv1d_17/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2$
"conv1d_17/ActivityRegularizer/Cast?
%conv1d_17/ActivityRegularizer/truedivRealDiv%conv1d_17/ActivityRegularizer/mul:z:0&conv1d_17/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2'
%conv1d_17/ActivityRegularizer/truedivu
flatten_17/ConstConst*
_output_shapes
:*
dtype0*
valueB"????0   2
flatten_17/Const?
flatten_17/ReshapeReshapeconv1d_17/Elu:activations:0flatten_17/Const:output:0*
T0*'
_output_shapes
:?????????02
flatten_17/Reshape?
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes
:	0?*
dtype02 
dense_34/MatMul/ReadVariableOp?
dense_34/MatMulMatMulflatten_17/Reshape:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_34/MatMul?
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_34/BiasAdd/ReadVariableOp?
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_34/BiasAdd}
dense_34/SigmoidSigmoiddense_34/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_34/Sigmoid?
#dense_34/ActivityRegularizer/SquareSquaredense_34/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2%
#dense_34/ActivityRegularizer/Square?
"dense_34/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_34/ActivityRegularizer/Const?
 dense_34/ActivityRegularizer/SumSum'dense_34/ActivityRegularizer/Square:y:0+dense_34/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_34/ActivityRegularizer/Sum?
"dense_34/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_34/ActivityRegularizer/mul/x?
 dense_34/ActivityRegularizer/mulMul+dense_34/ActivityRegularizer/mul/x:output:0)dense_34/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_34/ActivityRegularizer/mul?
"dense_34/ActivityRegularizer/ShapeShapedense_34/Sigmoid:y:0*
T0*
_output_shapes
:2$
"dense_34/ActivityRegularizer/Shape?
0dense_34/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_34/ActivityRegularizer/strided_slice/stack?
2dense_34/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_34/ActivityRegularizer/strided_slice/stack_1?
2dense_34/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_34/ActivityRegularizer/strided_slice/stack_2?
*dense_34/ActivityRegularizer/strided_sliceStridedSlice+dense_34/ActivityRegularizer/Shape:output:09dense_34/ActivityRegularizer/strided_slice/stack:output:0;dense_34/ActivityRegularizer/strided_slice/stack_1:output:0;dense_34/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_34/ActivityRegularizer/strided_slice?
!dense_34/ActivityRegularizer/CastCast3dense_34/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_34/ActivityRegularizer/Cast?
$dense_34/ActivityRegularizer/truedivRealDiv$dense_34/ActivityRegularizer/mul:z:0%dense_34/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_34/ActivityRegularizer/truedivw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_1/dropout/Const?
dropout_1/dropout/MulMuldense_34/Sigmoid:y:0 dropout_1/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_1/dropout/Mulv
dropout_1/dropout/ShapeShapedense_34/Sigmoid:y:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_1/dropout/Mul_1?
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02 
dense_35/MatMul/ReadVariableOp?
dense_35/MatMulMatMuldropout_1/dropout/Mul_1:z:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_35/MatMul?
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_35/BiasAdd/ReadVariableOp?
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_35/BiasAdd?
#dense_35/ActivityRegularizer/SquareSquaredense_35/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2%
#dense_35/ActivityRegularizer/Square?
"dense_35/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_35/ActivityRegularizer/Const?
 dense_35/ActivityRegularizer/SumSum'dense_35/ActivityRegularizer/Square:y:0+dense_35/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_35/ActivityRegularizer/Sum?
"dense_35/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_35/ActivityRegularizer/mul/x?
 dense_35/ActivityRegularizer/mulMul+dense_35/ActivityRegularizer/mul/x:output:0)dense_35/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_35/ActivityRegularizer/mul?
"dense_35/ActivityRegularizer/ShapeShapedense_35/BiasAdd:output:0*
T0*
_output_shapes
:2$
"dense_35/ActivityRegularizer/Shape?
0dense_35/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_35/ActivityRegularizer/strided_slice/stack?
2dense_35/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_35/ActivityRegularizer/strided_slice/stack_1?
2dense_35/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_35/ActivityRegularizer/strided_slice/stack_2?
*dense_35/ActivityRegularizer/strided_sliceStridedSlice+dense_35/ActivityRegularizer/Shape:output:09dense_35/ActivityRegularizer/strided_slice/stack:output:0;dense_35/ActivityRegularizer/strided_slice/stack_1:output:0;dense_35/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_35/ActivityRegularizer/strided_slice?
!dense_35/ActivityRegularizer/CastCast3dense_35/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_35/ActivityRegularizer/Cast?
$dense_35/ActivityRegularizer/truedivRealDiv$dense_35/ActivityRegularizer/mul:z:0%dense_35/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_35/ActivityRegularizer/truediv?
softmax_17/SoftmaxSoftmaxdense_35/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
softmax_17/Softmax?
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp5conv1d_17_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	0*
dtype02*
(kernel/Regularizer/Square/ReadVariableOp?
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	02
kernel/Regularizer/Square?
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
kernel/Regularizer/Const?
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
kernel/Regularizer/mul/x?
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mul?
&bias/Regularizer/Square/ReadVariableOpReadVariableOp)conv1d_17_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02(
&bias/Regularizer/Square/ReadVariableOp?
bias/Regularizer/SquareSquare.bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:02
bias/Regularizer/Squarez
bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer/Const?
bias/Regularizer/SumSumbias/Regularizer/Square:y:0bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/Sumu
bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer/mul/x?
bias/Regularizer/mulMulbias/Regularizer/mul/x:output:0bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/mul?
(bias/Regularizer_1/Square/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(bias/Regularizer_1/Square/ReadVariableOp?
bias/Regularizer_1/SquareSquare0bias/Regularizer_1/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
bias/Regularizer_1/Square~
bias/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer_1/Const?
bias/Regularizer_1/SumSumbias/Regularizer_1/Square:y:0!bias/Regularizer_1/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer_1/Sumy
bias/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer_1/mul/x?
bias/Regularizer_1/mulMul!bias/Regularizer_1/mul/x:output:0bias/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer_1/mul?
(bias/Regularizer_2/Square/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(bias/Regularizer_2/Square/ReadVariableOp?
bias/Regularizer_2/SquareSquare0bias/Regularizer_2/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
bias/Regularizer_2/Square~
bias/Regularizer_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer_2/Const?
bias/Regularizer_2/SumSumbias/Regularizer_2/Square:y:0!bias/Regularizer_2/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer_2/Sumy
bias/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer_2/mul/x?
bias/Regularizer_2/mulMul!bias/Regularizer_2/mul/x:output:0bias/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer_2/mul?
IdentityIdentitysoftmax_17/Softmax:softmax:0'^bias/Regularizer/Square/ReadVariableOp)^bias/Regularizer_1/Square/ReadVariableOp)^bias/Regularizer_2/Square/ReadVariableOp!^conv1d_17/BiasAdd/ReadVariableOp-^conv1d_17/conv1d/ExpandDims_1/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity)conv1d_17/ActivityRegularizer/truediv:z:0'^bias/Regularizer/Square/ReadVariableOp)^bias/Regularizer_1/Square/ReadVariableOp)^bias/Regularizer_2/Square/ReadVariableOp!^conv1d_17/BiasAdd/ReadVariableOp-^conv1d_17/conv1d/ExpandDims_1/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_34/ActivityRegularizer/truediv:z:0'^bias/Regularizer/Square/ReadVariableOp)^bias/Regularizer_1/Square/ReadVariableOp)^bias/Regularizer_2/Square/ReadVariableOp!^conv1d_17/BiasAdd/ReadVariableOp-^conv1d_17/conv1d/ExpandDims_1/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_35/ActivityRegularizer/truediv:z:0'^bias/Regularizer/Square/ReadVariableOp)^bias/Regularizer_1/Square/ReadVariableOp)^bias/Regularizer_2/Square/ReadVariableOp!^conv1d_17/BiasAdd/ReadVariableOp-^conv1d_17/conv1d/ExpandDims_1/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : 2P
&bias/Regularizer/Square/ReadVariableOp&bias/Regularizer/Square/ReadVariableOp2T
(bias/Regularizer_1/Square/ReadVariableOp(bias/Regularizer_1/Square/ReadVariableOp2T
(bias/Regularizer_2/Square/ReadVariableOp(bias/Regularizer_2/Square/ReadVariableOp2D
 conv1d_17/BiasAdd/ReadVariableOp conv1d_17/BiasAdd/ReadVariableOp2\
,conv1d_17/conv1d/ExpandDims_1/ReadVariableOp,conv1d_17/conv1d/ExpandDims_1/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?	
?
/__inference_sequential_17_layer_call_fn_1519870
conv1d_17_input
unknown:	0
	unknown_0:0
	unknown_1:	0?
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv1d_17_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????: : : *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? *S
fNRL
J__inference_sequential_17_layer_call_and_return_conditional_losses_15198522
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:?????????	
)
_user_specified_nameconv1d_17_input
?u
?
J__inference_sequential_17_layer_call_and_return_conditional_losses_1520066

inputs'
conv1d_17_1519996:	0
conv1d_17_1519998:0#
dense_34_1520010:	0?
dense_34_1520012:	?#
dense_35_1520024:	?
dense_35_1520026:
identity

identity_1

identity_2

identity_3??&bias/Regularizer/Square/ReadVariableOp?(bias/Regularizer_1/Square/ReadVariableOp?(bias/Regularizer_2/Square/ReadVariableOp?!conv1d_17/StatefulPartitionedCall? dense_34/StatefulPartitionedCall? dense_35/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?(kernel/Regularizer/Square/ReadVariableOp?
!conv1d_17/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_17_1519996conv1d_17_1519998*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????0*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_conv1d_17_layer_call_and_return_conditional_losses_15197272#
!conv1d_17/StatefulPartitionedCall?
-conv1d_17/ActivityRegularizer/PartitionedCallPartitionedCall*conv1d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *;
f6R4
2__inference_conv1d_17_activity_regularizer_15196662/
-conv1d_17/ActivityRegularizer/PartitionedCall?
#conv1d_17/ActivityRegularizer/ShapeShape*conv1d_17/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2%
#conv1d_17/ActivityRegularizer/Shape?
1conv1d_17/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1conv1d_17/ActivityRegularizer/strided_slice/stack?
3conv1d_17/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3conv1d_17/ActivityRegularizer/strided_slice/stack_1?
3conv1d_17/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3conv1d_17/ActivityRegularizer/strided_slice/stack_2?
+conv1d_17/ActivityRegularizer/strided_sliceStridedSlice,conv1d_17/ActivityRegularizer/Shape:output:0:conv1d_17/ActivityRegularizer/strided_slice/stack:output:0<conv1d_17/ActivityRegularizer/strided_slice/stack_1:output:0<conv1d_17/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+conv1d_17/ActivityRegularizer/strided_slice?
"conv1d_17/ActivityRegularizer/CastCast4conv1d_17/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2$
"conv1d_17/ActivityRegularizer/Cast?
%conv1d_17/ActivityRegularizer/truedivRealDiv6conv1d_17/ActivityRegularizer/PartitionedCall:output:0&conv1d_17/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2'
%conv1d_17/ActivityRegularizer/truediv?
flatten_17/PartitionedCallPartitionedCall*conv1d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_flatten_17_layer_call_and_return_conditional_losses_15197472
flatten_17/PartitionedCall?
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0dense_34_1520010dense_34_1520012*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_dense_34_layer_call_and_return_conditional_losses_15197662"
 dense_34/StatefulPartitionedCall?
,dense_34/ActivityRegularizer/PartitionedCallPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *:
f5R3
1__inference_dense_34_activity_regularizer_15196792.
,dense_34/ActivityRegularizer/PartitionedCall?
"dense_34/ActivityRegularizer/ShapeShape)dense_34/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_34/ActivityRegularizer/Shape?
0dense_34/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_34/ActivityRegularizer/strided_slice/stack?
2dense_34/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_34/ActivityRegularizer/strided_slice/stack_1?
2dense_34/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_34/ActivityRegularizer/strided_slice/stack_2?
*dense_34/ActivityRegularizer/strided_sliceStridedSlice+dense_34/ActivityRegularizer/Shape:output:09dense_34/ActivityRegularizer/strided_slice/stack:output:0;dense_34/ActivityRegularizer/strided_slice/stack_1:output:0;dense_34/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_34/ActivityRegularizer/strided_slice?
!dense_34/ActivityRegularizer/CastCast3dense_34/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_34/ActivityRegularizer/Cast?
$dense_34/ActivityRegularizer/truedivRealDiv5dense_34/ActivityRegularizer/PartitionedCall:output:0%dense_34/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_34/ActivityRegularizer/truediv?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_15199182#
!dropout_1/StatefulPartitionedCall?
 dense_35/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_35_1520024dense_35_1520026*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_dense_35_layer_call_and_return_conditional_losses_15198032"
 dense_35/StatefulPartitionedCall?
,dense_35/ActivityRegularizer/PartitionedCallPartitionedCall)dense_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *:
f5R3
1__inference_dense_35_activity_regularizer_15196922.
,dense_35/ActivityRegularizer/PartitionedCall?
"dense_35/ActivityRegularizer/ShapeShape)dense_35/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_35/ActivityRegularizer/Shape?
0dense_35/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_35/ActivityRegularizer/strided_slice/stack?
2dense_35/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_35/ActivityRegularizer/strided_slice/stack_1?
2dense_35/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_35/ActivityRegularizer/strided_slice/stack_2?
*dense_35/ActivityRegularizer/strided_sliceStridedSlice+dense_35/ActivityRegularizer/Shape:output:09dense_35/ActivityRegularizer/strided_slice/stack:output:0;dense_35/ActivityRegularizer/strided_slice/stack_1:output:0;dense_35/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_35/ActivityRegularizer/strided_slice?
!dense_35/ActivityRegularizer/CastCast3dense_35/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_35/ActivityRegularizer/Cast?
$dense_35/ActivityRegularizer/truedivRealDiv5dense_35/ActivityRegularizer/PartitionedCall:output:0%dense_35/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_35/ActivityRegularizer/truediv?
softmax_17/PartitionedCallPartitionedCall)dense_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_softmax_17_layer_call_and_return_conditional_losses_15198222
softmax_17/PartitionedCall?
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_17_1519996*"
_output_shapes
:	0*
dtype02*
(kernel/Regularizer/Square/ReadVariableOp?
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	02
kernel/Regularizer/Square?
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
kernel/Regularizer/Const?
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
kernel/Regularizer/mul/x?
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mul?
&bias/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_17_1519998*
_output_shapes
:0*
dtype02(
&bias/Regularizer/Square/ReadVariableOp?
bias/Regularizer/SquareSquare.bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:02
bias/Regularizer/Squarez
bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer/Const?
bias/Regularizer/SumSumbias/Regularizer/Square:y:0bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/Sumu
bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer/mul/x?
bias/Regularizer/mulMulbias/Regularizer/mul/x:output:0bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/mul?
(bias/Regularizer_1/Square/ReadVariableOpReadVariableOpdense_34_1520012*
_output_shapes	
:?*
dtype02*
(bias/Regularizer_1/Square/ReadVariableOp?
bias/Regularizer_1/SquareSquare0bias/Regularizer_1/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
bias/Regularizer_1/Square~
bias/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer_1/Const?
bias/Regularizer_1/SumSumbias/Regularizer_1/Square:y:0!bias/Regularizer_1/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer_1/Sumy
bias/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer_1/mul/x?
bias/Regularizer_1/mulMul!bias/Regularizer_1/mul/x:output:0bias/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer_1/mul?
(bias/Regularizer_2/Square/ReadVariableOpReadVariableOpdense_35_1520026*
_output_shapes
:*
dtype02*
(bias/Regularizer_2/Square/ReadVariableOp?
bias/Regularizer_2/SquareSquare0bias/Regularizer_2/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
bias/Regularizer_2/Square~
bias/Regularizer_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer_2/Const?
bias/Regularizer_2/SumSumbias/Regularizer_2/Square:y:0!bias/Regularizer_2/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer_2/Sumy
bias/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer_2/mul/x?
bias/Regularizer_2/mulMul!bias/Regularizer_2/mul/x:output:0bias/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer_2/mul?
IdentityIdentity#softmax_17/PartitionedCall:output:0'^bias/Regularizer/Square/ReadVariableOp)^bias/Regularizer_1/Square/ReadVariableOp)^bias/Regularizer_2/Square/ReadVariableOp"^conv1d_17/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity)conv1d_17/ActivityRegularizer/truediv:z:0'^bias/Regularizer/Square/ReadVariableOp)^bias/Regularizer_1/Square/ReadVariableOp)^bias/Regularizer_2/Square/ReadVariableOp"^conv1d_17/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_34/ActivityRegularizer/truediv:z:0'^bias/Regularizer/Square/ReadVariableOp)^bias/Regularizer_1/Square/ReadVariableOp)^bias/Regularizer_2/Square/ReadVariableOp"^conv1d_17/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_35/ActivityRegularizer/truediv:z:0'^bias/Regularizer/Square/ReadVariableOp)^bias/Regularizer_1/Square/ReadVariableOp)^bias/Regularizer_2/Square/ReadVariableOp"^conv1d_17/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : 2P
&bias/Regularizer/Square/ReadVariableOp&bias/Regularizer/Square/ReadVariableOp2T
(bias/Regularizer_1/Square/ReadVariableOp(bias/Regularizer_1/Square/ReadVariableOp2T
(bias/Regularizer_2/Square/ReadVariableOp(bias/Regularizer_2/Square/ReadVariableOp2F
!conv1d_17/StatefulPartitionedCall!conv1d_17/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
c
G__inference_softmax_17_layer_call_and_return_conditional_losses_1520664

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_dense_34_layer_call_and_return_conditional_losses_1519766

inputs1
matmul_readvariableop_resource:	0?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?&bias/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	0?*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoid?
&bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02(
&bias/Regularizer/Square/ReadVariableOp?
bias/Regularizer/SquareSquare.bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
bias/Regularizer/Squarez
bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer/Const?
bias/Regularizer/SumSumbias/Regularizer/Square:y:0bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/Sumu
bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer/mul/x?
bias/Regularizer/mulMulbias/Regularizer/mul/x:output:0bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/mul?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp'^bias/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????0: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2P
&bias/Regularizer/Square/ReadVariableOp&bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
H
1__inference_dense_35_activity_regularizer_1519692
x
identity@
SquareSquarex*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:?????????2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
?
?
I__inference_dense_34_layer_call_and_return_all_conditional_losses_1520601

inputs
unknown:	0?
	unknown_0:	?
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_dense_34_layer_call_and_return_conditional_losses_15197662
StatefulPartitionedCall?
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
 *2
config_proto" 

CPU

GPU2 *0J 8? *:
f5R3
1__inference_dense_34_activity_regularizer_15196792
PartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identityy

Identity_1IdentityPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????0: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????0
 
_user_specified_nameinputs
?s
?
J__inference_sequential_17_layer_call_and_return_conditional_losses_1520177
conv1d_17_input'
conv1d_17_1520107:	0
conv1d_17_1520109:0#
dense_34_1520121:	0?
dense_34_1520123:	?#
dense_35_1520135:	?
dense_35_1520137:
identity

identity_1

identity_2

identity_3??&bias/Regularizer/Square/ReadVariableOp?(bias/Regularizer_1/Square/ReadVariableOp?(bias/Regularizer_2/Square/ReadVariableOp?!conv1d_17/StatefulPartitionedCall? dense_34/StatefulPartitionedCall? dense_35/StatefulPartitionedCall?(kernel/Regularizer/Square/ReadVariableOp?
!conv1d_17/StatefulPartitionedCallStatefulPartitionedCallconv1d_17_inputconv1d_17_1520107conv1d_17_1520109*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????0*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_conv1d_17_layer_call_and_return_conditional_losses_15197272#
!conv1d_17/StatefulPartitionedCall?
-conv1d_17/ActivityRegularizer/PartitionedCallPartitionedCall*conv1d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *;
f6R4
2__inference_conv1d_17_activity_regularizer_15196662/
-conv1d_17/ActivityRegularizer/PartitionedCall?
#conv1d_17/ActivityRegularizer/ShapeShape*conv1d_17/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2%
#conv1d_17/ActivityRegularizer/Shape?
1conv1d_17/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1conv1d_17/ActivityRegularizer/strided_slice/stack?
3conv1d_17/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3conv1d_17/ActivityRegularizer/strided_slice/stack_1?
3conv1d_17/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3conv1d_17/ActivityRegularizer/strided_slice/stack_2?
+conv1d_17/ActivityRegularizer/strided_sliceStridedSlice,conv1d_17/ActivityRegularizer/Shape:output:0:conv1d_17/ActivityRegularizer/strided_slice/stack:output:0<conv1d_17/ActivityRegularizer/strided_slice/stack_1:output:0<conv1d_17/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+conv1d_17/ActivityRegularizer/strided_slice?
"conv1d_17/ActivityRegularizer/CastCast4conv1d_17/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2$
"conv1d_17/ActivityRegularizer/Cast?
%conv1d_17/ActivityRegularizer/truedivRealDiv6conv1d_17/ActivityRegularizer/PartitionedCall:output:0&conv1d_17/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2'
%conv1d_17/ActivityRegularizer/truediv?
flatten_17/PartitionedCallPartitionedCall*conv1d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_flatten_17_layer_call_and_return_conditional_losses_15197472
flatten_17/PartitionedCall?
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0dense_34_1520121dense_34_1520123*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_dense_34_layer_call_and_return_conditional_losses_15197662"
 dense_34/StatefulPartitionedCall?
,dense_34/ActivityRegularizer/PartitionedCallPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *:
f5R3
1__inference_dense_34_activity_regularizer_15196792.
,dense_34/ActivityRegularizer/PartitionedCall?
"dense_34/ActivityRegularizer/ShapeShape)dense_34/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_34/ActivityRegularizer/Shape?
0dense_34/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_34/ActivityRegularizer/strided_slice/stack?
2dense_34/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_34/ActivityRegularizer/strided_slice/stack_1?
2dense_34/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_34/ActivityRegularizer/strided_slice/stack_2?
*dense_34/ActivityRegularizer/strided_sliceStridedSlice+dense_34/ActivityRegularizer/Shape:output:09dense_34/ActivityRegularizer/strided_slice/stack:output:0;dense_34/ActivityRegularizer/strided_slice/stack_1:output:0;dense_34/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_34/ActivityRegularizer/strided_slice?
!dense_34/ActivityRegularizer/CastCast3dense_34/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_34/ActivityRegularizer/Cast?
$dense_34/ActivityRegularizer/truedivRealDiv5dense_34/ActivityRegularizer/PartitionedCall:output:0%dense_34/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_34/ActivityRegularizer/truediv?
dropout_1/PartitionedCallPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_15197852
dropout_1/PartitionedCall?
 dense_35/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_35_1520135dense_35_1520137*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_dense_35_layer_call_and_return_conditional_losses_15198032"
 dense_35/StatefulPartitionedCall?
,dense_35/ActivityRegularizer/PartitionedCallPartitionedCall)dense_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *:
f5R3
1__inference_dense_35_activity_regularizer_15196922.
,dense_35/ActivityRegularizer/PartitionedCall?
"dense_35/ActivityRegularizer/ShapeShape)dense_35/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_35/ActivityRegularizer/Shape?
0dense_35/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_35/ActivityRegularizer/strided_slice/stack?
2dense_35/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_35/ActivityRegularizer/strided_slice/stack_1?
2dense_35/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_35/ActivityRegularizer/strided_slice/stack_2?
*dense_35/ActivityRegularizer/strided_sliceStridedSlice+dense_35/ActivityRegularizer/Shape:output:09dense_35/ActivityRegularizer/strided_slice/stack:output:0;dense_35/ActivityRegularizer/strided_slice/stack_1:output:0;dense_35/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_35/ActivityRegularizer/strided_slice?
!dense_35/ActivityRegularizer/CastCast3dense_35/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_35/ActivityRegularizer/Cast?
$dense_35/ActivityRegularizer/truedivRealDiv5dense_35/ActivityRegularizer/PartitionedCall:output:0%dense_35/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_35/ActivityRegularizer/truediv?
softmax_17/PartitionedCallPartitionedCall)dense_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_softmax_17_layer_call_and_return_conditional_losses_15198222
softmax_17/PartitionedCall?
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_17_1520107*"
_output_shapes
:	0*
dtype02*
(kernel/Regularizer/Square/ReadVariableOp?
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	02
kernel/Regularizer/Square?
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
kernel/Regularizer/Const?
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
kernel/Regularizer/mul/x?
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mul?
&bias/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_17_1520109*
_output_shapes
:0*
dtype02(
&bias/Regularizer/Square/ReadVariableOp?
bias/Regularizer/SquareSquare.bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:02
bias/Regularizer/Squarez
bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer/Const?
bias/Regularizer/SumSumbias/Regularizer/Square:y:0bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/Sumu
bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer/mul/x?
bias/Regularizer/mulMulbias/Regularizer/mul/x:output:0bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/mul?
(bias/Regularizer_1/Square/ReadVariableOpReadVariableOpdense_34_1520123*
_output_shapes	
:?*
dtype02*
(bias/Regularizer_1/Square/ReadVariableOp?
bias/Regularizer_1/SquareSquare0bias/Regularizer_1/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
bias/Regularizer_1/Square~
bias/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer_1/Const?
bias/Regularizer_1/SumSumbias/Regularizer_1/Square:y:0!bias/Regularizer_1/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer_1/Sumy
bias/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer_1/mul/x?
bias/Regularizer_1/mulMul!bias/Regularizer_1/mul/x:output:0bias/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer_1/mul?
(bias/Regularizer_2/Square/ReadVariableOpReadVariableOpdense_35_1520137*
_output_shapes
:*
dtype02*
(bias/Regularizer_2/Square/ReadVariableOp?
bias/Regularizer_2/SquareSquare0bias/Regularizer_2/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
bias/Regularizer_2/Square~
bias/Regularizer_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer_2/Const?
bias/Regularizer_2/SumSumbias/Regularizer_2/Square:y:0!bias/Regularizer_2/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer_2/Sumy
bias/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer_2/mul/x?
bias/Regularizer_2/mulMul!bias/Regularizer_2/mul/x:output:0bias/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer_2/mul?
IdentityIdentity#softmax_17/PartitionedCall:output:0'^bias/Regularizer/Square/ReadVariableOp)^bias/Regularizer_1/Square/ReadVariableOp)^bias/Regularizer_2/Square/ReadVariableOp"^conv1d_17/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity)conv1d_17/ActivityRegularizer/truediv:z:0'^bias/Regularizer/Square/ReadVariableOp)^bias/Regularizer_1/Square/ReadVariableOp)^bias/Regularizer_2/Square/ReadVariableOp"^conv1d_17/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_34/ActivityRegularizer/truediv:z:0'^bias/Regularizer/Square/ReadVariableOp)^bias/Regularizer_1/Square/ReadVariableOp)^bias/Regularizer_2/Square/ReadVariableOp"^conv1d_17/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_35/ActivityRegularizer/truediv:z:0'^bias/Regularizer/Square/ReadVariableOp)^bias/Regularizer_1/Square/ReadVariableOp)^bias/Regularizer_2/Square/ReadVariableOp"^conv1d_17/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : 2P
&bias/Regularizer/Square/ReadVariableOp&bias/Regularizer/Square/ReadVariableOp2T
(bias/Regularizer_1/Square/ReadVariableOp(bias/Regularizer_1/Square/ReadVariableOp2T
(bias/Regularizer_2/Square/ReadVariableOp(bias/Regularizer_2/Square/ReadVariableOp2F
!conv1d_17/StatefulPartitionedCall!conv1d_17/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:\ X
+
_output_shapes
:?????????	
)
_user_specified_nameconv1d_17_input
?
?
/__inference_sequential_17_layer_call_fn_1520333

inputs
unknown:	0
	unknown_0:0
	unknown_1:	0?
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????: : : *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? *S
fNRL
J__inference_sequential_17_layer_call_and_return_conditional_losses_15200662
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?-
?
#__inference__traced_restore_1520862
file_prefix7
!assignvariableop_conv1d_17_kernel:	0/
!assignvariableop_1_conv1d_17_bias:05
"assignvariableop_2_dense_34_kernel:	0?/
 assignvariableop_3_dense_34_bias:	?5
"assignvariableop_4_dense_35_kernel:	?.
 assignvariableop_5_dense_35_bias:"
assignvariableop_6_total: "
assignvariableop_7_count: $
assignvariableop_8_total_1: $
assignvariableop_9_count_1: 
identity_11??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_conv1d_17_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv1d_17_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_34_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_34_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_35_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_35_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_totalIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_countIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_total_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_count_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_10Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_10?
Identity_11IdentityIdentity_10:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_11"#
identity_11Identity_11:output:0*)
_input_shapes
: : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
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
?
?
E__inference_dense_35_layer_call_and_return_conditional_losses_1520769

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?&bias/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
&bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&bias/Regularizer/Square/ReadVariableOp?
bias/Regularizer/SquareSquare.bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
bias/Regularizer/Squarez
bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer/Const?
bias/Regularizer/SumSumbias/Regularizer/Square:y:0bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/Sumu
bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer/mul/x?
bias/Regularizer/mulMulbias/Regularizer/mul/x:output:0bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/mul?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp'^bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2P
&bias/Regularizer/Square/ReadVariableOp&bias/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?v
?
J__inference_sequential_17_layer_call_and_return_conditional_losses_1520250
conv1d_17_input'
conv1d_17_1520180:	0
conv1d_17_1520182:0#
dense_34_1520194:	0?
dense_34_1520196:	?#
dense_35_1520208:	?
dense_35_1520210:
identity

identity_1

identity_2

identity_3??&bias/Regularizer/Square/ReadVariableOp?(bias/Regularizer_1/Square/ReadVariableOp?(bias/Regularizer_2/Square/ReadVariableOp?!conv1d_17/StatefulPartitionedCall? dense_34/StatefulPartitionedCall? dense_35/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?(kernel/Regularizer/Square/ReadVariableOp?
!conv1d_17/StatefulPartitionedCallStatefulPartitionedCallconv1d_17_inputconv1d_17_1520180conv1d_17_1520182*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????0*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_conv1d_17_layer_call_and_return_conditional_losses_15197272#
!conv1d_17/StatefulPartitionedCall?
-conv1d_17/ActivityRegularizer/PartitionedCallPartitionedCall*conv1d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *;
f6R4
2__inference_conv1d_17_activity_regularizer_15196662/
-conv1d_17/ActivityRegularizer/PartitionedCall?
#conv1d_17/ActivityRegularizer/ShapeShape*conv1d_17/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2%
#conv1d_17/ActivityRegularizer/Shape?
1conv1d_17/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1conv1d_17/ActivityRegularizer/strided_slice/stack?
3conv1d_17/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3conv1d_17/ActivityRegularizer/strided_slice/stack_1?
3conv1d_17/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3conv1d_17/ActivityRegularizer/strided_slice/stack_2?
+conv1d_17/ActivityRegularizer/strided_sliceStridedSlice,conv1d_17/ActivityRegularizer/Shape:output:0:conv1d_17/ActivityRegularizer/strided_slice/stack:output:0<conv1d_17/ActivityRegularizer/strided_slice/stack_1:output:0<conv1d_17/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+conv1d_17/ActivityRegularizer/strided_slice?
"conv1d_17/ActivityRegularizer/CastCast4conv1d_17/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2$
"conv1d_17/ActivityRegularizer/Cast?
%conv1d_17/ActivityRegularizer/truedivRealDiv6conv1d_17/ActivityRegularizer/PartitionedCall:output:0&conv1d_17/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2'
%conv1d_17/ActivityRegularizer/truediv?
flatten_17/PartitionedCallPartitionedCall*conv1d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_flatten_17_layer_call_and_return_conditional_losses_15197472
flatten_17/PartitionedCall?
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0dense_34_1520194dense_34_1520196*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_dense_34_layer_call_and_return_conditional_losses_15197662"
 dense_34/StatefulPartitionedCall?
,dense_34/ActivityRegularizer/PartitionedCallPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *:
f5R3
1__inference_dense_34_activity_regularizer_15196792.
,dense_34/ActivityRegularizer/PartitionedCall?
"dense_34/ActivityRegularizer/ShapeShape)dense_34/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_34/ActivityRegularizer/Shape?
0dense_34/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_34/ActivityRegularizer/strided_slice/stack?
2dense_34/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_34/ActivityRegularizer/strided_slice/stack_1?
2dense_34/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_34/ActivityRegularizer/strided_slice/stack_2?
*dense_34/ActivityRegularizer/strided_sliceStridedSlice+dense_34/ActivityRegularizer/Shape:output:09dense_34/ActivityRegularizer/strided_slice/stack:output:0;dense_34/ActivityRegularizer/strided_slice/stack_1:output:0;dense_34/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_34/ActivityRegularizer/strided_slice?
!dense_34/ActivityRegularizer/CastCast3dense_34/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_34/ActivityRegularizer/Cast?
$dense_34/ActivityRegularizer/truedivRealDiv5dense_34/ActivityRegularizer/PartitionedCall:output:0%dense_34/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_34/ActivityRegularizer/truediv?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_15199182#
!dropout_1/StatefulPartitionedCall?
 dense_35/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_35_1520208dense_35_1520210*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_dense_35_layer_call_and_return_conditional_losses_15198032"
 dense_35/StatefulPartitionedCall?
,dense_35/ActivityRegularizer/PartitionedCallPartitionedCall)dense_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *:
f5R3
1__inference_dense_35_activity_regularizer_15196922.
,dense_35/ActivityRegularizer/PartitionedCall?
"dense_35/ActivityRegularizer/ShapeShape)dense_35/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_35/ActivityRegularizer/Shape?
0dense_35/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_35/ActivityRegularizer/strided_slice/stack?
2dense_35/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_35/ActivityRegularizer/strided_slice/stack_1?
2dense_35/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_35/ActivityRegularizer/strided_slice/stack_2?
*dense_35/ActivityRegularizer/strided_sliceStridedSlice+dense_35/ActivityRegularizer/Shape:output:09dense_35/ActivityRegularizer/strided_slice/stack:output:0;dense_35/ActivityRegularizer/strided_slice/stack_1:output:0;dense_35/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_35/ActivityRegularizer/strided_slice?
!dense_35/ActivityRegularizer/CastCast3dense_35/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_35/ActivityRegularizer/Cast?
$dense_35/ActivityRegularizer/truedivRealDiv5dense_35/ActivityRegularizer/PartitionedCall:output:0%dense_35/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_35/ActivityRegularizer/truediv?
softmax_17/PartitionedCallPartitionedCall)dense_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_softmax_17_layer_call_and_return_conditional_losses_15198222
softmax_17/PartitionedCall?
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_17_1520180*"
_output_shapes
:	0*
dtype02*
(kernel/Regularizer/Square/ReadVariableOp?
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	02
kernel/Regularizer/Square?
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
kernel/Regularizer/Const?
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
kernel/Regularizer/mul/x?
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mul?
&bias/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_17_1520182*
_output_shapes
:0*
dtype02(
&bias/Regularizer/Square/ReadVariableOp?
bias/Regularizer/SquareSquare.bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:02
bias/Regularizer/Squarez
bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer/Const?
bias/Regularizer/SumSumbias/Regularizer/Square:y:0bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/Sumu
bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer/mul/x?
bias/Regularizer/mulMulbias/Regularizer/mul/x:output:0bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/mul?
(bias/Regularizer_1/Square/ReadVariableOpReadVariableOpdense_34_1520196*
_output_shapes	
:?*
dtype02*
(bias/Regularizer_1/Square/ReadVariableOp?
bias/Regularizer_1/SquareSquare0bias/Regularizer_1/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
bias/Regularizer_1/Square~
bias/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer_1/Const?
bias/Regularizer_1/SumSumbias/Regularizer_1/Square:y:0!bias/Regularizer_1/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer_1/Sumy
bias/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer_1/mul/x?
bias/Regularizer_1/mulMul!bias/Regularizer_1/mul/x:output:0bias/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer_1/mul?
(bias/Regularizer_2/Square/ReadVariableOpReadVariableOpdense_35_1520210*
_output_shapes
:*
dtype02*
(bias/Regularizer_2/Square/ReadVariableOp?
bias/Regularizer_2/SquareSquare0bias/Regularizer_2/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
bias/Regularizer_2/Square~
bias/Regularizer_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer_2/Const?
bias/Regularizer_2/SumSumbias/Regularizer_2/Square:y:0!bias/Regularizer_2/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer_2/Sumy
bias/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer_2/mul/x?
bias/Regularizer_2/mulMul!bias/Regularizer_2/mul/x:output:0bias/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer_2/mul?
IdentityIdentity#softmax_17/PartitionedCall:output:0'^bias/Regularizer/Square/ReadVariableOp)^bias/Regularizer_1/Square/ReadVariableOp)^bias/Regularizer_2/Square/ReadVariableOp"^conv1d_17/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity)conv1d_17/ActivityRegularizer/truediv:z:0'^bias/Regularizer/Square/ReadVariableOp)^bias/Regularizer_1/Square/ReadVariableOp)^bias/Regularizer_2/Square/ReadVariableOp"^conv1d_17/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_34/ActivityRegularizer/truediv:z:0'^bias/Regularizer/Square/ReadVariableOp)^bias/Regularizer_1/Square/ReadVariableOp)^bias/Regularizer_2/Square/ReadVariableOp"^conv1d_17/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_35/ActivityRegularizer/truediv:z:0'^bias/Regularizer/Square/ReadVariableOp)^bias/Regularizer_1/Square/ReadVariableOp)^bias/Regularizer_2/Square/ReadVariableOp"^conv1d_17/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : 2P
&bias/Regularizer/Square/ReadVariableOp&bias/Regularizer/Square/ReadVariableOp2T
(bias/Regularizer_1/Square/ReadVariableOp(bias/Regularizer_1/Square/ReadVariableOp2T
(bias/Regularizer_2/Square/ReadVariableOp(bias/Regularizer_2/Square/ReadVariableOp2F
!conv1d_17/StatefulPartitionedCall!conv1d_17/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:\ X
+
_output_shapes
:?????????	
)
_user_specified_nameconv1d_17_input
?
?
*__inference_dense_35_layer_call_fn_1520643

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_dense_35_layer_call_and_return_conditional_losses_15198032
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
H
,__inference_flatten_17_layer_call_fn_1520569

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_flatten_17_layer_call_and_return_conditional_losses_15197472
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????0:S O
+
_output_shapes
:?????????0
 
_user_specified_nameinputs
?s
?
J__inference_sequential_17_layer_call_and_return_conditional_losses_1519852

inputs'
conv1d_17_1519728:	0
conv1d_17_1519730:0#
dense_34_1519767:	0?
dense_34_1519769:	?#
dense_35_1519804:	?
dense_35_1519806:
identity

identity_1

identity_2

identity_3??&bias/Regularizer/Square/ReadVariableOp?(bias/Regularizer_1/Square/ReadVariableOp?(bias/Regularizer_2/Square/ReadVariableOp?!conv1d_17/StatefulPartitionedCall? dense_34/StatefulPartitionedCall? dense_35/StatefulPartitionedCall?(kernel/Regularizer/Square/ReadVariableOp?
!conv1d_17/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_17_1519728conv1d_17_1519730*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????0*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_conv1d_17_layer_call_and_return_conditional_losses_15197272#
!conv1d_17/StatefulPartitionedCall?
-conv1d_17/ActivityRegularizer/PartitionedCallPartitionedCall*conv1d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *;
f6R4
2__inference_conv1d_17_activity_regularizer_15196662/
-conv1d_17/ActivityRegularizer/PartitionedCall?
#conv1d_17/ActivityRegularizer/ShapeShape*conv1d_17/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2%
#conv1d_17/ActivityRegularizer/Shape?
1conv1d_17/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1conv1d_17/ActivityRegularizer/strided_slice/stack?
3conv1d_17/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3conv1d_17/ActivityRegularizer/strided_slice/stack_1?
3conv1d_17/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3conv1d_17/ActivityRegularizer/strided_slice/stack_2?
+conv1d_17/ActivityRegularizer/strided_sliceStridedSlice,conv1d_17/ActivityRegularizer/Shape:output:0:conv1d_17/ActivityRegularizer/strided_slice/stack:output:0<conv1d_17/ActivityRegularizer/strided_slice/stack_1:output:0<conv1d_17/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+conv1d_17/ActivityRegularizer/strided_slice?
"conv1d_17/ActivityRegularizer/CastCast4conv1d_17/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2$
"conv1d_17/ActivityRegularizer/Cast?
%conv1d_17/ActivityRegularizer/truedivRealDiv6conv1d_17/ActivityRegularizer/PartitionedCall:output:0&conv1d_17/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2'
%conv1d_17/ActivityRegularizer/truediv?
flatten_17/PartitionedCallPartitionedCall*conv1d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_flatten_17_layer_call_and_return_conditional_losses_15197472
flatten_17/PartitionedCall?
 dense_34/StatefulPartitionedCallStatefulPartitionedCall#flatten_17/PartitionedCall:output:0dense_34_1519767dense_34_1519769*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_dense_34_layer_call_and_return_conditional_losses_15197662"
 dense_34/StatefulPartitionedCall?
,dense_34/ActivityRegularizer/PartitionedCallPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *:
f5R3
1__inference_dense_34_activity_regularizer_15196792.
,dense_34/ActivityRegularizer/PartitionedCall?
"dense_34/ActivityRegularizer/ShapeShape)dense_34/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_34/ActivityRegularizer/Shape?
0dense_34/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_34/ActivityRegularizer/strided_slice/stack?
2dense_34/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_34/ActivityRegularizer/strided_slice/stack_1?
2dense_34/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_34/ActivityRegularizer/strided_slice/stack_2?
*dense_34/ActivityRegularizer/strided_sliceStridedSlice+dense_34/ActivityRegularizer/Shape:output:09dense_34/ActivityRegularizer/strided_slice/stack:output:0;dense_34/ActivityRegularizer/strided_slice/stack_1:output:0;dense_34/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_34/ActivityRegularizer/strided_slice?
!dense_34/ActivityRegularizer/CastCast3dense_34/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_34/ActivityRegularizer/Cast?
$dense_34/ActivityRegularizer/truedivRealDiv5dense_34/ActivityRegularizer/PartitionedCall:output:0%dense_34/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_34/ActivityRegularizer/truediv?
dropout_1/PartitionedCallPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_15197852
dropout_1/PartitionedCall?
 dense_35/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_35_1519804dense_35_1519806*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_dense_35_layer_call_and_return_conditional_losses_15198032"
 dense_35/StatefulPartitionedCall?
,dense_35/ActivityRegularizer/PartitionedCallPartitionedCall)dense_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *:
f5R3
1__inference_dense_35_activity_regularizer_15196922.
,dense_35/ActivityRegularizer/PartitionedCall?
"dense_35/ActivityRegularizer/ShapeShape)dense_35/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_35/ActivityRegularizer/Shape?
0dense_35/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_35/ActivityRegularizer/strided_slice/stack?
2dense_35/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_35/ActivityRegularizer/strided_slice/stack_1?
2dense_35/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_35/ActivityRegularizer/strided_slice/stack_2?
*dense_35/ActivityRegularizer/strided_sliceStridedSlice+dense_35/ActivityRegularizer/Shape:output:09dense_35/ActivityRegularizer/strided_slice/stack:output:0;dense_35/ActivityRegularizer/strided_slice/stack_1:output:0;dense_35/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_35/ActivityRegularizer/strided_slice?
!dense_35/ActivityRegularizer/CastCast3dense_35/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_35/ActivityRegularizer/Cast?
$dense_35/ActivityRegularizer/truedivRealDiv5dense_35/ActivityRegularizer/PartitionedCall:output:0%dense_35/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_35/ActivityRegularizer/truediv?
softmax_17/PartitionedCallPartitionedCall)dense_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *P
fKRI
G__inference_softmax_17_layer_call_and_return_conditional_losses_15198222
softmax_17/PartitionedCall?
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_17_1519728*"
_output_shapes
:	0*
dtype02*
(kernel/Regularizer/Square/ReadVariableOp?
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	02
kernel/Regularizer/Square?
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2
kernel/Regularizer/Const?
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
kernel/Regularizer/mul/x?
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mul?
&bias/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_17_1519730*
_output_shapes
:0*
dtype02(
&bias/Regularizer/Square/ReadVariableOp?
bias/Regularizer/SquareSquare.bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:02
bias/Regularizer/Squarez
bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer/Const?
bias/Regularizer/SumSumbias/Regularizer/Square:y:0bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/Sumu
bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer/mul/x?
bias/Regularizer/mulMulbias/Regularizer/mul/x:output:0bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer/mul?
(bias/Regularizer_1/Square/ReadVariableOpReadVariableOpdense_34_1519769*
_output_shapes	
:?*
dtype02*
(bias/Regularizer_1/Square/ReadVariableOp?
bias/Regularizer_1/SquareSquare0bias/Regularizer_1/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
bias/Regularizer_1/Square~
bias/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer_1/Const?
bias/Regularizer_1/SumSumbias/Regularizer_1/Square:y:0!bias/Regularizer_1/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer_1/Sumy
bias/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer_1/mul/x?
bias/Regularizer_1/mulMul!bias/Regularizer_1/mul/x:output:0bias/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer_1/mul?
(bias/Regularizer_2/Square/ReadVariableOpReadVariableOpdense_35_1519806*
_output_shapes
:*
dtype02*
(bias/Regularizer_2/Square/ReadVariableOp?
bias/Regularizer_2/SquareSquare0bias/Regularizer_2/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
bias/Regularizer_2/Square~
bias/Regularizer_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
bias/Regularizer_2/Const?
bias/Regularizer_2/SumSumbias/Regularizer_2/Square:y:0!bias/Regularizer_2/Const:output:0*
T0*
_output_shapes
: 2
bias/Regularizer_2/Sumy
bias/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
bias/Regularizer_2/mul/x?
bias/Regularizer_2/mulMul!bias/Regularizer_2/mul/x:output:0bias/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: 2
bias/Regularizer_2/mul?
IdentityIdentity#softmax_17/PartitionedCall:output:0'^bias/Regularizer/Square/ReadVariableOp)^bias/Regularizer_1/Square/ReadVariableOp)^bias/Regularizer_2/Square/ReadVariableOp"^conv1d_17/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity)conv1d_17/ActivityRegularizer/truediv:z:0'^bias/Regularizer/Square/ReadVariableOp)^bias/Regularizer_1/Square/ReadVariableOp)^bias/Regularizer_2/Square/ReadVariableOp"^conv1d_17/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_34/ActivityRegularizer/truediv:z:0'^bias/Regularizer/Square/ReadVariableOp)^bias/Regularizer_1/Square/ReadVariableOp)^bias/Regularizer_2/Square/ReadVariableOp"^conv1d_17/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_35/ActivityRegularizer/truediv:z:0'^bias/Regularizer/Square/ReadVariableOp)^bias/Regularizer_1/Square/ReadVariableOp)^bias/Regularizer_2/Square/ReadVariableOp"^conv1d_17/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : 2P
&bias/Regularizer/Square/ReadVariableOp&bias/Regularizer/Square/ReadVariableOp2T
(bias/Regularizer_1/Square/ReadVariableOp(bias/Regularizer_1/Square/ReadVariableOp2T
(bias/Regularizer_2/Square/ReadVariableOp(bias/Regularizer_2/Square/ReadVariableOp2F
!conv1d_17/StatefulPartitionedCall!conv1d_17/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
H
1__inference_dense_34_activity_regularizer_1519679
x
identity@
SquareSquarex*
T0*
_output_shapes
:2
SquareA
RankRank
Square:y:0*
T0*
_output_shapes
: 2
Rank\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaw
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*#
_output_shapes
:?????????2
rangeN
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: 2
SumS
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72
mul/xP
mulMulmul/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
mulJ
IdentityIdentitymul:z:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
::; 7

_output_shapes
:

_user_specified_namex
?
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_1519785

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_1_layer_call_and_return_conditional_losses_1520628

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
O
conv1d_17_input<
!serving_default_conv1d_17_input:0?????????	>

softmax_170
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?:
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
	optimizer

signatures
#	_self_saveable_object_factories

trainable_variables
	variables
regularization_losses
	keras_api
`__call__
*a&call_and_return_all_conditional_losses
b_default_save_signature"?7
_tf_keras_sequential?7{"name": "sequential_17", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_17", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 26, 9]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_17_input"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_17", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 26, 9]}, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [26]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}}, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten_17", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_34", "trainable": true, "dtype": "float32", "units": 180, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}}, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_35", "trainable": true, "dtype": "float32", "units": 7, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}}, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Softmax", "config": {"name": "softmax_17", "trainable": true, "dtype": "float32", "axis": -1}}]}, "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 9}}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 26, 9]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 26, 9]}, "float32", "conv1d_17_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_17", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 26, 9]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_17_input"}, "shared_object_id": 0}, {"class_name": "Conv1D", "config": {"name": "conv1d_17", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 26, 9]}, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [26]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 3}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 4}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 5}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, {"class_name": "Flatten", "config": {"name": "flatten_17", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 7}, {"class_name": "Dense", "config": {"name": "dense_34", "trainable": true, "dtype": "float32", "units": 180, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 10}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 11}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, {"class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 13}, {"class_name": "Dense", "config": {"name": "dense_35", "trainable": true, "dtype": "float32", "units": 7, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 16}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 17}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 18}, {"class_name": "Softmax", "config": {"name": "softmax_17", "trainable": true, "dtype": "float32", "axis": -1}, "shared_object_id": 19}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": false}, "shared_object_id": 22}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 23}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-06, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?

kernel
bias
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
c__call__
*d&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "conv1d_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 26, 9]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "conv1d_17", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 26, 9]}, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [26]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 3}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 4}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 5}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 9}}, "shared_object_id": 21}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 5}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 26, 9]}}
?
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
	keras_api
e__call__
*f&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_17", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 24}}
?

kernel
bias
#_self_saveable_object_factories
trainable_variables
	variables
regularization_losses
 	keras_api
g__call__
*h&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "dense_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_34", "trainable": true, "dtype": "float32", "units": 180, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 10}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 11}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 48}}, "shared_object_id": 25}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 11}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 48]}}
?
#!_self_saveable_object_factories
"trainable_variables
#	variables
$regularization_losses
%	keras_api
i__call__
*j&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_1", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 13}
?

&kernel
'bias
#(_self_saveable_object_factories
)trainable_variables
*	variables
+regularization_losses
,	keras_api
k__call__
*l&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "dense_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_35", "trainable": true, "dtype": "float32", "units": 7, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 16}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 17}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 180}}, "shared_object_id": 26}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 17}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 180]}}
?
#-_self_saveable_object_factories
.trainable_variables
/	variables
0regularization_losses
1	keras_api
m__call__
*n&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "softmax_17", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Softmax", "config": {"name": "softmax_17", "trainable": true, "dtype": "float32", "axis": -1}, "shared_object_id": 19}
"
	optimizer
,
oserving_default"
signature_map
 "
trackable_dict_wrapper
J
0
1
2
3
&4
'5"
trackable_list_wrapper
J
0
1
2
3
&4
'5"
trackable_list_wrapper
<
p0
q1
r2
s3"
trackable_list_wrapper
?

trainable_variables
2non_trainable_variables
	variables
3metrics
4layer_metrics
regularization_losses

5layers
6layer_regularization_losses
`__call__
b_default_save_signature
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
&:$	02conv1d_17/kernel
:02conv1d_17/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
?
trainable_variables
7non_trainable_variables
	variables
8metrics
9layer_metrics
regularization_losses

:layers
;layer_regularization_losses
c__call__
tactivity_regularizer_fn
*d&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
trainable_variables
<non_trainable_variables
	variables
=metrics
>layer_metrics
regularization_losses

?layers
@layer_regularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
": 	0?2dense_34/kernel
:?2dense_34/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
r0"
trackable_list_wrapper
?
trainable_variables
Anon_trainable_variables
	variables
Bmetrics
Clayer_metrics
regularization_losses

Dlayers
Elayer_regularization_losses
g__call__
vactivity_regularizer_fn
*h&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
"trainable_variables
Fnon_trainable_variables
#	variables
Gmetrics
Hlayer_metrics
$regularization_losses

Ilayers
Jlayer_regularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
": 	?2dense_35/kernel
:2dense_35/bias
 "
trackable_dict_wrapper
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
'
s0"
trackable_list_wrapper
?
)trainable_variables
Knon_trainable_variables
*	variables
Lmetrics
Mlayer_metrics
+regularization_losses

Nlayers
Olayer_regularization_losses
k__call__
xactivity_regularizer_fn
*l&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
.trainable_variables
Pnon_trainable_variables
/	variables
Qmetrics
Rlayer_metrics
0regularization_losses

Slayers
Tlayer_regularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_dict_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
p0
q1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
'
r0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
'
s0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	Wtotal
	Xcount
Y	variables
Z	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 27}
?
	[total
	\count
]
_fn_kwargs
^	variables
_	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 23}
:  (2total
:  (2count
.
W0
X1"
trackable_list_wrapper
-
Y	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
[0
\1"
trackable_list_wrapper
-
^	variables"
_generic_user_object
?2?
/__inference_sequential_17_layer_call_fn_1519870
/__inference_sequential_17_layer_call_fn_1520313
/__inference_sequential_17_layer_call_fn_1520333
/__inference_sequential_17_layer_call_fn_1520104?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_sequential_17_layer_call_and_return_conditional_losses_1520429
J__inference_sequential_17_layer_call_and_return_conditional_losses_1520532
J__inference_sequential_17_layer_call_and_return_conditional_losses_1520177
J__inference_sequential_17_layer_call_and_return_conditional_losses_1520250?
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

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
"__inference__wrapped_model_1519653?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *2?/
-?*
conv1d_17_input?????????	
?2?
+__inference_conv1d_17_layer_call_fn_1520553?
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
?2?
J__inference_conv1d_17_layer_call_and_return_all_conditional_losses_1520564?
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
?2?
,__inference_flatten_17_layer_call_fn_1520569?
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
?2?
G__inference_flatten_17_layer_call_and_return_conditional_losses_1520575?
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
?2?
*__inference_dense_34_layer_call_fn_1520590?
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
?2?
I__inference_dense_34_layer_call_and_return_all_conditional_losses_1520601?
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
?2?
+__inference_dropout_1_layer_call_fn_1520606
+__inference_dropout_1_layer_call_fn_1520611?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_1_layer_call_and_return_conditional_losses_1520616
F__inference_dropout_1_layer_call_and_return_conditional_losses_1520628?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
*__inference_dense_35_layer_call_fn_1520643?
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
?2?
I__inference_dense_35_layer_call_and_return_all_conditional_losses_1520654?
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
?2?
,__inference_softmax_17_layer_call_fn_1520659?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_softmax_17_layer_call_and_return_conditional_losses_1520664?
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_1520293conv1d_17_input"?
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
?2?
__inference_loss_fn_0_1520675?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_1520686?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_2_1520697?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_3_1520708?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
2__inference_conv1d_17_activity_regularizer_1519666?
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
?2?
F__inference_conv1d_17_layer_call_and_return_conditional_losses_1520736?
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
?2?
1__inference_dense_34_activity_regularizer_1519679?
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
?2?
E__inference_dense_34_layer_call_and_return_conditional_losses_1520753?
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
?2?
1__inference_dense_35_activity_regularizer_1519692?
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
?2?
E__inference_dense_35_layer_call_and_return_conditional_losses_1520769?
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
 ?
"__inference__wrapped_model_1519653&'<?9
2?/
-?*
conv1d_17_input?????????	
? "7?4
2

softmax_17$?!

softmax_17?????????\
2__inference_conv1d_17_activity_regularizer_1519666&?
?
?	
x
? "? ?
J__inference_conv1d_17_layer_call_and_return_all_conditional_losses_1520564r3?0
)?&
$?!
inputs?????????	
? "7?4
?
0?????????0
?
?	
1/0 ?
F__inference_conv1d_17_layer_call_and_return_conditional_losses_1520736d3?0
)?&
$?!
inputs?????????	
? ")?&
?
0?????????0
? ?
+__inference_conv1d_17_layer_call_fn_1520553W3?0
)?&
$?!
inputs?????????	
? "??????????0[
1__inference_dense_34_activity_regularizer_1519679&?
?
?	
x
? "? ?
I__inference_dense_34_layer_call_and_return_all_conditional_losses_1520601k/?,
%?"
 ?
inputs?????????0
? "4?1
?
0??????????
?
?	
1/0 ?
E__inference_dense_34_layer_call_and_return_conditional_losses_1520753]/?,
%?"
 ?
inputs?????????0
? "&?#
?
0??????????
? ~
*__inference_dense_34_layer_call_fn_1520590P/?,
%?"
 ?
inputs?????????0
? "???????????[
1__inference_dense_35_activity_regularizer_1519692&?
?
?	
x
? "? ?
I__inference_dense_35_layer_call_and_return_all_conditional_losses_1520654k&'0?-
&?#
!?
inputs??????????
? "3?0
?
0?????????
?
?	
1/0 ?
E__inference_dense_35_layer_call_and_return_conditional_losses_1520769]&'0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? ~
*__inference_dense_35_layer_call_fn_1520643P&'0?-
&?#
!?
inputs??????????
? "???????????
F__inference_dropout_1_layer_call_and_return_conditional_losses_1520616^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
F__inference_dropout_1_layer_call_and_return_conditional_losses_1520628^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
+__inference_dropout_1_layer_call_fn_1520606Q4?1
*?'
!?
inputs??????????
p 
? "????????????
+__inference_dropout_1_layer_call_fn_1520611Q4?1
*?'
!?
inputs??????????
p
? "????????????
G__inference_flatten_17_layer_call_and_return_conditional_losses_1520575\3?0
)?&
$?!
inputs?????????0
? "%?"
?
0?????????0
? 
,__inference_flatten_17_layer_call_fn_1520569O3?0
)?&
$?!
inputs?????????0
? "??????????0<
__inference_loss_fn_0_1520675?

? 
? "? <
__inference_loss_fn_1_1520686?

? 
? "? <
__inference_loss_fn_2_1520697?

? 
? "? <
__inference_loss_fn_3_1520708'?

? 
? "? ?
J__inference_sequential_17_layer_call_and_return_conditional_losses_1520177?&'D?A
:?7
-?*
conv1d_17_input?????????	
p 

 
? "O?L
?
0?????????
-?*
?	
1/0 
?	
1/1 
?	
1/2 ?
J__inference_sequential_17_layer_call_and_return_conditional_losses_1520250?&'D?A
:?7
-?*
conv1d_17_input?????????	
p

 
? "O?L
?
0?????????
-?*
?	
1/0 
?	
1/1 
?	
1/2 ?
J__inference_sequential_17_layer_call_and_return_conditional_losses_1520429?&';?8
1?.
$?!
inputs?????????	
p 

 
? "O?L
?
0?????????
-?*
?	
1/0 
?	
1/1 
?	
1/2 ?
J__inference_sequential_17_layer_call_and_return_conditional_losses_1520532?&';?8
1?.
$?!
inputs?????????	
p

 
? "O?L
?
0?????????
-?*
?	
1/0 
?	
1/1 
?	
1/2 ?
/__inference_sequential_17_layer_call_fn_1519870h&'D?A
:?7
-?*
conv1d_17_input?????????	
p 

 
? "???????????
/__inference_sequential_17_layer_call_fn_1520104h&'D?A
:?7
-?*
conv1d_17_input?????????	
p

 
? "???????????
/__inference_sequential_17_layer_call_fn_1520313_&';?8
1?.
$?!
inputs?????????	
p 

 
? "???????????
/__inference_sequential_17_layer_call_fn_1520333_&';?8
1?.
$?!
inputs?????????	
p

 
? "???????????
%__inference_signature_wrapper_1520293?&'O?L
? 
E?B
@
conv1d_17_input-?*
conv1d_17_input?????????	"7?4
2

softmax_17$?!

softmax_17??????????
G__inference_softmax_17_layer_call_and_return_conditional_losses_1520664\3?0
)?&
 ?
inputs?????????

 
? "%?"
?
0?????????
? 
,__inference_softmax_17_layer_call_fn_1520659O3?0
)?&
 ?
inputs?????????

 
? "??????????