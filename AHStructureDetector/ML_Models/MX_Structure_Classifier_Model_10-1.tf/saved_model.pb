÷
±
B
AssignVariableOp
resource
value"dtype"
dtypetype
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

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
delete_old_dirsbool(
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
¾
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
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
 "serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718÷Ã
~
conv1d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	* 
shared_nameconv1d_4/kernel
w
#conv1d_4/kernel/Read/ReadVariableOpReadVariableOpconv1d_4/kernel*"
_output_shapes
:	*
dtype0
r
conv1d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_4/bias
k
!conv1d_4/bias/Read/ReadVariableOpReadVariableOpconv1d_4/bias*
_output_shapes
:*
dtype0
|
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
´¬* 
shared_namedense_12/kernel
u
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel* 
_output_shapes
:
´¬*
dtype0
s
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:¬*
shared_namedense_12/bias
l
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes	
:¬*
dtype0
{
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¬2* 
shared_namedense_13/kernel
t
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes
:	¬2*
dtype0
r
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_13/bias
k
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes
:2*
dtype0
z
dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2	* 
shared_namedense_14/kernel
s
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel*
_output_shapes

:2	*
dtype0
r
dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense_14/bias
k
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
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

Adam/conv1d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/conv1d_4/kernel/m

*Adam/conv1d_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_4/kernel/m*"
_output_shapes
:	*
dtype0

Adam/conv1d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv1d_4/bias/m
y
(Adam/conv1d_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_4/bias/m*
_output_shapes
:*
dtype0

Adam/dense_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
´¬*'
shared_nameAdam/dense_12/kernel/m

*Adam/dense_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/m* 
_output_shapes
:
´¬*
dtype0

Adam/dense_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:¬*%
shared_nameAdam/dense_12/bias/m
z
(Adam/dense_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/m*
_output_shapes	
:¬*
dtype0

Adam/dense_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¬2*'
shared_nameAdam/dense_13/kernel/m

*Adam/dense_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/m*
_output_shapes
:	¬2*
dtype0

Adam/dense_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_13/bias/m
y
(Adam/dense_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/m*
_output_shapes
:2*
dtype0

Adam/dense_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2	*'
shared_nameAdam/dense_14/kernel/m

*Adam/dense_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/m*
_output_shapes

:2	*
dtype0

Adam/dense_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*%
shared_nameAdam/dense_14/bias/m
y
(Adam/dense_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/m*
_output_shapes
:	*
dtype0

Adam/conv1d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/conv1d_4/kernel/v

*Adam/conv1d_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_4/kernel/v*"
_output_shapes
:	*
dtype0

Adam/conv1d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv1d_4/bias/v
y
(Adam/conv1d_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_4/bias/v*
_output_shapes
:*
dtype0

Adam/dense_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
´¬*'
shared_nameAdam/dense_12/kernel/v

*Adam/dense_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/v* 
_output_shapes
:
´¬*
dtype0

Adam/dense_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:¬*%
shared_nameAdam/dense_12/bias/v
z
(Adam/dense_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/v*
_output_shapes	
:¬*
dtype0

Adam/dense_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	¬2*'
shared_nameAdam/dense_13/kernel/v

*Adam/dense_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/v*
_output_shapes
:	¬2*
dtype0

Adam/dense_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_13/bias/v
y
(Adam/dense_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/v*
_output_shapes
:2*
dtype0

Adam/dense_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2	*'
shared_nameAdam/dense_14/kernel/v

*Adam/dense_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/v*
_output_shapes

:2	*
dtype0

Adam/dense_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*%
shared_nameAdam/dense_14/bias/v
y
(Adam/dense_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/v*
_output_shapes
:	*
dtype0

NoOpNoOp
ö4
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*±4
value§4B¤4 B4
´
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
	optimizer
	trainable_variables

regularization_losses
	variables
	keras_api

signatures
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
 	variables
!	keras_api
h

"kernel
#bias
$trainable_variables
%regularization_losses
&	variables
'	keras_api
h

(kernel
)bias
*trainable_variables
+regularization_losses
,	variables
-	keras_api
R
.trainable_variables
/regularization_losses
0	variables
1	keras_api
Ð
2iter

3beta_1

4beta_2
	5decay
6learning_ratemjmkmlmm"mn#mo(mp)mqvrvsvtvu"vv#vw(vx)vy
8
0
1
2
3
"4
#5
(6
)7
 
8
0
1
2
3
"4
#5
(6
)7
­
	trainable_variables
7non_trainable_variables
8layer_regularization_losses
9layer_metrics

regularization_losses
:metrics

;layers
	variables
 
[Y
VARIABLE_VALUEconv1d_4/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_4/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
trainable_variables
<non_trainable_variables
=layer_metrics
>layer_regularization_losses
regularization_losses
?metrics

@layers
	variables
 
 
 
­
trainable_variables
Anon_trainable_variables
Blayer_metrics
Clayer_regularization_losses
regularization_losses
Dmetrics

Elayers
	variables
[Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_12/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
trainable_variables
Fnon_trainable_variables
Glayer_metrics
Hlayer_regularization_losses
regularization_losses
Imetrics

Jlayers
	variables
 
 
 
­
trainable_variables
Knon_trainable_variables
Llayer_metrics
Mlayer_regularization_losses
regularization_losses
Nmetrics

Olayers
 	variables
[Y
VARIABLE_VALUEdense_13/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_13/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

"0
#1
 

"0
#1
­
$trainable_variables
Pnon_trainable_variables
Qlayer_metrics
Rlayer_regularization_losses
%regularization_losses
Smetrics

Tlayers
&	variables
[Y
VARIABLE_VALUEdense_14/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_14/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

(0
)1
 

(0
)1
­
*trainable_variables
Unon_trainable_variables
Vlayer_metrics
Wlayer_regularization_losses
+regularization_losses
Xmetrics

Ylayers
,	variables
 
 
 
­
.trainable_variables
Znon_trainable_variables
[layer_metrics
\layer_regularization_losses
/regularization_losses
]metrics

^layers
0	variables
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
 

_0
`1
1
0
1
2
3
4
5
6
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
 
 
 
 
4
	atotal
	bcount
c	variables
d	keras_api
D
	etotal
	fcount
g
_fn_kwargs
h	variables
i	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

a0
b1

c	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

e0
f1

h	variables
~|
VARIABLE_VALUEAdam/conv1d_4/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_4/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_12/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_12/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_13/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_13/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_14/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_14/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_4/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_4/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_12/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_12/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_13/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_13/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_14/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_14/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_conv1d_4_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ	
Ï
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv1d_4_inputconv1d_4/kernelconv1d_4/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/biasdense_14/kerneldense_14/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *.
f)R'
%__inference_signature_wrapper_2719341
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
«
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv1d_4/kernel/Read/ReadVariableOp!conv1d_4/bias/Read/ReadVariableOp#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOp#dense_13/kernel/Read/ReadVariableOp!dense_13/bias/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOp!dense_14/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/conv1d_4/kernel/m/Read/ReadVariableOp(Adam/conv1d_4/bias/m/Read/ReadVariableOp*Adam/dense_12/kernel/m/Read/ReadVariableOp(Adam/dense_12/bias/m/Read/ReadVariableOp*Adam/dense_13/kernel/m/Read/ReadVariableOp(Adam/dense_13/bias/m/Read/ReadVariableOp*Adam/dense_14/kernel/m/Read/ReadVariableOp(Adam/dense_14/bias/m/Read/ReadVariableOp*Adam/conv1d_4/kernel/v/Read/ReadVariableOp(Adam/conv1d_4/bias/v/Read/ReadVariableOp*Adam/dense_12/kernel/v/Read/ReadVariableOp(Adam/dense_12/bias/v/Read/ReadVariableOp*Adam/dense_13/kernel/v/Read/ReadVariableOp(Adam/dense_13/bias/v/Read/ReadVariableOp*Adam/dense_14/kernel/v/Read/ReadVariableOp(Adam/dense_14/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
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
GPU2 *0J 8 *)
f$R"
 __inference__traced_save_2720016

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_4/kernelconv1d_4/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/biasdense_14/kerneldense_14/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv1d_4/kernel/mAdam/conv1d_4/bias/mAdam/dense_12/kernel/mAdam/dense_12/bias/mAdam/dense_13/kernel/mAdam/dense_13/bias/mAdam/dense_14/kernel/mAdam/dense_14/bias/mAdam/conv1d_4/kernel/vAdam/conv1d_4/bias/vAdam/dense_12/kernel/vAdam/dense_12/bias/vAdam/dense_13/kernel/vAdam/dense_13/bias/vAdam/dense_14/kernel/vAdam/dense_14/bias/v*-
Tin&
$2"*
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
GPU2 *0J 8 *,
f'R%
#__inference__traced_restore_2720125ú·
	
Ä
%__inference_signature_wrapper_2719341
conv1d_4_input
unknown:	
	unknown_0:
	unknown_1:
´¬
	unknown_2:	¬
	unknown_3:	¬2
	unknown_4:2
	unknown_5:2	
	unknown_6:	
identity¢StatefulPartitionedCall­
StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *+
f&R$
"__inference__wrapped_model_27185972
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
(
_user_specified_nameconv1d_4_input
 
ª
__inference_loss_fn_4_2719833F
8dense_14_bias_regularizer_square_readvariableop_resource:	
identity¢/dense_14/bias/Regularizer/Square/ReadVariableOp×
/dense_14/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_14_bias_regularizer_square_readvariableop_resource*
_output_shapes
:	*
dtype021
/dense_14/bias/Regularizer/Square/ReadVariableOp¬
 dense_14/bias/Regularizer/SquareSquare7dense_14/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2"
 dense_14/bias/Regularizer/Square
dense_14/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_14/bias/Regularizer/Const¶
dense_14/bias/Regularizer/SumSum$dense_14/bias/Regularizer/Square:y:0(dense_14/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_14/bias/Regularizer/Sum
dense_14/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_14/bias/Regularizer/mul/x¸
dense_14/bias/Regularizer/mulMul(dense_14/bias/Regularizer/mul/x:output:0&dense_14/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_14/bias/Regularizer/mul
IdentityIdentity!dense_14/bias/Regularizer/mul:z:00^dense_14/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_14/bias/Regularizer/Square/ReadVariableOp/dense_14/bias/Regularizer/Square/ReadVariableOp
æ
H
1__inference_dense_12_activity_regularizer_2718623
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
:ÿÿÿÿÿÿÿÿÿ2
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
 *·Ñ82
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
¿	
Å
.__inference_sequential_4_layer_call_fn_2719590

inputs
unknown:	
	unknown_0:
	unknown_1:
´¬
	unknown_2:	¬
	unknown_3:	¬2
	unknown_4:2
	unknown_5:2	
	unknown_6:	
identity¢StatefulPartitionedCallÕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	: : : **
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_27188252
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
Î
Â
I__inference_sequential_4_layer_call_and_return_conditional_losses_2719198
conv1d_4_input&
conv1d_4_2719117:	
conv1d_4_2719119:$
dense_12_2719131:
´¬
dense_12_2719133:	¬#
dense_13_2719145:	¬2
dense_13_2719147:2"
dense_14_2719150:2	
dense_14_2719152:	
identity

identity_1

identity_2

identity_3¢ conv1d_4/StatefulPartitionedCall¢/conv1d_4/bias/Regularizer/Square/ReadVariableOp¢1conv1d_4/kernel/Regularizer/Square/ReadVariableOp¢ dense_12/StatefulPartitionedCall¢/dense_12/bias/Regularizer/Square/ReadVariableOp¢ dense_13/StatefulPartitionedCall¢1dense_13/kernel/Regularizer/Square/ReadVariableOp¢ dense_14/StatefulPartitionedCall¢/dense_14/bias/Regularizer/Square/ReadVariableOp¨
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputconv1d_4_2719117conv1d_4_2719119*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_4_layer_call_and_return_conditional_losses_27186712"
 conv1d_4/StatefulPartitionedCall
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
GPU2 *0J 8 *:
f5R3
1__inference_conv1d_4_activity_regularizer_27186102.
,conv1d_4/ActivityRegularizer/PartitionedCall¡
"conv1d_4/ActivityRegularizer/ShapeShape)conv1d_4/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"conv1d_4/ActivityRegularizer/Shape®
0conv1d_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0conv1d_4/ActivityRegularizer/strided_slice/stack²
2conv1d_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2conv1d_4/ActivityRegularizer/strided_slice/stack_1²
2conv1d_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2conv1d_4/ActivityRegularizer/strided_slice/stack_2
*conv1d_4/ActivityRegularizer/strided_sliceStridedSlice+conv1d_4/ActivityRegularizer/Shape:output:09conv1d_4/ActivityRegularizer/strided_slice/stack:output:0;conv1d_4/ActivityRegularizer/strided_slice/stack_1:output:0;conv1d_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*conv1d_4/ActivityRegularizer/strided_slice³
!conv1d_4/ActivityRegularizer/CastCast3conv1d_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!conv1d_4/ActivityRegularizer/CastÖ
$conv1d_4/ActivityRegularizer/truedivRealDiv5conv1d_4/ActivityRegularizer/PartitionedCall:output:0%conv1d_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$conv1d_4/ActivityRegularizer/truediv
flatten_4/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_27186912
flatten_4/PartitionedCall¹
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_12_2719131dense_12_2719133*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_27187102"
 dense_12/StatefulPartitionedCall
,dense_12/ActivityRegularizer/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8 *:
f5R3
1__inference_dense_12_activity_regularizer_27186232.
,dense_12/ActivityRegularizer/PartitionedCall¡
"dense_12/ActivityRegularizer/ShapeShape)dense_12/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_12/ActivityRegularizer/Shape®
0dense_12/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_12/ActivityRegularizer/strided_slice/stack²
2dense_12/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_12/ActivityRegularizer/strided_slice/stack_1²
2dense_12/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_12/ActivityRegularizer/strided_slice/stack_2
*dense_12/ActivityRegularizer/strided_sliceStridedSlice+dense_12/ActivityRegularizer/Shape:output:09dense_12/ActivityRegularizer/strided_slice/stack:output:0;dense_12/ActivityRegularizer/strided_slice/stack_1:output:0;dense_12/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_12/ActivityRegularizer/strided_slice³
!dense_12/ActivityRegularizer/CastCast3dense_12/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_12/ActivityRegularizer/CastÖ
$dense_12/ActivityRegularizer/truedivRealDiv5dense_12/ActivityRegularizer/PartitionedCall:output:0%dense_12/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_12/ActivityRegularizer/truediv
dropout_4/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_4_layer_call_and_return_conditional_losses_27187292
dropout_4/PartitionedCall¸
 dense_13/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0dense_13_2719145dense_13_2719147*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_27187482"
 dense_13/StatefulPartitionedCall¿
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_2719150dense_14_2719152*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_dense_14_layer_call_and_return_conditional_losses_27187702"
 dense_14/StatefulPartitionedCall
,dense_14/ActivityRegularizer/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8 *:
f5R3
1__inference_dense_14_activity_regularizer_27186362.
,dense_14/ActivityRegularizer/PartitionedCall¡
"dense_14/ActivityRegularizer/ShapeShape)dense_14/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_14/ActivityRegularizer/Shape®
0dense_14/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_14/ActivityRegularizer/strided_slice/stack²
2dense_14/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_14/ActivityRegularizer/strided_slice/stack_1²
2dense_14/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_14/ActivityRegularizer/strided_slice/stack_2
*dense_14/ActivityRegularizer/strided_sliceStridedSlice+dense_14/ActivityRegularizer/Shape:output:09dense_14/ActivityRegularizer/strided_slice/stack:output:0;dense_14/ActivityRegularizer/strided_slice/stack_1:output:0;dense_14/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_14/ActivityRegularizer/strided_slice³
!dense_14/ActivityRegularizer/CastCast3dense_14/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_14/ActivityRegularizer/CastÖ
$dense_14/ActivityRegularizer/truedivRealDiv5dense_14/ActivityRegularizer/PartitionedCall:output:0%dense_14/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_14/ActivityRegularizer/truediv
softmax_4/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_softmax_4_layer_call_and_return_conditional_losses_27187892
softmax_4/PartitionedCall»
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_4_2719117*"
_output_shapes
:	*
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpº
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	2$
"conv1d_4/kernel/Regularizer/Square
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const¾
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_4/kernel/Regularizer/mul/xÀ
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mul¯
/conv1d_4/bias/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_4_2719119*
_output_shapes
:*
dtype021
/conv1d_4/bias/Regularizer/Square/ReadVariableOp¬
 conv1d_4/bias/Regularizer/SquareSquare7conv1d_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 conv1d_4/bias/Regularizer/Square
conv1d_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
conv1d_4/bias/Regularizer/Const¶
conv1d_4/bias/Regularizer/SumSum$conv1d_4/bias/Regularizer/Square:y:0(conv1d_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/Sum
conv1d_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
conv1d_4/bias/Regularizer/mul/x¸
conv1d_4/bias/Regularizer/mulMul(conv1d_4/bias/Regularizer/mul/x:output:0&conv1d_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/mul°
/dense_12/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_12_2719133*
_output_shapes	
:¬*
dtype021
/dense_12/bias/Regularizer/Square/ReadVariableOp­
 dense_12/bias/Regularizer/SquareSquare7dense_12/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:¬2"
 dense_12/bias/Regularizer/Square
dense_12/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_12/bias/Regularizer/Const¶
dense_12/bias/Regularizer/SumSum$dense_12/bias/Regularizer/Square:y:0(dense_12/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_12/bias/Regularizer/Sum
dense_12/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_12/bias/Regularizer/mul/x¸
dense_12/bias/Regularizer/mulMul(dense_12/bias/Regularizer/mul/x:output:0&dense_12/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_12/bias/Regularizer/mul¸
1dense_13/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_13_2719145*
_output_shapes
:	¬2*
dtype023
1dense_13/kernel/Regularizer/Square/ReadVariableOp·
"dense_13/kernel/Regularizer/SquareSquare9dense_13/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬22$
"dense_13/kernel/Regularizer/Square
!dense_13/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_13/kernel/Regularizer/Const¾
dense_13/kernel/Regularizer/SumSum&dense_13/kernel/Regularizer/Square:y:0*dense_13/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_13/kernel/Regularizer/Sum
!dense_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!dense_13/kernel/Regularizer/mul/xÀ
dense_13/kernel/Regularizer/mulMul*dense_13/kernel/Regularizer/mul/x:output:0(dense_13/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_13/kernel/Regularizer/mul¯
/dense_14/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_14_2719152*
_output_shapes
:	*
dtype021
/dense_14/bias/Regularizer/Square/ReadVariableOp¬
 dense_14/bias/Regularizer/SquareSquare7dense_14/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2"
 dense_14/bias/Regularizer/Square
dense_14/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_14/bias/Regularizer/Const¶
dense_14/bias/Regularizer/SumSum$dense_14/bias/Regularizer/Square:y:0(dense_14/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_14/bias/Regularizer/Sum
dense_14/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_14/bias/Regularizer/mul/x¸
dense_14/bias/Regularizer/mulMul(dense_14/bias/Regularizer/mul/x:output:0&dense_14/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_14/bias/Regularizer/mul
IdentityIdentity"softmax_4/PartitionedCall:output:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp!^dense_12/StatefulPartitionedCall0^dense_12/bias/Regularizer/Square/ReadVariableOp!^dense_13/StatefulPartitionedCall2^dense_13/kernel/Regularizer/Square/ReadVariableOp!^dense_14/StatefulPartitionedCall0^dense_14/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2

Identityù

Identity_1Identity(conv1d_4/ActivityRegularizer/truediv:z:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp!^dense_12/StatefulPartitionedCall0^dense_12/bias/Regularizer/Square/ReadVariableOp!^dense_13/StatefulPartitionedCall2^dense_13/kernel/Regularizer/Square/ReadVariableOp!^dense_14/StatefulPartitionedCall0^dense_14/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1ù

Identity_2Identity(dense_12/ActivityRegularizer/truediv:z:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp!^dense_12/StatefulPartitionedCall0^dense_12/bias/Regularizer/Square/ReadVariableOp!^dense_13/StatefulPartitionedCall2^dense_13/kernel/Regularizer/Square/ReadVariableOp!^dense_14/StatefulPartitionedCall0^dense_14/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2ù

Identity_3Identity(dense_14/ActivityRegularizer/truediv:z:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp!^dense_12/StatefulPartitionedCall0^dense_12/bias/Regularizer/Square/ReadVariableOp!^dense_13/StatefulPartitionedCall2^dense_13/kernel/Regularizer/Square/ReadVariableOp!^dense_14/StatefulPartitionedCall0^dense_14/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ	: : : : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2b
/conv1d_4/bias/Regularizer/Square/ReadVariableOp/conv1d_4/bias/Regularizer/Square/ReadVariableOp2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2b
/dense_12/bias/Regularizer/Square/ReadVariableOp/dense_12/bias/Regularizer/Square/ReadVariableOp2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2f
1dense_13/kernel/Regularizer/Square/ReadVariableOp1dense_13/kernel/Regularizer/Square/ReadVariableOp2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2b
/dense_14/bias/Regularizer/Square/ReadVariableOp/dense_14/bias/Regularizer/Square/ReadVariableOp:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
(
_user_specified_nameconv1d_4_input

¨
E__inference_dense_14_layer_call_and_return_conditional_losses_2719894

inputs0
matmul_readvariableop_resource:2	-
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢/dense_14/bias/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2	
BiasAdd¾
/dense_14/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype021
/dense_14/bias/Regularizer/Square/ReadVariableOp¬
 dense_14/bias/Regularizer/SquareSquare7dense_14/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2"
 dense_14/bias/Regularizer/Square
dense_14/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_14/bias/Regularizer/Const¶
dense_14/bias/Regularizer/SumSum$dense_14/bias/Regularizer/Square:y:0(dense_14/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_14/bias/Regularizer/Sum
dense_14/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_14/bias/Regularizer/mul/x¸
dense_14/bias/Regularizer/mulMul(dense_14/bias/Regularizer/mul/x:output:0&dense_14/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_14/bias/Regularizer/mulÇ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_14/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_14/bias/Regularizer/Square/ReadVariableOp/dense_14/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs

¨
E__inference_dense_14_layer_call_and_return_conditional_losses_2718770

inputs0
matmul_readvariableop_resource:2	-
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢/dense_14/bias/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2	
BiasAdd¾
/dense_14/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype021
/dense_14/bias/Regularizer/Square/ReadVariableOp¬
 dense_14/bias/Regularizer/SquareSquare7dense_14/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2"
 dense_14/bias/Regularizer/Square
dense_14/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_14/bias/Regularizer/Const¶
dense_14/bias/Regularizer/SumSum$dense_14/bias/Regularizer/Square:y:0(dense_14/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_14/bias/Regularizer/Sum
dense_14/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_14/bias/Regularizer/mul/x¸
dense_14/bias/Regularizer/mulMul(dense_14/bias/Regularizer/mul/x:output:0&dense_14/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_14/bias/Regularizer/mulÇ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_14/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_14/bias/Regularizer/Square/ReadVariableOp/dense_14/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
à
b
F__inference_flatten_4_layer_call_and_return_conditional_losses_2719652

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ´   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø«
	
I__inference_sequential_4_layer_call_and_return_conditional_losses_2719450

inputsJ
4conv1d_4_conv1d_expanddims_1_readvariableop_resource:	6
(conv1d_4_biasadd_readvariableop_resource:;
'dense_12_matmul_readvariableop_resource:
´¬7
(dense_12_biasadd_readvariableop_resource:	¬:
'dense_13_matmul_readvariableop_resource:	¬26
(dense_13_biasadd_readvariableop_resource:29
'dense_14_matmul_readvariableop_resource:2	6
(dense_14_biasadd_readvariableop_resource:	
identity

identity_1

identity_2

identity_3¢conv1d_4/BiasAdd/ReadVariableOp¢/conv1d_4/bias/Regularizer/Square/ReadVariableOp¢+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp¢1conv1d_4/kernel/Regularizer/Square/ReadVariableOp¢dense_12/BiasAdd/ReadVariableOp¢dense_12/MatMul/ReadVariableOp¢/dense_12/bias/Regularizer/Square/ReadVariableOp¢dense_13/BiasAdd/ReadVariableOp¢dense_13/MatMul/ReadVariableOp¢1dense_13/kernel/Regularizer/Square/ReadVariableOp¢dense_14/BiasAdd/ReadVariableOp¢dense_14/MatMul/ReadVariableOp¢/dense_14/bias/Regularizer/Square/ReadVariableOp
conv1d_4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2 
conv1d_4/conv1d/ExpandDims/dim±
conv1d_4/conv1d/ExpandDims
ExpandDimsinputs'conv1d_4/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
conv1d_4/conv1d/ExpandDimsÓ
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	*
dtype02-
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_4/conv1d/ExpandDims_1/dimÛ
conv1d_4/conv1d/ExpandDims_1
ExpandDims3conv1d_4/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_4/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	2
conv1d_4/conv1d/ExpandDims_1Û
conv1d_4/conv1dConv2D#conv1d_4/conv1d/ExpandDims:output:0%conv1d_4/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
conv1d_4/conv1d­
conv1d_4/conv1d/SqueezeSqueezeconv1d_4/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_4/conv1d/Squeeze§
conv1d_4/BiasAdd/ReadVariableOpReadVariableOp(conv1d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv1d_4/BiasAdd/ReadVariableOp°
conv1d_4/BiasAddBiasAdd conv1d_4/conv1d/Squeeze:output:0'conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv1d_4/BiasAddt
conv1d_4/EluEluconv1d_4/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv1d_4/Elu¦
#conv1d_4/ActivityRegularizer/SquareSquareconv1d_4/Elu:activations:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#conv1d_4/ActivityRegularizer/Square
"conv1d_4/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"conv1d_4/ActivityRegularizer/ConstÂ
 conv1d_4/ActivityRegularizer/SumSum'conv1d_4/ActivityRegularizer/Square:y:0+conv1d_4/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv1d_4/ActivityRegularizer/Sum
"conv1d_4/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82$
"conv1d_4/ActivityRegularizer/mul/xÄ
 conv1d_4/ActivityRegularizer/mulMul+conv1d_4/ActivityRegularizer/mul/x:output:0)conv1d_4/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv1d_4/ActivityRegularizer/mul
"conv1d_4/ActivityRegularizer/ShapeShapeconv1d_4/Elu:activations:0*
T0*
_output_shapes
:2$
"conv1d_4/ActivityRegularizer/Shape®
0conv1d_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0conv1d_4/ActivityRegularizer/strided_slice/stack²
2conv1d_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2conv1d_4/ActivityRegularizer/strided_slice/stack_1²
2conv1d_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2conv1d_4/ActivityRegularizer/strided_slice/stack_2
*conv1d_4/ActivityRegularizer/strided_sliceStridedSlice+conv1d_4/ActivityRegularizer/Shape:output:09conv1d_4/ActivityRegularizer/strided_slice/stack:output:0;conv1d_4/ActivityRegularizer/strided_slice/stack_1:output:0;conv1d_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*conv1d_4/ActivityRegularizer/strided_slice³
!conv1d_4/ActivityRegularizer/CastCast3conv1d_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!conv1d_4/ActivityRegularizer/CastÅ
$conv1d_4/ActivityRegularizer/truedivRealDiv$conv1d_4/ActivityRegularizer/mul:z:0%conv1d_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$conv1d_4/ActivityRegularizer/truedivs
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ´   2
flatten_4/Const
flatten_4/ReshapeReshapeconv1d_4/Elu:activations:0flatten_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
flatten_4/Reshapeª
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource* 
_output_shapes
:
´¬*
dtype02 
dense_12/MatMul/ReadVariableOp£
dense_12/MatMulMatMulflatten_4/Reshape:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dense_12/MatMul¨
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes	
:¬*
dtype02!
dense_12/BiasAdd/ReadVariableOp¦
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dense_12/BiasAddt
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dense_12/Relu¤
#dense_12/ActivityRegularizer/SquareSquaredense_12/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2%
#dense_12/ActivityRegularizer/Square
"dense_12/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_12/ActivityRegularizer/ConstÂ
 dense_12/ActivityRegularizer/SumSum'dense_12/ActivityRegularizer/Square:y:0+dense_12/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_12/ActivityRegularizer/Sum
"dense_12/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82$
"dense_12/ActivityRegularizer/mul/xÄ
 dense_12/ActivityRegularizer/mulMul+dense_12/ActivityRegularizer/mul/x:output:0)dense_12/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_12/ActivityRegularizer/mul
"dense_12/ActivityRegularizer/ShapeShapedense_12/Relu:activations:0*
T0*
_output_shapes
:2$
"dense_12/ActivityRegularizer/Shape®
0dense_12/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_12/ActivityRegularizer/strided_slice/stack²
2dense_12/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_12/ActivityRegularizer/strided_slice/stack_1²
2dense_12/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_12/ActivityRegularizer/strided_slice/stack_2
*dense_12/ActivityRegularizer/strided_sliceStridedSlice+dense_12/ActivityRegularizer/Shape:output:09dense_12/ActivityRegularizer/strided_slice/stack:output:0;dense_12/ActivityRegularizer/strided_slice/stack_1:output:0;dense_12/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_12/ActivityRegularizer/strided_slice³
!dense_12/ActivityRegularizer/CastCast3dense_12/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_12/ActivityRegularizer/CastÅ
$dense_12/ActivityRegularizer/truedivRealDiv$dense_12/ActivityRegularizer/mul:z:0%dense_12/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_12/ActivityRegularizer/truediv
dropout_4/IdentityIdentitydense_12/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_4/Identity©
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes
:	¬2*
dtype02 
dense_13/MatMul/ReadVariableOp£
dense_13/MatMulMatMuldropout_4/Identity:output:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dense_13/MatMul§
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_13/BiasAdd/ReadVariableOp¥
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dense_13/BiasAdds
dense_13/ReluReludense_13/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dense_13/Relu¨
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

:2	*
dtype02 
dense_14/MatMul/ReadVariableOp£
dense_14/MatMulMatMuldense_13/Relu:activations:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
dense_14/MatMul§
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype02!
dense_14/BiasAdd/ReadVariableOp¥
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
dense_14/BiasAdd¡
#dense_14/ActivityRegularizer/SquareSquaredense_14/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2%
#dense_14/ActivityRegularizer/Square
"dense_14/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_14/ActivityRegularizer/ConstÂ
 dense_14/ActivityRegularizer/SumSum'dense_14/ActivityRegularizer/Square:y:0+dense_14/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_14/ActivityRegularizer/Sum
"dense_14/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82$
"dense_14/ActivityRegularizer/mul/xÄ
 dense_14/ActivityRegularizer/mulMul+dense_14/ActivityRegularizer/mul/x:output:0)dense_14/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_14/ActivityRegularizer/mul
"dense_14/ActivityRegularizer/ShapeShapedense_14/BiasAdd:output:0*
T0*
_output_shapes
:2$
"dense_14/ActivityRegularizer/Shape®
0dense_14/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_14/ActivityRegularizer/strided_slice/stack²
2dense_14/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_14/ActivityRegularizer/strided_slice/stack_1²
2dense_14/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_14/ActivityRegularizer/strided_slice/stack_2
*dense_14/ActivityRegularizer/strided_sliceStridedSlice+dense_14/ActivityRegularizer/Shape:output:09dense_14/ActivityRegularizer/strided_slice/stack:output:0;dense_14/ActivityRegularizer/strided_slice/stack_1:output:0;dense_14/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_14/ActivityRegularizer/strided_slice³
!dense_14/ActivityRegularizer/CastCast3dense_14/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_14/ActivityRegularizer/CastÅ
$dense_14/ActivityRegularizer/truedivRealDiv$dense_14/ActivityRegularizer/mul:z:0%dense_14/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_14/ActivityRegularizer/truediv~
softmax_4/SoftmaxSoftmaxdense_14/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
softmax_4/Softmaxß
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	*
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpº
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	2$
"conv1d_4/kernel/Regularizer/Square
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const¾
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_4/kernel/Regularizer/mul/xÀ
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mulÇ
/conv1d_4/bias/Regularizer/Square/ReadVariableOpReadVariableOp(conv1d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/conv1d_4/bias/Regularizer/Square/ReadVariableOp¬
 conv1d_4/bias/Regularizer/SquareSquare7conv1d_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 conv1d_4/bias/Regularizer/Square
conv1d_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
conv1d_4/bias/Regularizer/Const¶
conv1d_4/bias/Regularizer/SumSum$conv1d_4/bias/Regularizer/Square:y:0(conv1d_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/Sum
conv1d_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
conv1d_4/bias/Regularizer/mul/x¸
conv1d_4/bias/Regularizer/mulMul(conv1d_4/bias/Regularizer/mul/x:output:0&conv1d_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/mulÈ
/dense_12/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes	
:¬*
dtype021
/dense_12/bias/Regularizer/Square/ReadVariableOp­
 dense_12/bias/Regularizer/SquareSquare7dense_12/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:¬2"
 dense_12/bias/Regularizer/Square
dense_12/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_12/bias/Regularizer/Const¶
dense_12/bias/Regularizer/SumSum$dense_12/bias/Regularizer/Square:y:0(dense_12/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_12/bias/Regularizer/Sum
dense_12/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_12/bias/Regularizer/mul/x¸
dense_12/bias/Regularizer/mulMul(dense_12/bias/Regularizer/mul/x:output:0&dense_12/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_12/bias/Regularizer/mulÏ
1dense_13/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes
:	¬2*
dtype023
1dense_13/kernel/Regularizer/Square/ReadVariableOp·
"dense_13/kernel/Regularizer/SquareSquare9dense_13/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬22$
"dense_13/kernel/Regularizer/Square
!dense_13/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_13/kernel/Regularizer/Const¾
dense_13/kernel/Regularizer/SumSum&dense_13/kernel/Regularizer/Square:y:0*dense_13/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_13/kernel/Regularizer/Sum
!dense_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!dense_13/kernel/Regularizer/mul/xÀ
dense_13/kernel/Regularizer/mulMul*dense_13/kernel/Regularizer/mul/x:output:0(dense_13/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_13/kernel/Regularizer/mulÇ
/dense_14/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype021
/dense_14/bias/Regularizer/Square/ReadVariableOp¬
 dense_14/bias/Regularizer/SquareSquare7dense_14/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2"
 dense_14/bias/Regularizer/Square
dense_14/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_14/bias/Regularizer/Const¶
dense_14/bias/Regularizer/SumSum$dense_14/bias/Regularizer/Square:y:0(dense_14/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_14/bias/Regularizer/Sum
dense_14/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_14/bias/Regularizer/mul/x¸
dense_14/bias/Regularizer/mulMul(dense_14/bias/Regularizer/mul/x:output:0&dense_14/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_14/bias/Regularizer/mul
IdentityIdentitysoftmax_4/Softmax:softmax:0 ^conv1d_4/BiasAdd/ReadVariableOp0^conv1d_4/bias/Regularizer/Square/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp0^dense_12/bias/Regularizer/Square/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp2^dense_13/kernel/Regularizer/Square/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp0^dense_14/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2

Identity

Identity_1Identity(conv1d_4/ActivityRegularizer/truediv:z:0 ^conv1d_4/BiasAdd/ReadVariableOp0^conv1d_4/bias/Regularizer/Square/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp0^dense_12/bias/Regularizer/Square/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp2^dense_13/kernel/Regularizer/Square/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp0^dense_14/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1

Identity_2Identity(dense_12/ActivityRegularizer/truediv:z:0 ^conv1d_4/BiasAdd/ReadVariableOp0^conv1d_4/bias/Regularizer/Square/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp0^dense_12/bias/Regularizer/Square/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp2^dense_13/kernel/Regularizer/Square/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp0^dense_14/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2

Identity_3Identity(dense_14/ActivityRegularizer/truediv:z:0 ^conv1d_4/BiasAdd/ReadVariableOp0^conv1d_4/bias/Regularizer/Square/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp0^dense_12/bias/Regularizer/Square/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp2^dense_13/kernel/Regularizer/Square/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp0^dense_14/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ	: : : : : : : : 2B
conv1d_4/BiasAdd/ReadVariableOpconv1d_4/BiasAdd/ReadVariableOp2b
/conv1d_4/bias/Regularizer/Square/ReadVariableOp/conv1d_4/bias/Regularizer/Square/ReadVariableOp2Z
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2b
/dense_12/bias/Regularizer/Square/ReadVariableOp/dense_12/bias/Regularizer/Square/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2f
1dense_13/kernel/Regularizer/Square/ReadVariableOp1dense_13/kernel/Regularizer/Square/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2b
/dense_14/bias/Regularizer/Square/ReadVariableOp/dense_14/bias/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
Ï
G
+__inference_flatten_4_layer_call_fn_2719657

inputs
identityÊ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_27186912
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ùG
Á
 __inference__traced_save_2720016
file_prefix.
*savev2_conv1d_4_kernel_read_readvariableop,
(savev2_conv1d_4_bias_read_readvariableop.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop.
*savev2_dense_13_kernel_read_readvariableop,
(savev2_dense_13_bias_read_readvariableop.
*savev2_dense_14_kernel_read_readvariableop,
(savev2_dense_14_bias_read_readvariableop(
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
/savev2_adam_conv1d_4_bias_m_read_readvariableop5
1savev2_adam_dense_12_kernel_m_read_readvariableop3
/savev2_adam_dense_12_bias_m_read_readvariableop5
1savev2_adam_dense_13_kernel_m_read_readvariableop3
/savev2_adam_dense_13_bias_m_read_readvariableop5
1savev2_adam_dense_14_kernel_m_read_readvariableop3
/savev2_adam_dense_14_bias_m_read_readvariableop5
1savev2_adam_conv1d_4_kernel_v_read_readvariableop3
/savev2_adam_conv1d_4_bias_v_read_readvariableop5
1savev2_adam_dense_12_kernel_v_read_readvariableop3
/savev2_adam_dense_12_bias_v_read_readvariableop5
1savev2_adam_dense_13_kernel_v_read_readvariableop3
/savev2_adam_dense_13_bias_v_read_readvariableop5
1savev2_adam_dense_14_kernel_v_read_readvariableop3
/savev2_adam_dense_14_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
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
Const_1
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameÆ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*Ø
valueÎBË"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÌ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices«
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv1d_4_kernel_read_readvariableop(savev2_conv1d_4_bias_read_readvariableop*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop*savev2_dense_13_kernel_read_readvariableop(savev2_dense_13_bias_read_readvariableop*savev2_dense_14_kernel_read_readvariableop(savev2_dense_14_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_conv1d_4_kernel_m_read_readvariableop/savev2_adam_conv1d_4_bias_m_read_readvariableop1savev2_adam_dense_12_kernel_m_read_readvariableop/savev2_adam_dense_12_bias_m_read_readvariableop1savev2_adam_dense_13_kernel_m_read_readvariableop/savev2_adam_dense_13_bias_m_read_readvariableop1savev2_adam_dense_14_kernel_m_read_readvariableop/savev2_adam_dense_14_bias_m_read_readvariableop1savev2_adam_conv1d_4_kernel_v_read_readvariableop/savev2_adam_conv1d_4_bias_v_read_readvariableop1savev2_adam_dense_12_kernel_v_read_readvariableop/savev2_adam_dense_12_bias_v_read_readvariableop1savev2_adam_dense_13_kernel_v_read_readvariableop/savev2_adam_dense_13_bias_v_read_readvariableop1savev2_adam_dense_14_kernel_v_read_readvariableop/savev2_adam_dense_14_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
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

identity_1Identity_1:output:0*
_input_shapesñ
î: :	::
´¬:¬:	¬2:2:2	:	: : : : : : : : : :	::
´¬:¬:	¬2:2:2	:	:	::
´¬:¬:	¬2:2:2	:	: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:	: 

_output_shapes
::&"
 
_output_shapes
:
´¬:!

_output_shapes	
:¬:%!

_output_shapes
:	¬2: 

_output_shapes
:2:$ 

_output_shapes

:2	: 

_output_shapes
:	:	
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
: :

_output_shapes
: :

_output_shapes
: :($
"
_output_shapes
:	: 

_output_shapes
::&"
 
_output_shapes
:
´¬:!

_output_shapes	
:¬:%!

_output_shapes
:	¬2: 

_output_shapes
:2:$ 

_output_shapes

:2	: 

_output_shapes
:	:($
"
_output_shapes
:	: 

_output_shapes
::&"
 
_output_shapes
:
´¬:!

_output_shapes	
:¬:%!

_output_shapes
:	¬2: 

_output_shapes
:2:$  

_output_shapes

:2	: !

_output_shapes
:	:"

_output_shapes
: 
Ã
Ê
I__inference_conv1d_4_layer_call_and_return_all_conditional_losses_2719637

inputs
unknown:	
	unknown_0:
identity

identity_1¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_4_layer_call_and_return_conditional_losses_27186712
StatefulPartitionedCall½
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
GPU2 *0J 8 *:
f5R3
1__inference_conv1d_4_activity_regularizer_27186102
PartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

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
:ÿÿÿÿÿÿÿÿÿ	: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs

«
E__inference_dense_12_layer_call_and_return_conditional_losses_2718710

inputs2
matmul_readvariableop_resource:
´¬.
biasadd_readvariableop_resource:	¬
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢/dense_12/bias/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
´¬*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:¬*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
Relu¿
/dense_12/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:¬*
dtype021
/dense_12/bias/Regularizer/Square/ReadVariableOp­
 dense_12/bias/Regularizer/SquareSquare7dense_12/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:¬2"
 dense_12/bias/Regularizer/Square
dense_12/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_12/bias/Regularizer/Const¶
dense_12/bias/Regularizer/SumSum$dense_12/bias/Regularizer/Square:y:0(dense_12/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_12/bias/Regularizer/Sum
dense_12/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_12/bias/Regularizer/mul/x¸
dense_12/bias/Regularizer/mulMul(dense_12/bias/Regularizer/mul/x:output:0&dense_12/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_12/bias/Regularizer/mulÊ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_12/bias/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_12/bias/Regularizer/Square/ReadVariableOp/dense_12/bias/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 
_user_specified_nameinputs
¯
Æ
I__inference_dense_14_layer_call_and_return_all_conditional_losses_2719759

inputs
unknown:2	
	unknown_0:	
identity

identity_1¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_dense_14_layer_call_and_return_conditional_losses_27187702
StatefulPartitionedCall½
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
GPU2 *0J 8 *:
f5R3
1__inference_dense_14_activity_regularizer_27186362
PartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2

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
:ÿÿÿÿÿÿÿÿÿ2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
£
«
__inference_loss_fn_2_2719811G
8dense_12_bias_regularizer_square_readvariableop_resource:	¬
identity¢/dense_12/bias/Regularizer/Square/ReadVariableOpØ
/dense_12/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_12_bias_regularizer_square_readvariableop_resource*
_output_shapes	
:¬*
dtype021
/dense_12/bias/Regularizer/Square/ReadVariableOp­
 dense_12/bias/Regularizer/SquareSquare7dense_12/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:¬2"
 dense_12/bias/Regularizer/Square
dense_12/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_12/bias/Regularizer/Const¶
dense_12/bias/Regularizer/SumSum$dense_12/bias/Regularizer/Square:y:0(dense_12/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_12/bias/Regularizer/Sum
dense_12/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_12/bias/Regularizer/mul/x¸
dense_12/bias/Regularizer/mulMul(dense_12/bias/Regularizer/mul/x:output:0&dense_12/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_12/bias/Regularizer/mul
IdentityIdentity!dense_12/bias/Regularizer/mul:z:00^dense_12/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_12/bias/Regularizer/Square/ReadVariableOp/dense_12/bias/Regularizer/Square/ReadVariableOp

ã
#__inference__traced_restore_2720125
file_prefix6
 assignvariableop_conv1d_4_kernel:	.
 assignvariableop_1_conv1d_4_bias:6
"assignvariableop_2_dense_12_kernel:
´¬/
 assignvariableop_3_dense_12_bias:	¬5
"assignvariableop_4_dense_13_kernel:	¬2.
 assignvariableop_5_dense_13_bias:24
"assignvariableop_6_dense_14_kernel:2	.
 assignvariableop_7_dense_14_bias:	&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: @
*assignvariableop_17_adam_conv1d_4_kernel_m:	6
(assignvariableop_18_adam_conv1d_4_bias_m:>
*assignvariableop_19_adam_dense_12_kernel_m:
´¬7
(assignvariableop_20_adam_dense_12_bias_m:	¬=
*assignvariableop_21_adam_dense_13_kernel_m:	¬26
(assignvariableop_22_adam_dense_13_bias_m:2<
*assignvariableop_23_adam_dense_14_kernel_m:2	6
(assignvariableop_24_adam_dense_14_bias_m:	@
*assignvariableop_25_adam_conv1d_4_kernel_v:	6
(assignvariableop_26_adam_conv1d_4_bias_v:>
*assignvariableop_27_adam_dense_12_kernel_v:
´¬7
(assignvariableop_28_adam_dense_12_bias_v:	¬=
*assignvariableop_29_adam_dense_13_kernel_v:	¬26
(assignvariableop_30_adam_dense_13_bias_v:2<
*assignvariableop_31_adam_dense_14_kernel_v:2	6
(assignvariableop_32_adam_dense_14_bias_v:	
identity_34¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Ì
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*Ø
valueÎBË"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÒ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesØ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp assignvariableop_conv1d_4_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_4_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2§
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_12_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¥
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_12_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4§
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_13_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¥
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_13_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6§
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_14_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¥
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_14_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8¡
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9£
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10§
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¦
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12®
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13¡
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14¡
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15£
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16£
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17²
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_conv1d_4_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18°
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_conv1d_4_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19²
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_12_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20°
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_12_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21²
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_13_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22°
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_13_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23²
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_14_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24°
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_14_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25²
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_conv1d_4_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26°
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_conv1d_4_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27²
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_12_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28°
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_12_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29²
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_13_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30°
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_13_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31²
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_14_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32°
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_14_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_329
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp´
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_33§
Identity_34IdentityIdentity_33:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_34"#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
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
­%
ú
E__inference_conv1d_4_layer_call_and_return_conditional_losses_2719861

inputsA
+conv1d_expanddims_1_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOp¢/conv1d_4/bias/Regularizer/Square/ReadVariableOp¢1conv1d_4/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim·
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	2
conv1d/ExpandDims_1·
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
EluEluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
EluÖ
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	*
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpº
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	2$
"conv1d_4/kernel/Regularizer/Square
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const¾
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_4/kernel/Regularizer/mul/xÀ
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mul¾
/conv1d_4/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/conv1d_4/bias/Regularizer/Square/ReadVariableOp¬
 conv1d_4/bias/Regularizer/SquareSquare7conv1d_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 conv1d_4/bias/Regularizer/Square
conv1d_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
conv1d_4/bias/Regularizer/Const¶
conv1d_4/bias/Regularizer/SumSum$conv1d_4/bias/Regularizer/Square:y:0(conv1d_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/Sum
conv1d_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
conv1d_4/bias/Regularizer/mul/x¸
conv1d_4/bias/Regularizer/mulMul(conv1d_4/bias/Regularizer/mul/x:output:0&conv1d_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/mul
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2b
/conv1d_4/bias/Regularizer/Square/ReadVariableOp/conv1d_4/bias/Regularizer/Square/ReadVariableOp2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
°
«
E__inference_dense_13_layer_call_and_return_conditional_losses_2718748

inputs1
matmul_readvariableop_resource:	¬2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_13/kernel/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	¬2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
ReluÆ
1dense_13/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	¬2*
dtype023
1dense_13/kernel/Regularizer/Square/ReadVariableOp·
"dense_13/kernel/Regularizer/SquareSquare9dense_13/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬22$
"dense_13/kernel/Regularizer/Square
!dense_13/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_13/kernel/Regularizer/Const¾
dense_13/kernel/Regularizer/SumSum&dense_13/kernel/Regularizer/Square:y:0*dense_13/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_13/kernel/Regularizer/Sum
!dense_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!dense_13/kernel/Regularizer/mul/xÀ
dense_13/kernel/Regularizer/mulMul*dense_13/kernel/Regularizer/mul/x:output:0(dense_13/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_13/kernel/Regularizer/mulË
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_13/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¬: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_13/kernel/Regularizer/Square/ReadVariableOp1dense_13/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_nameinputs
©

*__inference_dense_12_layer_call_fn_2719683

inputs
unknown:
´¬
	unknown_0:	¬
identity¢StatefulPartitionedCallû
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_27187102
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 
_user_specified_nameinputs

«
E__inference_dense_12_layer_call_and_return_conditional_losses_2719878

inputs2
matmul_readvariableop_resource:
´¬.
biasadd_readvariableop_resource:	¬
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢/dense_12/bias/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
´¬*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:¬*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
Relu¿
/dense_12/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:¬*
dtype021
/dense_12/bias/Regularizer/Square/ReadVariableOp­
 dense_12/bias/Regularizer/SquareSquare7dense_12/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:¬2"
 dense_12/bias/Regularizer/Square
dense_12/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_12/bias/Regularizer/Const¶
dense_12/bias/Regularizer/SumSum$dense_12/bias/Regularizer/Square:y:0(dense_12/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_12/bias/Regularizer/Sum
dense_12/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_12/bias/Regularizer/mul/x¸
dense_12/bias/Regularizer/mulMul(dense_12/bias/Regularizer/mul/x:output:0&dense_12/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_12/bias/Regularizer/mulÊ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_12/bias/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_12/bias/Regularizer/Square/ReadVariableOp/dense_12/bias/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 
_user_specified_nameinputs
þ

"__inference__wrapped_model_2718597
conv1d_4_inputW
Asequential_4_conv1d_4_conv1d_expanddims_1_readvariableop_resource:	C
5sequential_4_conv1d_4_biasadd_readvariableop_resource:H
4sequential_4_dense_12_matmul_readvariableop_resource:
´¬D
5sequential_4_dense_12_biasadd_readvariableop_resource:	¬G
4sequential_4_dense_13_matmul_readvariableop_resource:	¬2C
5sequential_4_dense_13_biasadd_readvariableop_resource:2F
4sequential_4_dense_14_matmul_readvariableop_resource:2	C
5sequential_4_dense_14_biasadd_readvariableop_resource:	
identity¢,sequential_4/conv1d_4/BiasAdd/ReadVariableOp¢8sequential_4/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp¢,sequential_4/dense_12/BiasAdd/ReadVariableOp¢+sequential_4/dense_12/MatMul/ReadVariableOp¢,sequential_4/dense_13/BiasAdd/ReadVariableOp¢+sequential_4/dense_13/MatMul/ReadVariableOp¢,sequential_4/dense_14/BiasAdd/ReadVariableOp¢+sequential_4/dense_14/MatMul/ReadVariableOp¥
+sequential_4/conv1d_4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2-
+sequential_4/conv1d_4/conv1d/ExpandDims/dimà
'sequential_4/conv1d_4/conv1d/ExpandDims
ExpandDimsconv1d_4_input4sequential_4/conv1d_4/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2)
'sequential_4/conv1d_4/conv1d/ExpandDimsú
8sequential_4/conv1d_4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOpAsequential_4_conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	*
dtype02:
8sequential_4/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp 
-sequential_4/conv1d_4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2/
-sequential_4/conv1d_4/conv1d/ExpandDims_1/dim
)sequential_4/conv1d_4/conv1d/ExpandDims_1
ExpandDims@sequential_4/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp:value:06sequential_4/conv1d_4/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	2+
)sequential_4/conv1d_4/conv1d/ExpandDims_1
sequential_4/conv1d_4/conv1dConv2D0sequential_4/conv1d_4/conv1d/ExpandDims:output:02sequential_4/conv1d_4/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
sequential_4/conv1d_4/conv1dÔ
$sequential_4/conv1d_4/conv1d/SqueezeSqueeze%sequential_4/conv1d_4/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2&
$sequential_4/conv1d_4/conv1d/SqueezeÎ
,sequential_4/conv1d_4/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_conv1d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02.
,sequential_4/conv1d_4/BiasAdd/ReadVariableOpä
sequential_4/conv1d_4/BiasAddBiasAdd-sequential_4/conv1d_4/conv1d/Squeeze:output:04sequential_4/conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_4/conv1d_4/BiasAdd
sequential_4/conv1d_4/EluElu&sequential_4/conv1d_4/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_4/conv1d_4/EluÍ
0sequential_4/conv1d_4/ActivityRegularizer/SquareSquare'sequential_4/conv1d_4/Elu:activations:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0sequential_4/conv1d_4/ActivityRegularizer/Square·
/sequential_4/conv1d_4/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          21
/sequential_4/conv1d_4/ActivityRegularizer/Constö
-sequential_4/conv1d_4/ActivityRegularizer/SumSum4sequential_4/conv1d_4/ActivityRegularizer/Square:y:08sequential_4/conv1d_4/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2/
-sequential_4/conv1d_4/ActivityRegularizer/Sum§
/sequential_4/conv1d_4/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/sequential_4/conv1d_4/ActivityRegularizer/mul/xø
-sequential_4/conv1d_4/ActivityRegularizer/mulMul8sequential_4/conv1d_4/ActivityRegularizer/mul/x:output:06sequential_4/conv1d_4/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-sequential_4/conv1d_4/ActivityRegularizer/mul¹
/sequential_4/conv1d_4/ActivityRegularizer/ShapeShape'sequential_4/conv1d_4/Elu:activations:0*
T0*
_output_shapes
:21
/sequential_4/conv1d_4/ActivityRegularizer/ShapeÈ
=sequential_4/conv1d_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2?
=sequential_4/conv1d_4/ActivityRegularizer/strided_slice/stackÌ
?sequential_4/conv1d_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_4/conv1d_4/ActivityRegularizer/strided_slice/stack_1Ì
?sequential_4/conv1d_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_4/conv1d_4/ActivityRegularizer/strided_slice/stack_2Þ
7sequential_4/conv1d_4/ActivityRegularizer/strided_sliceStridedSlice8sequential_4/conv1d_4/ActivityRegularizer/Shape:output:0Fsequential_4/conv1d_4/ActivityRegularizer/strided_slice/stack:output:0Hsequential_4/conv1d_4/ActivityRegularizer/strided_slice/stack_1:output:0Hsequential_4/conv1d_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask29
7sequential_4/conv1d_4/ActivityRegularizer/strided_sliceÚ
.sequential_4/conv1d_4/ActivityRegularizer/CastCast@sequential_4/conv1d_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 20
.sequential_4/conv1d_4/ActivityRegularizer/Castù
1sequential_4/conv1d_4/ActivityRegularizer/truedivRealDiv1sequential_4/conv1d_4/ActivityRegularizer/mul:z:02sequential_4/conv1d_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 23
1sequential_4/conv1d_4/ActivityRegularizer/truediv
sequential_4/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ´   2
sequential_4/flatten_4/ConstÎ
sequential_4/flatten_4/ReshapeReshape'sequential_4/conv1d_4/Elu:activations:0%sequential_4/flatten_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2 
sequential_4/flatten_4/ReshapeÑ
+sequential_4/dense_12/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_12_matmul_readvariableop_resource* 
_output_shapes
:
´¬*
dtype02-
+sequential_4/dense_12/MatMul/ReadVariableOp×
sequential_4/dense_12/MatMulMatMul'sequential_4/flatten_4/Reshape:output:03sequential_4/dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
sequential_4/dense_12/MatMulÏ
,sequential_4/dense_12/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_12_biasadd_readvariableop_resource*
_output_shapes	
:¬*
dtype02.
,sequential_4/dense_12/BiasAdd/ReadVariableOpÚ
sequential_4/dense_12/BiasAddBiasAdd&sequential_4/dense_12/MatMul:product:04sequential_4/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
sequential_4/dense_12/BiasAdd
sequential_4/dense_12/ReluRelu&sequential_4/dense_12/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
sequential_4/dense_12/ReluË
0sequential_4/dense_12/ActivityRegularizer/SquareSquare(sequential_4/dense_12/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬22
0sequential_4/dense_12/ActivityRegularizer/Square³
/sequential_4/dense_12/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/sequential_4/dense_12/ActivityRegularizer/Constö
-sequential_4/dense_12/ActivityRegularizer/SumSum4sequential_4/dense_12/ActivityRegularizer/Square:y:08sequential_4/dense_12/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2/
-sequential_4/dense_12/ActivityRegularizer/Sum§
/sequential_4/dense_12/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/sequential_4/dense_12/ActivityRegularizer/mul/xø
-sequential_4/dense_12/ActivityRegularizer/mulMul8sequential_4/dense_12/ActivityRegularizer/mul/x:output:06sequential_4/dense_12/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-sequential_4/dense_12/ActivityRegularizer/mulº
/sequential_4/dense_12/ActivityRegularizer/ShapeShape(sequential_4/dense_12/Relu:activations:0*
T0*
_output_shapes
:21
/sequential_4/dense_12/ActivityRegularizer/ShapeÈ
=sequential_4/dense_12/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2?
=sequential_4/dense_12/ActivityRegularizer/strided_slice/stackÌ
?sequential_4/dense_12/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_4/dense_12/ActivityRegularizer/strided_slice/stack_1Ì
?sequential_4/dense_12/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_4/dense_12/ActivityRegularizer/strided_slice/stack_2Þ
7sequential_4/dense_12/ActivityRegularizer/strided_sliceStridedSlice8sequential_4/dense_12/ActivityRegularizer/Shape:output:0Fsequential_4/dense_12/ActivityRegularizer/strided_slice/stack:output:0Hsequential_4/dense_12/ActivityRegularizer/strided_slice/stack_1:output:0Hsequential_4/dense_12/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask29
7sequential_4/dense_12/ActivityRegularizer/strided_sliceÚ
.sequential_4/dense_12/ActivityRegularizer/CastCast@sequential_4/dense_12/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 20
.sequential_4/dense_12/ActivityRegularizer/Castù
1sequential_4/dense_12/ActivityRegularizer/truedivRealDiv1sequential_4/dense_12/ActivityRegularizer/mul:z:02sequential_4/dense_12/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 23
1sequential_4/dense_12/ActivityRegularizer/truediv«
sequential_4/dropout_4/IdentityIdentity(sequential_4/dense_12/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2!
sequential_4/dropout_4/IdentityÐ
+sequential_4/dense_13/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_13_matmul_readvariableop_resource*
_output_shapes
:	¬2*
dtype02-
+sequential_4/dense_13/MatMul/ReadVariableOp×
sequential_4/dense_13/MatMulMatMul(sequential_4/dropout_4/Identity:output:03sequential_4/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
sequential_4/dense_13/MatMulÎ
,sequential_4/dense_13/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_13_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02.
,sequential_4/dense_13/BiasAdd/ReadVariableOpÙ
sequential_4/dense_13/BiasAddBiasAdd&sequential_4/dense_13/MatMul:product:04sequential_4/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
sequential_4/dense_13/BiasAdd
sequential_4/dense_13/ReluRelu&sequential_4/dense_13/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
sequential_4/dense_13/ReluÏ
+sequential_4/dense_14/MatMul/ReadVariableOpReadVariableOp4sequential_4_dense_14_matmul_readvariableop_resource*
_output_shapes

:2	*
dtype02-
+sequential_4/dense_14/MatMul/ReadVariableOp×
sequential_4/dense_14/MatMulMatMul(sequential_4/dense_13/Relu:activations:03sequential_4/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
sequential_4/dense_14/MatMulÎ
,sequential_4/dense_14/BiasAdd/ReadVariableOpReadVariableOp5sequential_4_dense_14_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype02.
,sequential_4/dense_14/BiasAdd/ReadVariableOpÙ
sequential_4/dense_14/BiasAddBiasAdd&sequential_4/dense_14/MatMul:product:04sequential_4/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
sequential_4/dense_14/BiasAddÈ
0sequential_4/dense_14/ActivityRegularizer/SquareSquare&sequential_4/dense_14/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	22
0sequential_4/dense_14/ActivityRegularizer/Square³
/sequential_4/dense_14/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       21
/sequential_4/dense_14/ActivityRegularizer/Constö
-sequential_4/dense_14/ActivityRegularizer/SumSum4sequential_4/dense_14/ActivityRegularizer/Square:y:08sequential_4/dense_14/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2/
-sequential_4/dense_14/ActivityRegularizer/Sum§
/sequential_4/dense_14/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ821
/sequential_4/dense_14/ActivityRegularizer/mul/xø
-sequential_4/dense_14/ActivityRegularizer/mulMul8sequential_4/dense_14/ActivityRegularizer/mul/x:output:06sequential_4/dense_14/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-sequential_4/dense_14/ActivityRegularizer/mul¸
/sequential_4/dense_14/ActivityRegularizer/ShapeShape&sequential_4/dense_14/BiasAdd:output:0*
T0*
_output_shapes
:21
/sequential_4/dense_14/ActivityRegularizer/ShapeÈ
=sequential_4/dense_14/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2?
=sequential_4/dense_14/ActivityRegularizer/strided_slice/stackÌ
?sequential_4/dense_14/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_4/dense_14/ActivityRegularizer/strided_slice/stack_1Ì
?sequential_4/dense_14/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2A
?sequential_4/dense_14/ActivityRegularizer/strided_slice/stack_2Þ
7sequential_4/dense_14/ActivityRegularizer/strided_sliceStridedSlice8sequential_4/dense_14/ActivityRegularizer/Shape:output:0Fsequential_4/dense_14/ActivityRegularizer/strided_slice/stack:output:0Hsequential_4/dense_14/ActivityRegularizer/strided_slice/stack_1:output:0Hsequential_4/dense_14/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask29
7sequential_4/dense_14/ActivityRegularizer/strided_sliceÚ
.sequential_4/dense_14/ActivityRegularizer/CastCast@sequential_4/dense_14/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 20
.sequential_4/dense_14/ActivityRegularizer/Castù
1sequential_4/dense_14/ActivityRegularizer/truedivRealDiv1sequential_4/dense_14/ActivityRegularizer/mul:z:02sequential_4/dense_14/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 23
1sequential_4/dense_14/ActivityRegularizer/truediv¥
sequential_4/softmax_4/SoftmaxSoftmax&sequential_4/dense_14/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2 
sequential_4/softmax_4/Softmaxý
IdentityIdentity(sequential_4/softmax_4/Softmax:softmax:0-^sequential_4/conv1d_4/BiasAdd/ReadVariableOp9^sequential_4/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp-^sequential_4/dense_12/BiasAdd/ReadVariableOp,^sequential_4/dense_12/MatMul/ReadVariableOp-^sequential_4/dense_13/BiasAdd/ReadVariableOp,^sequential_4/dense_13/MatMul/ReadVariableOp-^sequential_4/dense_14/BiasAdd/ReadVariableOp,^sequential_4/dense_14/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ	: : : : : : : : 2\
,sequential_4/conv1d_4/BiasAdd/ReadVariableOp,sequential_4/conv1d_4/BiasAdd/ReadVariableOp2t
8sequential_4/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp8sequential_4/conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2\
,sequential_4/dense_12/BiasAdd/ReadVariableOp,sequential_4/dense_12/BiasAdd/ReadVariableOp2Z
+sequential_4/dense_12/MatMul/ReadVariableOp+sequential_4/dense_12/MatMul/ReadVariableOp2\
,sequential_4/dense_13/BiasAdd/ReadVariableOp,sequential_4/dense_13/BiasAdd/ReadVariableOp2Z
+sequential_4/dense_13/MatMul/ReadVariableOp+sequential_4/dense_13/MatMul/ReadVariableOp2\
,sequential_4/dense_14/BiasAdd/ReadVariableOp,sequential_4/dense_14/BiasAdd/ReadVariableOp2Z
+sequential_4/dense_14/MatMul/ReadVariableOp+sequential_4/dense_14/MatMul/ReadVariableOp:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
(
_user_specified_nameconv1d_4_input
æ
b
F__inference_softmax_4_layer_call_and_return_conditional_losses_2719773

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
µ
e
F__inference_dropout_4_layer_call_and_return_conditional_losses_2718905

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *¼?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
×£<2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¬:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_nameinputs
×	
Í
.__inference_sequential_4_layer_call_fn_2719114
conv1d_4_input
unknown:	
	unknown_0:
	unknown_1:
´¬
	unknown_2:	¬
	unknown_3:	¬2
	unknown_4:2
	unknown_5:2	
	unknown_6:	
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	: : : **
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_27190682
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
(
_user_specified_nameconv1d_4_input
°
«
E__inference_dense_13_layer_call_and_return_conditional_losses_2719733

inputs1
matmul_readvariableop_resource:	¬2-
biasadd_readvariableop_resource:2
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢1dense_13/kernel/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	¬2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
ReluÆ
1dense_13/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	¬2*
dtype023
1dense_13/kernel/Regularizer/Square/ReadVariableOp·
"dense_13/kernel/Regularizer/SquareSquare9dense_13/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬22$
"dense_13/kernel/Regularizer/Square
!dense_13/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_13/kernel/Regularizer/Const¾
dense_13/kernel/Regularizer/SumSum&dense_13/kernel/Regularizer/Square:y:0*dense_13/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_13/kernel/Regularizer/Sum
!dense_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!dense_13/kernel/Regularizer/mul/xÀ
dense_13/kernel/Regularizer/mulMul*dense_13/kernel/Regularizer/mul/x:output:0(dense_13/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_13/kernel/Regularizer/mulË
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_13/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¬: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_13/kernel/Regularizer/Square/ReadVariableOp1dense_13/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_nameinputs
ê
æ
I__inference_sequential_4_layer_call_and_return_conditional_losses_2719282
conv1d_4_input&
conv1d_4_2719201:	
conv1d_4_2719203:$
dense_12_2719215:
´¬
dense_12_2719217:	¬#
dense_13_2719229:	¬2
dense_13_2719231:2"
dense_14_2719234:2	
dense_14_2719236:	
identity

identity_1

identity_2

identity_3¢ conv1d_4/StatefulPartitionedCall¢/conv1d_4/bias/Regularizer/Square/ReadVariableOp¢1conv1d_4/kernel/Regularizer/Square/ReadVariableOp¢ dense_12/StatefulPartitionedCall¢/dense_12/bias/Regularizer/Square/ReadVariableOp¢ dense_13/StatefulPartitionedCall¢1dense_13/kernel/Regularizer/Square/ReadVariableOp¢ dense_14/StatefulPartitionedCall¢/dense_14/bias/Regularizer/Square/ReadVariableOp¢!dropout_4/StatefulPartitionedCall¨
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputconv1d_4_2719201conv1d_4_2719203*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_4_layer_call_and_return_conditional_losses_27186712"
 conv1d_4/StatefulPartitionedCall
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
GPU2 *0J 8 *:
f5R3
1__inference_conv1d_4_activity_regularizer_27186102.
,conv1d_4/ActivityRegularizer/PartitionedCall¡
"conv1d_4/ActivityRegularizer/ShapeShape)conv1d_4/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"conv1d_4/ActivityRegularizer/Shape®
0conv1d_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0conv1d_4/ActivityRegularizer/strided_slice/stack²
2conv1d_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2conv1d_4/ActivityRegularizer/strided_slice/stack_1²
2conv1d_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2conv1d_4/ActivityRegularizer/strided_slice/stack_2
*conv1d_4/ActivityRegularizer/strided_sliceStridedSlice+conv1d_4/ActivityRegularizer/Shape:output:09conv1d_4/ActivityRegularizer/strided_slice/stack:output:0;conv1d_4/ActivityRegularizer/strided_slice/stack_1:output:0;conv1d_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*conv1d_4/ActivityRegularizer/strided_slice³
!conv1d_4/ActivityRegularizer/CastCast3conv1d_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!conv1d_4/ActivityRegularizer/CastÖ
$conv1d_4/ActivityRegularizer/truedivRealDiv5conv1d_4/ActivityRegularizer/PartitionedCall:output:0%conv1d_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$conv1d_4/ActivityRegularizer/truediv
flatten_4/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_27186912
flatten_4/PartitionedCall¹
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_12_2719215dense_12_2719217*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_27187102"
 dense_12/StatefulPartitionedCall
,dense_12/ActivityRegularizer/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8 *:
f5R3
1__inference_dense_12_activity_regularizer_27186232.
,dense_12/ActivityRegularizer/PartitionedCall¡
"dense_12/ActivityRegularizer/ShapeShape)dense_12/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_12/ActivityRegularizer/Shape®
0dense_12/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_12/ActivityRegularizer/strided_slice/stack²
2dense_12/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_12/ActivityRegularizer/strided_slice/stack_1²
2dense_12/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_12/ActivityRegularizer/strided_slice/stack_2
*dense_12/ActivityRegularizer/strided_sliceStridedSlice+dense_12/ActivityRegularizer/Shape:output:09dense_12/ActivityRegularizer/strided_slice/stack:output:0;dense_12/ActivityRegularizer/strided_slice/stack_1:output:0;dense_12/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_12/ActivityRegularizer/strided_slice³
!dense_12/ActivityRegularizer/CastCast3dense_12/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_12/ActivityRegularizer/CastÖ
$dense_12/ActivityRegularizer/truedivRealDiv5dense_12/ActivityRegularizer/PartitionedCall:output:0%dense_12/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_12/ActivityRegularizer/truediv
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_4_layer_call_and_return_conditional_losses_27189052#
!dropout_4/StatefulPartitionedCallÀ
 dense_13/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0dense_13_2719229dense_13_2719231*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_27187482"
 dense_13/StatefulPartitionedCall¿
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_2719234dense_14_2719236*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_dense_14_layer_call_and_return_conditional_losses_27187702"
 dense_14/StatefulPartitionedCall
,dense_14/ActivityRegularizer/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8 *:
f5R3
1__inference_dense_14_activity_regularizer_27186362.
,dense_14/ActivityRegularizer/PartitionedCall¡
"dense_14/ActivityRegularizer/ShapeShape)dense_14/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_14/ActivityRegularizer/Shape®
0dense_14/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_14/ActivityRegularizer/strided_slice/stack²
2dense_14/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_14/ActivityRegularizer/strided_slice/stack_1²
2dense_14/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_14/ActivityRegularizer/strided_slice/stack_2
*dense_14/ActivityRegularizer/strided_sliceStridedSlice+dense_14/ActivityRegularizer/Shape:output:09dense_14/ActivityRegularizer/strided_slice/stack:output:0;dense_14/ActivityRegularizer/strided_slice/stack_1:output:0;dense_14/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_14/ActivityRegularizer/strided_slice³
!dense_14/ActivityRegularizer/CastCast3dense_14/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_14/ActivityRegularizer/CastÖ
$dense_14/ActivityRegularizer/truedivRealDiv5dense_14/ActivityRegularizer/PartitionedCall:output:0%dense_14/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_14/ActivityRegularizer/truediv
softmax_4/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_softmax_4_layer_call_and_return_conditional_losses_27187892
softmax_4/PartitionedCall»
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_4_2719201*"
_output_shapes
:	*
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpº
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	2$
"conv1d_4/kernel/Regularizer/Square
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const¾
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_4/kernel/Regularizer/mul/xÀ
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mul¯
/conv1d_4/bias/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_4_2719203*
_output_shapes
:*
dtype021
/conv1d_4/bias/Regularizer/Square/ReadVariableOp¬
 conv1d_4/bias/Regularizer/SquareSquare7conv1d_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 conv1d_4/bias/Regularizer/Square
conv1d_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
conv1d_4/bias/Regularizer/Const¶
conv1d_4/bias/Regularizer/SumSum$conv1d_4/bias/Regularizer/Square:y:0(conv1d_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/Sum
conv1d_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
conv1d_4/bias/Regularizer/mul/x¸
conv1d_4/bias/Regularizer/mulMul(conv1d_4/bias/Regularizer/mul/x:output:0&conv1d_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/mul°
/dense_12/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_12_2719217*
_output_shapes	
:¬*
dtype021
/dense_12/bias/Regularizer/Square/ReadVariableOp­
 dense_12/bias/Regularizer/SquareSquare7dense_12/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:¬2"
 dense_12/bias/Regularizer/Square
dense_12/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_12/bias/Regularizer/Const¶
dense_12/bias/Regularizer/SumSum$dense_12/bias/Regularizer/Square:y:0(dense_12/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_12/bias/Regularizer/Sum
dense_12/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_12/bias/Regularizer/mul/x¸
dense_12/bias/Regularizer/mulMul(dense_12/bias/Regularizer/mul/x:output:0&dense_12/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_12/bias/Regularizer/mul¸
1dense_13/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_13_2719229*
_output_shapes
:	¬2*
dtype023
1dense_13/kernel/Regularizer/Square/ReadVariableOp·
"dense_13/kernel/Regularizer/SquareSquare9dense_13/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬22$
"dense_13/kernel/Regularizer/Square
!dense_13/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_13/kernel/Regularizer/Const¾
dense_13/kernel/Regularizer/SumSum&dense_13/kernel/Regularizer/Square:y:0*dense_13/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_13/kernel/Regularizer/Sum
!dense_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!dense_13/kernel/Regularizer/mul/xÀ
dense_13/kernel/Regularizer/mulMul*dense_13/kernel/Regularizer/mul/x:output:0(dense_13/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_13/kernel/Regularizer/mul¯
/dense_14/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_14_2719236*
_output_shapes
:	*
dtype021
/dense_14/bias/Regularizer/Square/ReadVariableOp¬
 dense_14/bias/Regularizer/SquareSquare7dense_14/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2"
 dense_14/bias/Regularizer/Square
dense_14/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_14/bias/Regularizer/Const¶
dense_14/bias/Regularizer/SumSum$dense_14/bias/Regularizer/Square:y:0(dense_14/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_14/bias/Regularizer/Sum
dense_14/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_14/bias/Regularizer/mul/x¸
dense_14/bias/Regularizer/mulMul(dense_14/bias/Regularizer/mul/x:output:0&dense_14/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_14/bias/Regularizer/mul¤
IdentityIdentity"softmax_4/PartitionedCall:output:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp!^dense_12/StatefulPartitionedCall0^dense_12/bias/Regularizer/Square/ReadVariableOp!^dense_13/StatefulPartitionedCall2^dense_13/kernel/Regularizer/Square/ReadVariableOp!^dense_14/StatefulPartitionedCall0^dense_14/bias/Regularizer/Square/ReadVariableOp"^dropout_4/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2

Identity

Identity_1Identity(conv1d_4/ActivityRegularizer/truediv:z:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp!^dense_12/StatefulPartitionedCall0^dense_12/bias/Regularizer/Square/ReadVariableOp!^dense_13/StatefulPartitionedCall2^dense_13/kernel/Regularizer/Square/ReadVariableOp!^dense_14/StatefulPartitionedCall0^dense_14/bias/Regularizer/Square/ReadVariableOp"^dropout_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1

Identity_2Identity(dense_12/ActivityRegularizer/truediv:z:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp!^dense_12/StatefulPartitionedCall0^dense_12/bias/Regularizer/Square/ReadVariableOp!^dense_13/StatefulPartitionedCall2^dense_13/kernel/Regularizer/Square/ReadVariableOp!^dense_14/StatefulPartitionedCall0^dense_14/bias/Regularizer/Square/ReadVariableOp"^dropout_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_2

Identity_3Identity(dense_14/ActivityRegularizer/truediv:z:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp!^dense_12/StatefulPartitionedCall0^dense_12/bias/Regularizer/Square/ReadVariableOp!^dense_13/StatefulPartitionedCall2^dense_13/kernel/Regularizer/Square/ReadVariableOp!^dense_14/StatefulPartitionedCall0^dense_14/bias/Regularizer/Square/ReadVariableOp"^dropout_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ	: : : : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2b
/conv1d_4/bias/Regularizer/Square/ReadVariableOp/conv1d_4/bias/Regularizer/Square/ReadVariableOp2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2b
/dense_12/bias/Regularizer/Square/ReadVariableOp/dense_12/bias/Regularizer/Square/ReadVariableOp2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2f
1dense_13/kernel/Regularizer/Square/ReadVariableOp1dense_13/kernel/Regularizer/Square/ReadVariableOp2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2b
/dense_14/bias/Regularizer/Square/ReadVariableOp/dense_14/bias/Regularizer/Square/ReadVariableOp2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
(
_user_specified_nameconv1d_4_input
÷
d
F__inference_dropout_4_layer_call_and_return_conditional_losses_2719688

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¬:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_nameinputs
­%
ú
E__inference_conv1d_4_layer_call_and_return_conditional_losses_2718671

inputsA
+conv1d_expanddims_1_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢"conv1d/ExpandDims_1/ReadVariableOp¢/conv1d_4/bias/Regularizer/Square/ReadVariableOp¢1conv1d_4/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2
conv1d/ExpandDims/dim
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
conv1d/ExpandDims¸
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim·
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	2
conv1d/ExpandDims_1·
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
conv1d
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d/Squeeze
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
EluEluBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
EluÖ
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	*
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpº
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	2$
"conv1d_4/kernel/Regularizer/Square
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const¾
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_4/kernel/Regularizer/mul/xÀ
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mul¾
/conv1d_4/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/conv1d_4/bias/Regularizer/Square/ReadVariableOp¬
 conv1d_4/bias/Regularizer/SquareSquare7conv1d_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 conv1d_4/bias/Regularizer/Square
conv1d_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
conv1d_4/bias/Regularizer/Const¶
conv1d_4/bias/Regularizer/SumSum$conv1d_4/bias/Regularizer/Square:y:0(conv1d_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/Sum
conv1d_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
conv1d_4/bias/Regularizer/mul/x¸
conv1d_4/bias/Regularizer/mulMul(conv1d_4/bias/Regularizer/mul/x:output:0&conv1d_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/mul
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2b
/conv1d_4/bias/Regularizer/Square/ReadVariableOp/conv1d_4/bias/Regularizer/Square/ReadVariableOp2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
æ
H
1__inference_conv1d_4_activity_regularizer_2718610
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
:ÿÿÿÿÿÿÿÿÿ2
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
 *·Ñ82
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
¥

*__inference_dense_13_layer_call_fn_2719742

inputs
unknown:	¬2
	unknown_0:2
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_27187482
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¬: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_nameinputs
¶

*__inference_conv1d_4_layer_call_fn_2719646

inputs
unknown:	
	unknown_0:
identity¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_4_layer_call_and_return_conditional_losses_27186712
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
Õ
d
+__inference_dropout_4_layer_call_fn_2719710

inputs
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_4_layer_call_and_return_conditional_losses_27189052
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¬22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_nameinputs
µ
e
F__inference_dropout_4_layer_call_and_return_conditional_losses_2719700

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *¼?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
×£<2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¬:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_nameinputs
 
ª
__inference_loss_fn_1_2719800F
8conv1d_4_bias_regularizer_square_readvariableop_resource:
identity¢/conv1d_4/bias/Regularizer/Square/ReadVariableOp×
/conv1d_4/bias/Regularizer/Square/ReadVariableOpReadVariableOp8conv1d_4_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype021
/conv1d_4/bias/Regularizer/Square/ReadVariableOp¬
 conv1d_4/bias/Regularizer/SquareSquare7conv1d_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 conv1d_4/bias/Regularizer/Square
conv1d_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
conv1d_4/bias/Regularizer/Const¶
conv1d_4/bias/Regularizer/SumSum$conv1d_4/bias/Regularizer/Square:y:0(conv1d_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/Sum
conv1d_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
conv1d_4/bias/Regularizer/mul/x¸
conv1d_4/bias/Regularizer/mulMul(conv1d_4/bias/Regularizer/mul/x:output:0&conv1d_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/mul
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
Ò
Þ
I__inference_sequential_4_layer_call_and_return_conditional_losses_2719068

inputs&
conv1d_4_2718987:	
conv1d_4_2718989:$
dense_12_2719001:
´¬
dense_12_2719003:	¬#
dense_13_2719015:	¬2
dense_13_2719017:2"
dense_14_2719020:2	
dense_14_2719022:	
identity

identity_1

identity_2

identity_3¢ conv1d_4/StatefulPartitionedCall¢/conv1d_4/bias/Regularizer/Square/ReadVariableOp¢1conv1d_4/kernel/Regularizer/Square/ReadVariableOp¢ dense_12/StatefulPartitionedCall¢/dense_12/bias/Regularizer/Square/ReadVariableOp¢ dense_13/StatefulPartitionedCall¢1dense_13/kernel/Regularizer/Square/ReadVariableOp¢ dense_14/StatefulPartitionedCall¢/dense_14/bias/Regularizer/Square/ReadVariableOp¢!dropout_4/StatefulPartitionedCall 
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_4_2718987conv1d_4_2718989*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_4_layer_call_and_return_conditional_losses_27186712"
 conv1d_4/StatefulPartitionedCall
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
GPU2 *0J 8 *:
f5R3
1__inference_conv1d_4_activity_regularizer_27186102.
,conv1d_4/ActivityRegularizer/PartitionedCall¡
"conv1d_4/ActivityRegularizer/ShapeShape)conv1d_4/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"conv1d_4/ActivityRegularizer/Shape®
0conv1d_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0conv1d_4/ActivityRegularizer/strided_slice/stack²
2conv1d_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2conv1d_4/ActivityRegularizer/strided_slice/stack_1²
2conv1d_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2conv1d_4/ActivityRegularizer/strided_slice/stack_2
*conv1d_4/ActivityRegularizer/strided_sliceStridedSlice+conv1d_4/ActivityRegularizer/Shape:output:09conv1d_4/ActivityRegularizer/strided_slice/stack:output:0;conv1d_4/ActivityRegularizer/strided_slice/stack_1:output:0;conv1d_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*conv1d_4/ActivityRegularizer/strided_slice³
!conv1d_4/ActivityRegularizer/CastCast3conv1d_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!conv1d_4/ActivityRegularizer/CastÖ
$conv1d_4/ActivityRegularizer/truedivRealDiv5conv1d_4/ActivityRegularizer/PartitionedCall:output:0%conv1d_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$conv1d_4/ActivityRegularizer/truediv
flatten_4/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_27186912
flatten_4/PartitionedCall¹
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_12_2719001dense_12_2719003*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_27187102"
 dense_12/StatefulPartitionedCall
,dense_12/ActivityRegularizer/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8 *:
f5R3
1__inference_dense_12_activity_regularizer_27186232.
,dense_12/ActivityRegularizer/PartitionedCall¡
"dense_12/ActivityRegularizer/ShapeShape)dense_12/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_12/ActivityRegularizer/Shape®
0dense_12/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_12/ActivityRegularizer/strided_slice/stack²
2dense_12/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_12/ActivityRegularizer/strided_slice/stack_1²
2dense_12/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_12/ActivityRegularizer/strided_slice/stack_2
*dense_12/ActivityRegularizer/strided_sliceStridedSlice+dense_12/ActivityRegularizer/Shape:output:09dense_12/ActivityRegularizer/strided_slice/stack:output:0;dense_12/ActivityRegularizer/strided_slice/stack_1:output:0;dense_12/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_12/ActivityRegularizer/strided_slice³
!dense_12/ActivityRegularizer/CastCast3dense_12/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_12/ActivityRegularizer/CastÖ
$dense_12/ActivityRegularizer/truedivRealDiv5dense_12/ActivityRegularizer/PartitionedCall:output:0%dense_12/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_12/ActivityRegularizer/truediv
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_4_layer_call_and_return_conditional_losses_27189052#
!dropout_4/StatefulPartitionedCallÀ
 dense_13/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0dense_13_2719015dense_13_2719017*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_27187482"
 dense_13/StatefulPartitionedCall¿
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_2719020dense_14_2719022*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_dense_14_layer_call_and_return_conditional_losses_27187702"
 dense_14/StatefulPartitionedCall
,dense_14/ActivityRegularizer/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8 *:
f5R3
1__inference_dense_14_activity_regularizer_27186362.
,dense_14/ActivityRegularizer/PartitionedCall¡
"dense_14/ActivityRegularizer/ShapeShape)dense_14/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_14/ActivityRegularizer/Shape®
0dense_14/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_14/ActivityRegularizer/strided_slice/stack²
2dense_14/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_14/ActivityRegularizer/strided_slice/stack_1²
2dense_14/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_14/ActivityRegularizer/strided_slice/stack_2
*dense_14/ActivityRegularizer/strided_sliceStridedSlice+dense_14/ActivityRegularizer/Shape:output:09dense_14/ActivityRegularizer/strided_slice/stack:output:0;dense_14/ActivityRegularizer/strided_slice/stack_1:output:0;dense_14/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_14/ActivityRegularizer/strided_slice³
!dense_14/ActivityRegularizer/CastCast3dense_14/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_14/ActivityRegularizer/CastÖ
$dense_14/ActivityRegularizer/truedivRealDiv5dense_14/ActivityRegularizer/PartitionedCall:output:0%dense_14/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_14/ActivityRegularizer/truediv
softmax_4/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_softmax_4_layer_call_and_return_conditional_losses_27187892
softmax_4/PartitionedCall»
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_4_2718987*"
_output_shapes
:	*
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpº
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	2$
"conv1d_4/kernel/Regularizer/Square
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const¾
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_4/kernel/Regularizer/mul/xÀ
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mul¯
/conv1d_4/bias/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_4_2718989*
_output_shapes
:*
dtype021
/conv1d_4/bias/Regularizer/Square/ReadVariableOp¬
 conv1d_4/bias/Regularizer/SquareSquare7conv1d_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 conv1d_4/bias/Regularizer/Square
conv1d_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
conv1d_4/bias/Regularizer/Const¶
conv1d_4/bias/Regularizer/SumSum$conv1d_4/bias/Regularizer/Square:y:0(conv1d_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/Sum
conv1d_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
conv1d_4/bias/Regularizer/mul/x¸
conv1d_4/bias/Regularizer/mulMul(conv1d_4/bias/Regularizer/mul/x:output:0&conv1d_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/mul°
/dense_12/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_12_2719003*
_output_shapes	
:¬*
dtype021
/dense_12/bias/Regularizer/Square/ReadVariableOp­
 dense_12/bias/Regularizer/SquareSquare7dense_12/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:¬2"
 dense_12/bias/Regularizer/Square
dense_12/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_12/bias/Regularizer/Const¶
dense_12/bias/Regularizer/SumSum$dense_12/bias/Regularizer/Square:y:0(dense_12/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_12/bias/Regularizer/Sum
dense_12/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_12/bias/Regularizer/mul/x¸
dense_12/bias/Regularizer/mulMul(dense_12/bias/Regularizer/mul/x:output:0&dense_12/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_12/bias/Regularizer/mul¸
1dense_13/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_13_2719015*
_output_shapes
:	¬2*
dtype023
1dense_13/kernel/Regularizer/Square/ReadVariableOp·
"dense_13/kernel/Regularizer/SquareSquare9dense_13/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬22$
"dense_13/kernel/Regularizer/Square
!dense_13/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_13/kernel/Regularizer/Const¾
dense_13/kernel/Regularizer/SumSum&dense_13/kernel/Regularizer/Square:y:0*dense_13/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_13/kernel/Regularizer/Sum
!dense_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!dense_13/kernel/Regularizer/mul/xÀ
dense_13/kernel/Regularizer/mulMul*dense_13/kernel/Regularizer/mul/x:output:0(dense_13/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_13/kernel/Regularizer/mul¯
/dense_14/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_14_2719022*
_output_shapes
:	*
dtype021
/dense_14/bias/Regularizer/Square/ReadVariableOp¬
 dense_14/bias/Regularizer/SquareSquare7dense_14/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2"
 dense_14/bias/Regularizer/Square
dense_14/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_14/bias/Regularizer/Const¶
dense_14/bias/Regularizer/SumSum$dense_14/bias/Regularizer/Square:y:0(dense_14/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_14/bias/Regularizer/Sum
dense_14/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_14/bias/Regularizer/mul/x¸
dense_14/bias/Regularizer/mulMul(dense_14/bias/Regularizer/mul/x:output:0&dense_14/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_14/bias/Regularizer/mul¤
IdentityIdentity"softmax_4/PartitionedCall:output:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp!^dense_12/StatefulPartitionedCall0^dense_12/bias/Regularizer/Square/ReadVariableOp!^dense_13/StatefulPartitionedCall2^dense_13/kernel/Regularizer/Square/ReadVariableOp!^dense_14/StatefulPartitionedCall0^dense_14/bias/Regularizer/Square/ReadVariableOp"^dropout_4/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2

Identity

Identity_1Identity(conv1d_4/ActivityRegularizer/truediv:z:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp!^dense_12/StatefulPartitionedCall0^dense_12/bias/Regularizer/Square/ReadVariableOp!^dense_13/StatefulPartitionedCall2^dense_13/kernel/Regularizer/Square/ReadVariableOp!^dense_14/StatefulPartitionedCall0^dense_14/bias/Regularizer/Square/ReadVariableOp"^dropout_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1

Identity_2Identity(dense_12/ActivityRegularizer/truediv:z:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp!^dense_12/StatefulPartitionedCall0^dense_12/bias/Regularizer/Square/ReadVariableOp!^dense_13/StatefulPartitionedCall2^dense_13/kernel/Regularizer/Square/ReadVariableOp!^dense_14/StatefulPartitionedCall0^dense_14/bias/Regularizer/Square/ReadVariableOp"^dropout_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_2

Identity_3Identity(dense_14/ActivityRegularizer/truediv:z:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp!^dense_12/StatefulPartitionedCall0^dense_12/bias/Regularizer/Square/ReadVariableOp!^dense_13/StatefulPartitionedCall2^dense_13/kernel/Regularizer/Square/ReadVariableOp!^dense_14/StatefulPartitionedCall0^dense_14/bias/Regularizer/Square/ReadVariableOp"^dropout_4/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ	: : : : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2b
/conv1d_4/bias/Regularizer/Square/ReadVariableOp/conv1d_4/bias/Regularizer/Square/ReadVariableOp2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2b
/dense_12/bias/Regularizer/Square/ReadVariableOp/dense_12/bias/Regularizer/Square/ReadVariableOp2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2f
1dense_13/kernel/Regularizer/Square/ReadVariableOp1dense_13/kernel/Regularizer/Square/ReadVariableOp2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2b
/dense_14/bias/Regularizer/Square/ReadVariableOp/dense_14/bias/Regularizer/Square/ReadVariableOp2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
×	
Í
.__inference_sequential_4_layer_call_fn_2718847
conv1d_4_input
unknown:	
	unknown_0:
	unknown_1:
´¬
	unknown_2:	¬
	unknown_3:	¬2
	unknown_4:2
	unknown_5:2	
	unknown_6:	
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallconv1d_4_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	: : : **
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_27188252
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
(
_user_specified_nameconv1d_4_input
÷
d
F__inference_dropout_4_layer_call_and_return_conditional_losses_2718729

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¬:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_nameinputs
æ
b
F__inference_softmax_4_layer_call_and_return_conditional_losses_2718789

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
¿	
Å
.__inference_sequential_4_layer_call_fn_2719614

inputs
unknown:	
	unknown_0:
	unknown_1:
´¬
	unknown_2:	¬
	unknown_3:	¬2
	unknown_4:2
	unknown_5:2	
	unknown_6:	
identity¢StatefulPartitionedCallÕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	: : : **
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8 *R
fMRK
I__inference_sequential_4_layer_call_and_return_conditional_losses_27190682
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
¦µ
	
I__inference_sequential_4_layer_call_and_return_conditional_losses_2719566

inputsJ
4conv1d_4_conv1d_expanddims_1_readvariableop_resource:	6
(conv1d_4_biasadd_readvariableop_resource:;
'dense_12_matmul_readvariableop_resource:
´¬7
(dense_12_biasadd_readvariableop_resource:	¬:
'dense_13_matmul_readvariableop_resource:	¬26
(dense_13_biasadd_readvariableop_resource:29
'dense_14_matmul_readvariableop_resource:2	6
(dense_14_biasadd_readvariableop_resource:	
identity

identity_1

identity_2

identity_3¢conv1d_4/BiasAdd/ReadVariableOp¢/conv1d_4/bias/Regularizer/Square/ReadVariableOp¢+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp¢1conv1d_4/kernel/Regularizer/Square/ReadVariableOp¢dense_12/BiasAdd/ReadVariableOp¢dense_12/MatMul/ReadVariableOp¢/dense_12/bias/Regularizer/Square/ReadVariableOp¢dense_13/BiasAdd/ReadVariableOp¢dense_13/MatMul/ReadVariableOp¢1dense_13/kernel/Regularizer/Square/ReadVariableOp¢dense_14/BiasAdd/ReadVariableOp¢dense_14/MatMul/ReadVariableOp¢/dense_14/bias/Regularizer/Square/ReadVariableOp
conv1d_4/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
ýÿÿÿÿÿÿÿÿ2 
conv1d_4/conv1d/ExpandDims/dim±
conv1d_4/conv1d/ExpandDims
ExpandDimsinputs'conv1d_4/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
conv1d_4/conv1d/ExpandDimsÓ
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	*
dtype02-
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp
 conv1d_4/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_4/conv1d/ExpandDims_1/dimÛ
conv1d_4/conv1d/ExpandDims_1
ExpandDims3conv1d_4/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_4/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	2
conv1d_4/conv1d/ExpandDims_1Û
conv1d_4/conv1dConv2D#conv1d_4/conv1d/ExpandDims:output:0%conv1d_4/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
conv1d_4/conv1d­
conv1d_4/conv1d/SqueezeSqueezeconv1d_4/conv1d:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
squeeze_dims

ýÿÿÿÿÿÿÿÿ2
conv1d_4/conv1d/Squeeze§
conv1d_4/BiasAdd/ReadVariableOpReadVariableOp(conv1d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv1d_4/BiasAdd/ReadVariableOp°
conv1d_4/BiasAddBiasAdd conv1d_4/conv1d/Squeeze:output:0'conv1d_4/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv1d_4/BiasAddt
conv1d_4/EluEluconv1d_4/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv1d_4/Elu¦
#conv1d_4/ActivityRegularizer/SquareSquareconv1d_4/Elu:activations:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#conv1d_4/ActivityRegularizer/Square
"conv1d_4/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"conv1d_4/ActivityRegularizer/ConstÂ
 conv1d_4/ActivityRegularizer/SumSum'conv1d_4/ActivityRegularizer/Square:y:0+conv1d_4/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 conv1d_4/ActivityRegularizer/Sum
"conv1d_4/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82$
"conv1d_4/ActivityRegularizer/mul/xÄ
 conv1d_4/ActivityRegularizer/mulMul+conv1d_4/ActivityRegularizer/mul/x:output:0)conv1d_4/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 conv1d_4/ActivityRegularizer/mul
"conv1d_4/ActivityRegularizer/ShapeShapeconv1d_4/Elu:activations:0*
T0*
_output_shapes
:2$
"conv1d_4/ActivityRegularizer/Shape®
0conv1d_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0conv1d_4/ActivityRegularizer/strided_slice/stack²
2conv1d_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2conv1d_4/ActivityRegularizer/strided_slice/stack_1²
2conv1d_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2conv1d_4/ActivityRegularizer/strided_slice/stack_2
*conv1d_4/ActivityRegularizer/strided_sliceStridedSlice+conv1d_4/ActivityRegularizer/Shape:output:09conv1d_4/ActivityRegularizer/strided_slice/stack:output:0;conv1d_4/ActivityRegularizer/strided_slice/stack_1:output:0;conv1d_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*conv1d_4/ActivityRegularizer/strided_slice³
!conv1d_4/ActivityRegularizer/CastCast3conv1d_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!conv1d_4/ActivityRegularizer/CastÅ
$conv1d_4/ActivityRegularizer/truedivRealDiv$conv1d_4/ActivityRegularizer/mul:z:0%conv1d_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$conv1d_4/ActivityRegularizer/truedivs
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ´   2
flatten_4/Const
flatten_4/ReshapeReshapeconv1d_4/Elu:activations:0flatten_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2
flatten_4/Reshapeª
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource* 
_output_shapes
:
´¬*
dtype02 
dense_12/MatMul/ReadVariableOp£
dense_12/MatMulMatMulflatten_4/Reshape:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dense_12/MatMul¨
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes	
:¬*
dtype02!
dense_12/BiasAdd/ReadVariableOp¦
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dense_12/BiasAddt
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dense_12/Relu¤
#dense_12/ActivityRegularizer/SquareSquaredense_12/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2%
#dense_12/ActivityRegularizer/Square
"dense_12/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_12/ActivityRegularizer/ConstÂ
 dense_12/ActivityRegularizer/SumSum'dense_12/ActivityRegularizer/Square:y:0+dense_12/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_12/ActivityRegularizer/Sum
"dense_12/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82$
"dense_12/ActivityRegularizer/mul/xÄ
 dense_12/ActivityRegularizer/mulMul+dense_12/ActivityRegularizer/mul/x:output:0)dense_12/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_12/ActivityRegularizer/mul
"dense_12/ActivityRegularizer/ShapeShapedense_12/Relu:activations:0*
T0*
_output_shapes
:2$
"dense_12/ActivityRegularizer/Shape®
0dense_12/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_12/ActivityRegularizer/strided_slice/stack²
2dense_12/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_12/ActivityRegularizer/strided_slice/stack_1²
2dense_12/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_12/ActivityRegularizer/strided_slice/stack_2
*dense_12/ActivityRegularizer/strided_sliceStridedSlice+dense_12/ActivityRegularizer/Shape:output:09dense_12/ActivityRegularizer/strided_slice/stack:output:0;dense_12/ActivityRegularizer/strided_slice/stack_1:output:0;dense_12/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_12/ActivityRegularizer/strided_slice³
!dense_12/ActivityRegularizer/CastCast3dense_12/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_12/ActivityRegularizer/CastÅ
$dense_12/ActivityRegularizer/truedivRealDiv$dense_12/ActivityRegularizer/mul:z:0%dense_12/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_12/ActivityRegularizer/truedivw
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *¼?2
dropout_4/dropout/Const§
dropout_4/dropout/MulMuldense_12/Relu:activations:0 dropout_4/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_4/dropout/Mul}
dropout_4/dropout/ShapeShapedense_12/Relu:activations:0*
T0*
_output_shapes
:2
dropout_4/dropout/ShapeÓ
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*
dtype020
.dropout_4/dropout/random_uniform/RandomUniform
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
×£<2"
 dropout_4/dropout/GreaterEqual/yç
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2 
dropout_4/dropout/GreaterEqual
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_4/dropout/Cast£
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2
dropout_4/dropout/Mul_1©
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes
:	¬2*
dtype02 
dense_13/MatMul/ReadVariableOp£
dense_13/MatMulMatMuldropout_4/dropout/Mul_1:z:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dense_13/MatMul§
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
dense_13/BiasAdd/ReadVariableOp¥
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dense_13/BiasAdds
dense_13/ReluReludense_13/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
dense_13/Relu¨
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes

:2	*
dtype02 
dense_14/MatMul/ReadVariableOp£
dense_14/MatMulMatMuldense_13/Relu:activations:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
dense_14/MatMul§
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype02!
dense_14/BiasAdd/ReadVariableOp¥
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
dense_14/BiasAdd¡
#dense_14/ActivityRegularizer/SquareSquaredense_14/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2%
#dense_14/ActivityRegularizer/Square
"dense_14/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_14/ActivityRegularizer/ConstÂ
 dense_14/ActivityRegularizer/SumSum'dense_14/ActivityRegularizer/Square:y:0+dense_14/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_14/ActivityRegularizer/Sum
"dense_14/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82$
"dense_14/ActivityRegularizer/mul/xÄ
 dense_14/ActivityRegularizer/mulMul+dense_14/ActivityRegularizer/mul/x:output:0)dense_14/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_14/ActivityRegularizer/mul
"dense_14/ActivityRegularizer/ShapeShapedense_14/BiasAdd:output:0*
T0*
_output_shapes
:2$
"dense_14/ActivityRegularizer/Shape®
0dense_14/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_14/ActivityRegularizer/strided_slice/stack²
2dense_14/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_14/ActivityRegularizer/strided_slice/stack_1²
2dense_14/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_14/ActivityRegularizer/strided_slice/stack_2
*dense_14/ActivityRegularizer/strided_sliceStridedSlice+dense_14/ActivityRegularizer/Shape:output:09dense_14/ActivityRegularizer/strided_slice/stack:output:0;dense_14/ActivityRegularizer/strided_slice/stack_1:output:0;dense_14/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_14/ActivityRegularizer/strided_slice³
!dense_14/ActivityRegularizer/CastCast3dense_14/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_14/ActivityRegularizer/CastÅ
$dense_14/ActivityRegularizer/truedivRealDiv$dense_14/ActivityRegularizer/mul:z:0%dense_14/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_14/ActivityRegularizer/truediv~
softmax_4/SoftmaxSoftmaxdense_14/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2
softmax_4/Softmaxß
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_4_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	*
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpº
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	2$
"conv1d_4/kernel/Regularizer/Square
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const¾
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_4/kernel/Regularizer/mul/xÀ
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mulÇ
/conv1d_4/bias/Regularizer/Square/ReadVariableOpReadVariableOp(conv1d_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/conv1d_4/bias/Regularizer/Square/ReadVariableOp¬
 conv1d_4/bias/Regularizer/SquareSquare7conv1d_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 conv1d_4/bias/Regularizer/Square
conv1d_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
conv1d_4/bias/Regularizer/Const¶
conv1d_4/bias/Regularizer/SumSum$conv1d_4/bias/Regularizer/Square:y:0(conv1d_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/Sum
conv1d_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
conv1d_4/bias/Regularizer/mul/x¸
conv1d_4/bias/Regularizer/mulMul(conv1d_4/bias/Regularizer/mul/x:output:0&conv1d_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/mulÈ
/dense_12/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes	
:¬*
dtype021
/dense_12/bias/Regularizer/Square/ReadVariableOp­
 dense_12/bias/Regularizer/SquareSquare7dense_12/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:¬2"
 dense_12/bias/Regularizer/Square
dense_12/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_12/bias/Regularizer/Const¶
dense_12/bias/Regularizer/SumSum$dense_12/bias/Regularizer/Square:y:0(dense_12/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_12/bias/Regularizer/Sum
dense_12/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_12/bias/Regularizer/mul/x¸
dense_12/bias/Regularizer/mulMul(dense_12/bias/Regularizer/mul/x:output:0&dense_12/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_12/bias/Regularizer/mulÏ
1dense_13/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes
:	¬2*
dtype023
1dense_13/kernel/Regularizer/Square/ReadVariableOp·
"dense_13/kernel/Regularizer/SquareSquare9dense_13/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬22$
"dense_13/kernel/Regularizer/Square
!dense_13/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_13/kernel/Regularizer/Const¾
dense_13/kernel/Regularizer/SumSum&dense_13/kernel/Regularizer/Square:y:0*dense_13/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_13/kernel/Regularizer/Sum
!dense_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!dense_13/kernel/Regularizer/mul/xÀ
dense_13/kernel/Regularizer/mulMul*dense_13/kernel/Regularizer/mul/x:output:0(dense_13/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_13/kernel/Regularizer/mulÇ
/dense_14/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype021
/dense_14/bias/Regularizer/Square/ReadVariableOp¬
 dense_14/bias/Regularizer/SquareSquare7dense_14/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2"
 dense_14/bias/Regularizer/Square
dense_14/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_14/bias/Regularizer/Const¶
dense_14/bias/Regularizer/SumSum$dense_14/bias/Regularizer/Square:y:0(dense_14/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_14/bias/Regularizer/Sum
dense_14/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_14/bias/Regularizer/mul/x¸
dense_14/bias/Regularizer/mulMul(dense_14/bias/Regularizer/mul/x:output:0&dense_14/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_14/bias/Regularizer/mul
IdentityIdentitysoftmax_4/Softmax:softmax:0 ^conv1d_4/BiasAdd/ReadVariableOp0^conv1d_4/bias/Regularizer/Square/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp0^dense_12/bias/Regularizer/Square/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp2^dense_13/kernel/Regularizer/Square/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp0^dense_14/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2

Identity

Identity_1Identity(conv1d_4/ActivityRegularizer/truediv:z:0 ^conv1d_4/BiasAdd/ReadVariableOp0^conv1d_4/bias/Regularizer/Square/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp0^dense_12/bias/Regularizer/Square/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp2^dense_13/kernel/Regularizer/Square/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp0^dense_14/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1

Identity_2Identity(dense_12/ActivityRegularizer/truediv:z:0 ^conv1d_4/BiasAdd/ReadVariableOp0^conv1d_4/bias/Regularizer/Square/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp0^dense_12/bias/Regularizer/Square/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp2^dense_13/kernel/Regularizer/Square/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp0^dense_14/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2

Identity_3Identity(dense_14/ActivityRegularizer/truediv:z:0 ^conv1d_4/BiasAdd/ReadVariableOp0^conv1d_4/bias/Regularizer/Square/ReadVariableOp,^conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp0^dense_12/bias/Regularizer/Square/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp2^dense_13/kernel/Regularizer/Square/ReadVariableOp ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp0^dense_14/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ	: : : : : : : : 2B
conv1d_4/BiasAdd/ReadVariableOpconv1d_4/BiasAdd/ReadVariableOp2b
/conv1d_4/bias/Regularizer/Square/ReadVariableOp/conv1d_4/bias/Regularizer/Square/ReadVariableOp2Z
+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp+conv1d_4/conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2b
/dense_12/bias/Regularizer/Square/ReadVariableOp/dense_12/bias/Regularizer/Square/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2f
1dense_13/kernel/Regularizer/Square/ReadVariableOp1dense_13/kernel/Regularizer/Square/ReadVariableOp2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp2b
/dense_14/bias/Regularizer/Square/ReadVariableOp/dense_14/bias/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
ó
¶
__inference_loss_fn_0_2719789P
:conv1d_4_kernel_regularizer_square_readvariableop_resource:	
identity¢1conv1d_4/kernel/Regularizer/Square/ReadVariableOpå
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:conv1d_4_kernel_regularizer_square_readvariableop_resource*"
_output_shapes
:	*
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpº
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	2$
"conv1d_4/kernel/Regularizer/Square
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const¾
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_4/kernel/Regularizer/mul/xÀ
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mul
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
¶
É
I__inference_dense_12_layer_call_and_return_all_conditional_losses_2719674

inputs
unknown:
´¬
	unknown_0:	¬
identity

identity_1¢StatefulPartitionedCallû
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_27187102
StatefulPartitionedCall½
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
GPU2 *0J 8 *:
f5R3
1__inference_dense_12_activity_regularizer_27186232
PartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

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
:ÿÿÿÿÿÿÿÿÿ´: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´
 
_user_specified_nameinputs
¶
º
I__inference_sequential_4_layer_call_and_return_conditional_losses_2718825

inputs&
conv1d_4_2718672:	
conv1d_4_2718674:$
dense_12_2718711:
´¬
dense_12_2718713:	¬#
dense_13_2718749:	¬2
dense_13_2718751:2"
dense_14_2718771:2	
dense_14_2718773:	
identity

identity_1

identity_2

identity_3¢ conv1d_4/StatefulPartitionedCall¢/conv1d_4/bias/Regularizer/Square/ReadVariableOp¢1conv1d_4/kernel/Regularizer/Square/ReadVariableOp¢ dense_12/StatefulPartitionedCall¢/dense_12/bias/Regularizer/Square/ReadVariableOp¢ dense_13/StatefulPartitionedCall¢1dense_13/kernel/Regularizer/Square/ReadVariableOp¢ dense_14/StatefulPartitionedCall¢/dense_14/bias/Regularizer/Square/ReadVariableOp 
 conv1d_4/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_4_2718672conv1d_4_2718674*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_conv1d_4_layer_call_and_return_conditional_losses_27186712"
 conv1d_4/StatefulPartitionedCall
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
GPU2 *0J 8 *:
f5R3
1__inference_conv1d_4_activity_regularizer_27186102.
,conv1d_4/ActivityRegularizer/PartitionedCall¡
"conv1d_4/ActivityRegularizer/ShapeShape)conv1d_4/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"conv1d_4/ActivityRegularizer/Shape®
0conv1d_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0conv1d_4/ActivityRegularizer/strided_slice/stack²
2conv1d_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2conv1d_4/ActivityRegularizer/strided_slice/stack_1²
2conv1d_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2conv1d_4/ActivityRegularizer/strided_slice/stack_2
*conv1d_4/ActivityRegularizer/strided_sliceStridedSlice+conv1d_4/ActivityRegularizer/Shape:output:09conv1d_4/ActivityRegularizer/strided_slice/stack:output:0;conv1d_4/ActivityRegularizer/strided_slice/stack_1:output:0;conv1d_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*conv1d_4/ActivityRegularizer/strided_slice³
!conv1d_4/ActivityRegularizer/CastCast3conv1d_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!conv1d_4/ActivityRegularizer/CastÖ
$conv1d_4/ActivityRegularizer/truedivRealDiv5conv1d_4/ActivityRegularizer/PartitionedCall:output:0%conv1d_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$conv1d_4/ActivityRegularizer/truediv
flatten_4/PartitionedCallPartitionedCall)conv1d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_27186912
flatten_4/PartitionedCall¹
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_12_2718711dense_12_2718713*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_dense_12_layer_call_and_return_conditional_losses_27187102"
 dense_12/StatefulPartitionedCall
,dense_12/ActivityRegularizer/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8 *:
f5R3
1__inference_dense_12_activity_regularizer_27186232.
,dense_12/ActivityRegularizer/PartitionedCall¡
"dense_12/ActivityRegularizer/ShapeShape)dense_12/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_12/ActivityRegularizer/Shape®
0dense_12/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_12/ActivityRegularizer/strided_slice/stack²
2dense_12/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_12/ActivityRegularizer/strided_slice/stack_1²
2dense_12/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_12/ActivityRegularizer/strided_slice/stack_2
*dense_12/ActivityRegularizer/strided_sliceStridedSlice+dense_12/ActivityRegularizer/Shape:output:09dense_12/ActivityRegularizer/strided_slice/stack:output:0;dense_12/ActivityRegularizer/strided_slice/stack_1:output:0;dense_12/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_12/ActivityRegularizer/strided_slice³
!dense_12/ActivityRegularizer/CastCast3dense_12/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_12/ActivityRegularizer/CastÖ
$dense_12/ActivityRegularizer/truedivRealDiv5dense_12/ActivityRegularizer/PartitionedCall:output:0%dense_12/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_12/ActivityRegularizer/truediv
dropout_4/PartitionedCallPartitionedCall)dense_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_4_layer_call_and_return_conditional_losses_27187292
dropout_4/PartitionedCall¸
 dense_13/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0dense_13_2718749dense_13_2718751*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_dense_13_layer_call_and_return_conditional_losses_27187482"
 dense_13/StatefulPartitionedCall¿
 dense_14/StatefulPartitionedCallStatefulPartitionedCall)dense_13/StatefulPartitionedCall:output:0dense_14_2718771dense_14_2718773*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_dense_14_layer_call_and_return_conditional_losses_27187702"
 dense_14/StatefulPartitionedCall
,dense_14/ActivityRegularizer/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8 *:
f5R3
1__inference_dense_14_activity_regularizer_27186362.
,dense_14/ActivityRegularizer/PartitionedCall¡
"dense_14/ActivityRegularizer/ShapeShape)dense_14/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_14/ActivityRegularizer/Shape®
0dense_14/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_14/ActivityRegularizer/strided_slice/stack²
2dense_14/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_14/ActivityRegularizer/strided_slice/stack_1²
2dense_14/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_14/ActivityRegularizer/strided_slice/stack_2
*dense_14/ActivityRegularizer/strided_sliceStridedSlice+dense_14/ActivityRegularizer/Shape:output:09dense_14/ActivityRegularizer/strided_slice/stack:output:0;dense_14/ActivityRegularizer/strided_slice/stack_1:output:0;dense_14/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_14/ActivityRegularizer/strided_slice³
!dense_14/ActivityRegularizer/CastCast3dense_14/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_14/ActivityRegularizer/CastÖ
$dense_14/ActivityRegularizer/truedivRealDiv5dense_14/ActivityRegularizer/PartitionedCall:output:0%dense_14/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_14/ActivityRegularizer/truediv
softmax_4/PartitionedCallPartitionedCall)dense_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_softmax_4_layer_call_and_return_conditional_losses_27187892
softmax_4/PartitionedCall»
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_4_2718672*"
_output_shapes
:	*
dtype023
1conv1d_4/kernel/Regularizer/Square/ReadVariableOpº
"conv1d_4/kernel/Regularizer/SquareSquare9conv1d_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	2$
"conv1d_4/kernel/Regularizer/Square
!conv1d_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_4/kernel/Regularizer/Const¾
conv1d_4/kernel/Regularizer/SumSum&conv1d_4/kernel/Regularizer/Square:y:0*conv1d_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/Sum
!conv1d_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!conv1d_4/kernel/Regularizer/mul/xÀ
conv1d_4/kernel/Regularizer/mulMul*conv1d_4/kernel/Regularizer/mul/x:output:0(conv1d_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_4/kernel/Regularizer/mul¯
/conv1d_4/bias/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_4_2718674*
_output_shapes
:*
dtype021
/conv1d_4/bias/Regularizer/Square/ReadVariableOp¬
 conv1d_4/bias/Regularizer/SquareSquare7conv1d_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 conv1d_4/bias/Regularizer/Square
conv1d_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
conv1d_4/bias/Regularizer/Const¶
conv1d_4/bias/Regularizer/SumSum$conv1d_4/bias/Regularizer/Square:y:0(conv1d_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/Sum
conv1d_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
conv1d_4/bias/Regularizer/mul/x¸
conv1d_4/bias/Regularizer/mulMul(conv1d_4/bias/Regularizer/mul/x:output:0&conv1d_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
conv1d_4/bias/Regularizer/mul°
/dense_12/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_12_2718713*
_output_shapes	
:¬*
dtype021
/dense_12/bias/Regularizer/Square/ReadVariableOp­
 dense_12/bias/Regularizer/SquareSquare7dense_12/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:¬2"
 dense_12/bias/Regularizer/Square
dense_12/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_12/bias/Regularizer/Const¶
dense_12/bias/Regularizer/SumSum$dense_12/bias/Regularizer/Square:y:0(dense_12/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_12/bias/Regularizer/Sum
dense_12/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_12/bias/Regularizer/mul/x¸
dense_12/bias/Regularizer/mulMul(dense_12/bias/Regularizer/mul/x:output:0&dense_12/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_12/bias/Regularizer/mul¸
1dense_13/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_13_2718749*
_output_shapes
:	¬2*
dtype023
1dense_13/kernel/Regularizer/Square/ReadVariableOp·
"dense_13/kernel/Regularizer/SquareSquare9dense_13/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬22$
"dense_13/kernel/Regularizer/Square
!dense_13/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_13/kernel/Regularizer/Const¾
dense_13/kernel/Regularizer/SumSum&dense_13/kernel/Regularizer/Square:y:0*dense_13/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_13/kernel/Regularizer/Sum
!dense_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!dense_13/kernel/Regularizer/mul/xÀ
dense_13/kernel/Regularizer/mulMul*dense_13/kernel/Regularizer/mul/x:output:0(dense_13/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_13/kernel/Regularizer/mul¯
/dense_14/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_14_2718773*
_output_shapes
:	*
dtype021
/dense_14/bias/Regularizer/Square/ReadVariableOp¬
 dense_14/bias/Regularizer/SquareSquare7dense_14/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	2"
 dense_14/bias/Regularizer/Square
dense_14/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_14/bias/Regularizer/Const¶
dense_14/bias/Regularizer/SumSum$dense_14/bias/Regularizer/Square:y:0(dense_14/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_14/bias/Regularizer/Sum
dense_14/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82!
dense_14/bias/Regularizer/mul/x¸
dense_14/bias/Regularizer/mulMul(dense_14/bias/Regularizer/mul/x:output:0&dense_14/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_14/bias/Regularizer/mul
IdentityIdentity"softmax_4/PartitionedCall:output:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp!^dense_12/StatefulPartitionedCall0^dense_12/bias/Regularizer/Square/ReadVariableOp!^dense_13/StatefulPartitionedCall2^dense_13/kernel/Regularizer/Square/ReadVariableOp!^dense_14/StatefulPartitionedCall0^dense_14/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2

Identityù

Identity_1Identity(conv1d_4/ActivityRegularizer/truediv:z:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp!^dense_12/StatefulPartitionedCall0^dense_12/bias/Regularizer/Square/ReadVariableOp!^dense_13/StatefulPartitionedCall2^dense_13/kernel/Regularizer/Square/ReadVariableOp!^dense_14/StatefulPartitionedCall0^dense_14/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1ù

Identity_2Identity(dense_12/ActivityRegularizer/truediv:z:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp!^dense_12/StatefulPartitionedCall0^dense_12/bias/Regularizer/Square/ReadVariableOp!^dense_13/StatefulPartitionedCall2^dense_13/kernel/Regularizer/Square/ReadVariableOp!^dense_14/StatefulPartitionedCall0^dense_14/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2ù

Identity_3Identity(dense_14/ActivityRegularizer/truediv:z:0!^conv1d_4/StatefulPartitionedCall0^conv1d_4/bias/Regularizer/Square/ReadVariableOp2^conv1d_4/kernel/Regularizer/Square/ReadVariableOp!^dense_12/StatefulPartitionedCall0^dense_12/bias/Regularizer/Square/ReadVariableOp!^dense_13/StatefulPartitionedCall2^dense_13/kernel/Regularizer/Square/ReadVariableOp!^dense_14/StatefulPartitionedCall0^dense_14/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿ	: : : : : : : : 2D
 conv1d_4/StatefulPartitionedCall conv1d_4/StatefulPartitionedCall2b
/conv1d_4/bias/Regularizer/Square/ReadVariableOp/conv1d_4/bias/Regularizer/Square/ReadVariableOp2f
1conv1d_4/kernel/Regularizer/Square/ReadVariableOp1conv1d_4/kernel/Regularizer/Square/ReadVariableOp2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2b
/dense_12/bias/Regularizer/Square/ReadVariableOp/dense_12/bias/Regularizer/Square/ReadVariableOp2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2f
1dense_13/kernel/Regularizer/Square/ReadVariableOp1dense_13/kernel/Regularizer/Square/ReadVariableOp2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall2b
/dense_14/bias/Regularizer/Square/ReadVariableOp/dense_14/bias/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
à
b
F__inference_flatten_4_layer_call_and_return_conditional_losses_2718691

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ´   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢

*__inference_dense_14_layer_call_fn_2719768

inputs
unknown:2	
	unknown_0:	
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8 *N
fIRG
E__inference_dense_14_layer_call_and_return_conditional_losses_27187702
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
 
_user_specified_nameinputs
Å
G
+__inference_softmax_4_layer_call_fn_2719778

inputs
identityÉ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_softmax_4_layer_call_and_return_conditional_losses_27187892
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ	:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ	
 
_user_specified_nameinputs
É
G
+__inference_dropout_4_layer_call_fn_2719705

inputs
identityÊ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8 *O
fJRH
F__inference_dropout_4_layer_call_and_return_conditional_losses_27187292
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ¬:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
 
_user_specified_nameinputs
æ
³
__inference_loss_fn_3_2719822M
:dense_13_kernel_regularizer_square_readvariableop_resource:	¬2
identity¢1dense_13/kernel/Regularizer/Square/ReadVariableOpâ
1dense_13/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_13_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	¬2*
dtype023
1dense_13/kernel/Regularizer/Square/ReadVariableOp·
"dense_13/kernel/Regularizer/SquareSquare9dense_13/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	¬22$
"dense_13/kernel/Regularizer/Square
!dense_13/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_13/kernel/Regularizer/Const¾
dense_13/kernel/Regularizer/SumSum&dense_13/kernel/Regularizer/Square:y:0*dense_13/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_13/kernel/Regularizer/Sum
!dense_13/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *·Ñ82#
!dense_13/kernel/Regularizer/mul/xÀ
dense_13/kernel/Regularizer/mulMul*dense_13/kernel/Regularizer/mul/x:output:0(dense_13/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_13/kernel/Regularizer/mul
IdentityIdentity#dense_13/kernel/Regularizer/mul:z:02^dense_13/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_13/kernel/Regularizer/Square/ReadVariableOp1dense_13/kernel/Regularizer/Square/ReadVariableOp
æ
H
1__inference_dense_14_activity_regularizer_2718636
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
:ÿÿÿÿÿÿÿÿÿ2
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
 *·Ñ82
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
_user_specified_namex"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¾
serving_defaultª
M
conv1d_4_input;
 serving_default_conv1d_4_input:0ÿÿÿÿÿÿÿÿÿ	=
	softmax_40
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ	tensorflow/serving/predict:á
C
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
	optimizer
	trainable_variables

regularization_losses
	variables
	keras_api

signatures
*z&call_and_return_all_conditional_losses
{_default_save_signature
|__call__"@
_tf_keras_sequentialã?{"name": "sequential_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 11, 9]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_4_input"}}, {"class_name": "Conv1D", "config": {"name": "conv1d_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 11, 9]}, "dtype": "float32", "filters": 30, "kernel_size": {"class_name": "__tuple__", "items": [6]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 300, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_4", "trainable": true, "dtype": "float32", "rate": 0.02, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 50, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 9, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Softmax", "config": {"name": "softmax_4", "trainable": true, "dtype": "float32", "axis": -1}}]}, "shared_object_id": 24, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 9}}, "shared_object_id": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 11, 9]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 11, 9]}, "float32", "conv1d_4_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 11, 9]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv1d_4_input"}, "shared_object_id": 0}, {"class_name": "Conv1D", "config": {"name": "conv1d_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 11, 9]}, "dtype": "float32", "filters": 30, "kernel_size": {"class_name": "__tuple__", "items": [6]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 3}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 4}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 5}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, {"class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 7}, {"class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 300, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 10}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 11}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, {"class_name": "Dropout", "config": {"name": "dropout_4", "trainable": true, "dtype": "float32", "rate": 0.02, "noise_shape": null, "seed": null}, "shared_object_id": 13}, {"class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 50, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 16}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17}, {"class_name": "Dense", "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 9, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 20}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 21}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 22}, {"class_name": "Softmax", "config": {"name": "softmax_4", "trainable": true, "dtype": "float32", "axis": -1}, "shared_object_id": 23}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": false}, "shared_object_id": 26}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 27}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-06, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}


kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*}&call_and_return_all_conditional_losses
~__call__"ò
_tf_keras_layerØ{"name": "conv1d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 11, 9]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv1D", "config": {"name": "conv1d_4", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 11, 9]}, "dtype": "float32", "filters": 30, "kernel_size": {"class_name": "__tuple__", "items": [6]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 3}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 4}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 5}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 9}}, "shared_object_id": 25}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 5}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 11, 9]}}

trainable_variables
regularization_losses
	variables
	keras_api
*&call_and_return_all_conditional_losses
__call__"
_tf_keras_layerì{"name": "flatten_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 28}}
æ


kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"¿	
_tf_keras_layer¥	{"name": "dense_12", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_12", "trainable": true, "dtype": "float32", "units": 300, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 10}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 11}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 180}}, "shared_object_id": 29}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 11}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 180]}}

trainable_variables
regularization_losses
 	variables
!	keras_api
+&call_and_return_all_conditional_losses
__call__"ï
_tf_keras_layerÕ{"name": "dropout_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_4", "trainable": true, "dtype": "float32", "rate": 0.02, "noise_shape": null, "seed": null}, "shared_object_id": 13}
§	

"kernel
#bias
$trainable_variables
%regularization_losses
&	variables
'	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layeræ{"name": "dense_13", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_13", "trainable": true, "dtype": "float32", "units": 50, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 16}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 300}}, "shared_object_id": 30}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 300]}}
æ


(kernel
)bias
*trainable_variables
+regularization_losses
,	variables
-	keras_api
+&call_and_return_all_conditional_losses
__call__"¿	
_tf_keras_layer¥	{"name": "dense_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_14", "trainable": true, "dtype": "float32", "units": 9, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 20}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 21}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}, "shared_object_id": 31}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50]}}
Ü
.trainable_variables
/regularization_losses
0	variables
1	keras_api
+&call_and_return_all_conditional_losses
__call__"Ë
_tf_keras_layer±{"name": "softmax_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Softmax", "config": {"name": "softmax_4", "trainable": true, "dtype": "float32", "axis": -1}, "shared_object_id": 23}
ã
2iter

3beta_1

4beta_2
	5decay
6learning_ratemjmkmlmm"mn#mo(mp)mqvrvsvtvu"vv#vw(vx)vy"
	optimizer
X
0
1
2
3
"4
#5
(6
)7"
trackable_list_wrapper
H
0
1
2
3
4"
trackable_list_wrapper
X
0
1
2
3
"4
#5
(6
)7"
trackable_list_wrapper
Ê
	trainable_variables
7non_trainable_variables
8layer_regularization_losses
9layer_metrics

regularization_losses
:metrics

;layers
	variables
|__call__
{_default_save_signature
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
%:#	2conv1d_4/kernel
:2conv1d_4/bias
.
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
Ì
trainable_variables
<non_trainable_variables
=layer_metrics
>layer_regularization_losses
regularization_losses
?metrics

@layers
	variables
~__call__
activity_regularizer_fn
*}&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
®
trainable_variables
Anon_trainable_variables
Blayer_metrics
Clayer_regularization_losses
regularization_losses
Dmetrics

Elayers
	variables
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
#:!
´¬2dense_12/kernel
:¬2dense_12/bias
.
0
1"
trackable_list_wrapper
(
0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
Î
trainable_variables
Fnon_trainable_variables
Glayer_metrics
Hlayer_regularization_losses
regularization_losses
Imetrics

Jlayers
	variables
__call__
activity_regularizer_fn
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
trainable_variables
Knon_trainable_variables
Llayer_metrics
Mlayer_regularization_losses
regularization_losses
Nmetrics

Olayers
 	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
": 	¬22dense_13/kernel
:22dense_13/bias
.
"0
#1"
trackable_list_wrapper
(
0"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
°
$trainable_variables
Pnon_trainable_variables
Qlayer_metrics
Rlayer_regularization_losses
%regularization_losses
Smetrics

Tlayers
&	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
!:2	2dense_14/kernel
:	2dense_14/bias
.
(0
)1"
trackable_list_wrapper
(
0"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
Î
*trainable_variables
Unon_trainable_variables
Vlayer_metrics
Wlayer_regularization_losses
+regularization_losses
Xmetrics

Ylayers
,	variables
__call__
activity_regularizer_fn
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
.trainable_variables
Znon_trainable_variables
[layer_metrics
\layer_regularization_losses
/regularization_losses
]metrics

^layers
0	variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
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
 "
trackable_dict_wrapper
.
_0
`1"
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
0
1"
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
(
0"
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
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
0"
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
Ô
	atotal
	bcount
c	variables
d	keras_api"
_tf_keras_metric{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 32}

	etotal
	fcount
g
_fn_kwargs
h	variables
i	keras_api"×
_tf_keras_metric¼{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 27}
:  (2total
:  (2count
.
a0
b1"
trackable_list_wrapper
-
c	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
e0
f1"
trackable_list_wrapper
-
h	variables"
_generic_user_object
*:(	2Adam/conv1d_4/kernel/m
 :2Adam/conv1d_4/bias/m
(:&
´¬2Adam/dense_12/kernel/m
!:¬2Adam/dense_12/bias/m
':%	¬22Adam/dense_13/kernel/m
 :22Adam/dense_13/bias/m
&:$2	2Adam/dense_14/kernel/m
 :	2Adam/dense_14/bias/m
*:(	2Adam/conv1d_4/kernel/v
 :2Adam/conv1d_4/bias/v
(:&
´¬2Adam/dense_12/kernel/v
!:¬2Adam/dense_12/bias/v
':%	¬22Adam/dense_13/kernel/v
 :22Adam/dense_13/bias/v
&:$2	2Adam/dense_14/kernel/v
 :	2Adam/dense_14/bias/v
ò2ï
I__inference_sequential_4_layer_call_and_return_conditional_losses_2719450
I__inference_sequential_4_layer_call_and_return_conditional_losses_2719566
I__inference_sequential_4_layer_call_and_return_conditional_losses_2719198
I__inference_sequential_4_layer_call_and_return_conditional_losses_2719282À
·²³
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

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ë2è
"__inference__wrapped_model_2718597Á
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *1¢.
,)
conv1d_4_inputÿÿÿÿÿÿÿÿÿ	
2
.__inference_sequential_4_layer_call_fn_2718847
.__inference_sequential_4_layer_call_fn_2719590
.__inference_sequential_4_layer_call_fn_2719614
.__inference_sequential_4_layer_call_fn_2719114À
·²³
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

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ó2ð
I__inference_conv1d_4_layer_call_and_return_all_conditional_losses_2719637¢
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
Ô2Ñ
*__inference_conv1d_4_layer_call_fn_2719646¢
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
ð2í
F__inference_flatten_4_layer_call_and_return_conditional_losses_2719652¢
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
Õ2Ò
+__inference_flatten_4_layer_call_fn_2719657¢
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
ó2ð
I__inference_dense_12_layer_call_and_return_all_conditional_losses_2719674¢
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
Ô2Ñ
*__inference_dense_12_layer_call_fn_2719683¢
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
Ê2Ç
F__inference_dropout_4_layer_call_and_return_conditional_losses_2719688
F__inference_dropout_4_layer_call_and_return_conditional_losses_2719700´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
+__inference_dropout_4_layer_call_fn_2719705
+__inference_dropout_4_layer_call_fn_2719710´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ï2ì
E__inference_dense_13_layer_call_and_return_conditional_losses_2719733¢
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
Ô2Ñ
*__inference_dense_13_layer_call_fn_2719742¢
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
ó2ð
I__inference_dense_14_layer_call_and_return_all_conditional_losses_2719759¢
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
Ô2Ñ
*__inference_dense_14_layer_call_fn_2719768¢
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
ý2ú
F__inference_softmax_4_layer_call_and_return_conditional_losses_2719773¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
â2ß
+__inference_softmax_4_layer_call_fn_2719778¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
´2±
__inference_loss_fn_0_2719789
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
´2±
__inference_loss_fn_1_2719800
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
´2±
__inference_loss_fn_2_2719811
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
´2±
__inference_loss_fn_3_2719822
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
´2±
__inference_loss_fn_4_2719833
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
ÓBÐ
%__inference_signature_wrapper_2719341conv1d_4_input"
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
â2ß
1__inference_conv1d_4_activity_regularizer_2718610©
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
ï2ì
E__inference_conv1d_4_layer_call_and_return_conditional_losses_2719861¢
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
â2ß
1__inference_dense_12_activity_regularizer_2718623©
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
ï2ì
E__inference_dense_12_layer_call_and_return_conditional_losses_2719878¢
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
â2ß
1__inference_dense_14_activity_regularizer_2718636©
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
ï2ì
E__inference_dense_14_layer_call_and_return_conditional_losses_2719894¢
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
 ¤
"__inference__wrapped_model_2718597~"#();¢8
1¢.
,)
conv1d_4_inputÿÿÿÿÿÿÿÿÿ	
ª "5ª2
0
	softmax_4# 
	softmax_4ÿÿÿÿÿÿÿÿÿ	[
1__inference_conv1d_4_activity_regularizer_2718610&¢
¢
	
x
ª " ¿
I__inference_conv1d_4_layer_call_and_return_all_conditional_losses_2719637r3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ	
ª "7¢4

0ÿÿÿÿÿÿÿÿÿ

	
1/0 ­
E__inference_conv1d_4_layer_call_and_return_conditional_losses_2719861d3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ	
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
*__inference_conv1d_4_layer_call_fn_2719646W3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ	
ª "ÿÿÿÿÿÿÿÿÿ[
1__inference_dense_12_activity_regularizer_2718623&¢
¢
	
x
ª " ¹
I__inference_dense_12_layer_call_and_return_all_conditional_losses_2719674l0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ´
ª "4¢1

0ÿÿÿÿÿÿÿÿÿ¬

	
1/0 §
E__inference_dense_12_layer_call_and_return_conditional_losses_2719878^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ´
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ¬
 
*__inference_dense_12_layer_call_fn_2719683Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ´
ª "ÿÿÿÿÿÿÿÿÿ¬¦
E__inference_dense_13_layer_call_and_return_conditional_losses_2719733]"#0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ¬
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ2
 ~
*__inference_dense_13_layer_call_fn_2719742P"#0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ¬
ª "ÿÿÿÿÿÿÿÿÿ2[
1__inference_dense_14_activity_regularizer_2718636&¢
¢
	
x
ª " ·
I__inference_dense_14_layer_call_and_return_all_conditional_losses_2719759j()/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "3¢0

0ÿÿÿÿÿÿÿÿÿ	

	
1/0 ¥
E__inference_dense_14_layer_call_and_return_conditional_losses_2719894\()/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ	
 }
*__inference_dense_14_layer_call_fn_2719768O()/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ2
ª "ÿÿÿÿÿÿÿÿÿ	¨
F__inference_dropout_4_layer_call_and_return_conditional_losses_2719688^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ¬
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ¬
 ¨
F__inference_dropout_4_layer_call_and_return_conditional_losses_2719700^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ¬
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ¬
 
+__inference_dropout_4_layer_call_fn_2719705Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ¬
p 
ª "ÿÿÿÿÿÿÿÿÿ¬
+__inference_dropout_4_layer_call_fn_2719710Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ¬
p
ª "ÿÿÿÿÿÿÿÿÿ¬§
F__inference_flatten_4_layer_call_and_return_conditional_losses_2719652]3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ´
 
+__inference_flatten_4_layer_call_fn_2719657P3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ´<
__inference_loss_fn_0_2719789¢

¢ 
ª " <
__inference_loss_fn_1_2719800¢

¢ 
ª " <
__inference_loss_fn_2_2719811¢

¢ 
ª " <
__inference_loss_fn_3_2719822"¢

¢ 
ª " <
__inference_loss_fn_4_2719833)¢

¢ 
ª " î
I__inference_sequential_4_layer_call_and_return_conditional_losses_2719198 "#()C¢@
9¢6
,)
conv1d_4_inputÿÿÿÿÿÿÿÿÿ	
p 

 
ª "O¢L

0ÿÿÿÿÿÿÿÿÿ	
-*
	
1/0 
	
1/1 
	
1/2 î
I__inference_sequential_4_layer_call_and_return_conditional_losses_2719282 "#()C¢@
9¢6
,)
conv1d_4_inputÿÿÿÿÿÿÿÿÿ	
p

 
ª "O¢L

0ÿÿÿÿÿÿÿÿÿ	
-*
	
1/0 
	
1/1 
	
1/2 æ
I__inference_sequential_4_layer_call_and_return_conditional_losses_2719450"#();¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "O¢L

0ÿÿÿÿÿÿÿÿÿ	
-*
	
1/0 
	
1/1 
	
1/2 æ
I__inference_sequential_4_layer_call_and_return_conditional_losses_2719566"#();¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "O¢L

0ÿÿÿÿÿÿÿÿÿ	
-*
	
1/0 
	
1/1 
	
1/2 
.__inference_sequential_4_layer_call_fn_2718847i"#()C¢@
9¢6
,)
conv1d_4_inputÿÿÿÿÿÿÿÿÿ	
p 

 
ª "ÿÿÿÿÿÿÿÿÿ	
.__inference_sequential_4_layer_call_fn_2719114i"#()C¢@
9¢6
,)
conv1d_4_inputÿÿÿÿÿÿÿÿÿ	
p

 
ª "ÿÿÿÿÿÿÿÿÿ	
.__inference_sequential_4_layer_call_fn_2719590a"#();¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ	
p 

 
ª "ÿÿÿÿÿÿÿÿÿ	
.__inference_sequential_4_layer_call_fn_2719614a"#();¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ	
p

 
ª "ÿÿÿÿÿÿÿÿÿ	º
%__inference_signature_wrapper_2719341"#()M¢J
¢ 
Cª@
>
conv1d_4_input,)
conv1d_4_inputÿÿÿÿÿÿÿÿÿ	"5ª2
0
	softmax_4# 
	softmax_4ÿÿÿÿÿÿÿÿÿ	¦
F__inference_softmax_4_layer_call_and_return_conditional_losses_2719773\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ	

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ	
 ~
+__inference_softmax_4_layer_call_fn_2719778O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ	

 
ª "ÿÿÿÿÿÿÿÿÿ	