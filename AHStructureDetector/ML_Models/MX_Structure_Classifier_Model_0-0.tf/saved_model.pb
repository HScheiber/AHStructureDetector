??
??
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
E
Relu
features"T
activations"T"
Ttype:
2	
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

{
dense_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		?* 
shared_namedense_28/kernel
t
#dense_28/kernel/Read/ReadVariableOpReadVariableOpdense_28/kernel*
_output_shapes
:		?*
dtype0
s
dense_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_28/bias
l
!dense_28/bias/Read/ReadVariableOpReadVariableOpdense_28/bias*
_output_shapes	
:?*
dtype0
{
dense_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d* 
shared_namedense_29/kernel
t
#dense_29/kernel/Read/ReadVariableOpReadVariableOpdense_29/kernel*
_output_shapes
:	?d*
dtype0
r
dense_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_29/bias
k
!dense_29/bias/Read/ReadVariableOpReadVariableOpdense_29/bias*
_output_shapes
:d*
dtype0
z
dense_30/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d	* 
shared_namedense_30/kernel
s
#dense_30/kernel/Read/ReadVariableOpReadVariableOpdense_30/kernel*
_output_shapes

:d	*
dtype0
r
dense_30/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense_30/bias
k
!dense_30/bias/Read/ReadVariableOpReadVariableOpdense_30/bias*
_output_shapes
:	*
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
Adam/dense_28/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:		?*'
shared_nameAdam/dense_28/kernel/m
?
*Adam/dense_28/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_28/kernel/m*
_output_shapes
:		?*
dtype0
?
Adam/dense_28/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_28/bias/m
z
(Adam/dense_28/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_28/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_29/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*'
shared_nameAdam/dense_29/kernel/m
?
*Adam/dense_29/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_29/kernel/m*
_output_shapes
:	?d*
dtype0
?
Adam/dense_29/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_29/bias/m
y
(Adam/dense_29/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_29/bias/m*
_output_shapes
:d*
dtype0
?
Adam/dense_30/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d	*'
shared_nameAdam/dense_30/kernel/m
?
*Adam/dense_30/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_30/kernel/m*
_output_shapes

:d	*
dtype0
?
Adam/dense_30/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*%
shared_nameAdam/dense_30/bias/m
y
(Adam/dense_30/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_30/bias/m*
_output_shapes
:	*
dtype0
?
Adam/dense_28/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:		?*'
shared_nameAdam/dense_28/kernel/v
?
*Adam/dense_28/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_28/kernel/v*
_output_shapes
:		?*
dtype0
?
Adam/dense_28/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*%
shared_nameAdam/dense_28/bias/v
z
(Adam/dense_28/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_28/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_29/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*'
shared_nameAdam/dense_29/kernel/v
?
*Adam/dense_29/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_29/kernel/v*
_output_shapes
:	?d*
dtype0
?
Adam/dense_29/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_29/bias/v
y
(Adam/dense_29/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_29/bias/v*
_output_shapes
:d*
dtype0
?
Adam/dense_30/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d	*'
shared_nameAdam/dense_30/kernel/v
?
*Adam/dense_30/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_30/kernel/v*
_output_shapes

:d	*
dtype0
?
Adam/dense_30/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*%
shared_nameAdam/dense_30/bias/v
y
(Adam/dense_30/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_30/bias/v*
_output_shapes
:	*
dtype0

NoOpNoOp
?)
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?)
value?)B?) B?)
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
R
"	variables
#trainable_variables
$regularization_losses
%	keras_api
?
&iter

'beta_1

(beta_2
	)decay
*learning_ratemTmUmVmWmXmYvZv[v\v]v^v_
*
0
1
2
3
4
5
*
0
1
2
3
4
5
 
?
+layer_regularization_losses
,non_trainable_variables

-layers
	variables
.metrics
trainable_variables
/layer_metrics
	regularization_losses
 
 
 
 
?
0layer_regularization_losses
1non_trainable_variables

2layers
	variables
3metrics
trainable_variables
4layer_metrics
regularization_losses
[Y
VARIABLE_VALUEdense_28/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_28/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
5layer_regularization_losses
6non_trainable_variables

7layers
	variables
8metrics
trainable_variables
9layer_metrics
regularization_losses
[Y
VARIABLE_VALUEdense_29/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_29/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
:layer_regularization_losses
;non_trainable_variables

<layers
	variables
=metrics
trainable_variables
>layer_metrics
regularization_losses
[Y
VARIABLE_VALUEdense_30/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_30/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
?layer_regularization_losses
@non_trainable_variables

Alayers
	variables
Bmetrics
trainable_variables
Clayer_metrics
 regularization_losses
 
 
 
?
Dlayer_regularization_losses
Enon_trainable_variables

Flayers
"	variables
Gmetrics
#trainable_variables
Hlayer_metrics
$regularization_losses
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
#
0
1
2
3
4

I0
J1
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
VARIABLE_VALUEAdam/dense_28/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_28/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_29/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_29/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_30/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_30/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_28/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_28/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_29/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_29/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_30/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_30/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_flatten_10_inputPlaceholder*'
_output_shapes
:?????????	*
dtype0*
shape:?????????	
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_flatten_10_inputdense_28/kerneldense_28/biasdense_29/kerneldense_29/biasdense_30/kerneldense_30/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? *-
f(R&
$__inference_signature_wrapper_914584
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_28/kernel/Read/ReadVariableOp!dense_28/bias/Read/ReadVariableOp#dense_29/kernel/Read/ReadVariableOp!dense_29/bias/Read/ReadVariableOp#dense_30/kernel/Read/ReadVariableOp!dense_30/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_28/kernel/m/Read/ReadVariableOp(Adam/dense_28/bias/m/Read/ReadVariableOp*Adam/dense_29/kernel/m/Read/ReadVariableOp(Adam/dense_29/bias/m/Read/ReadVariableOp*Adam/dense_30/kernel/m/Read/ReadVariableOp(Adam/dense_30/bias/m/Read/ReadVariableOp*Adam/dense_28/kernel/v/Read/ReadVariableOp(Adam/dense_28/bias/v/Read/ReadVariableOp*Adam/dense_29/kernel/v/Read/ReadVariableOp(Adam/dense_29/bias/v/Read/ReadVariableOp*Adam/dense_30/kernel/v/Read/ReadVariableOp(Adam/dense_30/bias/v/Read/ReadVariableOpConst*(
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
GPU2 *0J 8? *(
f#R!
__inference__traced_save_915078
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_28/kerneldense_28/biasdense_29/kerneldense_29/biasdense_30/kerneldense_30/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_28/kernel/mAdam/dense_28/bias/mAdam/dense_29/kernel/mAdam/dense_29/bias/mAdam/dense_30/kernel/mAdam/dense_30/bias/mAdam/dense_28/kernel/vAdam/dense_28/bias/vAdam/dense_29/kernel/vAdam/dense_29/bias/vAdam/dense_30/kernel/vAdam/dense_30/bias/v*'
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
GPU2 *0J 8? *+
f&R$
"__inference__traced_restore_915169??	
?=
?
__inference__traced_save_915078
file_prefix.
*savev2_dense_28_kernel_read_readvariableop,
(savev2_dense_28_bias_read_readvariableop.
*savev2_dense_29_kernel_read_readvariableop,
(savev2_dense_29_bias_read_readvariableop.
*savev2_dense_30_kernel_read_readvariableop,
(savev2_dense_30_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_28_kernel_m_read_readvariableop3
/savev2_adam_dense_28_bias_m_read_readvariableop5
1savev2_adam_dense_29_kernel_m_read_readvariableop3
/savev2_adam_dense_29_bias_m_read_readvariableop5
1savev2_adam_dense_30_kernel_m_read_readvariableop3
/savev2_adam_dense_30_bias_m_read_readvariableop5
1savev2_adam_dense_28_kernel_v_read_readvariableop3
/savev2_adam_dense_28_bias_v_read_readvariableop5
1savev2_adam_dense_29_kernel_v_read_readvariableop3
/savev2_adam_dense_29_bias_v_read_readvariableop5
1savev2_adam_dense_30_kernel_v_read_readvariableop3
/savev2_adam_dense_30_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_28_kernel_read_readvariableop(savev2_dense_28_bias_read_readvariableop*savev2_dense_29_kernel_read_readvariableop(savev2_dense_29_bias_read_readvariableop*savev2_dense_30_kernel_read_readvariableop(savev2_dense_30_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_28_kernel_m_read_readvariableop/savev2_adam_dense_28_bias_m_read_readvariableop1savev2_adam_dense_29_kernel_m_read_readvariableop/savev2_adam_dense_29_bias_m_read_readvariableop1savev2_adam_dense_30_kernel_m_read_readvariableop/savev2_adam_dense_30_bias_m_read_readvariableop1savev2_adam_dense_28_kernel_v_read_readvariableop/savev2_adam_dense_28_bias_v_read_readvariableop1savev2_adam_dense_29_kernel_v_read_readvariableop/savev2_adam_dense_29_bias_v_read_readvariableop1savev2_adam_dense_30_kernel_v_read_readvariableop/savev2_adam_dense_30_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?: :		?:?:	?d:d:d	:	: : : : : : : : : :		?:?:	?d:d:d	:	:		?:?:	?d:d:d	:	: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:		?:!

_output_shapes	
:?:%!

_output_shapes
:	?d: 

_output_shapes
:d:$ 

_output_shapes

:d	: 

_output_shapes
:	:
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
: :%!

_output_shapes
:		?:!

_output_shapes	
:?:%!

_output_shapes
:	?d: 

_output_shapes
:d:$ 

_output_shapes

:d	: 

_output_shapes
:	:%!

_output_shapes
:		?:!

_output_shapes	
:?:%!

_output_shapes
:	?d: 

_output_shapes
:d:$ 

_output_shapes

:d	: 

_output_shapes
:	:

_output_shapes
: 
?
?
)__inference_dense_30_layer_call_fn_914881

inputs
unknown:d	
	unknown_0:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_9141442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
߀
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_914668

inputs:
'dense_28_matmul_readvariableop_resource:		?7
(dense_28_biasadd_readvariableop_resource:	?:
'dense_29_matmul_readvariableop_resource:	?d6
(dense_29_biasadd_readvariableop_resource:d9
'dense_30_matmul_readvariableop_resource:d	6
(dense_30_biasadd_readvariableop_resource:	
identity

identity_1

identity_2

identity_3??dense_28/BiasAdd/ReadVariableOp?dense_28/MatMul/ReadVariableOp?/dense_28/bias/Regularizer/Square/ReadVariableOp?dense_29/BiasAdd/ReadVariableOp?dense_29/MatMul/ReadVariableOp?/dense_29/bias/Regularizer/Square/ReadVariableOp?dense_30/BiasAdd/ReadVariableOp?dense_30/MatMul/ReadVariableOp?/dense_30/bias/Regularizer/Square/ReadVariableOpu
flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"????	   2
flatten_10/Const?
flatten_10/ReshapeReshapeinputsflatten_10/Const:output:0*
T0*'
_output_shapes
:?????????	2
flatten_10/Reshape?
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes
:		?*
dtype02 
dense_28/MatMul/ReadVariableOp?
dense_28/MatMulMatMulflatten_10/Reshape:output:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_28/MatMul?
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_28/BiasAdd/ReadVariableOp?
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_28/BiasAddt
dense_28/ReluReludense_28/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_28/Relu?
#dense_28/ActivityRegularizer/SquareSquaredense_28/Relu:activations:0*
T0*(
_output_shapes
:??????????2%
#dense_28/ActivityRegularizer/Square?
"dense_28/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_28/ActivityRegularizer/Const?
 dense_28/ActivityRegularizer/SumSum'dense_28/ActivityRegularizer/Square:y:0+dense_28/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_28/ActivityRegularizer/Sum?
"dense_28/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_28/ActivityRegularizer/mul/x?
 dense_28/ActivityRegularizer/mulMul+dense_28/ActivityRegularizer/mul/x:output:0)dense_28/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_28/ActivityRegularizer/mul?
"dense_28/ActivityRegularizer/ShapeShapedense_28/Relu:activations:0*
T0*
_output_shapes
:2$
"dense_28/ActivityRegularizer/Shape?
0dense_28/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_28/ActivityRegularizer/strided_slice/stack?
2dense_28/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_28/ActivityRegularizer/strided_slice/stack_1?
2dense_28/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_28/ActivityRegularizer/strided_slice/stack_2?
*dense_28/ActivityRegularizer/strided_sliceStridedSlice+dense_28/ActivityRegularizer/Shape:output:09dense_28/ActivityRegularizer/strided_slice/stack:output:0;dense_28/ActivityRegularizer/strided_slice/stack_1:output:0;dense_28/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_28/ActivityRegularizer/strided_slice?
!dense_28/ActivityRegularizer/CastCast3dense_28/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_28/ActivityRegularizer/Cast?
$dense_28/ActivityRegularizer/truedivRealDiv$dense_28/ActivityRegularizer/mul:z:0%dense_28/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_28/ActivityRegularizer/truediv?
dense_29/MatMul/ReadVariableOpReadVariableOp'dense_29_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02 
dense_29/MatMul/ReadVariableOp?
dense_29/MatMulMatMuldense_28/Relu:activations:0&dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_29/MatMul?
dense_29/BiasAdd/ReadVariableOpReadVariableOp(dense_29_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_29/BiasAdd/ReadVariableOp?
dense_29/BiasAddBiasAdddense_29/MatMul:product:0'dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_29/BiasAdds
dense_29/ReluReludense_29/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_29/Relu?
#dense_29/ActivityRegularizer/SquareSquaredense_29/Relu:activations:0*
T0*'
_output_shapes
:?????????d2%
#dense_29/ActivityRegularizer/Square?
"dense_29/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_29/ActivityRegularizer/Const?
 dense_29/ActivityRegularizer/SumSum'dense_29/ActivityRegularizer/Square:y:0+dense_29/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_29/ActivityRegularizer/Sum?
"dense_29/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_29/ActivityRegularizer/mul/x?
 dense_29/ActivityRegularizer/mulMul+dense_29/ActivityRegularizer/mul/x:output:0)dense_29/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_29/ActivityRegularizer/mul?
"dense_29/ActivityRegularizer/ShapeShapedense_29/Relu:activations:0*
T0*
_output_shapes
:2$
"dense_29/ActivityRegularizer/Shape?
0dense_29/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_29/ActivityRegularizer/strided_slice/stack?
2dense_29/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_29/ActivityRegularizer/strided_slice/stack_1?
2dense_29/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_29/ActivityRegularizer/strided_slice/stack_2?
*dense_29/ActivityRegularizer/strided_sliceStridedSlice+dense_29/ActivityRegularizer/Shape:output:09dense_29/ActivityRegularizer/strided_slice/stack:output:0;dense_29/ActivityRegularizer/strided_slice/stack_1:output:0;dense_29/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_29/ActivityRegularizer/strided_slice?
!dense_29/ActivityRegularizer/CastCast3dense_29/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_29/ActivityRegularizer/Cast?
$dense_29/ActivityRegularizer/truedivRealDiv$dense_29/ActivityRegularizer/mul:z:0%dense_29/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_29/ActivityRegularizer/truediv?
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource*
_output_shapes

:d	*
dtype02 
dense_30/MatMul/ReadVariableOp?
dense_30/MatMulMatMuldense_29/Relu:activations:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
dense_30/MatMul?
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype02!
dense_30/BiasAdd/ReadVariableOp?
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
dense_30/BiasAdd?
#dense_30/ActivityRegularizer/SquareSquaredense_30/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	2%
#dense_30/ActivityRegularizer/Square?
"dense_30/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_30/ActivityRegularizer/Const?
 dense_30/ActivityRegularizer/SumSum'dense_30/ActivityRegularizer/Square:y:0+dense_30/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_30/ActivityRegularizer/Sum?
"dense_30/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_30/ActivityRegularizer/mul/x?
 dense_30/ActivityRegularizer/mulMul+dense_30/ActivityRegularizer/mul/x:output:0)dense_30/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_30/ActivityRegularizer/mul?
"dense_30/ActivityRegularizer/ShapeShapedense_30/BiasAdd:output:0*
T0*
_output_shapes
:2$
"dense_30/ActivityRegularizer/Shape?
0dense_30/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_30/ActivityRegularizer/strided_slice/stack?
2dense_30/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_30/ActivityRegularizer/strided_slice/stack_1?
2dense_30/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_30/ActivityRegularizer/strided_slice/stack_2?
*dense_30/ActivityRegularizer/strided_sliceStridedSlice+dense_30/ActivityRegularizer/Shape:output:09dense_30/ActivityRegularizer/strided_slice/stack:output:0;dense_30/ActivityRegularizer/strided_slice/stack_1:output:0;dense_30/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_30/ActivityRegularizer/strided_slice?
!dense_30/ActivityRegularizer/CastCast3dense_30/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_30/ActivityRegularizer/Cast?
$dense_30/ActivityRegularizer/truedivRealDiv$dense_30/ActivityRegularizer/mul:z:0%dense_30/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_30/ActivityRegularizer/truediv?
softmax_10/SoftmaxSoftmaxdense_30/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	2
softmax_10/Softmax?
/dense_28/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/dense_28/bias/Regularizer/Square/ReadVariableOp?
 dense_28/bias/Regularizer/SquareSquare7dense_28/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2"
 dense_28/bias/Regularizer/Square?
dense_28/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_28/bias/Regularizer/Const?
dense_28/bias/Regularizer/SumSum$dense_28/bias/Regularizer/Square:y:0(dense_28/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/Sum?
dense_28/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_28/bias/Regularizer/mul/x?
dense_28/bias/Regularizer/mulMul(dense_28/bias/Regularizer/mul/x:output:0&dense_28/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/mul?
/dense_29/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_29_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_29/bias/Regularizer/Square/ReadVariableOp?
 dense_29/bias/Regularizer/SquareSquare7dense_29/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_29/bias/Regularizer/Square?
dense_29/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_29/bias/Regularizer/Const?
dense_29/bias/Regularizer/SumSum$dense_29/bias/Regularizer/Square:y:0(dense_29/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_29/bias/Regularizer/Sum?
dense_29/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_29/bias/Regularizer/mul/x?
dense_29/bias/Regularizer/mulMul(dense_29/bias/Regularizer/mul/x:output:0&dense_29/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_29/bias/Regularizer/mul?
/dense_30/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype021
/dense_30/bias/Regularizer/Square/ReadVariableOp?
 dense_30/bias/Regularizer/SquareSquare7dense_30/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2"
 dense_30/bias/Regularizer/Square?
dense_30/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_30/bias/Regularizer/Const?
dense_30/bias/Regularizer/SumSum$dense_30/bias/Regularizer/Square:y:0(dense_30/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_30/bias/Regularizer/Sum?
dense_30/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_30/bias/Regularizer/mul/x?
dense_30/bias/Regularizer/mulMul(dense_30/bias/Regularizer/mul/x:output:0&dense_30/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_30/bias/Regularizer/mul?
IdentityIdentitysoftmax_10/Softmax:softmax:0 ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp0^dense_28/bias/Regularizer/Square/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp0^dense_29/bias/Regularizer/Square/ReadVariableOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????	2

Identity?

Identity_1Identity(dense_28/ActivityRegularizer/truediv:z:0 ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp0^dense_28/bias/Regularizer/Square/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp0^dense_29/bias/Regularizer/Square/ReadVariableOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_29/ActivityRegularizer/truediv:z:0 ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp0^dense_28/bias/Regularizer/Square/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp0^dense_29/bias/Regularizer/Square/ReadVariableOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_30/ActivityRegularizer/truediv:z:0 ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp0^dense_28/bias/Regularizer/Square/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp0^dense_29/bias/Regularizer/Square/ReadVariableOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????	: : : : : : 2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp2b
/dense_28/bias/Regularizer/Square/ReadVariableOp/dense_28/bias/Regularizer/Square/ReadVariableOp2B
dense_29/BiasAdd/ReadVariableOpdense_29/BiasAdd/ReadVariableOp2@
dense_29/MatMul/ReadVariableOpdense_29/MatMul/ReadVariableOp2b
/dense_29/bias/Regularizer/Square/ReadVariableOp/dense_29/bias/Regularizer/Square/ReadVariableOp2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp2b
/dense_30/bias/Regularizer/Square/ReadVariableOp/dense_30/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
G
0__inference_dense_30_activity_regularizer_914051
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
H__inference_dense_28_layer_call_and_return_all_conditional_losses_914820

inputs
unknown:		?
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
D__inference_dense_28_layer_call_and_return_conditional_losses_9140832
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
0__inference_dense_28_activity_regularizer_9140252
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
:?????????	: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
D__inference_dense_29_layer_call_and_return_conditional_losses_914958

inputs1
matmul_readvariableop_resource:	?d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_29/bias/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
Relu?
/dense_29/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_29/bias/Regularizer/Square/ReadVariableOp?
 dense_29/bias/Regularizer/SquareSquare7dense_29/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_29/bias/Regularizer/Square?
dense_29/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_29/bias/Regularizer/Const?
dense_29/bias/Regularizer/SumSum$dense_29/bias/Regularizer/Square:y:0(dense_29/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_29/bias/Regularizer/Sum?
dense_29/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_29/bias/Regularizer/mul/x?
dense_29/bias/Regularizer/mulMul(dense_29/bias/Regularizer/mul/x:output:0&dense_29/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_29/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_29/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_29/bias/Regularizer/Square/ReadVariableOp/dense_29/bias/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_dense_29_layer_call_and_return_conditional_losses_914114

inputs1
matmul_readvariableop_resource:	?d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_29/bias/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
Relu?
/dense_29/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_29/bias/Regularizer/Square/ReadVariableOp?
 dense_29/bias/Regularizer/SquareSquare7dense_29/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_29/bias/Regularizer/Square?
dense_29/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_29/bias/Regularizer/Const?
dense_29/bias/Regularizer/SumSum$dense_29/bias/Regularizer/Square:y:0(dense_29/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_29/bias/Regularizer/Sum?
dense_29/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_29/bias/Regularizer/mul/x?
dense_29/bias/Regularizer/mulMul(dense_29/bias/Regularizer/mul/x:output:0&dense_29/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_29/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_29/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_29/bias/Regularizer/Square/ReadVariableOp/dense_29/bias/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_dense_30_layer_call_and_return_conditional_losses_914144

inputs0
matmul_readvariableop_resource:d	-
biasadd_readvariableop_resource:	
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_30/bias/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2	
BiasAdd?
/dense_30/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype021
/dense_30/bias/Regularizer/Square/ReadVariableOp?
 dense_30/bias/Regularizer/SquareSquare7dense_30/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2"
 dense_30/bias/Regularizer/Square?
dense_30/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_30/bias/Regularizer/Const?
dense_30/bias/Regularizer/SumSum$dense_30/bias/Regularizer/Square:y:0(dense_30/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_30/bias/Regularizer/Sum?
dense_30/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_30/bias/Regularizer/mul/x?
dense_30/bias/Regularizer/mulMul(dense_30/bias/Regularizer/mul/x:output:0&dense_30/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_30/bias/Regularizer/mul?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_30/bias/Regularizer/Square/ReadVariableOp/dense_30/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?j
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_914371

inputs"
dense_28_914309:		?
dense_28_914311:	?"
dense_29_914322:	?d
dense_29_914324:d!
dense_30_914335:d	
dense_30_914337:	
identity

identity_1

identity_2

identity_3?? dense_28/StatefulPartitionedCall?/dense_28/bias/Regularizer/Square/ReadVariableOp? dense_29/StatefulPartitionedCall?/dense_29/bias/Regularizer/Square/ReadVariableOp? dense_30/StatefulPartitionedCall?/dense_30/bias/Regularizer/Square/ReadVariableOp?
flatten_10/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_9140642
flatten_10/PartitionedCall?
 dense_28/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_28_914309dense_28_914311*
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
D__inference_dense_28_layer_call_and_return_conditional_losses_9140832"
 dense_28/StatefulPartitionedCall?
,dense_28/ActivityRegularizer/PartitionedCallPartitionedCall)dense_28/StatefulPartitionedCall:output:0*
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
0__inference_dense_28_activity_regularizer_9140252.
,dense_28/ActivityRegularizer/PartitionedCall?
"dense_28/ActivityRegularizer/ShapeShape)dense_28/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_28/ActivityRegularizer/Shape?
0dense_28/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_28/ActivityRegularizer/strided_slice/stack?
2dense_28/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_28/ActivityRegularizer/strided_slice/stack_1?
2dense_28/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_28/ActivityRegularizer/strided_slice/stack_2?
*dense_28/ActivityRegularizer/strided_sliceStridedSlice+dense_28/ActivityRegularizer/Shape:output:09dense_28/ActivityRegularizer/strided_slice/stack:output:0;dense_28/ActivityRegularizer/strided_slice/stack_1:output:0;dense_28/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_28/ActivityRegularizer/strided_slice?
!dense_28/ActivityRegularizer/CastCast3dense_28/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_28/ActivityRegularizer/Cast?
$dense_28/ActivityRegularizer/truedivRealDiv5dense_28/ActivityRegularizer/PartitionedCall:output:0%dense_28/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_28/ActivityRegularizer/truediv?
 dense_29/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0dense_29_914322dense_29_914324*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dense_29_layer_call_and_return_conditional_losses_9141142"
 dense_29/StatefulPartitionedCall?
,dense_29/ActivityRegularizer/PartitionedCallPartitionedCall)dense_29/StatefulPartitionedCall:output:0*
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
0__inference_dense_29_activity_regularizer_9140382.
,dense_29/ActivityRegularizer/PartitionedCall?
"dense_29/ActivityRegularizer/ShapeShape)dense_29/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_29/ActivityRegularizer/Shape?
0dense_29/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_29/ActivityRegularizer/strided_slice/stack?
2dense_29/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_29/ActivityRegularizer/strided_slice/stack_1?
2dense_29/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_29/ActivityRegularizer/strided_slice/stack_2?
*dense_29/ActivityRegularizer/strided_sliceStridedSlice+dense_29/ActivityRegularizer/Shape:output:09dense_29/ActivityRegularizer/strided_slice/stack:output:0;dense_29/ActivityRegularizer/strided_slice/stack_1:output:0;dense_29/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_29/ActivityRegularizer/strided_slice?
!dense_29/ActivityRegularizer/CastCast3dense_29/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_29/ActivityRegularizer/Cast?
$dense_29/ActivityRegularizer/truedivRealDiv5dense_29/ActivityRegularizer/PartitionedCall:output:0%dense_29/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_29/ActivityRegularizer/truediv?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall)dense_29/StatefulPartitionedCall:output:0dense_30_914335dense_30_914337*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_9141442"
 dense_30/StatefulPartitionedCall?
,dense_30/ActivityRegularizer/PartitionedCallPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
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
0__inference_dense_30_activity_regularizer_9140512.
,dense_30/ActivityRegularizer/PartitionedCall?
"dense_30/ActivityRegularizer/ShapeShape)dense_30/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_30/ActivityRegularizer/Shape?
0dense_30/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_30/ActivityRegularizer/strided_slice/stack?
2dense_30/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_30/ActivityRegularizer/strided_slice/stack_1?
2dense_30/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_30/ActivityRegularizer/strided_slice/stack_2?
*dense_30/ActivityRegularizer/strided_sliceStridedSlice+dense_30/ActivityRegularizer/Shape:output:09dense_30/ActivityRegularizer/strided_slice/stack:output:0;dense_30/ActivityRegularizer/strided_slice/stack_1:output:0;dense_30/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_30/ActivityRegularizer/strided_slice?
!dense_30/ActivityRegularizer/CastCast3dense_30/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_30/ActivityRegularizer/Cast?
$dense_30/ActivityRegularizer/truedivRealDiv5dense_30/ActivityRegularizer/PartitionedCall:output:0%dense_30/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_30/ActivityRegularizer/truediv?
softmax_10/PartitionedCallPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_softmax_10_layer_call_and_return_conditional_losses_9141632
softmax_10/PartitionedCall?
/dense_28/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_28_914311*
_output_shapes	
:?*
dtype021
/dense_28/bias/Regularizer/Square/ReadVariableOp?
 dense_28/bias/Regularizer/SquareSquare7dense_28/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2"
 dense_28/bias/Regularizer/Square?
dense_28/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_28/bias/Regularizer/Const?
dense_28/bias/Regularizer/SumSum$dense_28/bias/Regularizer/Square:y:0(dense_28/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/Sum?
dense_28/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_28/bias/Regularizer/mul/x?
dense_28/bias/Regularizer/mulMul(dense_28/bias/Regularizer/mul/x:output:0&dense_28/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/mul?
/dense_29/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_29_914324*
_output_shapes
:d*
dtype021
/dense_29/bias/Regularizer/Square/ReadVariableOp?
 dense_29/bias/Regularizer/SquareSquare7dense_29/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_29/bias/Regularizer/Square?
dense_29/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_29/bias/Regularizer/Const?
dense_29/bias/Regularizer/SumSum$dense_29/bias/Regularizer/Square:y:0(dense_29/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_29/bias/Regularizer/Sum?
dense_29/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_29/bias/Regularizer/mul/x?
dense_29/bias/Regularizer/mulMul(dense_29/bias/Regularizer/mul/x:output:0&dense_29/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_29/bias/Regularizer/mul?
/dense_30/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_30_914337*
_output_shapes
:	*
dtype021
/dense_30/bias/Regularizer/Square/ReadVariableOp?
 dense_30/bias/Regularizer/SquareSquare7dense_30/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2"
 dense_30/bias/Regularizer/Square?
dense_30/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_30/bias/Regularizer/Const?
dense_30/bias/Regularizer/SumSum$dense_30/bias/Regularizer/Square:y:0(dense_30/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_30/bias/Regularizer/Sum?
dense_30/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_30/bias/Regularizer/mul/x?
dense_30/bias/Regularizer/mulMul(dense_30/bias/Regularizer/mul/x:output:0&dense_30/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_30/bias/Regularizer/mul?
IdentityIdentity#softmax_10/PartitionedCall:output:0!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall0^dense_29/bias/Regularizer/Square/ReadVariableOp!^dense_30/StatefulPartitionedCall0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????	2

Identity?

Identity_1Identity(dense_28/ActivityRegularizer/truediv:z:0!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall0^dense_29/bias/Regularizer/Square/ReadVariableOp!^dense_30/StatefulPartitionedCall0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_29/ActivityRegularizer/truediv:z:0!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall0^dense_29/bias/Regularizer/Square/ReadVariableOp!^dense_30/StatefulPartitionedCall0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_30/ActivityRegularizer/truediv:z:0!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall0^dense_29/bias/Regularizer/Square/ReadVariableOp!^dense_30/StatefulPartitionedCall0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????	: : : : : : 2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2b
/dense_28/bias/Regularizer/Square/ReadVariableOp/dense_28/bias/Regularizer/Square/ReadVariableOp2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2b
/dense_29/bias/Regularizer/Square/ReadVariableOp/dense_29/bias/Regularizer/Square/ReadVariableOp2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2b
/dense_30/bias/Regularizer/Square/ReadVariableOp/dense_30/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
b
F__inference_softmax_10_layer_call_and_return_conditional_losses_914886

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????	2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????	:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
D__inference_dense_30_layer_call_and_return_conditional_losses_914974

inputs0
matmul_readvariableop_resource:d	-
biasadd_readvariableop_resource:	
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_30/bias/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2	
BiasAdd?
/dense_30/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype021
/dense_30/bias/Regularizer/Square/ReadVariableOp?
 dense_30/bias/Regularizer/SquareSquare7dense_30/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2"
 dense_30/bias/Regularizer/Square?
dense_30/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_30/bias/Regularizer/Const?
dense_30/bias/Regularizer/SumSum$dense_30/bias/Regularizer/Square:y:0(dense_30/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_30/bias/Regularizer/Sum?
dense_30/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_30/bias/Regularizer/mul/x?
dense_30/bias/Regularizer/mulMul(dense_30/bias/Regularizer/mul/x:output:0&dense_30/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_30/bias/Regularizer/mul?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_30/bias/Regularizer/Square/ReadVariableOp/dense_30/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
b
F__inference_flatten_10_layer_call_and_return_conditional_losses_914798

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????	   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????	2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????	:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
G
0__inference_dense_29_activity_regularizer_914038
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
?
?
.__inference_sequential_10_layer_call_fn_914792

inputs
unknown:		?
	unknown_0:	?
	unknown_1:	?d
	unknown_2:d
	unknown_3:d	
	unknown_4:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????	: : : *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_9143712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????	: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
__inference_loss_fn_2_914924F
8dense_30_bias_regularizer_square_readvariableop_resource:	
identity??/dense_30/bias/Regularizer/Square/ReadVariableOp?
/dense_30/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_30_bias_regularizer_square_readvariableop_resource*
_output_shapes
:	*
dtype021
/dense_30/bias/Regularizer/Square/ReadVariableOp?
 dense_30/bias/Regularizer/SquareSquare7dense_30/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2"
 dense_30/bias/Regularizer/Square?
dense_30/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_30/bias/Regularizer/Const?
dense_30/bias/Regularizer/SumSum$dense_30/bias/Regularizer/Square:y:0(dense_30/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_30/bias/Regularizer/Sum?
dense_30/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_30/bias/Regularizer/mul/x?
dense_30/bias/Regularizer/mulMul(dense_30/bias/Regularizer/mul/x:output:0&dense_30/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_30/bias/Regularizer/mul?
IdentityIdentity!dense_30/bias/Regularizer/mul:z:00^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_30/bias/Regularizer/Square/ReadVariableOp/dense_30/bias/Regularizer/Square/ReadVariableOp
?
?
)__inference_dense_28_layer_call_fn_914829

inputs
unknown:		?
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
D__inference_dense_28_layer_call_and_return_conditional_losses_9140832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
)__inference_dense_29_layer_call_fn_914855

inputs
unknown:	?d
	unknown_0:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dense_29_layer_call_and_return_conditional_losses_9141142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????d2

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
?
?
H__inference_dense_29_layer_call_and_return_all_conditional_losses_914846

inputs
unknown:	?d
	unknown_0:d
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
:?????????d*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dense_29_layer_call_and_return_conditional_losses_9141142
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
0__inference_dense_29_activity_regularizer_9140382
PartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????d2

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
?k
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_914541
flatten_10_input"
dense_28_914479:		?
dense_28_914481:	?"
dense_29_914492:	?d
dense_29_914494:d!
dense_30_914505:d	
dense_30_914507:	
identity

identity_1

identity_2

identity_3?? dense_28/StatefulPartitionedCall?/dense_28/bias/Regularizer/Square/ReadVariableOp? dense_29/StatefulPartitionedCall?/dense_29/bias/Regularizer/Square/ReadVariableOp? dense_30/StatefulPartitionedCall?/dense_30/bias/Regularizer/Square/ReadVariableOp?
flatten_10/PartitionedCallPartitionedCallflatten_10_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_9140642
flatten_10/PartitionedCall?
 dense_28/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_28_914479dense_28_914481*
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
D__inference_dense_28_layer_call_and_return_conditional_losses_9140832"
 dense_28/StatefulPartitionedCall?
,dense_28/ActivityRegularizer/PartitionedCallPartitionedCall)dense_28/StatefulPartitionedCall:output:0*
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
0__inference_dense_28_activity_regularizer_9140252.
,dense_28/ActivityRegularizer/PartitionedCall?
"dense_28/ActivityRegularizer/ShapeShape)dense_28/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_28/ActivityRegularizer/Shape?
0dense_28/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_28/ActivityRegularizer/strided_slice/stack?
2dense_28/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_28/ActivityRegularizer/strided_slice/stack_1?
2dense_28/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_28/ActivityRegularizer/strided_slice/stack_2?
*dense_28/ActivityRegularizer/strided_sliceStridedSlice+dense_28/ActivityRegularizer/Shape:output:09dense_28/ActivityRegularizer/strided_slice/stack:output:0;dense_28/ActivityRegularizer/strided_slice/stack_1:output:0;dense_28/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_28/ActivityRegularizer/strided_slice?
!dense_28/ActivityRegularizer/CastCast3dense_28/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_28/ActivityRegularizer/Cast?
$dense_28/ActivityRegularizer/truedivRealDiv5dense_28/ActivityRegularizer/PartitionedCall:output:0%dense_28/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_28/ActivityRegularizer/truediv?
 dense_29/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0dense_29_914492dense_29_914494*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dense_29_layer_call_and_return_conditional_losses_9141142"
 dense_29/StatefulPartitionedCall?
,dense_29/ActivityRegularizer/PartitionedCallPartitionedCall)dense_29/StatefulPartitionedCall:output:0*
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
0__inference_dense_29_activity_regularizer_9140382.
,dense_29/ActivityRegularizer/PartitionedCall?
"dense_29/ActivityRegularizer/ShapeShape)dense_29/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_29/ActivityRegularizer/Shape?
0dense_29/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_29/ActivityRegularizer/strided_slice/stack?
2dense_29/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_29/ActivityRegularizer/strided_slice/stack_1?
2dense_29/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_29/ActivityRegularizer/strided_slice/stack_2?
*dense_29/ActivityRegularizer/strided_sliceStridedSlice+dense_29/ActivityRegularizer/Shape:output:09dense_29/ActivityRegularizer/strided_slice/stack:output:0;dense_29/ActivityRegularizer/strided_slice/stack_1:output:0;dense_29/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_29/ActivityRegularizer/strided_slice?
!dense_29/ActivityRegularizer/CastCast3dense_29/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_29/ActivityRegularizer/Cast?
$dense_29/ActivityRegularizer/truedivRealDiv5dense_29/ActivityRegularizer/PartitionedCall:output:0%dense_29/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_29/ActivityRegularizer/truediv?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall)dense_29/StatefulPartitionedCall:output:0dense_30_914505dense_30_914507*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_9141442"
 dense_30/StatefulPartitionedCall?
,dense_30/ActivityRegularizer/PartitionedCallPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
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
0__inference_dense_30_activity_regularizer_9140512.
,dense_30/ActivityRegularizer/PartitionedCall?
"dense_30/ActivityRegularizer/ShapeShape)dense_30/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_30/ActivityRegularizer/Shape?
0dense_30/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_30/ActivityRegularizer/strided_slice/stack?
2dense_30/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_30/ActivityRegularizer/strided_slice/stack_1?
2dense_30/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_30/ActivityRegularizer/strided_slice/stack_2?
*dense_30/ActivityRegularizer/strided_sliceStridedSlice+dense_30/ActivityRegularizer/Shape:output:09dense_30/ActivityRegularizer/strided_slice/stack:output:0;dense_30/ActivityRegularizer/strided_slice/stack_1:output:0;dense_30/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_30/ActivityRegularizer/strided_slice?
!dense_30/ActivityRegularizer/CastCast3dense_30/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_30/ActivityRegularizer/Cast?
$dense_30/ActivityRegularizer/truedivRealDiv5dense_30/ActivityRegularizer/PartitionedCall:output:0%dense_30/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_30/ActivityRegularizer/truediv?
softmax_10/PartitionedCallPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_softmax_10_layer_call_and_return_conditional_losses_9141632
softmax_10/PartitionedCall?
/dense_28/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_28_914481*
_output_shapes	
:?*
dtype021
/dense_28/bias/Regularizer/Square/ReadVariableOp?
 dense_28/bias/Regularizer/SquareSquare7dense_28/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2"
 dense_28/bias/Regularizer/Square?
dense_28/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_28/bias/Regularizer/Const?
dense_28/bias/Regularizer/SumSum$dense_28/bias/Regularizer/Square:y:0(dense_28/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/Sum?
dense_28/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_28/bias/Regularizer/mul/x?
dense_28/bias/Regularizer/mulMul(dense_28/bias/Regularizer/mul/x:output:0&dense_28/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/mul?
/dense_29/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_29_914494*
_output_shapes
:d*
dtype021
/dense_29/bias/Regularizer/Square/ReadVariableOp?
 dense_29/bias/Regularizer/SquareSquare7dense_29/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_29/bias/Regularizer/Square?
dense_29/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_29/bias/Regularizer/Const?
dense_29/bias/Regularizer/SumSum$dense_29/bias/Regularizer/Square:y:0(dense_29/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_29/bias/Regularizer/Sum?
dense_29/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_29/bias/Regularizer/mul/x?
dense_29/bias/Regularizer/mulMul(dense_29/bias/Regularizer/mul/x:output:0&dense_29/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_29/bias/Regularizer/mul?
/dense_30/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_30_914507*
_output_shapes
:	*
dtype021
/dense_30/bias/Regularizer/Square/ReadVariableOp?
 dense_30/bias/Regularizer/SquareSquare7dense_30/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2"
 dense_30/bias/Regularizer/Square?
dense_30/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_30/bias/Regularizer/Const?
dense_30/bias/Regularizer/SumSum$dense_30/bias/Regularizer/Square:y:0(dense_30/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_30/bias/Regularizer/Sum?
dense_30/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_30/bias/Regularizer/mul/x?
dense_30/bias/Regularizer/mulMul(dense_30/bias/Regularizer/mul/x:output:0&dense_30/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_30/bias/Regularizer/mul?
IdentityIdentity#softmax_10/PartitionedCall:output:0!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall0^dense_29/bias/Regularizer/Square/ReadVariableOp!^dense_30/StatefulPartitionedCall0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????	2

Identity?

Identity_1Identity(dense_28/ActivityRegularizer/truediv:z:0!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall0^dense_29/bias/Regularizer/Square/ReadVariableOp!^dense_30/StatefulPartitionedCall0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_29/ActivityRegularizer/truediv:z:0!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall0^dense_29/bias/Regularizer/Square/ReadVariableOp!^dense_30/StatefulPartitionedCall0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_30/ActivityRegularizer/truediv:z:0!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall0^dense_29/bias/Regularizer/Square/ReadVariableOp!^dense_30/StatefulPartitionedCall0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????	: : : : : : 2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2b
/dense_28/bias/Regularizer/Square/ReadVariableOp/dense_28/bias/Regularizer/Square/ReadVariableOp2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2b
/dense_29/bias/Regularizer/Square/ReadVariableOp/dense_29/bias/Regularizer/Square/ReadVariableOp2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2b
/dense_30/bias/Regularizer/Square/ReadVariableOp/dense_30/bias/Regularizer/Square/ReadVariableOp:Y U
'
_output_shapes
:?????????	
*
_user_specified_nameflatten_10_input
?
G
0__inference_dense_28_activity_regularizer_914025
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
߀
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_914752

inputs:
'dense_28_matmul_readvariableop_resource:		?7
(dense_28_biasadd_readvariableop_resource:	?:
'dense_29_matmul_readvariableop_resource:	?d6
(dense_29_biasadd_readvariableop_resource:d9
'dense_30_matmul_readvariableop_resource:d	6
(dense_30_biasadd_readvariableop_resource:	
identity

identity_1

identity_2

identity_3??dense_28/BiasAdd/ReadVariableOp?dense_28/MatMul/ReadVariableOp?/dense_28/bias/Regularizer/Square/ReadVariableOp?dense_29/BiasAdd/ReadVariableOp?dense_29/MatMul/ReadVariableOp?/dense_29/bias/Regularizer/Square/ReadVariableOp?dense_30/BiasAdd/ReadVariableOp?dense_30/MatMul/ReadVariableOp?/dense_30/bias/Regularizer/Square/ReadVariableOpu
flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"????	   2
flatten_10/Const?
flatten_10/ReshapeReshapeinputsflatten_10/Const:output:0*
T0*'
_output_shapes
:?????????	2
flatten_10/Reshape?
dense_28/MatMul/ReadVariableOpReadVariableOp'dense_28_matmul_readvariableop_resource*
_output_shapes
:		?*
dtype02 
dense_28/MatMul/ReadVariableOp?
dense_28/MatMulMatMulflatten_10/Reshape:output:0&dense_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_28/MatMul?
dense_28/BiasAdd/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_28/BiasAdd/ReadVariableOp?
dense_28/BiasAddBiasAdddense_28/MatMul:product:0'dense_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_28/BiasAddt
dense_28/ReluReludense_28/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_28/Relu?
#dense_28/ActivityRegularizer/SquareSquaredense_28/Relu:activations:0*
T0*(
_output_shapes
:??????????2%
#dense_28/ActivityRegularizer/Square?
"dense_28/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_28/ActivityRegularizer/Const?
 dense_28/ActivityRegularizer/SumSum'dense_28/ActivityRegularizer/Square:y:0+dense_28/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_28/ActivityRegularizer/Sum?
"dense_28/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_28/ActivityRegularizer/mul/x?
 dense_28/ActivityRegularizer/mulMul+dense_28/ActivityRegularizer/mul/x:output:0)dense_28/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_28/ActivityRegularizer/mul?
"dense_28/ActivityRegularizer/ShapeShapedense_28/Relu:activations:0*
T0*
_output_shapes
:2$
"dense_28/ActivityRegularizer/Shape?
0dense_28/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_28/ActivityRegularizer/strided_slice/stack?
2dense_28/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_28/ActivityRegularizer/strided_slice/stack_1?
2dense_28/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_28/ActivityRegularizer/strided_slice/stack_2?
*dense_28/ActivityRegularizer/strided_sliceStridedSlice+dense_28/ActivityRegularizer/Shape:output:09dense_28/ActivityRegularizer/strided_slice/stack:output:0;dense_28/ActivityRegularizer/strided_slice/stack_1:output:0;dense_28/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_28/ActivityRegularizer/strided_slice?
!dense_28/ActivityRegularizer/CastCast3dense_28/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_28/ActivityRegularizer/Cast?
$dense_28/ActivityRegularizer/truedivRealDiv$dense_28/ActivityRegularizer/mul:z:0%dense_28/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_28/ActivityRegularizer/truediv?
dense_29/MatMul/ReadVariableOpReadVariableOp'dense_29_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02 
dense_29/MatMul/ReadVariableOp?
dense_29/MatMulMatMuldense_28/Relu:activations:0&dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_29/MatMul?
dense_29/BiasAdd/ReadVariableOpReadVariableOp(dense_29_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_29/BiasAdd/ReadVariableOp?
dense_29/BiasAddBiasAdddense_29/MatMul:product:0'dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_29/BiasAdds
dense_29/ReluReludense_29/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_29/Relu?
#dense_29/ActivityRegularizer/SquareSquaredense_29/Relu:activations:0*
T0*'
_output_shapes
:?????????d2%
#dense_29/ActivityRegularizer/Square?
"dense_29/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_29/ActivityRegularizer/Const?
 dense_29/ActivityRegularizer/SumSum'dense_29/ActivityRegularizer/Square:y:0+dense_29/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_29/ActivityRegularizer/Sum?
"dense_29/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_29/ActivityRegularizer/mul/x?
 dense_29/ActivityRegularizer/mulMul+dense_29/ActivityRegularizer/mul/x:output:0)dense_29/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_29/ActivityRegularizer/mul?
"dense_29/ActivityRegularizer/ShapeShapedense_29/Relu:activations:0*
T0*
_output_shapes
:2$
"dense_29/ActivityRegularizer/Shape?
0dense_29/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_29/ActivityRegularizer/strided_slice/stack?
2dense_29/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_29/ActivityRegularizer/strided_slice/stack_1?
2dense_29/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_29/ActivityRegularizer/strided_slice/stack_2?
*dense_29/ActivityRegularizer/strided_sliceStridedSlice+dense_29/ActivityRegularizer/Shape:output:09dense_29/ActivityRegularizer/strided_slice/stack:output:0;dense_29/ActivityRegularizer/strided_slice/stack_1:output:0;dense_29/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_29/ActivityRegularizer/strided_slice?
!dense_29/ActivityRegularizer/CastCast3dense_29/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_29/ActivityRegularizer/Cast?
$dense_29/ActivityRegularizer/truedivRealDiv$dense_29/ActivityRegularizer/mul:z:0%dense_29/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_29/ActivityRegularizer/truediv?
dense_30/MatMul/ReadVariableOpReadVariableOp'dense_30_matmul_readvariableop_resource*
_output_shapes

:d	*
dtype02 
dense_30/MatMul/ReadVariableOp?
dense_30/MatMulMatMuldense_29/Relu:activations:0&dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
dense_30/MatMul?
dense_30/BiasAdd/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype02!
dense_30/BiasAdd/ReadVariableOp?
dense_30/BiasAddBiasAdddense_30/MatMul:product:0'dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
dense_30/BiasAdd?
#dense_30/ActivityRegularizer/SquareSquaredense_30/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	2%
#dense_30/ActivityRegularizer/Square?
"dense_30/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_30/ActivityRegularizer/Const?
 dense_30/ActivityRegularizer/SumSum'dense_30/ActivityRegularizer/Square:y:0+dense_30/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_30/ActivityRegularizer/Sum?
"dense_30/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72$
"dense_30/ActivityRegularizer/mul/x?
 dense_30/ActivityRegularizer/mulMul+dense_30/ActivityRegularizer/mul/x:output:0)dense_30/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_30/ActivityRegularizer/mul?
"dense_30/ActivityRegularizer/ShapeShapedense_30/BiasAdd:output:0*
T0*
_output_shapes
:2$
"dense_30/ActivityRegularizer/Shape?
0dense_30/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_30/ActivityRegularizer/strided_slice/stack?
2dense_30/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_30/ActivityRegularizer/strided_slice/stack_1?
2dense_30/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_30/ActivityRegularizer/strided_slice/stack_2?
*dense_30/ActivityRegularizer/strided_sliceStridedSlice+dense_30/ActivityRegularizer/Shape:output:09dense_30/ActivityRegularizer/strided_slice/stack:output:0;dense_30/ActivityRegularizer/strided_slice/stack_1:output:0;dense_30/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_30/ActivityRegularizer/strided_slice?
!dense_30/ActivityRegularizer/CastCast3dense_30/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_30/ActivityRegularizer/Cast?
$dense_30/ActivityRegularizer/truedivRealDiv$dense_30/ActivityRegularizer/mul:z:0%dense_30/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_30/ActivityRegularizer/truediv?
softmax_10/SoftmaxSoftmaxdense_30/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	2
softmax_10/Softmax?
/dense_28/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_28_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/dense_28/bias/Regularizer/Square/ReadVariableOp?
 dense_28/bias/Regularizer/SquareSquare7dense_28/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2"
 dense_28/bias/Regularizer/Square?
dense_28/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_28/bias/Regularizer/Const?
dense_28/bias/Regularizer/SumSum$dense_28/bias/Regularizer/Square:y:0(dense_28/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/Sum?
dense_28/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_28/bias/Regularizer/mul/x?
dense_28/bias/Regularizer/mulMul(dense_28/bias/Regularizer/mul/x:output:0&dense_28/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/mul?
/dense_29/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_29_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_29/bias/Regularizer/Square/ReadVariableOp?
 dense_29/bias/Regularizer/SquareSquare7dense_29/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_29/bias/Regularizer/Square?
dense_29/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_29/bias/Regularizer/Const?
dense_29/bias/Regularizer/SumSum$dense_29/bias/Regularizer/Square:y:0(dense_29/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_29/bias/Regularizer/Sum?
dense_29/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_29/bias/Regularizer/mul/x?
dense_29/bias/Regularizer/mulMul(dense_29/bias/Regularizer/mul/x:output:0&dense_29/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_29/bias/Regularizer/mul?
/dense_30/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_30_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype021
/dense_30/bias/Regularizer/Square/ReadVariableOp?
 dense_30/bias/Regularizer/SquareSquare7dense_30/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2"
 dense_30/bias/Regularizer/Square?
dense_30/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_30/bias/Regularizer/Const?
dense_30/bias/Regularizer/SumSum$dense_30/bias/Regularizer/Square:y:0(dense_30/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_30/bias/Regularizer/Sum?
dense_30/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_30/bias/Regularizer/mul/x?
dense_30/bias/Regularizer/mulMul(dense_30/bias/Regularizer/mul/x:output:0&dense_30/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_30/bias/Regularizer/mul?
IdentityIdentitysoftmax_10/Softmax:softmax:0 ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp0^dense_28/bias/Regularizer/Square/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp0^dense_29/bias/Regularizer/Square/ReadVariableOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????	2

Identity?

Identity_1Identity(dense_28/ActivityRegularizer/truediv:z:0 ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp0^dense_28/bias/Regularizer/Square/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp0^dense_29/bias/Regularizer/Square/ReadVariableOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_29/ActivityRegularizer/truediv:z:0 ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp0^dense_28/bias/Regularizer/Square/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp0^dense_29/bias/Regularizer/Square/ReadVariableOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_30/ActivityRegularizer/truediv:z:0 ^dense_28/BiasAdd/ReadVariableOp^dense_28/MatMul/ReadVariableOp0^dense_28/bias/Regularizer/Square/ReadVariableOp ^dense_29/BiasAdd/ReadVariableOp^dense_29/MatMul/ReadVariableOp0^dense_29/bias/Regularizer/Square/ReadVariableOp ^dense_30/BiasAdd/ReadVariableOp^dense_30/MatMul/ReadVariableOp0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????	: : : : : : 2B
dense_28/BiasAdd/ReadVariableOpdense_28/BiasAdd/ReadVariableOp2@
dense_28/MatMul/ReadVariableOpdense_28/MatMul/ReadVariableOp2b
/dense_28/bias/Regularizer/Square/ReadVariableOp/dense_28/bias/Regularizer/Square/ReadVariableOp2B
dense_29/BiasAdd/ReadVariableOpdense_29/BiasAdd/ReadVariableOp2@
dense_29/MatMul/ReadVariableOpdense_29/MatMul/ReadVariableOp2b
/dense_29/bias/Regularizer/Square/ReadVariableOp/dense_29/bias/Regularizer/Square/ReadVariableOp2B
dense_30/BiasAdd/ReadVariableOpdense_30/BiasAdd/ReadVariableOp2@
dense_30/MatMul/ReadVariableOpdense_30/MatMul/ReadVariableOp2b
/dense_30/bias/Regularizer/Square/ReadVariableOp/dense_30/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
b
F__inference_flatten_10_layer_call_and_return_conditional_losses_914064

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????	   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????	2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????	:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?t
?
"__inference__traced_restore_915169
file_prefix3
 assignvariableop_dense_28_kernel:		?/
 assignvariableop_1_dense_28_bias:	?5
"assignvariableop_2_dense_29_kernel:	?d.
 assignvariableop_3_dense_29_bias:d4
"assignvariableop_4_dense_30_kernel:d	.
 assignvariableop_5_dense_30_bias:	&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: =
*assignvariableop_15_adam_dense_28_kernel_m:		?7
(assignvariableop_16_adam_dense_28_bias_m:	?=
*assignvariableop_17_adam_dense_29_kernel_m:	?d6
(assignvariableop_18_adam_dense_29_bias_m:d<
*assignvariableop_19_adam_dense_30_kernel_m:d	6
(assignvariableop_20_adam_dense_30_bias_m:	=
*assignvariableop_21_adam_dense_28_kernel_v:		?7
(assignvariableop_22_adam_dense_28_bias_v:	?=
*assignvariableop_23_adam_dense_29_kernel_v:	?d6
(assignvariableop_24_adam_dense_29_bias_v:d<
*assignvariableop_25_adam_dense_30_kernel_v:d	6
(assignvariableop_26_adam_dense_30_bias_v:	
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
AssignVariableOpAssignVariableOp assignvariableop_dense_28_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_28_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_29_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_29_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_30_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_30_biasIdentity_5:output:0"/device:CPU:0*
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
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adam_dense_28_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_dense_28_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_29_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_29_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_30_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_30_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_28_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_28_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_29_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_29_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_30_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_30_bias_vIdentity_26:output:0"/device:CPU:0*
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
__inference_loss_fn_1_914913F
8dense_29_bias_regularizer_square_readvariableop_resource:d
identity??/dense_29/bias/Regularizer/Square/ReadVariableOp?
/dense_29/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_29_bias_regularizer_square_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_29/bias/Regularizer/Square/ReadVariableOp?
 dense_29/bias/Regularizer/SquareSquare7dense_29/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_29/bias/Regularizer/Square?
dense_29/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_29/bias/Regularizer/Const?
dense_29/bias/Regularizer/SumSum$dense_29/bias/Regularizer/Square:y:0(dense_29/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_29/bias/Regularizer/Sum?
dense_29/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_29/bias/Regularizer/mul/x?
dense_29/bias/Regularizer/mulMul(dense_29/bias/Regularizer/mul/x:output:0&dense_29/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_29/bias/Regularizer/mul?
IdentityIdentity!dense_29/bias/Regularizer/mul:z:00^dense_29/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_29/bias/Regularizer/Square/ReadVariableOp/dense_29/bias/Regularizer/Square/ReadVariableOp
?
?
D__inference_dense_28_layer_call_and_return_conditional_losses_914941

inputs1
matmul_readvariableop_resource:		?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_28/bias/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		?*
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
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
/dense_28/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/dense_28/bias/Regularizer/Square/ReadVariableOp?
 dense_28/bias/Regularizer/SquareSquare7dense_28/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2"
 dense_28/bias/Regularizer/Square?
dense_28/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_28/bias/Regularizer/Const?
dense_28/bias/Regularizer/SumSum$dense_28/bias/Regularizer/Square:y:0(dense_28/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/Sum?
dense_28/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_28/bias/Regularizer/mul/x?
dense_28/bias/Regularizer/mulMul(dense_28/bias/Regularizer/mul/x:output:0&dense_28/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_28/bias/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_28/bias/Regularizer/Square/ReadVariableOp/dense_28/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
.__inference_sequential_10_layer_call_fn_914409
flatten_10_input
unknown:		?
	unknown_0:	?
	unknown_1:	?d
	unknown_2:d
	unknown_3:d	
	unknown_4:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????	: : : *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_9143712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????	: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:?????????	
*
_user_specified_nameflatten_10_input
?m
?
!__inference__wrapped_model_914012
flatten_10_inputH
5sequential_10_dense_28_matmul_readvariableop_resource:		?E
6sequential_10_dense_28_biasadd_readvariableop_resource:	?H
5sequential_10_dense_29_matmul_readvariableop_resource:	?dD
6sequential_10_dense_29_biasadd_readvariableop_resource:dG
5sequential_10_dense_30_matmul_readvariableop_resource:d	D
6sequential_10_dense_30_biasadd_readvariableop_resource:	
identity??-sequential_10/dense_28/BiasAdd/ReadVariableOp?,sequential_10/dense_28/MatMul/ReadVariableOp?-sequential_10/dense_29/BiasAdd/ReadVariableOp?,sequential_10/dense_29/MatMul/ReadVariableOp?-sequential_10/dense_30/BiasAdd/ReadVariableOp?,sequential_10/dense_30/MatMul/ReadVariableOp?
sequential_10/flatten_10/ConstConst*
_output_shapes
:*
dtype0*
valueB"????	   2 
sequential_10/flatten_10/Const?
 sequential_10/flatten_10/ReshapeReshapeflatten_10_input'sequential_10/flatten_10/Const:output:0*
T0*'
_output_shapes
:?????????	2"
 sequential_10/flatten_10/Reshape?
,sequential_10/dense_28/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_28_matmul_readvariableop_resource*
_output_shapes
:		?*
dtype02.
,sequential_10/dense_28/MatMul/ReadVariableOp?
sequential_10/dense_28/MatMulMatMul)sequential_10/flatten_10/Reshape:output:04sequential_10/dense_28/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_10/dense_28/MatMul?
-sequential_10/dense_28/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_28_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_10/dense_28/BiasAdd/ReadVariableOp?
sequential_10/dense_28/BiasAddBiasAdd'sequential_10/dense_28/MatMul:product:05sequential_10/dense_28/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_10/dense_28/BiasAdd?
sequential_10/dense_28/ReluRelu'sequential_10/dense_28/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_10/dense_28/Relu?
1sequential_10/dense_28/ActivityRegularizer/SquareSquare)sequential_10/dense_28/Relu:activations:0*
T0*(
_output_shapes
:??????????23
1sequential_10/dense_28/ActivityRegularizer/Square?
0sequential_10/dense_28/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       22
0sequential_10/dense_28/ActivityRegularizer/Const?
.sequential_10/dense_28/ActivityRegularizer/SumSum5sequential_10/dense_28/ActivityRegularizer/Square:y:09sequential_10/dense_28/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 20
.sequential_10/dense_28/ActivityRegularizer/Sum?
0sequential_10/dense_28/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'722
0sequential_10/dense_28/ActivityRegularizer/mul/x?
.sequential_10/dense_28/ActivityRegularizer/mulMul9sequential_10/dense_28/ActivityRegularizer/mul/x:output:07sequential_10/dense_28/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 20
.sequential_10/dense_28/ActivityRegularizer/mul?
0sequential_10/dense_28/ActivityRegularizer/ShapeShape)sequential_10/dense_28/Relu:activations:0*
T0*
_output_shapes
:22
0sequential_10/dense_28/ActivityRegularizer/Shape?
>sequential_10/dense_28/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>sequential_10/dense_28/ActivityRegularizer/strided_slice/stack?
@sequential_10/dense_28/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_10/dense_28/ActivityRegularizer/strided_slice/stack_1?
@sequential_10/dense_28/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_10/dense_28/ActivityRegularizer/strided_slice/stack_2?
8sequential_10/dense_28/ActivityRegularizer/strided_sliceStridedSlice9sequential_10/dense_28/ActivityRegularizer/Shape:output:0Gsequential_10/dense_28/ActivityRegularizer/strided_slice/stack:output:0Isequential_10/dense_28/ActivityRegularizer/strided_slice/stack_1:output:0Isequential_10/dense_28/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8sequential_10/dense_28/ActivityRegularizer/strided_slice?
/sequential_10/dense_28/ActivityRegularizer/CastCastAsequential_10/dense_28/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 21
/sequential_10/dense_28/ActivityRegularizer/Cast?
2sequential_10/dense_28/ActivityRegularizer/truedivRealDiv2sequential_10/dense_28/ActivityRegularizer/mul:z:03sequential_10/dense_28/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 24
2sequential_10/dense_28/ActivityRegularizer/truediv?
,sequential_10/dense_29/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_29_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02.
,sequential_10/dense_29/MatMul/ReadVariableOp?
sequential_10/dense_29/MatMulMatMul)sequential_10/dense_28/Relu:activations:04sequential_10/dense_29/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
sequential_10/dense_29/MatMul?
-sequential_10/dense_29/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_29_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02/
-sequential_10/dense_29/BiasAdd/ReadVariableOp?
sequential_10/dense_29/BiasAddBiasAdd'sequential_10/dense_29/MatMul:product:05sequential_10/dense_29/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2 
sequential_10/dense_29/BiasAdd?
sequential_10/dense_29/ReluRelu'sequential_10/dense_29/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
sequential_10/dense_29/Relu?
1sequential_10/dense_29/ActivityRegularizer/SquareSquare)sequential_10/dense_29/Relu:activations:0*
T0*'
_output_shapes
:?????????d23
1sequential_10/dense_29/ActivityRegularizer/Square?
0sequential_10/dense_29/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       22
0sequential_10/dense_29/ActivityRegularizer/Const?
.sequential_10/dense_29/ActivityRegularizer/SumSum5sequential_10/dense_29/ActivityRegularizer/Square:y:09sequential_10/dense_29/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 20
.sequential_10/dense_29/ActivityRegularizer/Sum?
0sequential_10/dense_29/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'722
0sequential_10/dense_29/ActivityRegularizer/mul/x?
.sequential_10/dense_29/ActivityRegularizer/mulMul9sequential_10/dense_29/ActivityRegularizer/mul/x:output:07sequential_10/dense_29/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 20
.sequential_10/dense_29/ActivityRegularizer/mul?
0sequential_10/dense_29/ActivityRegularizer/ShapeShape)sequential_10/dense_29/Relu:activations:0*
T0*
_output_shapes
:22
0sequential_10/dense_29/ActivityRegularizer/Shape?
>sequential_10/dense_29/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>sequential_10/dense_29/ActivityRegularizer/strided_slice/stack?
@sequential_10/dense_29/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_10/dense_29/ActivityRegularizer/strided_slice/stack_1?
@sequential_10/dense_29/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_10/dense_29/ActivityRegularizer/strided_slice/stack_2?
8sequential_10/dense_29/ActivityRegularizer/strided_sliceStridedSlice9sequential_10/dense_29/ActivityRegularizer/Shape:output:0Gsequential_10/dense_29/ActivityRegularizer/strided_slice/stack:output:0Isequential_10/dense_29/ActivityRegularizer/strided_slice/stack_1:output:0Isequential_10/dense_29/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8sequential_10/dense_29/ActivityRegularizer/strided_slice?
/sequential_10/dense_29/ActivityRegularizer/CastCastAsequential_10/dense_29/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 21
/sequential_10/dense_29/ActivityRegularizer/Cast?
2sequential_10/dense_29/ActivityRegularizer/truedivRealDiv2sequential_10/dense_29/ActivityRegularizer/mul:z:03sequential_10/dense_29/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 24
2sequential_10/dense_29/ActivityRegularizer/truediv?
,sequential_10/dense_30/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_30_matmul_readvariableop_resource*
_output_shapes

:d	*
dtype02.
,sequential_10/dense_30/MatMul/ReadVariableOp?
sequential_10/dense_30/MatMulMatMul)sequential_10/dense_29/Relu:activations:04sequential_10/dense_30/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2
sequential_10/dense_30/MatMul?
-sequential_10/dense_30/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_30_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype02/
-sequential_10/dense_30/BiasAdd/ReadVariableOp?
sequential_10/dense_30/BiasAddBiasAdd'sequential_10/dense_30/MatMul:product:05sequential_10/dense_30/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	2 
sequential_10/dense_30/BiasAdd?
1sequential_10/dense_30/ActivityRegularizer/SquareSquare'sequential_10/dense_30/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	23
1sequential_10/dense_30/ActivityRegularizer/Square?
0sequential_10/dense_30/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       22
0sequential_10/dense_30/ActivityRegularizer/Const?
.sequential_10/dense_30/ActivityRegularizer/SumSum5sequential_10/dense_30/ActivityRegularizer/Square:y:09sequential_10/dense_30/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 20
.sequential_10/dense_30/ActivityRegularizer/Sum?
0sequential_10/dense_30/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'722
0sequential_10/dense_30/ActivityRegularizer/mul/x?
.sequential_10/dense_30/ActivityRegularizer/mulMul9sequential_10/dense_30/ActivityRegularizer/mul/x:output:07sequential_10/dense_30/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 20
.sequential_10/dense_30/ActivityRegularizer/mul?
0sequential_10/dense_30/ActivityRegularizer/ShapeShape'sequential_10/dense_30/BiasAdd:output:0*
T0*
_output_shapes
:22
0sequential_10/dense_30/ActivityRegularizer/Shape?
>sequential_10/dense_30/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>sequential_10/dense_30/ActivityRegularizer/strided_slice/stack?
@sequential_10/dense_30/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_10/dense_30/ActivityRegularizer/strided_slice/stack_1?
@sequential_10/dense_30/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_10/dense_30/ActivityRegularizer/strided_slice/stack_2?
8sequential_10/dense_30/ActivityRegularizer/strided_sliceStridedSlice9sequential_10/dense_30/ActivityRegularizer/Shape:output:0Gsequential_10/dense_30/ActivityRegularizer/strided_slice/stack:output:0Isequential_10/dense_30/ActivityRegularizer/strided_slice/stack_1:output:0Isequential_10/dense_30/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8sequential_10/dense_30/ActivityRegularizer/strided_slice?
/sequential_10/dense_30/ActivityRegularizer/CastCastAsequential_10/dense_30/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 21
/sequential_10/dense_30/ActivityRegularizer/Cast?
2sequential_10/dense_30/ActivityRegularizer/truedivRealDiv2sequential_10/dense_30/ActivityRegularizer/mul:z:03sequential_10/dense_30/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 24
2sequential_10/dense_30/ActivityRegularizer/truediv?
 sequential_10/softmax_10/SoftmaxSoftmax'sequential_10/dense_30/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	2"
 sequential_10/softmax_10/Softmax?
IdentityIdentity*sequential_10/softmax_10/Softmax:softmax:0.^sequential_10/dense_28/BiasAdd/ReadVariableOp-^sequential_10/dense_28/MatMul/ReadVariableOp.^sequential_10/dense_29/BiasAdd/ReadVariableOp-^sequential_10/dense_29/MatMul/ReadVariableOp.^sequential_10/dense_30/BiasAdd/ReadVariableOp-^sequential_10/dense_30/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????	: : : : : : 2^
-sequential_10/dense_28/BiasAdd/ReadVariableOp-sequential_10/dense_28/BiasAdd/ReadVariableOp2\
,sequential_10/dense_28/MatMul/ReadVariableOp,sequential_10/dense_28/MatMul/ReadVariableOp2^
-sequential_10/dense_29/BiasAdd/ReadVariableOp-sequential_10/dense_29/BiasAdd/ReadVariableOp2\
,sequential_10/dense_29/MatMul/ReadVariableOp,sequential_10/dense_29/MatMul/ReadVariableOp2^
-sequential_10/dense_30/BiasAdd/ReadVariableOp-sequential_10/dense_30/BiasAdd/ReadVariableOp2\
,sequential_10/dense_30/MatMul/ReadVariableOp,sequential_10/dense_30/MatMul/ReadVariableOp:Y U
'
_output_shapes
:?????????	
*
_user_specified_nameflatten_10_input
?
?
$__inference_signature_wrapper_914584
flatten_10_input
unknown:		?
	unknown_0:	?
	unknown_1:	?d
	unknown_2:d
	unknown_3:d	
	unknown_4:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? **
f%R#
!__inference__wrapped_model_9140122
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????	: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:?????????	
*
_user_specified_nameflatten_10_input
?
G
+__inference_flatten_10_layer_call_fn_914803

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
:?????????	* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_9140642
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????	:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?k
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_914475
flatten_10_input"
dense_28_914413:		?
dense_28_914415:	?"
dense_29_914426:	?d
dense_29_914428:d!
dense_30_914439:d	
dense_30_914441:	
identity

identity_1

identity_2

identity_3?? dense_28/StatefulPartitionedCall?/dense_28/bias/Regularizer/Square/ReadVariableOp? dense_29/StatefulPartitionedCall?/dense_29/bias/Regularizer/Square/ReadVariableOp? dense_30/StatefulPartitionedCall?/dense_30/bias/Regularizer/Square/ReadVariableOp?
flatten_10/PartitionedCallPartitionedCallflatten_10_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_9140642
flatten_10/PartitionedCall?
 dense_28/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_28_914413dense_28_914415*
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
D__inference_dense_28_layer_call_and_return_conditional_losses_9140832"
 dense_28/StatefulPartitionedCall?
,dense_28/ActivityRegularizer/PartitionedCallPartitionedCall)dense_28/StatefulPartitionedCall:output:0*
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
0__inference_dense_28_activity_regularizer_9140252.
,dense_28/ActivityRegularizer/PartitionedCall?
"dense_28/ActivityRegularizer/ShapeShape)dense_28/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_28/ActivityRegularizer/Shape?
0dense_28/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_28/ActivityRegularizer/strided_slice/stack?
2dense_28/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_28/ActivityRegularizer/strided_slice/stack_1?
2dense_28/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_28/ActivityRegularizer/strided_slice/stack_2?
*dense_28/ActivityRegularizer/strided_sliceStridedSlice+dense_28/ActivityRegularizer/Shape:output:09dense_28/ActivityRegularizer/strided_slice/stack:output:0;dense_28/ActivityRegularizer/strided_slice/stack_1:output:0;dense_28/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_28/ActivityRegularizer/strided_slice?
!dense_28/ActivityRegularizer/CastCast3dense_28/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_28/ActivityRegularizer/Cast?
$dense_28/ActivityRegularizer/truedivRealDiv5dense_28/ActivityRegularizer/PartitionedCall:output:0%dense_28/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_28/ActivityRegularizer/truediv?
 dense_29/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0dense_29_914426dense_29_914428*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dense_29_layer_call_and_return_conditional_losses_9141142"
 dense_29/StatefulPartitionedCall?
,dense_29/ActivityRegularizer/PartitionedCallPartitionedCall)dense_29/StatefulPartitionedCall:output:0*
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
0__inference_dense_29_activity_regularizer_9140382.
,dense_29/ActivityRegularizer/PartitionedCall?
"dense_29/ActivityRegularizer/ShapeShape)dense_29/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_29/ActivityRegularizer/Shape?
0dense_29/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_29/ActivityRegularizer/strided_slice/stack?
2dense_29/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_29/ActivityRegularizer/strided_slice/stack_1?
2dense_29/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_29/ActivityRegularizer/strided_slice/stack_2?
*dense_29/ActivityRegularizer/strided_sliceStridedSlice+dense_29/ActivityRegularizer/Shape:output:09dense_29/ActivityRegularizer/strided_slice/stack:output:0;dense_29/ActivityRegularizer/strided_slice/stack_1:output:0;dense_29/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_29/ActivityRegularizer/strided_slice?
!dense_29/ActivityRegularizer/CastCast3dense_29/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_29/ActivityRegularizer/Cast?
$dense_29/ActivityRegularizer/truedivRealDiv5dense_29/ActivityRegularizer/PartitionedCall:output:0%dense_29/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_29/ActivityRegularizer/truediv?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall)dense_29/StatefulPartitionedCall:output:0dense_30_914439dense_30_914441*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_9141442"
 dense_30/StatefulPartitionedCall?
,dense_30/ActivityRegularizer/PartitionedCallPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
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
0__inference_dense_30_activity_regularizer_9140512.
,dense_30/ActivityRegularizer/PartitionedCall?
"dense_30/ActivityRegularizer/ShapeShape)dense_30/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_30/ActivityRegularizer/Shape?
0dense_30/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_30/ActivityRegularizer/strided_slice/stack?
2dense_30/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_30/ActivityRegularizer/strided_slice/stack_1?
2dense_30/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_30/ActivityRegularizer/strided_slice/stack_2?
*dense_30/ActivityRegularizer/strided_sliceStridedSlice+dense_30/ActivityRegularizer/Shape:output:09dense_30/ActivityRegularizer/strided_slice/stack:output:0;dense_30/ActivityRegularizer/strided_slice/stack_1:output:0;dense_30/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_30/ActivityRegularizer/strided_slice?
!dense_30/ActivityRegularizer/CastCast3dense_30/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_30/ActivityRegularizer/Cast?
$dense_30/ActivityRegularizer/truedivRealDiv5dense_30/ActivityRegularizer/PartitionedCall:output:0%dense_30/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_30/ActivityRegularizer/truediv?
softmax_10/PartitionedCallPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_softmax_10_layer_call_and_return_conditional_losses_9141632
softmax_10/PartitionedCall?
/dense_28/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_28_914415*
_output_shapes	
:?*
dtype021
/dense_28/bias/Regularizer/Square/ReadVariableOp?
 dense_28/bias/Regularizer/SquareSquare7dense_28/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2"
 dense_28/bias/Regularizer/Square?
dense_28/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_28/bias/Regularizer/Const?
dense_28/bias/Regularizer/SumSum$dense_28/bias/Regularizer/Square:y:0(dense_28/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/Sum?
dense_28/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_28/bias/Regularizer/mul/x?
dense_28/bias/Regularizer/mulMul(dense_28/bias/Regularizer/mul/x:output:0&dense_28/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/mul?
/dense_29/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_29_914428*
_output_shapes
:d*
dtype021
/dense_29/bias/Regularizer/Square/ReadVariableOp?
 dense_29/bias/Regularizer/SquareSquare7dense_29/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_29/bias/Regularizer/Square?
dense_29/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_29/bias/Regularizer/Const?
dense_29/bias/Regularizer/SumSum$dense_29/bias/Regularizer/Square:y:0(dense_29/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_29/bias/Regularizer/Sum?
dense_29/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_29/bias/Regularizer/mul/x?
dense_29/bias/Regularizer/mulMul(dense_29/bias/Regularizer/mul/x:output:0&dense_29/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_29/bias/Regularizer/mul?
/dense_30/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_30_914441*
_output_shapes
:	*
dtype021
/dense_30/bias/Regularizer/Square/ReadVariableOp?
 dense_30/bias/Regularizer/SquareSquare7dense_30/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2"
 dense_30/bias/Regularizer/Square?
dense_30/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_30/bias/Regularizer/Const?
dense_30/bias/Regularizer/SumSum$dense_30/bias/Regularizer/Square:y:0(dense_30/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_30/bias/Regularizer/Sum?
dense_30/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_30/bias/Regularizer/mul/x?
dense_30/bias/Regularizer/mulMul(dense_30/bias/Regularizer/mul/x:output:0&dense_30/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_30/bias/Regularizer/mul?
IdentityIdentity#softmax_10/PartitionedCall:output:0!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall0^dense_29/bias/Regularizer/Square/ReadVariableOp!^dense_30/StatefulPartitionedCall0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????	2

Identity?

Identity_1Identity(dense_28/ActivityRegularizer/truediv:z:0!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall0^dense_29/bias/Regularizer/Square/ReadVariableOp!^dense_30/StatefulPartitionedCall0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_29/ActivityRegularizer/truediv:z:0!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall0^dense_29/bias/Regularizer/Square/ReadVariableOp!^dense_30/StatefulPartitionedCall0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_30/ActivityRegularizer/truediv:z:0!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall0^dense_29/bias/Regularizer/Square/ReadVariableOp!^dense_30/StatefulPartitionedCall0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????	: : : : : : 2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2b
/dense_28/bias/Regularizer/Square/ReadVariableOp/dense_28/bias/Regularizer/Square/ReadVariableOp2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2b
/dense_29/bias/Regularizer/Square/ReadVariableOp/dense_29/bias/Regularizer/Square/ReadVariableOp2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2b
/dense_30/bias/Regularizer/Square/ReadVariableOp/dense_30/bias/Regularizer/Square/ReadVariableOp:Y U
'
_output_shapes
:?????????	
*
_user_specified_nameflatten_10_input
?
?
.__inference_sequential_10_layer_call_fn_914205
flatten_10_input
unknown:		?
	unknown_0:	?
	unknown_1:	?d
	unknown_2:d
	unknown_3:d	
	unknown_4:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????	: : : *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_9141872
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????	: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:?????????	
*
_user_specified_nameflatten_10_input
?
G
+__inference_softmax_10_layer_call_fn_914891

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
:?????????	* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_softmax_10_layer_call_and_return_conditional_losses_9141632
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????	:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
b
F__inference_softmax_10_layer_call_and_return_conditional_losses_914163

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????	2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????	:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
H__inference_dense_30_layer_call_and_return_all_conditional_losses_914872

inputs
unknown:d	
	unknown_0:	
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
:?????????	*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_9141442
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
0__inference_dense_30_activity_regularizer_9140512
PartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

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
:?????????d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
D__inference_dense_28_layer_call_and_return_conditional_losses_914083

inputs1
matmul_readvariableop_resource:		?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_28/bias/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		?*
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
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
/dense_28/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/dense_28/bias/Regularizer/Square/ReadVariableOp?
 dense_28/bias/Regularizer/SquareSquare7dense_28/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2"
 dense_28/bias/Regularizer/Square?
dense_28/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_28/bias/Regularizer/Const?
dense_28/bias/Regularizer/SumSum$dense_28/bias/Regularizer/Square:y:0(dense_28/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/Sum?
dense_28/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_28/bias/Regularizer/mul/x?
dense_28/bias/Regularizer/mulMul(dense_28/bias/Regularizer/mul/x:output:0&dense_28/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_28/bias/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_28/bias/Regularizer/Square/ReadVariableOp/dense_28/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_914902G
8dense_28_bias_regularizer_square_readvariableop_resource:	?
identity??/dense_28/bias/Regularizer/Square/ReadVariableOp?
/dense_28/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_28_bias_regularizer_square_readvariableop_resource*
_output_shapes	
:?*
dtype021
/dense_28/bias/Regularizer/Square/ReadVariableOp?
 dense_28/bias/Regularizer/SquareSquare7dense_28/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2"
 dense_28/bias/Regularizer/Square?
dense_28/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_28/bias/Regularizer/Const?
dense_28/bias/Regularizer/SumSum$dense_28/bias/Regularizer/Square:y:0(dense_28/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/Sum?
dense_28/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_28/bias/Regularizer/mul/x?
dense_28/bias/Regularizer/mulMul(dense_28/bias/Regularizer/mul/x:output:0&dense_28/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/mul?
IdentityIdentity!dense_28/bias/Regularizer/mul:z:00^dense_28/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_28/bias/Regularizer/Square/ReadVariableOp/dense_28/bias/Regularizer/Square/ReadVariableOp
?j
?
I__inference_sequential_10_layer_call_and_return_conditional_losses_914187

inputs"
dense_28_914084:		?
dense_28_914086:	?"
dense_29_914115:	?d
dense_29_914117:d!
dense_30_914145:d	
dense_30_914147:	
identity

identity_1

identity_2

identity_3?? dense_28/StatefulPartitionedCall?/dense_28/bias/Regularizer/Square/ReadVariableOp? dense_29/StatefulPartitionedCall?/dense_29/bias/Regularizer/Square/ReadVariableOp? dense_30/StatefulPartitionedCall?/dense_30/bias/Regularizer/Square/ReadVariableOp?
flatten_10/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_flatten_10_layer_call_and_return_conditional_losses_9140642
flatten_10/PartitionedCall?
 dense_28/StatefulPartitionedCallStatefulPartitionedCall#flatten_10/PartitionedCall:output:0dense_28_914084dense_28_914086*
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
D__inference_dense_28_layer_call_and_return_conditional_losses_9140832"
 dense_28/StatefulPartitionedCall?
,dense_28/ActivityRegularizer/PartitionedCallPartitionedCall)dense_28/StatefulPartitionedCall:output:0*
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
0__inference_dense_28_activity_regularizer_9140252.
,dense_28/ActivityRegularizer/PartitionedCall?
"dense_28/ActivityRegularizer/ShapeShape)dense_28/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_28/ActivityRegularizer/Shape?
0dense_28/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_28/ActivityRegularizer/strided_slice/stack?
2dense_28/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_28/ActivityRegularizer/strided_slice/stack_1?
2dense_28/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_28/ActivityRegularizer/strided_slice/stack_2?
*dense_28/ActivityRegularizer/strided_sliceStridedSlice+dense_28/ActivityRegularizer/Shape:output:09dense_28/ActivityRegularizer/strided_slice/stack:output:0;dense_28/ActivityRegularizer/strided_slice/stack_1:output:0;dense_28/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_28/ActivityRegularizer/strided_slice?
!dense_28/ActivityRegularizer/CastCast3dense_28/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_28/ActivityRegularizer/Cast?
$dense_28/ActivityRegularizer/truedivRealDiv5dense_28/ActivityRegularizer/PartitionedCall:output:0%dense_28/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_28/ActivityRegularizer/truediv?
 dense_29/StatefulPartitionedCallStatefulPartitionedCall)dense_28/StatefulPartitionedCall:output:0dense_29_914115dense_29_914117*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dense_29_layer_call_and_return_conditional_losses_9141142"
 dense_29/StatefulPartitionedCall?
,dense_29/ActivityRegularizer/PartitionedCallPartitionedCall)dense_29/StatefulPartitionedCall:output:0*
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
0__inference_dense_29_activity_regularizer_9140382.
,dense_29/ActivityRegularizer/PartitionedCall?
"dense_29/ActivityRegularizer/ShapeShape)dense_29/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_29/ActivityRegularizer/Shape?
0dense_29/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_29/ActivityRegularizer/strided_slice/stack?
2dense_29/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_29/ActivityRegularizer/strided_slice/stack_1?
2dense_29/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_29/ActivityRegularizer/strided_slice/stack_2?
*dense_29/ActivityRegularizer/strided_sliceStridedSlice+dense_29/ActivityRegularizer/Shape:output:09dense_29/ActivityRegularizer/strided_slice/stack:output:0;dense_29/ActivityRegularizer/strided_slice/stack_1:output:0;dense_29/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_29/ActivityRegularizer/strided_slice?
!dense_29/ActivityRegularizer/CastCast3dense_29/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_29/ActivityRegularizer/Cast?
$dense_29/ActivityRegularizer/truedivRealDiv5dense_29/ActivityRegularizer/PartitionedCall:output:0%dense_29/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_29/ActivityRegularizer/truediv?
 dense_30/StatefulPartitionedCallStatefulPartitionedCall)dense_29/StatefulPartitionedCall:output:0dense_30_914145dense_30_914147*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dense_30_layer_call_and_return_conditional_losses_9141442"
 dense_30/StatefulPartitionedCall?
,dense_30/ActivityRegularizer/PartitionedCallPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
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
0__inference_dense_30_activity_regularizer_9140512.
,dense_30/ActivityRegularizer/PartitionedCall?
"dense_30/ActivityRegularizer/ShapeShape)dense_30/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_30/ActivityRegularizer/Shape?
0dense_30/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_30/ActivityRegularizer/strided_slice/stack?
2dense_30/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_30/ActivityRegularizer/strided_slice/stack_1?
2dense_30/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_30/ActivityRegularizer/strided_slice/stack_2?
*dense_30/ActivityRegularizer/strided_sliceStridedSlice+dense_30/ActivityRegularizer/Shape:output:09dense_30/ActivityRegularizer/strided_slice/stack:output:0;dense_30/ActivityRegularizer/strided_slice/stack_1:output:0;dense_30/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_30/ActivityRegularizer/strided_slice?
!dense_30/ActivityRegularizer/CastCast3dense_30/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_30/ActivityRegularizer/Cast?
$dense_30/ActivityRegularizer/truedivRealDiv5dense_30/ActivityRegularizer/PartitionedCall:output:0%dense_30/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_30/ActivityRegularizer/truediv?
softmax_10/PartitionedCallPartitionedCall)dense_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_softmax_10_layer_call_and_return_conditional_losses_9141632
softmax_10/PartitionedCall?
/dense_28/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_28_914086*
_output_shapes	
:?*
dtype021
/dense_28/bias/Regularizer/Square/ReadVariableOp?
 dense_28/bias/Regularizer/SquareSquare7dense_28/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2"
 dense_28/bias/Regularizer/Square?
dense_28/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_28/bias/Regularizer/Const?
dense_28/bias/Regularizer/SumSum$dense_28/bias/Regularizer/Square:y:0(dense_28/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/Sum?
dense_28/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_28/bias/Regularizer/mul/x?
dense_28/bias/Regularizer/mulMul(dense_28/bias/Regularizer/mul/x:output:0&dense_28/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_28/bias/Regularizer/mul?
/dense_29/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_29_914117*
_output_shapes
:d*
dtype021
/dense_29/bias/Regularizer/Square/ReadVariableOp?
 dense_29/bias/Regularizer/SquareSquare7dense_29/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_29/bias/Regularizer/Square?
dense_29/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_29/bias/Regularizer/Const?
dense_29/bias/Regularizer/SumSum$dense_29/bias/Regularizer/Square:y:0(dense_29/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_29/bias/Regularizer/Sum?
dense_29/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_29/bias/Regularizer/mul/x?
dense_29/bias/Regularizer/mulMul(dense_29/bias/Regularizer/mul/x:output:0&dense_29/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_29/bias/Regularizer/mul?
/dense_30/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_30_914147*
_output_shapes
:	*
dtype021
/dense_30/bias/Regularizer/Square/ReadVariableOp?
 dense_30/bias/Regularizer/SquareSquare7dense_30/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2"
 dense_30/bias/Regularizer/Square?
dense_30/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_30/bias/Regularizer/Const?
dense_30/bias/Regularizer/SumSum$dense_30/bias/Regularizer/Square:y:0(dense_30/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_30/bias/Regularizer/Sum?
dense_30/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??'72!
dense_30/bias/Regularizer/mul/x?
dense_30/bias/Regularizer/mulMul(dense_30/bias/Regularizer/mul/x:output:0&dense_30/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_30/bias/Regularizer/mul?
IdentityIdentity#softmax_10/PartitionedCall:output:0!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall0^dense_29/bias/Regularizer/Square/ReadVariableOp!^dense_30/StatefulPartitionedCall0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????	2

Identity?

Identity_1Identity(dense_28/ActivityRegularizer/truediv:z:0!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall0^dense_29/bias/Regularizer/Square/ReadVariableOp!^dense_30/StatefulPartitionedCall0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_29/ActivityRegularizer/truediv:z:0!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall0^dense_29/bias/Regularizer/Square/ReadVariableOp!^dense_30/StatefulPartitionedCall0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_30/ActivityRegularizer/truediv:z:0!^dense_28/StatefulPartitionedCall0^dense_28/bias/Regularizer/Square/ReadVariableOp!^dense_29/StatefulPartitionedCall0^dense_29/bias/Regularizer/Square/ReadVariableOp!^dense_30/StatefulPartitionedCall0^dense_30/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????	: : : : : : 2D
 dense_28/StatefulPartitionedCall dense_28/StatefulPartitionedCall2b
/dense_28/bias/Regularizer/Square/ReadVariableOp/dense_28/bias/Regularizer/Square/ReadVariableOp2D
 dense_29/StatefulPartitionedCall dense_29/StatefulPartitionedCall2b
/dense_29/bias/Regularizer/Square/ReadVariableOp/dense_29/bias/Regularizer/Square/ReadVariableOp2D
 dense_30/StatefulPartitionedCall dense_30/StatefulPartitionedCall2b
/dense_30/bias/Regularizer/Square/ReadVariableOp/dense_30/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
.__inference_sequential_10_layer_call_fn_914772

inputs
unknown:		?
	unknown_0:	?
	unknown_1:	?d
	unknown_2:d
	unknown_3:d	
	unknown_4:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????	: : : *(
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_sequential_10_layer_call_and_return_conditional_losses_9141872
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????	: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
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
flatten_10_input9
"serving_default_flatten_10_input:0?????????	>

softmax_100
StatefulPartitionedCall:0?????????	tensorflow/serving/predict:??
?3
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
	optimizer
	variables
trainable_variables
	regularization_losses

	keras_api

signatures
*`&call_and_return_all_conditional_losses
a__call__
b_default_save_signature"?0
_tf_keras_sequential?0{"name": "sequential_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_10_input"}}, {"class_name": "Flatten", "config": {"name": "flatten_10", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_28", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}}, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_29", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}}, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_30", "trainable": true, "dtype": "float32", "units": 9, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}}, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Softmax", "config": {"name": "softmax_10", "trainable": true, "dtype": "float32", "axis": -1}}]}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 9]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 9]}, "float32", "flatten_10_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_10", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_10_input"}, "shared_object_id": 0}, {"class_name": "Flatten", "config": {"name": "flatten_10", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 1}, {"class_name": "Dense", "config": {"name": "dense_28", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 4}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 5}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, {"class_name": "Dense", "config": {"name": "dense_29", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 9}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 10}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11}, {"class_name": "Dense", "config": {"name": "dense_30", "trainable": true, "dtype": "float32", "units": 9, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 14}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 15}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 16}, {"class_name": "Softmax", "config": {"name": "softmax_10", "trainable": true, "dtype": "float32", "axis": -1}, "shared_object_id": 17}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": false}, "shared_object_id": 20}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 21}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-06, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
	variables
trainable_variables
regularization_losses
	keras_api
*c&call_and_return_all_conditional_losses
d__call__"?
_tf_keras_layer?{"name": "flatten_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_10", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 1, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 19}}
?


kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
*e&call_and_return_all_conditional_losses
f__call__"?	
_tf_keras_layer?	{"name": "dense_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_28", "trainable": true, "dtype": "float32", "units": 200, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 4}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 5}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 9}}, "shared_object_id": 22}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 5}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 9]}}
?


kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
*g&call_and_return_all_conditional_losses
h__call__"?	
_tf_keras_layer?	{"name": "dense_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_29", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 9}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 10}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}, "shared_object_id": 23}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 10}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
?


kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
*i&call_and_return_all_conditional_losses
j__call__"?	
_tf_keras_layer?	{"name": "dense_30", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_30", "trainable": true, "dtype": "float32", "units": 9, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 14}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 15}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 24}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-06}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?
"	variables
#trainable_variables
$regularization_losses
%	keras_api
*k&call_and_return_all_conditional_losses
l__call__"?
_tf_keras_layer?{"name": "softmax_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Softmax", "config": {"name": "softmax_10", "trainable": true, "dtype": "float32", "axis": -1}, "shared_object_id": 17}
?
&iter

'beta_1

(beta_2
	)decay
*learning_ratemTmUmVmWmXmYvZv[v\v]v^v_"
	optimizer
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
5
m0
n1
o2"
trackable_list_wrapper
?
+layer_regularization_losses
,non_trainable_variables

-layers
	variables
.metrics
trainable_variables
/layer_metrics
	regularization_losses
a__call__
b_default_save_signature
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
,
pserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
0layer_regularization_losses
1non_trainable_variables

2layers
	variables
3metrics
trainable_variables
4layer_metrics
regularization_losses
d__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
": 		?2dense_28/kernel
:?2dense_28/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
m0"
trackable_list_wrapper
?
5layer_regularization_losses
6non_trainable_variables

7layers
	variables
8metrics
trainable_variables
9layer_metrics
regularization_losses
f__call__
qactivity_regularizer_fn
*e&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
": 	?d2dense_29/kernel
:d2dense_29/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
n0"
trackable_list_wrapper
?
:layer_regularization_losses
;non_trainable_variables

<layers
	variables
=metrics
trainable_variables
>layer_metrics
regularization_losses
h__call__
sactivity_regularizer_fn
*g&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
!:d	2dense_30/kernel
:	2dense_30/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
o0"
trackable_list_wrapper
?
?layer_regularization_losses
@non_trainable_variables

Alayers
	variables
Bmetrics
trainable_variables
Clayer_metrics
 regularization_losses
j__call__
uactivity_regularizer_fn
*i&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Dlayer_regularization_losses
Enon_trainable_variables

Flayers
"	variables
Gmetrics
#trainable_variables
Hlayer_metrics
$regularization_losses
l__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
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
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
.
I0
J1"
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
'
m0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
n0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
o0"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?
	Ktotal
	Lcount
M	variables
N	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 25}
?
	Ototal
	Pcount
Q
_fn_kwargs
R	variables
S	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 21}
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
':%		?2Adam/dense_28/kernel/m
!:?2Adam/dense_28/bias/m
':%	?d2Adam/dense_29/kernel/m
 :d2Adam/dense_29/bias/m
&:$d	2Adam/dense_30/kernel/m
 :	2Adam/dense_30/bias/m
':%		?2Adam/dense_28/kernel/v
!:?2Adam/dense_28/bias/v
':%	?d2Adam/dense_29/kernel/v
 :d2Adam/dense_29/bias/v
&:$d	2Adam/dense_30/kernel/v
 :	2Adam/dense_30/bias/v
?2?
I__inference_sequential_10_layer_call_and_return_conditional_losses_914668
I__inference_sequential_10_layer_call_and_return_conditional_losses_914752
I__inference_sequential_10_layer_call_and_return_conditional_losses_914475
I__inference_sequential_10_layer_call_and_return_conditional_losses_914541?
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
.__inference_sequential_10_layer_call_fn_914205
.__inference_sequential_10_layer_call_fn_914772
.__inference_sequential_10_layer_call_fn_914792
.__inference_sequential_10_layer_call_fn_914409?
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
!__inference__wrapped_model_914012?
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
annotations? */?,
*?'
flatten_10_input?????????	
?2?
F__inference_flatten_10_layer_call_and_return_conditional_losses_914798?
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
+__inference_flatten_10_layer_call_fn_914803?
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
H__inference_dense_28_layer_call_and_return_all_conditional_losses_914820?
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
)__inference_dense_28_layer_call_fn_914829?
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
H__inference_dense_29_layer_call_and_return_all_conditional_losses_914846?
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
)__inference_dense_29_layer_call_fn_914855?
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
H__inference_dense_30_layer_call_and_return_all_conditional_losses_914872?
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
)__inference_dense_30_layer_call_fn_914881?
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
F__inference_softmax_10_layer_call_and_return_conditional_losses_914886?
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
+__inference_softmax_10_layer_call_fn_914891?
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
__inference_loss_fn_0_914902?
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
__inference_loss_fn_1_914913?
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
__inference_loss_fn_2_914924?
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
$__inference_signature_wrapper_914584flatten_10_input"?
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
0__inference_dense_28_activity_regularizer_914025?
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
D__inference_dense_28_layer_call_and_return_conditional_losses_914941?
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
0__inference_dense_29_activity_regularizer_914038?
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
D__inference_dense_29_layer_call_and_return_conditional_losses_914958?
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
0__inference_dense_30_activity_regularizer_914051?
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
D__inference_dense_30_layer_call_and_return_conditional_losses_914974?
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
!__inference__wrapped_model_914012|9?6
/?,
*?'
flatten_10_input?????????	
? "7?4
2

softmax_10$?!

softmax_10?????????	Z
0__inference_dense_28_activity_regularizer_914025&?
?
?	
x
? "? ?
H__inference_dense_28_layer_call_and_return_all_conditional_losses_914820k/?,
%?"
 ?
inputs?????????	
? "4?1
?
0??????????
?
?	
1/0 ?
D__inference_dense_28_layer_call_and_return_conditional_losses_914941]/?,
%?"
 ?
inputs?????????	
? "&?#
?
0??????????
? }
)__inference_dense_28_layer_call_fn_914829P/?,
%?"
 ?
inputs?????????	
? "???????????Z
0__inference_dense_29_activity_regularizer_914038&?
?
?	
x
? "? ?
H__inference_dense_29_layer_call_and_return_all_conditional_losses_914846k0?-
&?#
!?
inputs??????????
? "3?0
?
0?????????d
?
?	
1/0 ?
D__inference_dense_29_layer_call_and_return_conditional_losses_914958]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????d
? }
)__inference_dense_29_layer_call_fn_914855P0?-
&?#
!?
inputs??????????
? "??????????dZ
0__inference_dense_30_activity_regularizer_914051&?
?
?	
x
? "? ?
H__inference_dense_30_layer_call_and_return_all_conditional_losses_914872j/?,
%?"
 ?
inputs?????????d
? "3?0
?
0?????????	
?
?	
1/0 ?
D__inference_dense_30_layer_call_and_return_conditional_losses_914974\/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????	
? |
)__inference_dense_30_layer_call_fn_914881O/?,
%?"
 ?
inputs?????????d
? "??????????	?
F__inference_flatten_10_layer_call_and_return_conditional_losses_914798X/?,
%?"
 ?
inputs?????????	
? "%?"
?
0?????????	
? z
+__inference_flatten_10_layer_call_fn_914803K/?,
%?"
 ?
inputs?????????	
? "??????????	;
__inference_loss_fn_0_914902?

? 
? "? ;
__inference_loss_fn_1_914913?

? 
? "? ;
__inference_loss_fn_2_914924?

? 
? "? ?
I__inference_sequential_10_layer_call_and_return_conditional_losses_914475?A?>
7?4
*?'
flatten_10_input?????????	
p 

 
? "O?L
?
0?????????	
-?*
?	
1/0 
?	
1/1 
?	
1/2 ?
I__inference_sequential_10_layer_call_and_return_conditional_losses_914541?A?>
7?4
*?'
flatten_10_input?????????	
p

 
? "O?L
?
0?????????	
-?*
?	
1/0 
?	
1/1 
?	
1/2 ?
I__inference_sequential_10_layer_call_and_return_conditional_losses_914668?7?4
-?*
 ?
inputs?????????	
p 

 
? "O?L
?
0?????????	
-?*
?	
1/0 
?	
1/1 
?	
1/2 ?
I__inference_sequential_10_layer_call_and_return_conditional_losses_914752?7?4
-?*
 ?
inputs?????????	
p

 
? "O?L
?
0?????????	
-?*
?	
1/0 
?	
1/1 
?	
1/2 ?
.__inference_sequential_10_layer_call_fn_914205eA?>
7?4
*?'
flatten_10_input?????????	
p 

 
? "??????????	?
.__inference_sequential_10_layer_call_fn_914409eA?>
7?4
*?'
flatten_10_input?????????	
p

 
? "??????????	?
.__inference_sequential_10_layer_call_fn_914772[7?4
-?*
 ?
inputs?????????	
p 

 
? "??????????	?
.__inference_sequential_10_layer_call_fn_914792[7?4
-?*
 ?
inputs?????????	
p

 
? "??????????	?
$__inference_signature_wrapper_914584?M?J
? 
C?@
>
flatten_10_input*?'
flatten_10_input?????????	"7?4
2

softmax_10$?!

softmax_10?????????	?
F__inference_softmax_10_layer_call_and_return_conditional_losses_914886\3?0
)?&
 ?
inputs?????????	

 
? "%?"
?
0?????????	
? ~
+__inference_softmax_10_layer_call_fn_914891O3?0
)?&
 ?
inputs?????????	

 
? "??????????	