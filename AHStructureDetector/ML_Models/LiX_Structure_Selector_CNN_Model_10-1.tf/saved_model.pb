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
~
conv1d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	* 
shared_nameconv1d_4/kernel
w
#conv1d_4/kernel/Read/ReadVariableOpReadVariableOpconv1d_4/kernel*"
_output_shapes
:	*
dtype0
r
conv1d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_4/bias
k
!conv1d_4/bias/Read/ReadVariableOpReadVariableOpconv1d_4/bias*
_output_shapes
:*
dtype0
y
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense_8/kernel
r
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes
:	?*
dtype0
q
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_8/bias
j
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes	
:?*
dtype0
y
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense_9/kernel
r
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes
:	?*
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
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
?
Adam/conv1d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/conv1d_4/kernel/m
?
*Adam/conv1d_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_4/kernel/m*"
_output_shapes
:	*
dtype0
?
Adam/conv1d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv1d_4/bias/m
y
(Adam/conv1d_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_4/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_8/kernel/m
?
)Adam/dense_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/m*
_output_shapes
:	?*
dtype0

Adam/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_8/bias/m
x
'Adam/dense_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_9/kernel/m
?
)Adam/dense_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/m*
_output_shapes
:	?*
dtype0
~
Adam/dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/m
w
'Adam/dense_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/m*
_output_shapes
:*
dtype0
?
Adam/conv1d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/conv1d_4/kernel/v
?
*Adam/conv1d_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_4/kernel/v*"
_output_shapes
:	*
dtype0
?
Adam/conv1d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv1d_4/bias/v
y
(Adam/conv1d_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_4/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_8/kernel/v
?
)Adam/dense_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/v*
_output_shapes
:	?*
dtype0

Adam/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_8/bias/v
x
'Adam/dense_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_9/kernel/v
?
)Adam/dense_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/v*
_output_shapes
:	?*
dtype0
~
Adam/dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/v
w
'Adam/dense_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?)
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?)
value?)B?) B?)
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
	optimizer
regularization_losses
	variables
	trainable_variables

	keras_api

signatures
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
 trainable_variables
!	keras_api
R
"regularization_losses
#	variables
$trainable_variables
%	keras_api
?
&iter

'beta_1

(beta_2
	)decay
*learning_ratemTmUmVmWmXmYvZv[v\v]v^v_
 
*
0
1
2
3
4
5
*
0
1
2
3
4
5
?
+non_trainable_variables
,layer_metrics
-metrics

.layers
/layer_regularization_losses
regularization_losses
	variables
	trainable_variables
 
[Y
VARIABLE_VALUEconv1d_4/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_4/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
0non_trainable_variables
1layer_metrics
2metrics

3layers
4layer_regularization_losses
regularization_losses
	variables
trainable_variables
 
 
 
?
5non_trainable_variables
6layer_metrics
7metrics

8layers
9layer_regularization_losses
regularization_losses
	variables
trainable_variables
ZX
VARIABLE_VALUEdense_8/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_8/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
:non_trainable_variables
;layer_metrics
<metrics

=layers
>layer_regularization_losses
regularization_losses
	variables
trainable_variables
ZX
VARIABLE_VALUEdense_9/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_9/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
?non_trainable_variables
@layer_metrics
Ametrics

Blayers
Clayer_regularization_losses
regularization_losses
	variables
 trainable_variables
 
 
 
?
Dnon_trainable_variables
Elayer_metrics
Fmetrics

Glayers
Hlayer_regularization_losses
"regularization_losses
#	variables
$trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 

I0
J1
#
0
1
2
3
4
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
	Ktotal
	Lcount
M	variables
N	keras_api
D
	Ototal
	Pcount
Q
_fn_kwargs
R	variables
S	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

K0
L1

M	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

O0
P1

R	variables
~|
VARIABLE_VALUEAdam/conv1d_4/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_4/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_8/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_8/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_9/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_9/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_4/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_4/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_8/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_8/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_9/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_9/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv1d_4_inputPlaceholder*+
_output_shapes
:?????????	*
dtype0* 
shape:?????????	
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv1d_4_inputconv1d_4/kernelconv1d_4/biasdense_8/kerneldense_8/biasdense_9/kerneldense_9/bias*
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
%__inference_signature_wrapper_1742869
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv1d_4/kernel/Read/ReadVariableOp!conv1d_4/bias/Read/ReadVariableOp"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/conv1d_4/kernel/m/Read/ReadVariableOp(Adam/conv1d_4/bias/m/Read/ReadVariableOp)Adam/dense_8/kernel/m/Read/ReadVariableOp'Adam/dense_8/bias/m/Read/ReadVariableOp)Adam/dense_9/kernel/m/Read/ReadVariableOp'Adam/dense_9/bias/m/Read/ReadVariableOp*Adam/conv1d_4/kernel/v/Read/ReadVariableOp(Adam/conv1d_4/bias/v/Read/ReadVariableOp)Adam/dense_8/kernel/v/Read/ReadVariableOp'Adam/dense_8/bias/v/Read/ReadVariableOp)Adam/dense_9/kernel/v/Read/ReadVariableOp'Adam/dense_9/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
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
 __inference__traced_save_1743413
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_4/kernelconv1d_4/biasdense_8/kerneldense_8/biasdense_9/kerneldense_9/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv1d_4/kernel/mAdam/conv1d_4/bias/mAdam/dense_8/kernel/mAdam/dense_8/bias/mAdam/dense_9/kernel/mAdam/dense_9/bias/mAdam/conv1d_4/kernel/vAdam/conv1d_4/bias/vAdam/dense_8/kernel/vAdam/dense_8/bias/vAdam/dense_9/kernel/vAdam/dense_9/bias/v*'
Tin 
2*
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
#__inference__traced_restore_1743504??
?
?
D__inference_dense_8_layer_call_and_return_conditional_losses_1743293

inputs1
matmul_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?.dense_8/bias/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
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
.dense_8/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.dense_8/bias/Regularizer/Square/ReadVariableOp?
dense_8/bias/Regularizer/SquareSquare6dense_8/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2!
dense_8/bias/Regularizer/Square?
dense_8/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_8/bias/Regularizer/Const?
dense_8/bias/Regularizer/SumSum#dense_8/bias/Regularizer/Square:y:0'dense_8/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_8/bias/Regularizer/Sum?
dense_8/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82 
dense_8/bias/Regularizer/mul/x?
dense_8/bias/Regularizer/mulMul'dense_8/bias/Regularizer/mul/x:output:0%dense_8/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_8/bias/Regularizer/mul?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense_8/bias/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_8/bias/Regularizer/Square/ReadVariableOp.dense_8/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?t
?
#__inference__traced_restore_1743504
file_prefix6
 assignvariableop_conv1d_4_kernel:	.
 assignvariableop_1_conv1d_4_bias:4
!assignvariableop_2_dense_8_kernel:	?.
assignvariableop_3_dense_8_bias:	?4
!assignvariableop_4_dense_9_kernel:	?-
assignvariableop_5_dense_9_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: @
*assignvariableop_15_adam_conv1d_4_kernel_m:	6
(assignvariableop_16_adam_conv1d_4_bias_m:<
)assignvariableop_17_adam_dense_8_kernel_m:	?6
'assignvariableop_18_adam_dense_8_bias_m:	?<
)assignvariableop_19_adam_dense_9_kernel_m:	?5
'assignvariableop_20_adam_dense_9_bias_m:@
*assignvariableop_21_adam_conv1d_4_kernel_v:	6
(assignvariableop_22_adam_conv1d_4_bias_v:<
)assignvariableop_23_adam_dense_8_kernel_v:	?6
'assignvariableop_24_adam_dense_8_bias_v:	?<
)assignvariableop_25_adam_dense_9_kernel_v:	?5
'assignvariableop_26_adam_dense_9_bias_v:
identity_28??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_conv1d_4_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_4_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_8_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_8_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_9_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_9_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adam_conv1d_4_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_conv1d_4_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_8_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_dense_8_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_9_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_9_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_conv1d_4_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_conv1d_4_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_8_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_8_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_9_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_9_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27?
Identity_28IdentityIdentity_27:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_28"#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
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
?
?
__inference_loss_fn_2_1743237F
7dense_8_bias_regularizer_square_readvariableop_resource:	?
identity??.dense_8/bias/Regularizer/Square/ReadVariableOp?
.dense_8/bias/Regularizer/Square/ReadVariableOpReadVariableOp7dense_8_bias_regularizer_square_readvariableop_resource*
_output_shapes	
:?*
dtype020
.dense_8/bias/Regularizer/Square/ReadVariableOp?
dense_8/bias/Regularizer/SquareSquare6dense_8/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2!
dense_8/bias/Regularizer/Square?
dense_8/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_8/bias/Regularizer/Const?
dense_8/bias/Regularizer/SumSum#dense_8/bias/Regularizer/Square:y:0'dense_8/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_8/bias/Regularizer/Sum?
dense_8/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82 
dense_8/bias/Regularizer/mul/x?
dense_8/bias/Regularizer/mulMul'dense_8/bias/Regularizer/mul/x:output:0%dense_8/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_8/bias/Regularizer/mul?
IdentityIdentity dense_8/bias/Regularizer/mul:z:0/^dense_8/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.dense_8/bias/Regularizer/Square/ReadVariableOp.dense_8/bias/Regularizer/Square/ReadVariableOp
?%
?
E__inference_conv1d_4_layer_call_and_return_conditional_losses_1742330

inputsA
+conv1d_expanddims_1_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOp?/conv1d_4/bias/Regularizer/Square/ReadVariableOp?1conv1d_4/kernel/Regularizer/Square/ReadVariableOpy
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
:?????????	2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	*
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
:	2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:?????????*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2	
BiasAddY
EluEluBiasAdd:output:0*
T0*+
_output_shapes
:?????????2
Elu?
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	*
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp?
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	2$
"conv1d_4/kernel/Regularizer/Square?
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const?
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum?
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82#
!conv1d_4/kernel/Regularizer/mul/x?
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mul?
/conv1d_4/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/conv1d_4/bias/Regularizer/Square/ReadVariableOp?
 conv1d_4/bias/Regularizer/SquareSquare7conv1d_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 conv1d_4/bias/Regularizer/Square?
conv1d_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
conv1d_4/bias/Regularizer/Const?
conv1d_4/bias/Regularizer/SumSum$conv1d_4/bias/Regularizer/Square:y:0(conv1d_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/Sum?
conv1d_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
conv1d_4/bias/Regularizer/mul/x?
conv1d_4/bias/Regularizer/mulMul(conv1d_4/bias/Regularizer/mul/x:output:0&conv1d_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/mul?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2b
/conv1d_4/bias/Regularizer/Square/ReadVariableOp/conv1d_4/bias/Regularizer/Square/ReadVariableOp2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
b
F__inference_softmax_4_layer_call_and_return_conditional_losses_1742418

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
?
?
*__inference_conv1d_4_layer_call_fn_1743120

inputs
unknown:	
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_conv1d_4_layer_call_and_return_conditional_losses_17423302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????	: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
??
?
I__inference_sequential_4_layer_call_and_return_conditional_losses_1743099

inputsJ
4conv1d_4_conv1d_expanddims_1_readvariableop_resource:	6
(conv1d_4_biasadd_readvariableop_resource:9
&dense_8_matmul_readvariableop_resource:	?6
'dense_8_biasadd_readvariableop_resource:	?9
&dense_9_matmul_readvariableop_resource:	?5
'dense_9_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3??conv1d_4/BiasAdd/ReadVariableOp?/conv1d_4/bias/Regularizer/Square/ReadVariableOp?+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp?1conv1d_4/kernel/Regularizer/Square/ReadVariableOp?dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?.dense_8/bias/Regularizer/Square/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp?.dense_9/bias/Regularizer/Square/ReadVariableOp?
conv1d_4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
conv1d_4/conv1d/ExpandDims/dim?
conv1d_4/conv1d/ExpandDims
ExpandDimsinputs'conv1d_4/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????	2
conv1d_4/conv1d/ExpandDims?
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	*
dtype02-
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp?
 conv1d_4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_4/conv1d/ExpandDims_1/dim?
conv1d_4/conv1d/ExpandDims_1
ExpandDims3conv1d_4/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_4/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	2
conv1d_4/conv1d/ExpandDims_1?
conv1d_4/conv1dConv2D#conv1d_4/conv1d/ExpandDims:output:0%conv1d_4/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
conv1d_4/conv1d?
conv1d_4/conv1d/SqueezeSqueezeconv1d_4/conv1d:output:0*
T0*+
_output_shapes
:?????????*
squeeze_dims

?????????2
conv1d_4/conv1d/Squeeze?
conv1d_4/BiasAdd/ReadVariableOpReadVariableOp(conv1d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv1d_4/BiasAdd/ReadVariableOp?
conv1d_4/BiasAddBiasAdd conv1d_4/conv1d/Squeeze:output:0'conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2
conv1d_4/BiasAddt
conv1d_4/EluEluconv1d_4/BiasAdd:output:0*
T0*+
_output_shapes
:?????????2
conv1d_4/Elu?
#conv1d_4/ActivityRegularizer/SquareSquareconv1d_4/Elu:activations:0*
T0*+
_output_shapes
:?????????2%
#conv1d_4/ActivityRegularizer/Square?
"conv1d_4/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"conv1d_4/ActivityRegularizer/Const?
 conv1d_4/ActivityRegularizer/SumSum'conv1d_4/ActivityRegularizer/Square:y:0+conv1d_4/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv1d_4/ActivityRegularizer/Sum?
"conv1d_4/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82$
"conv1d_4/ActivityRegularizer/mul/x?
 conv1d_4/ActivityRegularizer/mulMul+conv1d_4/ActivityRegularizer/mul/x:output:0)conv1d_4/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv1d_4/ActivityRegularizer/mul?
"conv1d_4/ActivityRegularizer/ShapeShapeconv1d_4/Elu:activations:0*
T0*
_output_shapes
:2$
"conv1d_4/ActivityRegularizer/Shape?
0conv1d_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0conv1d_4/ActivityRegularizer/strided_slice/stack?
2conv1d_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2conv1d_4/ActivityRegularizer/strided_slice/stack_1?
2conv1d_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2conv1d_4/ActivityRegularizer/strided_slice/stack_2?
*conv1d_4/ActivityRegularizer/strided_sliceStridedSlice+conv1d_4/ActivityRegularizer/Shape:output:09conv1d_4/ActivityRegularizer/strided_slice/stack:output:0;conv1d_4/ActivityRegularizer/strided_slice/stack_1:output:0;conv1d_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*conv1d_4/ActivityRegularizer/strided_slice?
!conv1d_4/ActivityRegularizer/CastCast3conv1d_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!conv1d_4/ActivityRegularizer/Cast?
$conv1d_4/ActivityRegularizer/truedivRealDiv$conv1d_4/ActivityRegularizer/mul:z:0%conv1d_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$conv1d_4/ActivityRegularizer/truedivs
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_4/Const?
flatten_4/ReshapeReshapeconv1d_4/Elu:activations:0flatten_4/Const:output:0*
T0*'
_output_shapes
:?????????2
flatten_4/Reshape?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_8/MatMul/ReadVariableOp?
dense_8/MatMulMatMulflatten_4/Reshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_8/MatMul?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_8/BiasAddz
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_8/Sigmoid?
"dense_8/ActivityRegularizer/SquareSquaredense_8/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2$
"dense_8/ActivityRegularizer/Square?
!dense_8/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_8/ActivityRegularizer/Const?
dense_8/ActivityRegularizer/SumSum&dense_8/ActivityRegularizer/Square:y:0*dense_8/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_8/ActivityRegularizer/Sum?
!dense_8/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82#
!dense_8/ActivityRegularizer/mul/x?
dense_8/ActivityRegularizer/mulMul*dense_8/ActivityRegularizer/mul/x:output:0(dense_8/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_8/ActivityRegularizer/mul?
!dense_8/ActivityRegularizer/ShapeShapedense_8/Sigmoid:y:0*
T0*
_output_shapes
:2#
!dense_8/ActivityRegularizer/Shape?
/dense_8/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_8/ActivityRegularizer/strided_slice/stack?
1dense_8/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_8/ActivityRegularizer/strided_slice/stack_1?
1dense_8/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_8/ActivityRegularizer/strided_slice/stack_2?
)dense_8/ActivityRegularizer/strided_sliceStridedSlice*dense_8/ActivityRegularizer/Shape:output:08dense_8/ActivityRegularizer/strided_slice/stack:output:0:dense_8/ActivityRegularizer/strided_slice/stack_1:output:0:dense_8/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_8/ActivityRegularizer/strided_slice?
 dense_8/ActivityRegularizer/CastCast2dense_8/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_8/ActivityRegularizer/Cast?
#dense_8/ActivityRegularizer/truedivRealDiv#dense_8/ActivityRegularizer/mul:z:0$dense_8/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_8/ActivityRegularizer/truediv?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_9/MatMul/ReadVariableOp?
dense_9/MatMulMatMuldense_8/Sigmoid:y:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/MatMul?
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_9/BiasAdd/ReadVariableOp?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/BiasAdd?
"dense_9/ActivityRegularizer/SquareSquaredense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2$
"dense_9/ActivityRegularizer/Square?
!dense_9/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_9/ActivityRegularizer/Const?
dense_9/ActivityRegularizer/SumSum&dense_9/ActivityRegularizer/Square:y:0*dense_9/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_9/ActivityRegularizer/Sum?
!dense_9/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82#
!dense_9/ActivityRegularizer/mul/x?
dense_9/ActivityRegularizer/mulMul*dense_9/ActivityRegularizer/mul/x:output:0(dense_9/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_9/ActivityRegularizer/mul?
!dense_9/ActivityRegularizer/ShapeShapedense_9/BiasAdd:output:0*
T0*
_output_shapes
:2#
!dense_9/ActivityRegularizer/Shape?
/dense_9/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_9/ActivityRegularizer/strided_slice/stack?
1dense_9/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_9/ActivityRegularizer/strided_slice/stack_1?
1dense_9/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_9/ActivityRegularizer/strided_slice/stack_2?
)dense_9/ActivityRegularizer/strided_sliceStridedSlice*dense_9/ActivityRegularizer/Shape:output:08dense_9/ActivityRegularizer/strided_slice/stack:output:0:dense_9/ActivityRegularizer/strided_slice/stack_1:output:0:dense_9/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_9/ActivityRegularizer/strided_slice?
 dense_9/ActivityRegularizer/CastCast2dense_9/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_9/ActivityRegularizer/Cast?
#dense_9/ActivityRegularizer/truedivRealDiv#dense_9/ActivityRegularizer/mul:z:0$dense_9/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_9/ActivityRegularizer/truediv}
softmax_4/SoftmaxSoftmaxdense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
softmax_4/Softmax?
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	*
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp?
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	2$
"conv1d_4/kernel/Regularizer/Square?
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const?
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum?
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82#
!conv1d_4/kernel/Regularizer/mul/x?
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mul?
/conv1d_4/bias/Regularizer/Square/ReadVariableOpReadVariableOp(conv1d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/conv1d_4/bias/Regularizer/Square/ReadVariableOp?
 conv1d_4/bias/Regularizer/SquareSquare7conv1d_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 conv1d_4/bias/Regularizer/Square?
conv1d_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
conv1d_4/bias/Regularizer/Const?
conv1d_4/bias/Regularizer/SumSum$conv1d_4/bias/Regularizer/Square:y:0(conv1d_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/Sum?
conv1d_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
conv1d_4/bias/Regularizer/mul/x?
conv1d_4/bias/Regularizer/mulMul(conv1d_4/bias/Regularizer/mul/x:output:0&conv1d_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/mul?
.dense_8/bias/Regularizer/Square/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.dense_8/bias/Regularizer/Square/ReadVariableOp?
dense_8/bias/Regularizer/SquareSquare6dense_8/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2!
dense_8/bias/Regularizer/Square?
dense_8/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_8/bias/Regularizer/Const?
dense_8/bias/Regularizer/SumSum#dense_8/bias/Regularizer/Square:y:0'dense_8/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_8/bias/Regularizer/Sum?
dense_8/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82 
dense_8/bias/Regularizer/mul/x?
dense_8/bias/Regularizer/mulMul'dense_8/bias/Regularizer/mul/x:output:0%dense_8/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_8/bias/Regularizer/mul?
.dense_9/bias/Regularizer/Square/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.dense_9/bias/Regularizer/Square/ReadVariableOp?
dense_9/bias/Regularizer/SquareSquare6dense_9/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2!
dense_9/bias/Regularizer/Square?
dense_9/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_9/bias/Regularizer/Const?
dense_9/bias/Regularizer/SumSum#dense_9/bias/Regularizer/Square:y:0'dense_9/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_9/bias/Regularizer/Sum?
dense_9/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82 
dense_9/bias/Regularizer/mul/x?
dense_9/bias/Regularizer/mulMul'dense_9/bias/Regularizer/mul/x:output:0%dense_9/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_9/bias/Regularizer/mul?
IdentityIdentitysoftmax_4/Softmax:softmax:0 ^conv1d_4/BiasAdd/ReadVariableOp0^conv1d_4/bias/Regularizer/Square/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp/^dense_8/bias/Regularizer/Square/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp/^dense_9/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(conv1d_4/ActivityRegularizer/truediv:z:0 ^conv1d_4/BiasAdd/ReadVariableOp0^conv1d_4/bias/Regularizer/Square/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp/^dense_8/bias/Regularizer/Square/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp/^dense_9/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity'dense_8/ActivityRegularizer/truediv:z:0 ^conv1d_4/BiasAdd/ReadVariableOp0^conv1d_4/bias/Regularizer/Square/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp/^dense_8/bias/Regularizer/Square/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp/^dense_9/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity'dense_9/ActivityRegularizer/truediv:z:0 ^conv1d_4/BiasAdd/ReadVariableOp0^conv1d_4/bias/Regularizer/Square/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp/^dense_8/bias/Regularizer/Square/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp/^dense_9/bias/Regularizer/Square/ReadVariableOp*
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
#:?????????	: : : : : : 2B
conv1d_4/BiasAdd/ReadVariableOpconv1d_4/BiasAdd/ReadVariableOp2b
/conv1d_4/bias/Regularizer/Square/ReadVariableOp/conv1d_4/bias/Regularizer/Square/ReadVariableOp2Z
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2`
.dense_8/bias/Regularizer/Square/ReadVariableOp.dense_8/bias/Regularizer/Square/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2`
.dense_9/bias/Regularizer/Square/ReadVariableOp.dense_9/bias/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
D__inference_dense_9_layer_call_and_return_conditional_losses_1742399

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?.dense_9/bias/Regularizer/Square/ReadVariableOp?
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
.dense_9/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.dense_9/bias/Regularizer/Square/ReadVariableOp?
dense_9/bias/Regularizer/SquareSquare6dense_9/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2!
dense_9/bias/Regularizer/Square?
dense_9/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_9/bias/Regularizer/Const?
dense_9/bias/Regularizer/SumSum#dense_9/bias/Regularizer/Square:y:0'dense_9/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_9/bias/Regularizer/Sum?
dense_9/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82 
dense_9/bias/Regularizer/mul/x?
dense_9/bias/Regularizer/mulMul'dense_9/bias/Regularizer/mul/x:output:0%dense_9/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_9/bias/Regularizer/mul?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense_9/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_9/bias/Regularizer/Square/ReadVariableOp.dense_9/bias/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_dense_8_layer_call_and_return_conditional_losses_1742369

inputs1
matmul_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?.dense_8/bias/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
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
.dense_8/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.dense_8/bias/Regularizer/Square/ReadVariableOp?
dense_8/bias/Regularizer/SquareSquare6dense_8/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2!
dense_8/bias/Regularizer/Square?
dense_8/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_8/bias/Regularizer/Const?
dense_8/bias/Regularizer/SumSum#dense_8/bias/Regularizer/Square:y:0'dense_8/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_8/bias/Regularizer/Sum?
dense_8/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82 
dense_8/bias/Regularizer/mul/x?
dense_8/bias/Regularizer/mulMul'dense_8/bias/Regularizer/mul/x:output:0%dense_8/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_8/bias/Regularizer/mul?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense_8/bias/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_8/bias/Regularizer/Square/ReadVariableOp.dense_8/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_1743226F
8conv1d_4_bias_regularizer_square_readvariableop_resource:
identity??/conv1d_4/bias/Regularizer/Square/ReadVariableOp?
/conv1d_4/bias/Regularizer/Square/ReadVariableOpReadVariableOp8conv1d_4_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype021
/conv1d_4/bias/Regularizer/Square/ReadVariableOp?
 conv1d_4/bias/Regularizer/SquareSquare7conv1d_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 conv1d_4/bias/Regularizer/Square?
conv1d_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
conv1d_4/bias/Regularizer/Const?
conv1d_4/bias/Regularizer/SumSum$conv1d_4/bias/Regularizer/Square:y:0(conv1d_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/Sum?
conv1d_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
conv1d_4/bias/Regularizer/mul/x?
conv1d_4/bias/Regularizer/mulMul(conv1d_4/bias/Regularizer/mul/x:output:0&conv1d_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/mul?
IdentityIdentity!conv1d_4/bias/Regularizer/mul:z:00^conv1d_4/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/conv1d_4/bias/Regularizer/Square/ReadVariableOp/conv1d_4/bias/Regularizer/Square/ReadVariableOp
?
?
H__inference_dense_9_layer_call_and_return_all_conditional_losses_1743194

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
GPU2 *0J 8? *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_17423992
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
GPU2 *0J 8? *9
f4R2
0__inference_dense_9_activity_regularizer_17422952
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
?t
?
"__inference__wrapped_model_1742256
conv1d_4_inputW
Asequential_4_conv1d_4_conv1d_expanddims_1_readvariableop_resource:	C
5sequential_4_conv1d_4_biasadd_readvariableop_resource:F
3sequential_4_dense_8_matmul_readvariableop_resource:	?C
4sequential_4_dense_8_biasadd_readvariableop_resource:	?F
3sequential_4_dense_9_matmul_readvariableop_resource:	?B
4sequential_4_dense_9_biasadd_readvariableop_resource:
identity??,sequential_4/conv1d_4/BiasAdd/ReadVariableOp?8sequential_4/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp?+sequential_4/dense_8/BiasAdd/ReadVariableOp?*sequential_4/dense_8/MatMul/ReadVariableOp?+sequential_4/dense_9/BiasAdd/ReadVariableOp?*sequential_4/dense_9/MatMul/ReadVariableOp?
+sequential_4/conv1d_4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2-
+sequential_4/conv1d_4/conv1d/ExpandDims/dim?
'sequential_4/conv1d_4/conv1d/ExpandDims
ExpandDimsconv1d_4_input4sequential_4/conv1d_4/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????	2)
'sequential_4/conv1d_4/conv1d/ExpandDims?
8sequential_4/conv1d_4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpAsequential_4_conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	*
dtype02:
8sequential_4/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp?
-sequential_4/conv1d_4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_4/conv1d_4/conv1d/ExpandDims_1/dim?
)sequential_4/conv1d_4/conv1d/ExpandDims_1
ExpandDims@sequential_4/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp:value:06sequential_4/conv1d_4/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	2+
)sequential_4/conv1d_4/conv1d/ExpandDims_1?
sequential_4/conv1d_4/conv1dConv2D0sequential_4/conv1d_4/conv1d/ExpandDims:output:02sequential_4/conv1d_4/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
sequential_4/conv1d_4/conv1d?
$sequential_4/conv1d_4/conv1d/SqueezeSqueeze%sequential_4/conv1d_4/conv1d:output:0*
T0*+
_output_shapes
:?????????*
squeeze_dims

?????????2&
$sequential_4/conv1d_4/conv1d/Squeeze?
,sequential_4/conv1d_4/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_conv1d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_4/conv1d_4/BiasAdd/ReadVariableOp?
sequential_4/conv1d_4/BiasAddBiasAdd-sequential_4/conv1d_4/conv1d/Squeeze:output:04sequential_4/conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2
sequential_4/conv1d_4/BiasAdd?
sequential_4/conv1d_4/EluElu&sequential_4/conv1d_4/BiasAdd:output:0*
T0*+
_output_shapes
:?????????2
sequential_4/conv1d_4/Elu?
0sequential_4/conv1d_4/ActivityRegularizer/SquareSquare'sequential_4/conv1d_4/Elu:activations:0*
T0*+
_output_shapes
:?????????22
0sequential_4/conv1d_4/ActivityRegularizer/Square?
/sequential_4/conv1d_4/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          21
/sequential_4/conv1d_4/ActivityRegularizer/Const?
-sequential_4/conv1d_4/ActivityRegularizer/SumSum4sequential_4/conv1d_4/ActivityRegularizer/Square:y:08sequential_4/conv1d_4/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2/
-sequential_4/conv1d_4/ActivityRegularizer/Sum?
/sequential_4/conv1d_4/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??821
/sequential_4/conv1d_4/ActivityRegularizer/mul/x?
-sequential_4/conv1d_4/ActivityRegularizer/mulMul8sequential_4/conv1d_4/ActivityRegularizer/mul/x:output:06sequential_4/conv1d_4/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-sequential_4/conv1d_4/ActivityRegularizer/mul?
/sequential_4/conv1d_4/ActivityRegularizer/ShapeShape'sequential_4/conv1d_4/Elu:activations:0*
T0*
_output_shapes
:21
/sequential_4/conv1d_4/ActivityRegularizer/Shape?
=sequential_4/conv1d_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2?
=sequential_4/conv1d_4/ActivityRegularizer/strided_slice/stack?
?sequential_4/conv1d_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_4/conv1d_4/ActivityRegularizer/strided_slice/stack_1?
?sequential_4/conv1d_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_4/conv1d_4/ActivityRegularizer/strided_slice/stack_2?
7sequential_4/conv1d_4/ActivityRegularizer/strided_sliceStridedSlice8sequential_4/conv1d_4/ActivityRegularizer/Shape:output:0Fsequential_4/conv1d_4/ActivityRegularizer/strided_slice/stack:output:0Hsequential_4/conv1d_4/ActivityRegularizer/strided_slice/stack_1:output:0Hsequential_4/conv1d_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask29
7sequential_4/conv1d_4/ActivityRegularizer/strided_slice?
.sequential_4/conv1d_4/ActivityRegularizer/CastCast@sequential_4/conv1d_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 20
.sequential_4/conv1d_4/ActivityRegularizer/Cast?
1sequential_4/conv1d_4/ActivityRegularizer/truedivRealDiv1sequential_4/conv1d_4/ActivityRegularizer/mul:z:02sequential_4/conv1d_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 23
1sequential_4/conv1d_4/ActivityRegularizer/truediv?
sequential_4/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
sequential_4/flatten_4/Const?
sequential_4/flatten_4/ReshapeReshape'sequential_4/conv1d_4/Elu:activations:0%sequential_4/flatten_4/Const:output:0*
T0*'
_output_shapes
:?????????2 
sequential_4/flatten_4/Reshape?
*sequential_4/dense_8/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_8_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02,
*sequential_4/dense_8/MatMul/ReadVariableOp?
sequential_4/dense_8/MatMulMatMul'sequential_4/flatten_4/Reshape:output:02sequential_4/dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_4/dense_8/MatMul?
+sequential_4/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02-
+sequential_4/dense_8/BiasAdd/ReadVariableOp?
sequential_4/dense_8/BiasAddBiasAdd%sequential_4/dense_8/MatMul:product:03sequential_4/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_4/dense_8/BiasAdd?
sequential_4/dense_8/SigmoidSigmoid%sequential_4/dense_8/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_4/dense_8/Sigmoid?
/sequential_4/dense_8/ActivityRegularizer/SquareSquare sequential_4/dense_8/Sigmoid:y:0*
T0*(
_output_shapes
:??????????21
/sequential_4/dense_8/ActivityRegularizer/Square?
.sequential_4/dense_8/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.sequential_4/dense_8/ActivityRegularizer/Const?
,sequential_4/dense_8/ActivityRegularizer/SumSum3sequential_4/dense_8/ActivityRegularizer/Square:y:07sequential_4/dense_8/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2.
,sequential_4/dense_8/ActivityRegularizer/Sum?
.sequential_4/dense_8/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??820
.sequential_4/dense_8/ActivityRegularizer/mul/x?
,sequential_4/dense_8/ActivityRegularizer/mulMul7sequential_4/dense_8/ActivityRegularizer/mul/x:output:05sequential_4/dense_8/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,sequential_4/dense_8/ActivityRegularizer/mul?
.sequential_4/dense_8/ActivityRegularizer/ShapeShape sequential_4/dense_8/Sigmoid:y:0*
T0*
_output_shapes
:20
.sequential_4/dense_8/ActivityRegularizer/Shape?
<sequential_4/dense_8/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2>
<sequential_4/dense_8/ActivityRegularizer/strided_slice/stack?
>sequential_4/dense_8/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_4/dense_8/ActivityRegularizer/strided_slice/stack_1?
>sequential_4/dense_8/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_4/dense_8/ActivityRegularizer/strided_slice/stack_2?
6sequential_4/dense_8/ActivityRegularizer/strided_sliceStridedSlice7sequential_4/dense_8/ActivityRegularizer/Shape:output:0Esequential_4/dense_8/ActivityRegularizer/strided_slice/stack:output:0Gsequential_4/dense_8/ActivityRegularizer/strided_slice/stack_1:output:0Gsequential_4/dense_8/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask28
6sequential_4/dense_8/ActivityRegularizer/strided_slice?
-sequential_4/dense_8/ActivityRegularizer/CastCast?sequential_4/dense_8/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2/
-sequential_4/dense_8/ActivityRegularizer/Cast?
0sequential_4/dense_8/ActivityRegularizer/truedivRealDiv0sequential_4/dense_8/ActivityRegularizer/mul:z:01sequential_4/dense_8/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 22
0sequential_4/dense_8/ActivityRegularizer/truediv?
*sequential_4/dense_9/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_9_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02,
*sequential_4/dense_9/MatMul/ReadVariableOp?
sequential_4/dense_9/MatMulMatMul sequential_4/dense_8/Sigmoid:y:02sequential_4/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_4/dense_9/MatMul?
+sequential_4/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_4/dense_9/BiasAdd/ReadVariableOp?
sequential_4/dense_9/BiasAddBiasAdd%sequential_4/dense_9/MatMul:product:03sequential_4/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_4/dense_9/BiasAdd?
/sequential_4/dense_9/ActivityRegularizer/SquareSquare%sequential_4/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????21
/sequential_4/dense_9/ActivityRegularizer/Square?
.sequential_4/dense_9/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       20
.sequential_4/dense_9/ActivityRegularizer/Const?
,sequential_4/dense_9/ActivityRegularizer/SumSum3sequential_4/dense_9/ActivityRegularizer/Square:y:07sequential_4/dense_9/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2.
,sequential_4/dense_9/ActivityRegularizer/Sum?
.sequential_4/dense_9/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??820
.sequential_4/dense_9/ActivityRegularizer/mul/x?
,sequential_4/dense_9/ActivityRegularizer/mulMul7sequential_4/dense_9/ActivityRegularizer/mul/x:output:05sequential_4/dense_9/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2.
,sequential_4/dense_9/ActivityRegularizer/mul?
.sequential_4/dense_9/ActivityRegularizer/ShapeShape%sequential_4/dense_9/BiasAdd:output:0*
T0*
_output_shapes
:20
.sequential_4/dense_9/ActivityRegularizer/Shape?
<sequential_4/dense_9/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2>
<sequential_4/dense_9/ActivityRegularizer/strided_slice/stack?
>sequential_4/dense_9/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_4/dense_9/ActivityRegularizer/strided_slice/stack_1?
>sequential_4/dense_9/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2@
>sequential_4/dense_9/ActivityRegularizer/strided_slice/stack_2?
6sequential_4/dense_9/ActivityRegularizer/strided_sliceStridedSlice7sequential_4/dense_9/ActivityRegularizer/Shape:output:0Esequential_4/dense_9/ActivityRegularizer/strided_slice/stack:output:0Gsequential_4/dense_9/ActivityRegularizer/strided_slice/stack_1:output:0Gsequential_4/dense_9/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask28
6sequential_4/dense_9/ActivityRegularizer/strided_slice?
-sequential_4/dense_9/ActivityRegularizer/CastCast?sequential_4/dense_9/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2/
-sequential_4/dense_9/ActivityRegularizer/Cast?
0sequential_4/dense_9/ActivityRegularizer/truedivRealDiv0sequential_4/dense_9/ActivityRegularizer/mul:z:01sequential_4/dense_9/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 22
0sequential_4/dense_9/ActivityRegularizer/truediv?
sequential_4/softmax_4/SoftmaxSoftmax%sequential_4/dense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2 
sequential_4/softmax_4/Softmax?
IdentityIdentity(sequential_4/softmax_4/Softmax:softmax:0-^sequential_4/conv1d_4/BiasAdd/ReadVariableOp9^sequential_4/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp,^sequential_4/dense_8/BiasAdd/ReadVariableOp+^sequential_4/dense_8/MatMul/ReadVariableOp,^sequential_4/dense_9/BiasAdd/ReadVariableOp+^sequential_4/dense_9/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : 2\
,sequential_4/conv1d_4/BiasAdd/ReadVariableOp,sequential_4/conv1d_4/BiasAdd/ReadVariableOp2t
8sequential_4/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp8sequential_4/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2Z
+sequential_4/dense_8/BiasAdd/ReadVariableOp+sequential_4/dense_8/BiasAdd/ReadVariableOp2X
*sequential_4/dense_8/MatMul/ReadVariableOp*sequential_4/dense_8/MatMul/ReadVariableOp2Z
+sequential_4/dense_9/BiasAdd/ReadVariableOp+sequential_4/dense_9/BiasAdd/ReadVariableOp2X
*sequential_4/dense_9/MatMul/ReadVariableOp*sequential_4/dense_9/MatMul/ReadVariableOp:[ W
+
_output_shapes
:?????????	
(
_user_specified_nameconv1d_4_input
?u
?
I__inference_sequential_4_layer_call_and_return_conditional_losses_1742638

inputs&
conv1d_4_1742569:	
conv1d_4_1742571:"
dense_8_1742583:	?
dense_8_1742585:	?"
dense_9_1742596:	?
dense_9_1742598:
identity

identity_1

identity_2

identity_3?? conv1d_4/StatefulPartitionedCall?/conv1d_4/bias/Regularizer/Square/ReadVariableOp?1conv1d_4/kernel/Regularizer/Square/ReadVariableOp?dense_8/StatefulPartitionedCall?.dense_8/bias/Regularizer/Square/ReadVariableOp?dense_9/StatefulPartitionedCall?.dense_9/bias/Regularizer/Square/ReadVariableOp?
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_4_1742569conv1d_4_1742571*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_conv1d_4_layer_call_and_return_conditional_losses_17423302"
 conv1d_4/StatefulPartitionedCall?
,conv1d_4/ActivityRegularizer/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
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
1__inference_conv1d_4_activity_regularizer_17422692.
,conv1d_4/ActivityRegularizer/PartitionedCall?
"conv1d_4/ActivityRegularizer/ShapeShape)conv1d_4/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"conv1d_4/ActivityRegularizer/Shape?
0conv1d_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0conv1d_4/ActivityRegularizer/strided_slice/stack?
2conv1d_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2conv1d_4/ActivityRegularizer/strided_slice/stack_1?
2conv1d_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2conv1d_4/ActivityRegularizer/strided_slice/stack_2?
*conv1d_4/ActivityRegularizer/strided_sliceStridedSlice+conv1d_4/ActivityRegularizer/Shape:output:09conv1d_4/ActivityRegularizer/strided_slice/stack:output:0;conv1d_4/ActivityRegularizer/strided_slice/stack_1:output:0;conv1d_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*conv1d_4/ActivityRegularizer/strided_slice?
!conv1d_4/ActivityRegularizer/CastCast3conv1d_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!conv1d_4/ActivityRegularizer/Cast?
$conv1d_4/ActivityRegularizer/truedivRealDiv5conv1d_4/ActivityRegularizer/PartitionedCall:output:0%conv1d_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$conv1d_4/ActivityRegularizer/truediv?
flatten_4/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_17423502
flatten_4/PartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_1742583dense_8_1742585*
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
GPU2 *0J 8? *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_17423692!
dense_8/StatefulPartitionedCall?
+dense_8/ActivityRegularizer/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8? *9
f4R2
0__inference_dense_8_activity_regularizer_17422822-
+dense_8/ActivityRegularizer/PartitionedCall?
!dense_8/ActivityRegularizer/ShapeShape(dense_8/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_8/ActivityRegularizer/Shape?
/dense_8/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_8/ActivityRegularizer/strided_slice/stack?
1dense_8/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_8/ActivityRegularizer/strided_slice/stack_1?
1dense_8/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_8/ActivityRegularizer/strided_slice/stack_2?
)dense_8/ActivityRegularizer/strided_sliceStridedSlice*dense_8/ActivityRegularizer/Shape:output:08dense_8/ActivityRegularizer/strided_slice/stack:output:0:dense_8/ActivityRegularizer/strided_slice/stack_1:output:0:dense_8/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_8/ActivityRegularizer/strided_slice?
 dense_8/ActivityRegularizer/CastCast2dense_8/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_8/ActivityRegularizer/Cast?
#dense_8/ActivityRegularizer/truedivRealDiv4dense_8/ActivityRegularizer/PartitionedCall:output:0$dense_8/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_8/ActivityRegularizer/truediv?
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_1742596dense_9_1742598*
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
GPU2 *0J 8? *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_17423992!
dense_9/StatefulPartitionedCall?
+dense_9/ActivityRegularizer/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8? *9
f4R2
0__inference_dense_9_activity_regularizer_17422952-
+dense_9/ActivityRegularizer/PartitionedCall?
!dense_9/ActivityRegularizer/ShapeShape(dense_9/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_9/ActivityRegularizer/Shape?
/dense_9/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_9/ActivityRegularizer/strided_slice/stack?
1dense_9/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_9/ActivityRegularizer/strided_slice/stack_1?
1dense_9/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_9/ActivityRegularizer/strided_slice/stack_2?
)dense_9/ActivityRegularizer/strided_sliceStridedSlice*dense_9/ActivityRegularizer/Shape:output:08dense_9/ActivityRegularizer/strided_slice/stack:output:0:dense_9/ActivityRegularizer/strided_slice/stack_1:output:0:dense_9/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_9/ActivityRegularizer/strided_slice?
 dense_9/ActivityRegularizer/CastCast2dense_9/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_9/ActivityRegularizer/Cast?
#dense_9/ActivityRegularizer/truedivRealDiv4dense_9/ActivityRegularizer/PartitionedCall:output:0$dense_9/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_9/ActivityRegularizer/truediv?
softmax_4/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8? *O
fJRH
F__inference_softmax_4_layer_call_and_return_conditional_losses_17424182
softmax_4/PartitionedCall?
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_4_1742569*"
_output_shapes
:	*
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp?
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	2$
"conv1d_4/kernel/Regularizer/Square?
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const?
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum?
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82#
!conv1d_4/kernel/Regularizer/mul/x?
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mul?
/conv1d_4/bias/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_4_1742571*
_output_shapes
:*
dtype021
/conv1d_4/bias/Regularizer/Square/ReadVariableOp?
 conv1d_4/bias/Regularizer/SquareSquare7conv1d_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 conv1d_4/bias/Regularizer/Square?
conv1d_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
conv1d_4/bias/Regularizer/Const?
conv1d_4/bias/Regularizer/SumSum$conv1d_4/bias/Regularizer/Square:y:0(conv1d_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/Sum?
conv1d_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
conv1d_4/bias/Regularizer/mul/x?
conv1d_4/bias/Regularizer/mulMul(conv1d_4/bias/Regularizer/mul/x:output:0&conv1d_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/mul?
.dense_8/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_8_1742585*
_output_shapes	
:?*
dtype020
.dense_8/bias/Regularizer/Square/ReadVariableOp?
dense_8/bias/Regularizer/SquareSquare6dense_8/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2!
dense_8/bias/Regularizer/Square?
dense_8/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_8/bias/Regularizer/Const?
dense_8/bias/Regularizer/SumSum#dense_8/bias/Regularizer/Square:y:0'dense_8/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_8/bias/Regularizer/Sum?
dense_8/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82 
dense_8/bias/Regularizer/mul/x?
dense_8/bias/Regularizer/mulMul'dense_8/bias/Regularizer/mul/x:output:0%dense_8/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_8/bias/Regularizer/mul?
.dense_9/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_9_1742598*
_output_shapes
:*
dtype020
.dense_9/bias/Regularizer/Square/ReadVariableOp?
dense_9/bias/Regularizer/SquareSquare6dense_9/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2!
dense_9/bias/Regularizer/Square?
dense_9/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_9/bias/Regularizer/Const?
dense_9/bias/Regularizer/SumSum#dense_9/bias/Regularizer/Square:y:0'dense_9/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_9/bias/Regularizer/Sum?
dense_9/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82 
dense_9/bias/Regularizer/mul/x?
dense_9/bias/Regularizer/mulMul'dense_9/bias/Regularizer/mul/x:output:0%dense_9/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_9/bias/Regularizer/mul?
IdentityIdentity"softmax_4/PartitionedCall:output:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall/^dense_8/bias/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall/^dense_9/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(conv1d_4/ActivityRegularizer/truediv:z:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall/^dense_8/bias/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall/^dense_9/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity'dense_8/ActivityRegularizer/truediv:z:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall/^dense_8/bias/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall/^dense_9/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity'dense_9/ActivityRegularizer/truediv:z:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall/^dense_8/bias/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall/^dense_9/bias/Regularizer/Square/ReadVariableOp*
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
#:?????????	: : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2b
/conv1d_4/bias/Regularizer/Square/ReadVariableOp/conv1d_4/bias/Regularizer/Square/ReadVariableOp2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2`
.dense_8/bias/Regularizer/Square/ReadVariableOp.dense_8/bias/Regularizer/Square/ReadVariableOp2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2`
.dense_9/bias/Regularizer/Square/ReadVariableOp.dense_9/bias/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
I__inference_conv1d_4_layer_call_and_return_all_conditional_losses_1743131

inputs
unknown:	
	unknown_0:
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
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_conv1d_4_layer_call_and_return_conditional_losses_17423302
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
1__inference_conv1d_4_activity_regularizer_17422692
PartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:?????????2

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
:?????????	: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?u
?
I__inference_sequential_4_layer_call_and_return_conditional_losses_1742748
conv1d_4_input&
conv1d_4_1742679:	
conv1d_4_1742681:"
dense_8_1742693:	?
dense_8_1742695:	?"
dense_9_1742706:	?
dense_9_1742708:
identity

identity_1

identity_2

identity_3?? conv1d_4/StatefulPartitionedCall?/conv1d_4/bias/Regularizer/Square/ReadVariableOp?1conv1d_4/kernel/Regularizer/Square/ReadVariableOp?dense_8/StatefulPartitionedCall?.dense_8/bias/Regularizer/Square/ReadVariableOp?dense_9/StatefulPartitionedCall?.dense_9/bias/Regularizer/Square/ReadVariableOp?
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputconv1d_4_1742679conv1d_4_1742681*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_conv1d_4_layer_call_and_return_conditional_losses_17423302"
 conv1d_4/StatefulPartitionedCall?
,conv1d_4/ActivityRegularizer/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
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
1__inference_conv1d_4_activity_regularizer_17422692.
,conv1d_4/ActivityRegularizer/PartitionedCall?
"conv1d_4/ActivityRegularizer/ShapeShape)conv1d_4/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"conv1d_4/ActivityRegularizer/Shape?
0conv1d_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0conv1d_4/ActivityRegularizer/strided_slice/stack?
2conv1d_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2conv1d_4/ActivityRegularizer/strided_slice/stack_1?
2conv1d_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2conv1d_4/ActivityRegularizer/strided_slice/stack_2?
*conv1d_4/ActivityRegularizer/strided_sliceStridedSlice+conv1d_4/ActivityRegularizer/Shape:output:09conv1d_4/ActivityRegularizer/strided_slice/stack:output:0;conv1d_4/ActivityRegularizer/strided_slice/stack_1:output:0;conv1d_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*conv1d_4/ActivityRegularizer/strided_slice?
!conv1d_4/ActivityRegularizer/CastCast3conv1d_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!conv1d_4/ActivityRegularizer/Cast?
$conv1d_4/ActivityRegularizer/truedivRealDiv5conv1d_4/ActivityRegularizer/PartitionedCall:output:0%conv1d_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$conv1d_4/ActivityRegularizer/truediv?
flatten_4/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_17423502
flatten_4/PartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_1742693dense_8_1742695*
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
GPU2 *0J 8? *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_17423692!
dense_8/StatefulPartitionedCall?
+dense_8/ActivityRegularizer/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8? *9
f4R2
0__inference_dense_8_activity_regularizer_17422822-
+dense_8/ActivityRegularizer/PartitionedCall?
!dense_8/ActivityRegularizer/ShapeShape(dense_8/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_8/ActivityRegularizer/Shape?
/dense_8/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_8/ActivityRegularizer/strided_slice/stack?
1dense_8/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_8/ActivityRegularizer/strided_slice/stack_1?
1dense_8/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_8/ActivityRegularizer/strided_slice/stack_2?
)dense_8/ActivityRegularizer/strided_sliceStridedSlice*dense_8/ActivityRegularizer/Shape:output:08dense_8/ActivityRegularizer/strided_slice/stack:output:0:dense_8/ActivityRegularizer/strided_slice/stack_1:output:0:dense_8/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_8/ActivityRegularizer/strided_slice?
 dense_8/ActivityRegularizer/CastCast2dense_8/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_8/ActivityRegularizer/Cast?
#dense_8/ActivityRegularizer/truedivRealDiv4dense_8/ActivityRegularizer/PartitionedCall:output:0$dense_8/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_8/ActivityRegularizer/truediv?
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_1742706dense_9_1742708*
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
GPU2 *0J 8? *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_17423992!
dense_9/StatefulPartitionedCall?
+dense_9/ActivityRegularizer/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8? *9
f4R2
0__inference_dense_9_activity_regularizer_17422952-
+dense_9/ActivityRegularizer/PartitionedCall?
!dense_9/ActivityRegularizer/ShapeShape(dense_9/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_9/ActivityRegularizer/Shape?
/dense_9/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_9/ActivityRegularizer/strided_slice/stack?
1dense_9/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_9/ActivityRegularizer/strided_slice/stack_1?
1dense_9/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_9/ActivityRegularizer/strided_slice/stack_2?
)dense_9/ActivityRegularizer/strided_sliceStridedSlice*dense_9/ActivityRegularizer/Shape:output:08dense_9/ActivityRegularizer/strided_slice/stack:output:0:dense_9/ActivityRegularizer/strided_slice/stack_1:output:0:dense_9/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_9/ActivityRegularizer/strided_slice?
 dense_9/ActivityRegularizer/CastCast2dense_9/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_9/ActivityRegularizer/Cast?
#dense_9/ActivityRegularizer/truedivRealDiv4dense_9/ActivityRegularizer/PartitionedCall:output:0$dense_9/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_9/ActivityRegularizer/truediv?
softmax_4/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8? *O
fJRH
F__inference_softmax_4_layer_call_and_return_conditional_losses_17424182
softmax_4/PartitionedCall?
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_4_1742679*"
_output_shapes
:	*
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp?
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	2$
"conv1d_4/kernel/Regularizer/Square?
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const?
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum?
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82#
!conv1d_4/kernel/Regularizer/mul/x?
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mul?
/conv1d_4/bias/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_4_1742681*
_output_shapes
:*
dtype021
/conv1d_4/bias/Regularizer/Square/ReadVariableOp?
 conv1d_4/bias/Regularizer/SquareSquare7conv1d_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 conv1d_4/bias/Regularizer/Square?
conv1d_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
conv1d_4/bias/Regularizer/Const?
conv1d_4/bias/Regularizer/SumSum$conv1d_4/bias/Regularizer/Square:y:0(conv1d_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/Sum?
conv1d_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
conv1d_4/bias/Regularizer/mul/x?
conv1d_4/bias/Regularizer/mulMul(conv1d_4/bias/Regularizer/mul/x:output:0&conv1d_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/mul?
.dense_8/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_8_1742695*
_output_shapes	
:?*
dtype020
.dense_8/bias/Regularizer/Square/ReadVariableOp?
dense_8/bias/Regularizer/SquareSquare6dense_8/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2!
dense_8/bias/Regularizer/Square?
dense_8/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_8/bias/Regularizer/Const?
dense_8/bias/Regularizer/SumSum#dense_8/bias/Regularizer/Square:y:0'dense_8/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_8/bias/Regularizer/Sum?
dense_8/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82 
dense_8/bias/Regularizer/mul/x?
dense_8/bias/Regularizer/mulMul'dense_8/bias/Regularizer/mul/x:output:0%dense_8/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_8/bias/Regularizer/mul?
.dense_9/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_9_1742708*
_output_shapes
:*
dtype020
.dense_9/bias/Regularizer/Square/ReadVariableOp?
dense_9/bias/Regularizer/SquareSquare6dense_9/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2!
dense_9/bias/Regularizer/Square?
dense_9/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_9/bias/Regularizer/Const?
dense_9/bias/Regularizer/SumSum#dense_9/bias/Regularizer/Square:y:0'dense_9/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_9/bias/Regularizer/Sum?
dense_9/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82 
dense_9/bias/Regularizer/mul/x?
dense_9/bias/Regularizer/mulMul'dense_9/bias/Regularizer/mul/x:output:0%dense_9/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_9/bias/Regularizer/mul?
IdentityIdentity"softmax_4/PartitionedCall:output:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall/^dense_8/bias/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall/^dense_9/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(conv1d_4/ActivityRegularizer/truediv:z:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall/^dense_8/bias/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall/^dense_9/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity'dense_8/ActivityRegularizer/truediv:z:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall/^dense_8/bias/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall/^dense_9/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity'dense_9/ActivityRegularizer/truediv:z:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall/^dense_8/bias/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall/^dense_9/bias/Regularizer/Square/ReadVariableOp*
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
#:?????????	: : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2b
/conv1d_4/bias/Regularizer/Square/ReadVariableOp/conv1d_4/bias/Regularizer/Square/ReadVariableOp2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2`
.dense_8/bias/Regularizer/Square/ReadVariableOp.dense_8/bias/Regularizer/Square/ReadVariableOp2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2`
.dense_9/bias/Regularizer/Square/ReadVariableOp.dense_9/bias/Regularizer/Square/ReadVariableOp:[ W
+
_output_shapes
:?????????	
(
_user_specified_nameconv1d_4_input
?
b
F__inference_softmax_4_layer_call_and_return_conditional_losses_1743204

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
?
?
__inference_loss_fn_3_1743248E
7dense_9_bias_regularizer_square_readvariableop_resource:
identity??.dense_9/bias/Regularizer/Square/ReadVariableOp?
.dense_9/bias/Regularizer/Square/ReadVariableOpReadVariableOp7dense_9_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype020
.dense_9/bias/Regularizer/Square/ReadVariableOp?
dense_9/bias/Regularizer/SquareSquare6dense_9/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2!
dense_9/bias/Regularizer/Square?
dense_9/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_9/bias/Regularizer/Const?
dense_9/bias/Regularizer/SumSum#dense_9/bias/Regularizer/Square:y:0'dense_9/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_9/bias/Regularizer/Sum?
dense_9/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82 
dense_9/bias/Regularizer/mul/x?
dense_9/bias/Regularizer/mulMul'dense_9/bias/Regularizer/mul/x:output:0%dense_9/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_9/bias/Regularizer/mul?
IdentityIdentity dense_9/bias/Regularizer/mul:z:0/^dense_9/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.dense_9/bias/Regularizer/Square/ReadVariableOp.dense_9/bias/Regularizer/Square/ReadVariableOp
?u
?
I__inference_sequential_4_layer_call_and_return_conditional_losses_1742820
conv1d_4_input&
conv1d_4_1742751:	
conv1d_4_1742753:"
dense_8_1742765:	?
dense_8_1742767:	?"
dense_9_1742778:	?
dense_9_1742780:
identity

identity_1

identity_2

identity_3?? conv1d_4/StatefulPartitionedCall?/conv1d_4/bias/Regularizer/Square/ReadVariableOp?1conv1d_4/kernel/Regularizer/Square/ReadVariableOp?dense_8/StatefulPartitionedCall?.dense_8/bias/Regularizer/Square/ReadVariableOp?dense_9/StatefulPartitionedCall?.dense_9/bias/Regularizer/Square/ReadVariableOp?
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputconv1d_4_1742751conv1d_4_1742753*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_conv1d_4_layer_call_and_return_conditional_losses_17423302"
 conv1d_4/StatefulPartitionedCall?
,conv1d_4/ActivityRegularizer/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
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
1__inference_conv1d_4_activity_regularizer_17422692.
,conv1d_4/ActivityRegularizer/PartitionedCall?
"conv1d_4/ActivityRegularizer/ShapeShape)conv1d_4/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"conv1d_4/ActivityRegularizer/Shape?
0conv1d_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0conv1d_4/ActivityRegularizer/strided_slice/stack?
2conv1d_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2conv1d_4/ActivityRegularizer/strided_slice/stack_1?
2conv1d_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2conv1d_4/ActivityRegularizer/strided_slice/stack_2?
*conv1d_4/ActivityRegularizer/strided_sliceStridedSlice+conv1d_4/ActivityRegularizer/Shape:output:09conv1d_4/ActivityRegularizer/strided_slice/stack:output:0;conv1d_4/ActivityRegularizer/strided_slice/stack_1:output:0;conv1d_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*conv1d_4/ActivityRegularizer/strided_slice?
!conv1d_4/ActivityRegularizer/CastCast3conv1d_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!conv1d_4/ActivityRegularizer/Cast?
$conv1d_4/ActivityRegularizer/truedivRealDiv5conv1d_4/ActivityRegularizer/PartitionedCall:output:0%conv1d_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$conv1d_4/ActivityRegularizer/truediv?
flatten_4/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_17423502
flatten_4/PartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_1742765dense_8_1742767*
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
GPU2 *0J 8? *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_17423692!
dense_8/StatefulPartitionedCall?
+dense_8/ActivityRegularizer/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8? *9
f4R2
0__inference_dense_8_activity_regularizer_17422822-
+dense_8/ActivityRegularizer/PartitionedCall?
!dense_8/ActivityRegularizer/ShapeShape(dense_8/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_8/ActivityRegularizer/Shape?
/dense_8/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_8/ActivityRegularizer/strided_slice/stack?
1dense_8/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_8/ActivityRegularizer/strided_slice/stack_1?
1dense_8/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_8/ActivityRegularizer/strided_slice/stack_2?
)dense_8/ActivityRegularizer/strided_sliceStridedSlice*dense_8/ActivityRegularizer/Shape:output:08dense_8/ActivityRegularizer/strided_slice/stack:output:0:dense_8/ActivityRegularizer/strided_slice/stack_1:output:0:dense_8/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_8/ActivityRegularizer/strided_slice?
 dense_8/ActivityRegularizer/CastCast2dense_8/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_8/ActivityRegularizer/Cast?
#dense_8/ActivityRegularizer/truedivRealDiv4dense_8/ActivityRegularizer/PartitionedCall:output:0$dense_8/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_8/ActivityRegularizer/truediv?
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_1742778dense_9_1742780*
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
GPU2 *0J 8? *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_17423992!
dense_9/StatefulPartitionedCall?
+dense_9/ActivityRegularizer/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8? *9
f4R2
0__inference_dense_9_activity_regularizer_17422952-
+dense_9/ActivityRegularizer/PartitionedCall?
!dense_9/ActivityRegularizer/ShapeShape(dense_9/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_9/ActivityRegularizer/Shape?
/dense_9/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_9/ActivityRegularizer/strided_slice/stack?
1dense_9/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_9/ActivityRegularizer/strided_slice/stack_1?
1dense_9/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_9/ActivityRegularizer/strided_slice/stack_2?
)dense_9/ActivityRegularizer/strided_sliceStridedSlice*dense_9/ActivityRegularizer/Shape:output:08dense_9/ActivityRegularizer/strided_slice/stack:output:0:dense_9/ActivityRegularizer/strided_slice/stack_1:output:0:dense_9/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_9/ActivityRegularizer/strided_slice?
 dense_9/ActivityRegularizer/CastCast2dense_9/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_9/ActivityRegularizer/Cast?
#dense_9/ActivityRegularizer/truedivRealDiv4dense_9/ActivityRegularizer/PartitionedCall:output:0$dense_9/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_9/ActivityRegularizer/truediv?
softmax_4/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8? *O
fJRH
F__inference_softmax_4_layer_call_and_return_conditional_losses_17424182
softmax_4/PartitionedCall?
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_4_1742751*"
_output_shapes
:	*
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp?
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	2$
"conv1d_4/kernel/Regularizer/Square?
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const?
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum?
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82#
!conv1d_4/kernel/Regularizer/mul/x?
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mul?
/conv1d_4/bias/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_4_1742753*
_output_shapes
:*
dtype021
/conv1d_4/bias/Regularizer/Square/ReadVariableOp?
 conv1d_4/bias/Regularizer/SquareSquare7conv1d_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 conv1d_4/bias/Regularizer/Square?
conv1d_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
conv1d_4/bias/Regularizer/Const?
conv1d_4/bias/Regularizer/SumSum$conv1d_4/bias/Regularizer/Square:y:0(conv1d_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/Sum?
conv1d_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
conv1d_4/bias/Regularizer/mul/x?
conv1d_4/bias/Regularizer/mulMul(conv1d_4/bias/Regularizer/mul/x:output:0&conv1d_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/mul?
.dense_8/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_8_1742767*
_output_shapes	
:?*
dtype020
.dense_8/bias/Regularizer/Square/ReadVariableOp?
dense_8/bias/Regularizer/SquareSquare6dense_8/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2!
dense_8/bias/Regularizer/Square?
dense_8/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_8/bias/Regularizer/Const?
dense_8/bias/Regularizer/SumSum#dense_8/bias/Regularizer/Square:y:0'dense_8/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_8/bias/Regularizer/Sum?
dense_8/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82 
dense_8/bias/Regularizer/mul/x?
dense_8/bias/Regularizer/mulMul'dense_8/bias/Regularizer/mul/x:output:0%dense_8/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_8/bias/Regularizer/mul?
.dense_9/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_9_1742780*
_output_shapes
:*
dtype020
.dense_9/bias/Regularizer/Square/ReadVariableOp?
dense_9/bias/Regularizer/SquareSquare6dense_9/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2!
dense_9/bias/Regularizer/Square?
dense_9/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_9/bias/Regularizer/Const?
dense_9/bias/Regularizer/SumSum#dense_9/bias/Regularizer/Square:y:0'dense_9/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_9/bias/Regularizer/Sum?
dense_9/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82 
dense_9/bias/Regularizer/mul/x?
dense_9/bias/Regularizer/mulMul'dense_9/bias/Regularizer/mul/x:output:0%dense_9/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_9/bias/Regularizer/mul?
IdentityIdentity"softmax_4/PartitionedCall:output:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall/^dense_8/bias/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall/^dense_9/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(conv1d_4/ActivityRegularizer/truediv:z:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall/^dense_8/bias/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall/^dense_9/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity'dense_8/ActivityRegularizer/truediv:z:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall/^dense_8/bias/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall/^dense_9/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity'dense_9/ActivityRegularizer/truediv:z:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall/^dense_8/bias/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall/^dense_9/bias/Regularizer/Square/ReadVariableOp*
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
#:?????????	: : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2b
/conv1d_4/bias/Regularizer/Square/ReadVariableOp/conv1d_4/bias/Regularizer/Square/ReadVariableOp2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2`
.dense_8/bias/Regularizer/Square/ReadVariableOp.dense_8/bias/Regularizer/Square/ReadVariableOp2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2`
.dense_9/bias/Regularizer/Square/ReadVariableOp.dense_9/bias/Regularizer/Square/ReadVariableOp:[ W
+
_output_shapes
:?????????	
(
_user_specified_nameconv1d_4_input
?
G
0__inference_dense_9_activity_regularizer_1742295
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
 *??82
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
?u
?
I__inference_sequential_4_layer_call_and_return_conditional_losses_1742448

inputs&
conv1d_4_1742331:	
conv1d_4_1742333:"
dense_8_1742370:	?
dense_8_1742372:	?"
dense_9_1742400:	?
dense_9_1742402:
identity

identity_1

identity_2

identity_3?? conv1d_4/StatefulPartitionedCall?/conv1d_4/bias/Regularizer/Square/ReadVariableOp?1conv1d_4/kernel/Regularizer/Square/ReadVariableOp?dense_8/StatefulPartitionedCall?.dense_8/bias/Regularizer/Square/ReadVariableOp?dense_9/StatefulPartitionedCall?.dense_9/bias/Regularizer/Square/ReadVariableOp?
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_4_1742331conv1d_4_1742333*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_conv1d_4_layer_call_and_return_conditional_losses_17423302"
 conv1d_4/StatefulPartitionedCall?
,conv1d_4/ActivityRegularizer/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
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
1__inference_conv1d_4_activity_regularizer_17422692.
,conv1d_4/ActivityRegularizer/PartitionedCall?
"conv1d_4/ActivityRegularizer/ShapeShape)conv1d_4/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"conv1d_4/ActivityRegularizer/Shape?
0conv1d_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0conv1d_4/ActivityRegularizer/strided_slice/stack?
2conv1d_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2conv1d_4/ActivityRegularizer/strided_slice/stack_1?
2conv1d_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2conv1d_4/ActivityRegularizer/strided_slice/stack_2?
*conv1d_4/ActivityRegularizer/strided_sliceStridedSlice+conv1d_4/ActivityRegularizer/Shape:output:09conv1d_4/ActivityRegularizer/strided_slice/stack:output:0;conv1d_4/ActivityRegularizer/strided_slice/stack_1:output:0;conv1d_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*conv1d_4/ActivityRegularizer/strided_slice?
!conv1d_4/ActivityRegularizer/CastCast3conv1d_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!conv1d_4/ActivityRegularizer/Cast?
$conv1d_4/ActivityRegularizer/truedivRealDiv5conv1d_4/ActivityRegularizer/PartitionedCall:output:0%conv1d_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$conv1d_4/ActivityRegularizer/truediv?
flatten_4/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_17423502
flatten_4/PartitionedCall?
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_1742370dense_8_1742372*
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
GPU2 *0J 8? *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_17423692!
dense_8/StatefulPartitionedCall?
+dense_8/ActivityRegularizer/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8? *9
f4R2
0__inference_dense_8_activity_regularizer_17422822-
+dense_8/ActivityRegularizer/PartitionedCall?
!dense_8/ActivityRegularizer/ShapeShape(dense_8/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_8/ActivityRegularizer/Shape?
/dense_8/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_8/ActivityRegularizer/strided_slice/stack?
1dense_8/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_8/ActivityRegularizer/strided_slice/stack_1?
1dense_8/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_8/ActivityRegularizer/strided_slice/stack_2?
)dense_8/ActivityRegularizer/strided_sliceStridedSlice*dense_8/ActivityRegularizer/Shape:output:08dense_8/ActivityRegularizer/strided_slice/stack:output:0:dense_8/ActivityRegularizer/strided_slice/stack_1:output:0:dense_8/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_8/ActivityRegularizer/strided_slice?
 dense_8/ActivityRegularizer/CastCast2dense_8/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_8/ActivityRegularizer/Cast?
#dense_8/ActivityRegularizer/truedivRealDiv4dense_8/ActivityRegularizer/PartitionedCall:output:0$dense_8/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_8/ActivityRegularizer/truediv?
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_1742400dense_9_1742402*
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
GPU2 *0J 8? *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_17423992!
dense_9/StatefulPartitionedCall?
+dense_9/ActivityRegularizer/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8? *9
f4R2
0__inference_dense_9_activity_regularizer_17422952-
+dense_9/ActivityRegularizer/PartitionedCall?
!dense_9/ActivityRegularizer/ShapeShape(dense_9/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2#
!dense_9/ActivityRegularizer/Shape?
/dense_9/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_9/ActivityRegularizer/strided_slice/stack?
1dense_9/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_9/ActivityRegularizer/strided_slice/stack_1?
1dense_9/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_9/ActivityRegularizer/strided_slice/stack_2?
)dense_9/ActivityRegularizer/strided_sliceStridedSlice*dense_9/ActivityRegularizer/Shape:output:08dense_9/ActivityRegularizer/strided_slice/stack:output:0:dense_9/ActivityRegularizer/strided_slice/stack_1:output:0:dense_9/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_9/ActivityRegularizer/strided_slice?
 dense_9/ActivityRegularizer/CastCast2dense_9/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_9/ActivityRegularizer/Cast?
#dense_9/ActivityRegularizer/truedivRealDiv4dense_9/ActivityRegularizer/PartitionedCall:output:0$dense_9/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_9/ActivityRegularizer/truediv?
softmax_4/PartitionedCallPartitionedCall(dense_9/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8? *O
fJRH
F__inference_softmax_4_layer_call_and_return_conditional_losses_17424182
softmax_4/PartitionedCall?
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_4_1742331*"
_output_shapes
:	*
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp?
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	2$
"conv1d_4/kernel/Regularizer/Square?
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const?
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum?
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82#
!conv1d_4/kernel/Regularizer/mul/x?
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mul?
/conv1d_4/bias/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_4_1742333*
_output_shapes
:*
dtype021
/conv1d_4/bias/Regularizer/Square/ReadVariableOp?
 conv1d_4/bias/Regularizer/SquareSquare7conv1d_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 conv1d_4/bias/Regularizer/Square?
conv1d_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
conv1d_4/bias/Regularizer/Const?
conv1d_4/bias/Regularizer/SumSum$conv1d_4/bias/Regularizer/Square:y:0(conv1d_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/Sum?
conv1d_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
conv1d_4/bias/Regularizer/mul/x?
conv1d_4/bias/Regularizer/mulMul(conv1d_4/bias/Regularizer/mul/x:output:0&conv1d_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/mul?
.dense_8/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_8_1742372*
_output_shapes	
:?*
dtype020
.dense_8/bias/Regularizer/Square/ReadVariableOp?
dense_8/bias/Regularizer/SquareSquare6dense_8/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2!
dense_8/bias/Regularizer/Square?
dense_8/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_8/bias/Regularizer/Const?
dense_8/bias/Regularizer/SumSum#dense_8/bias/Regularizer/Square:y:0'dense_8/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_8/bias/Regularizer/Sum?
dense_8/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82 
dense_8/bias/Regularizer/mul/x?
dense_8/bias/Regularizer/mulMul'dense_8/bias/Regularizer/mul/x:output:0%dense_8/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_8/bias/Regularizer/mul?
.dense_9/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_9_1742402*
_output_shapes
:*
dtype020
.dense_9/bias/Regularizer/Square/ReadVariableOp?
dense_9/bias/Regularizer/SquareSquare6dense_9/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2!
dense_9/bias/Regularizer/Square?
dense_9/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_9/bias/Regularizer/Const?
dense_9/bias/Regularizer/SumSum#dense_9/bias/Regularizer/Square:y:0'dense_9/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_9/bias/Regularizer/Sum?
dense_9/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82 
dense_9/bias/Regularizer/mul/x?
dense_9/bias/Regularizer/mulMul'dense_9/bias/Regularizer/mul/x:output:0%dense_9/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_9/bias/Regularizer/mul?
IdentityIdentity"softmax_4/PartitionedCall:output:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall/^dense_8/bias/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall/^dense_9/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(conv1d_4/ActivityRegularizer/truediv:z:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall/^dense_8/bias/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall/^dense_9/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity'dense_8/ActivityRegularizer/truediv:z:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall/^dense_8/bias/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall/^dense_9/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity'dense_9/ActivityRegularizer/truediv:z:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^dense_8/StatefulPartitionedCall/^dense_8/bias/Regularizer/Square/ReadVariableOp ^dense_9/StatefulPartitionedCall/^dense_9/bias/Regularizer/Square/ReadVariableOp*
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
#:?????????	: : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2b
/conv1d_4/bias/Regularizer/Square/ReadVariableOp/conv1d_4/bias/Regularizer/Square/ReadVariableOp2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2`
.dense_8/bias/Regularizer/Square/ReadVariableOp.dense_8/bias/Regularizer/Square/ReadVariableOp2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2`
.dense_9/bias/Regularizer/Square/ReadVariableOp.dense_9/bias/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
.__inference_sequential_4_layer_call_fn_1742889

inputs
unknown:	
	unknown_0:
	unknown_1:	?
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
GPU2 *0J 8? *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_17424482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
.__inference_sequential_4_layer_call_fn_1742909

inputs
unknown:	
	unknown_0:
	unknown_1:	?
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
GPU2 *0J 8? *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_17426382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
)__inference_dense_9_layer_call_fn_1743183

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
GPU2 *0J 8? *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_17423992
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
?=
?

 __inference__traced_save_1743413
file_prefix.
*savev2_conv1d_4_kernel_read_readvariableop,
(savev2_conv1d_4_bias_read_readvariableop-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_conv1d_4_kernel_m_read_readvariableop3
/savev2_adam_conv1d_4_bias_m_read_readvariableop4
0savev2_adam_dense_8_kernel_m_read_readvariableop2
.savev2_adam_dense_8_bias_m_read_readvariableop4
0savev2_adam_dense_9_kernel_m_read_readvariableop2
.savev2_adam_dense_9_bias_m_read_readvariableop5
1savev2_adam_conv1d_4_kernel_v_read_readvariableop3
/savev2_adam_conv1d_4_bias_v_read_readvariableop4
0savev2_adam_dense_8_kernel_v_read_readvariableop2
.savev2_adam_dense_8_bias_v_read_readvariableop4
0savev2_adam_dense_9_kernel_v_read_readvariableop2
.savev2_adam_dense_9_bias_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv1d_4_kernel_read_readvariableop(savev2_conv1d_4_bias_read_readvariableop)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_conv1d_4_kernel_m_read_readvariableop/savev2_adam_conv1d_4_bias_m_read_readvariableop0savev2_adam_dense_8_kernel_m_read_readvariableop.savev2_adam_dense_8_bias_m_read_readvariableop0savev2_adam_dense_9_kernel_m_read_readvariableop.savev2_adam_dense_9_bias_m_read_readvariableop1savev2_adam_conv1d_4_kernel_v_read_readvariableop/savev2_adam_conv1d_4_bias_v_read_readvariableop0savev2_adam_dense_8_kernel_v_read_readvariableop.savev2_adam_dense_8_bias_v_read_readvariableop0savev2_adam_dense_9_kernel_v_read_readvariableop.savev2_adam_dense_9_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :	::	?:?:	?:: : : : : : : : : :	::	?:?:	?::	::	?:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:	: 

_output_shapes
::%!

_output_shapes
:	?:!
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :($
"
_output_shapes
:	: 

_output_shapes
::%!

_output_shapes
:	?:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::($
"
_output_shapes
:	: 

_output_shapes
::%!

_output_shapes
:	?:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: 
?
?
D__inference_dense_9_layer_call_and_return_conditional_losses_1743309

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?.dense_9/bias/Regularizer/Square/ReadVariableOp?
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
.dense_9/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.dense_9/bias/Regularizer/Square/ReadVariableOp?
dense_9/bias/Regularizer/SquareSquare6dense_9/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2!
dense_9/bias/Regularizer/Square?
dense_9/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_9/bias/Regularizer/Const?
dense_9/bias/Regularizer/SumSum#dense_9/bias/Regularizer/Square:y:0'dense_9/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_9/bias/Regularizer/Sum?
dense_9/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82 
dense_9/bias/Regularizer/mul/x?
dense_9/bias/Regularizer/mulMul'dense_9/bias/Regularizer/mul/x:output:0%dense_9/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_9/bias/Regularizer/mul?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense_9/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_9/bias/Regularizer/Square/ReadVariableOp.dense_9/bias/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_4_layer_call_and_return_conditional_losses_1742350

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_dense_8_layer_call_fn_1743157

inputs
unknown:	?
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
GPU2 *0J 8? *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_17423692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
0__inference_dense_8_activity_regularizer_1742282
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
 *??82
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
?
.__inference_sequential_4_layer_call_fn_1742676
conv1d_4_input
unknown:	
	unknown_0:
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
GPU2 *0J 8? *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_17426382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????	
(
_user_specified_nameconv1d_4_input
?
G
+__inference_softmax_4_layer_call_fn_1743199

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
GPU2 *0J 8? *O
fJRH
F__inference_softmax_4_layer_call_and_return_conditional_losses_17424182
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
?
H__inference_dense_8_layer_call_and_return_all_conditional_losses_1743168

inputs
unknown:	?
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
GPU2 *0J 8? *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_17423692
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
GPU2 *0J 8? *9
f4R2
0__inference_dense_8_activity_regularizer_17422822
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
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_1743215P
:conv1d_4_kernel_regularizer_square_readvariableop_resource:	
identity??1conv1d_4/kernel/Regularizer/Square/ReadVariableOp?
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:conv1d_4_kernel_regularizer_square_readvariableop_resource*"
_output_shapes
:	*
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp?
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	2$
"conv1d_4/kernel/Regularizer/Square?
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const?
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum?
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82#
!conv1d_4/kernel/Regularizer/mul/x?
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mul?
IdentityIdentity#conv1d_4/kernel/Regularizer/mul:z:02^conv1d_4/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp
?
G
+__inference_flatten_4_layer_call_fn_1743136

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
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_17423502
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
I__inference_sequential_4_layer_call_and_return_conditional_losses_1743004

inputsJ
4conv1d_4_conv1d_expanddims_1_readvariableop_resource:	6
(conv1d_4_biasadd_readvariableop_resource:9
&dense_8_matmul_readvariableop_resource:	?6
'dense_8_biasadd_readvariableop_resource:	?9
&dense_9_matmul_readvariableop_resource:	?5
'dense_9_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3??conv1d_4/BiasAdd/ReadVariableOp?/conv1d_4/bias/Regularizer/Square/ReadVariableOp?+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp?1conv1d_4/kernel/Regularizer/Square/ReadVariableOp?dense_8/BiasAdd/ReadVariableOp?dense_8/MatMul/ReadVariableOp?.dense_8/bias/Regularizer/Square/ReadVariableOp?dense_9/BiasAdd/ReadVariableOp?dense_9/MatMul/ReadVariableOp?.dense_9/bias/Regularizer/Square/ReadVariableOp?
conv1d_4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2 
conv1d_4/conv1d/ExpandDims/dim?
conv1d_4/conv1d/ExpandDims
ExpandDimsinputs'conv1d_4/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????	2
conv1d_4/conv1d/ExpandDims?
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	*
dtype02-
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp?
 conv1d_4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_4/conv1d/ExpandDims_1/dim?
conv1d_4/conv1d/ExpandDims_1
ExpandDims3conv1d_4/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_4/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	2
conv1d_4/conv1d/ExpandDims_1?
conv1d_4/conv1dConv2D#conv1d_4/conv1d/ExpandDims:output:0%conv1d_4/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
conv1d_4/conv1d?
conv1d_4/conv1d/SqueezeSqueezeconv1d_4/conv1d:output:0*
T0*+
_output_shapes
:?????????*
squeeze_dims

?????????2
conv1d_4/conv1d/Squeeze?
conv1d_4/BiasAdd/ReadVariableOpReadVariableOp(conv1d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv1d_4/BiasAdd/ReadVariableOp?
conv1d_4/BiasAddBiasAdd conv1d_4/conv1d/Squeeze:output:0'conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2
conv1d_4/BiasAddt
conv1d_4/EluEluconv1d_4/BiasAdd:output:0*
T0*+
_output_shapes
:?????????2
conv1d_4/Elu?
#conv1d_4/ActivityRegularizer/SquareSquareconv1d_4/Elu:activations:0*
T0*+
_output_shapes
:?????????2%
#conv1d_4/ActivityRegularizer/Square?
"conv1d_4/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"conv1d_4/ActivityRegularizer/Const?
 conv1d_4/ActivityRegularizer/SumSum'conv1d_4/ActivityRegularizer/Square:y:0+conv1d_4/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv1d_4/ActivityRegularizer/Sum?
"conv1d_4/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82$
"conv1d_4/ActivityRegularizer/mul/x?
 conv1d_4/ActivityRegularizer/mulMul+conv1d_4/ActivityRegularizer/mul/x:output:0)conv1d_4/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv1d_4/ActivityRegularizer/mul?
"conv1d_4/ActivityRegularizer/ShapeShapeconv1d_4/Elu:activations:0*
T0*
_output_shapes
:2$
"conv1d_4/ActivityRegularizer/Shape?
0conv1d_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0conv1d_4/ActivityRegularizer/strided_slice/stack?
2conv1d_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2conv1d_4/ActivityRegularizer/strided_slice/stack_1?
2conv1d_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2conv1d_4/ActivityRegularizer/strided_slice/stack_2?
*conv1d_4/ActivityRegularizer/strided_sliceStridedSlice+conv1d_4/ActivityRegularizer/Shape:output:09conv1d_4/ActivityRegularizer/strided_slice/stack:output:0;conv1d_4/ActivityRegularizer/strided_slice/stack_1:output:0;conv1d_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*conv1d_4/ActivityRegularizer/strided_slice?
!conv1d_4/ActivityRegularizer/CastCast3conv1d_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!conv1d_4/ActivityRegularizer/Cast?
$conv1d_4/ActivityRegularizer/truedivRealDiv$conv1d_4/ActivityRegularizer/mul:z:0%conv1d_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$conv1d_4/ActivityRegularizer/truedivs
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_4/Const?
flatten_4/ReshapeReshapeconv1d_4/Elu:activations:0flatten_4/Const:output:0*
T0*'
_output_shapes
:?????????2
flatten_4/Reshape?
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_8/MatMul/ReadVariableOp?
dense_8/MatMulMatMulflatten_4/Reshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_8/MatMul?
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_8/BiasAdd/ReadVariableOp?
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_8/BiasAddz
dense_8/SigmoidSigmoiddense_8/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_8/Sigmoid?
"dense_8/ActivityRegularizer/SquareSquaredense_8/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2$
"dense_8/ActivityRegularizer/Square?
!dense_8/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_8/ActivityRegularizer/Const?
dense_8/ActivityRegularizer/SumSum&dense_8/ActivityRegularizer/Square:y:0*dense_8/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_8/ActivityRegularizer/Sum?
!dense_8/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82#
!dense_8/ActivityRegularizer/mul/x?
dense_8/ActivityRegularizer/mulMul*dense_8/ActivityRegularizer/mul/x:output:0(dense_8/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_8/ActivityRegularizer/mul?
!dense_8/ActivityRegularizer/ShapeShapedense_8/Sigmoid:y:0*
T0*
_output_shapes
:2#
!dense_8/ActivityRegularizer/Shape?
/dense_8/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_8/ActivityRegularizer/strided_slice/stack?
1dense_8/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_8/ActivityRegularizer/strided_slice/stack_1?
1dense_8/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_8/ActivityRegularizer/strided_slice/stack_2?
)dense_8/ActivityRegularizer/strided_sliceStridedSlice*dense_8/ActivityRegularizer/Shape:output:08dense_8/ActivityRegularizer/strided_slice/stack:output:0:dense_8/ActivityRegularizer/strided_slice/stack_1:output:0:dense_8/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_8/ActivityRegularizer/strided_slice?
 dense_8/ActivityRegularizer/CastCast2dense_8/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_8/ActivityRegularizer/Cast?
#dense_8/ActivityRegularizer/truedivRealDiv#dense_8/ActivityRegularizer/mul:z:0$dense_8/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_8/ActivityRegularizer/truediv?
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_9/MatMul/ReadVariableOp?
dense_9/MatMulMatMuldense_8/Sigmoid:y:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/MatMul?
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_9/BiasAdd/ReadVariableOp?
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_9/BiasAdd?
"dense_9/ActivityRegularizer/SquareSquaredense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2$
"dense_9/ActivityRegularizer/Square?
!dense_9/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_9/ActivityRegularizer/Const?
dense_9/ActivityRegularizer/SumSum&dense_9/ActivityRegularizer/Square:y:0*dense_9/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_9/ActivityRegularizer/Sum?
!dense_9/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82#
!dense_9/ActivityRegularizer/mul/x?
dense_9/ActivityRegularizer/mulMul*dense_9/ActivityRegularizer/mul/x:output:0(dense_9/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_9/ActivityRegularizer/mul?
!dense_9/ActivityRegularizer/ShapeShapedense_9/BiasAdd:output:0*
T0*
_output_shapes
:2#
!dense_9/ActivityRegularizer/Shape?
/dense_9/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/dense_9/ActivityRegularizer/strided_slice/stack?
1dense_9/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_9/ActivityRegularizer/strided_slice/stack_1?
1dense_9/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1dense_9/ActivityRegularizer/strided_slice/stack_2?
)dense_9/ActivityRegularizer/strided_sliceStridedSlice*dense_9/ActivityRegularizer/Shape:output:08dense_9/ActivityRegularizer/strided_slice/stack:output:0:dense_9/ActivityRegularizer/strided_slice/stack_1:output:0:dense_9/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)dense_9/ActivityRegularizer/strided_slice?
 dense_9/ActivityRegularizer/CastCast2dense_9/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2"
 dense_9/ActivityRegularizer/Cast?
#dense_9/ActivityRegularizer/truedivRealDiv#dense_9/ActivityRegularizer/mul:z:0$dense_9/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2%
#dense_9/ActivityRegularizer/truediv}
softmax_4/SoftmaxSoftmaxdense_9/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
softmax_4/Softmax?
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	*
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp?
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	2$
"conv1d_4/kernel/Regularizer/Square?
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const?
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum?
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82#
!conv1d_4/kernel/Regularizer/mul/x?
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mul?
/conv1d_4/bias/Regularizer/Square/ReadVariableOpReadVariableOp(conv1d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/conv1d_4/bias/Regularizer/Square/ReadVariableOp?
 conv1d_4/bias/Regularizer/SquareSquare7conv1d_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 conv1d_4/bias/Regularizer/Square?
conv1d_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
conv1d_4/bias/Regularizer/Const?
conv1d_4/bias/Regularizer/SumSum$conv1d_4/bias/Regularizer/Square:y:0(conv1d_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/Sum?
conv1d_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
conv1d_4/bias/Regularizer/mul/x?
conv1d_4/bias/Regularizer/mulMul(conv1d_4/bias/Regularizer/mul/x:output:0&conv1d_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/mul?
.dense_8/bias/Regularizer/Square/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.dense_8/bias/Regularizer/Square/ReadVariableOp?
dense_8/bias/Regularizer/SquareSquare6dense_8/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2!
dense_8/bias/Regularizer/Square?
dense_8/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_8/bias/Regularizer/Const?
dense_8/bias/Regularizer/SumSum#dense_8/bias/Regularizer/Square:y:0'dense_8/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_8/bias/Regularizer/Sum?
dense_8/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82 
dense_8/bias/Regularizer/mul/x?
dense_8/bias/Regularizer/mulMul'dense_8/bias/Regularizer/mul/x:output:0%dense_8/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_8/bias/Regularizer/mul?
.dense_9/bias/Regularizer/Square/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.dense_9/bias/Regularizer/Square/ReadVariableOp?
dense_9/bias/Regularizer/SquareSquare6dense_9/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2!
dense_9/bias/Regularizer/Square?
dense_9/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2 
dense_9/bias/Regularizer/Const?
dense_9/bias/Regularizer/SumSum#dense_9/bias/Regularizer/Square:y:0'dense_9/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_9/bias/Regularizer/Sum?
dense_9/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82 
dense_9/bias/Regularizer/mul/x?
dense_9/bias/Regularizer/mulMul'dense_9/bias/Regularizer/mul/x:output:0%dense_9/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_9/bias/Regularizer/mul?
IdentityIdentitysoftmax_4/Softmax:softmax:0 ^conv1d_4/BiasAdd/ReadVariableOp0^conv1d_4/bias/Regularizer/Square/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp/^dense_8/bias/Regularizer/Square/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp/^dense_9/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(conv1d_4/ActivityRegularizer/truediv:z:0 ^conv1d_4/BiasAdd/ReadVariableOp0^conv1d_4/bias/Regularizer/Square/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp/^dense_8/bias/Regularizer/Square/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp/^dense_9/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity'dense_8/ActivityRegularizer/truediv:z:0 ^conv1d_4/BiasAdd/ReadVariableOp0^conv1d_4/bias/Regularizer/Square/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp/^dense_8/bias/Regularizer/Square/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp/^dense_9/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity'dense_9/ActivityRegularizer/truediv:z:0 ^conv1d_4/BiasAdd/ReadVariableOp0^conv1d_4/bias/Regularizer/Square/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp/^dense_8/bias/Regularizer/Square/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp/^dense_9/bias/Regularizer/Square/ReadVariableOp*
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
#:?????????	: : : : : : 2B
conv1d_4/BiasAdd/ReadVariableOpconv1d_4/BiasAdd/ReadVariableOp2b
/conv1d_4/bias/Regularizer/Square/ReadVariableOp/conv1d_4/bias/Regularizer/Square/ReadVariableOp2Z
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2`
.dense_8/bias/Regularizer/Square/ReadVariableOp.dense_8/bias/Regularizer/Square/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2`
.dense_9/bias/Regularizer/Square/ReadVariableOp.dense_9/bias/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_1742869
conv1d_4_input
unknown:	
	unknown_0:
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
"__inference__wrapped_model_17422562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????	
(
_user_specified_nameconv1d_4_input
?	
?
.__inference_sequential_4_layer_call_fn_1742466
conv1d_4_input
unknown:	
	unknown_0:
	unknown_1:	?
	unknown_2:	?
	unknown_3:	?
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
GPU2 *0J 8? *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_17424482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????	
(
_user_specified_nameconv1d_4_input
?%
?
E__inference_conv1d_4_layer_call_and_return_conditional_losses_1743276

inputsA
+conv1d_expanddims_1_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?"conv1d/ExpandDims_1/ReadVariableOp?/conv1d_4/bias/Regularizer/Square/ReadVariableOp?1conv1d_4/kernel/Regularizer/Square/ReadVariableOpy
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
:?????????	2
conv1d/ExpandDims?
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	*
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
:	2
conv1d/ExpandDims_1?
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
conv1d?
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:?????????*
squeeze_dims

?????????2
conv1d/Squeeze?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????2	
BiasAddY
EluEluBiasAdd:output:0*
T0*+
_output_shapes
:?????????2
Elu?
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	*
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp?
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	2$
"conv1d_4/kernel/Regularizer/Square?
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const?
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum?
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82#
!conv1d_4/kernel/Regularizer/mul/x?
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mul?
/conv1d_4/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/conv1d_4/bias/Regularizer/Square/ReadVariableOp?
 conv1d_4/bias/Regularizer/SquareSquare7conv1d_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 conv1d_4/bias/Regularizer/Square?
conv1d_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
conv1d_4/bias/Regularizer/Const?
conv1d_4/bias/Regularizer/SumSum$conv1d_4/bias/Regularizer/Square:y:0(conv1d_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/Sum?
conv1d_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
conv1d_4/bias/Regularizer/mul/x?
conv1d_4/bias/Regularizer/mulMul(conv1d_4/bias/Regularizer/mul/x:output:0&conv1d_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/mul?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp*
T0*+
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2b
/conv1d_4/bias/Regularizer/Square/ReadVariableOp/conv1d_4/bias/Regularizer/Square/ReadVariableOp2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
H
1__inference_conv1d_4_activity_regularizer_1742269
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
 *??82
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
?
b
F__inference_flatten_4_layer_call_and_return_conditional_losses_1743142

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
conv1d_4_input;
 serving_default_conv1d_4_input:0?????????	=
	softmax_40
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?7
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
	optimizer
regularization_losses
	variables
	trainable_variables

	keras_api

signatures
`_default_save_signature
a__call__
*b&call_and_return_all_conditional_losses"?5
_tf_keras_sequential?5{"name": "sequential_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 11, 9]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_4_input"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 11, 9]}, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [11]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 180, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 7, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Softmax", "config": {"name": "softmax_4", "trainable": true, "dtype": "float32", "axis": -1}}]}, "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 9}}, "shared_object_id": 20}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 11, 9]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 11, 9]}, "float32", "conv1d_4_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 11, 9]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_4_input"}, "shared_object_id": 0}, {"class_name": "Conv1D", "config": {"name": "conv1d_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 11, 9]}, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [11]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 3}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 4}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 5}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, {"class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 7}, {"class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 180, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 10}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 11}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, {"class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 7, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 15}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 16}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17}, {"class_name": "Softmax", "config": {"name": "softmax_4", "trainable": true, "dtype": "float32", "axis": -1}, "shared_object_id": 18}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": false}, "shared_object_id": 21}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 22}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-06, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
c__call__
*d&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "conv1d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 11, 9]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "conv1d_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 11, 9]}, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [11]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 3}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 4}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 5}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 9}}, "shared_object_id": 20}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 5}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 11, 9]}}
?
regularization_losses
	variables
trainable_variables
	keras_api
e__call__
*f&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 23}}
?


kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
g__call__
*h&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "dense_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_8", "trainable": true, "dtype": "float32", "units": 180, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 10}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 11}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 24}}, "shared_object_id": 24}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 11}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 24]}}
?


kernel
bias
regularization_losses
	variables
 trainable_variables
!	keras_api
i__call__
*j&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "dense_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_9", "trainable": true, "dtype": "float32", "units": 7, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 15}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 16}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 180}}, "shared_object_id": 25}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 16}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 180]}}
?
"regularization_losses
#	variables
$trainable_variables
%	keras_api
k__call__
*l&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "softmax_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Softmax", "config": {"name": "softmax_4", "trainable": true, "dtype": "float32", "axis": -1}, "shared_object_id": 18}
?
&iter

'beta_1

(beta_2
	)decay
*learning_ratemTmUmVmWmXmYvZv[v\v]v^v_"
	optimizer
<
m0
n1
o2
p3"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
?
+non_trainable_variables
,layer_metrics
-metrics

.layers
/layer_regularization_losses
regularization_losses
	variables
	trainable_variables
a__call__
`_default_save_signature
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
,
qserving_default"
signature_map
%:#	2conv1d_4/kernel
:2conv1d_4/bias
.
m0
n1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
0non_trainable_variables
1layer_metrics
2metrics

3layers
4layer_regularization_losses
regularization_losses
	variables
trainable_variables
c__call__
ractivity_regularizer_fn
*d&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
5non_trainable_variables
6layer_metrics
7metrics

8layers
9layer_regularization_losses
regularization_losses
	variables
trainable_variables
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
!:	?2dense_8/kernel
:?2dense_8/bias
'
o0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
:non_trainable_variables
;layer_metrics
<metrics

=layers
>layer_regularization_losses
regularization_losses
	variables
trainable_variables
g__call__
tactivity_regularizer_fn
*h&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
!:	?2dense_9/kernel
:2dense_9/bias
'
p0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
?non_trainable_variables
@layer_metrics
Ametrics

Blayers
Clayer_regularization_losses
regularization_losses
	variables
 trainable_variables
i__call__
vactivity_regularizer_fn
*j&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Dnon_trainable_variables
Elayer_metrics
Fmetrics

Glayers
Hlayer_regularization_losses
"regularization_losses
#	variables
$trainable_variables
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
I0
J1"
trackable_list_wrapper
C
0
1
2
3
4"
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
.
m0
n1"
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
 "
trackable_list_wrapper
'
o0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
p0"
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
?
	Ktotal
	Lcount
M	variables
N	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 26}
?
	Ototal
	Pcount
Q
_fn_kwargs
R	variables
S	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 22}
:  (2total
:  (2count
.
K0
L1"
trackable_list_wrapper
-
M	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
O0
P1"
trackable_list_wrapper
-
R	variables"
_generic_user_object
*:(	2Adam/conv1d_4/kernel/m
 :2Adam/conv1d_4/bias/m
&:$	?2Adam/dense_8/kernel/m
 :?2Adam/dense_8/bias/m
&:$	?2Adam/dense_9/kernel/m
:2Adam/dense_9/bias/m
*:(	2Adam/conv1d_4/kernel/v
 :2Adam/conv1d_4/bias/v
&:$	?2Adam/dense_8/kernel/v
 :?2Adam/dense_8/bias/v
&:$	?2Adam/dense_9/kernel/v
:2Adam/dense_9/bias/v
?2?
"__inference__wrapped_model_1742256?
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
annotations? *1?.
,?)
conv1d_4_input?????????	
?2?
.__inference_sequential_4_layer_call_fn_1742466
.__inference_sequential_4_layer_call_fn_1742889
.__inference_sequential_4_layer_call_fn_1742909
.__inference_sequential_4_layer_call_fn_1742676?
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
I__inference_sequential_4_layer_call_and_return_conditional_losses_1743004
I__inference_sequential_4_layer_call_and_return_conditional_losses_1743099
I__inference_sequential_4_layer_call_and_return_conditional_losses_1742748
I__inference_sequential_4_layer_call_and_return_conditional_losses_1742820?
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
*__inference_conv1d_4_layer_call_fn_1743120?
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
I__inference_conv1d_4_layer_call_and_return_all_conditional_losses_1743131?
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
+__inference_flatten_4_layer_call_fn_1743136?
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
F__inference_flatten_4_layer_call_and_return_conditional_losses_1743142?
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
)__inference_dense_8_layer_call_fn_1743157?
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
H__inference_dense_8_layer_call_and_return_all_conditional_losses_1743168?
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
)__inference_dense_9_layer_call_fn_1743183?
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
H__inference_dense_9_layer_call_and_return_all_conditional_losses_1743194?
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
+__inference_softmax_4_layer_call_fn_1743199?
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
F__inference_softmax_4_layer_call_and_return_conditional_losses_1743204?
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
__inference_loss_fn_0_1743215?
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
__inference_loss_fn_1_1743226?
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
__inference_loss_fn_2_1743237?
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
__inference_loss_fn_3_1743248?
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
?B?
%__inference_signature_wrapper_1742869conv1d_4_input"?
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
1__inference_conv1d_4_activity_regularizer_1742269?
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
E__inference_conv1d_4_layer_call_and_return_conditional_losses_1743276?
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
0__inference_dense_8_activity_regularizer_1742282?
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
D__inference_dense_8_layer_call_and_return_conditional_losses_1743293?
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
0__inference_dense_9_activity_regularizer_1742295?
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
D__inference_dense_9_layer_call_and_return_conditional_losses_1743309?
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
"__inference__wrapped_model_1742256|;?8
1?.
,?)
conv1d_4_input?????????	
? "5?2
0
	softmax_4#? 
	softmax_4?????????[
1__inference_conv1d_4_activity_regularizer_1742269&?
?
?	
x
? "? ?
I__inference_conv1d_4_layer_call_and_return_all_conditional_losses_1743131r3?0
)?&
$?!
inputs?????????	
? "7?4
?
0?????????
?
?	
1/0 ?
E__inference_conv1d_4_layer_call_and_return_conditional_losses_1743276d3?0
)?&
$?!
inputs?????????	
? ")?&
?
0?????????
? ?
*__inference_conv1d_4_layer_call_fn_1743120W3?0
)?&
$?!
inputs?????????	
? "??????????Z
0__inference_dense_8_activity_regularizer_1742282&?
?
?	
x
? "? ?
H__inference_dense_8_layer_call_and_return_all_conditional_losses_1743168k/?,
%?"
 ?
inputs?????????
? "4?1
?
0??????????
?
?	
1/0 ?
D__inference_dense_8_layer_call_and_return_conditional_losses_1743293]/?,
%?"
 ?
inputs?????????
? "&?#
?
0??????????
? }
)__inference_dense_8_layer_call_fn_1743157P/?,
%?"
 ?
inputs?????????
? "???????????Z
0__inference_dense_9_activity_regularizer_1742295&?
?
?	
x
? "? ?
H__inference_dense_9_layer_call_and_return_all_conditional_losses_1743194k0?-
&?#
!?
inputs??????????
? "3?0
?
0?????????
?
?	
1/0 ?
D__inference_dense_9_layer_call_and_return_conditional_losses_1743309]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? }
)__inference_dense_9_layer_call_fn_1743183P0?-
&?#
!?
inputs??????????
? "???????????
F__inference_flatten_4_layer_call_and_return_conditional_losses_1743142\3?0
)?&
$?!
inputs?????????
? "%?"
?
0?????????
? ~
+__inference_flatten_4_layer_call_fn_1743136O3?0
)?&
$?!
inputs?????????
? "??????????<
__inference_loss_fn_0_1743215?

? 
? "? <
__inference_loss_fn_1_1743226?

? 
? "? <
__inference_loss_fn_2_1743237?

? 
? "? <
__inference_loss_fn_3_1743248?

? 
? "? ?
I__inference_sequential_4_layer_call_and_return_conditional_losses_1742748?C?@
9?6
,?)
conv1d_4_input?????????	
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
I__inference_sequential_4_layer_call_and_return_conditional_losses_1742820?C?@
9?6
,?)
conv1d_4_input?????????	
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
I__inference_sequential_4_layer_call_and_return_conditional_losses_1743004?;?8
1?.
$?!
inputs?????????	
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
I__inference_sequential_4_layer_call_and_return_conditional_losses_1743099?;?8
1?.
$?!
inputs?????????	
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
.__inference_sequential_4_layer_call_fn_1742466gC?@
9?6
,?)
conv1d_4_input?????????	
p 

 
? "???????????
.__inference_sequential_4_layer_call_fn_1742676gC?@
9?6
,?)
conv1d_4_input?????????	
p

 
? "???????????
.__inference_sequential_4_layer_call_fn_1742889_;?8
1?.
$?!
inputs?????????	
p 

 
? "???????????
.__inference_sequential_4_layer_call_fn_1742909_;?8
1?.
$?!
inputs?????????	
p

 
? "???????????
%__inference_signature_wrapper_1742869?M?J
? 
C?@
>
conv1d_4_input,?)
conv1d_4_input?????????	"5?2
0
	softmax_4#? 
	softmax_4??????????
F__inference_softmax_4_layer_call_and_return_conditional_losses_1743204\3?0
)?&
 ?
inputs?????????

 
? "%?"
?
0?????????
? ~
+__inference_softmax_4_layer_call_fn_1743199O3?0
)?&
 ?
inputs?????????

 
? "??????????