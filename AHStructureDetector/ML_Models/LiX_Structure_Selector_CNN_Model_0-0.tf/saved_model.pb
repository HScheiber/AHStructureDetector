??
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
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
z
dense_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	d* 
shared_namedense_56/kernel
s
#dense_56/kernel/Read/ReadVariableOpReadVariableOpdense_56/kernel*
_output_shapes

:	d*
dtype0
r
dense_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_56/bias
k
!dense_56/bias/Read/ReadVariableOpReadVariableOpdense_56/bias*
_output_shapes
:d*
dtype0
z
dense_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd* 
shared_namedense_57/kernel
s
#dense_57/kernel/Read/ReadVariableOpReadVariableOpdense_57/kernel*
_output_shapes

:dd*
dtype0
r
dense_57/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_57/bias
k
!dense_57/bias/Read/ReadVariableOpReadVariableOpdense_57/bias*
_output_shapes
:d*
dtype0
z
dense_58/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd* 
shared_namedense_58/kernel
s
#dense_58/kernel/Read/ReadVariableOpReadVariableOpdense_58/kernel*
_output_shapes

:dd*
dtype0
r
dense_58/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_58/bias
k
!dense_58/bias/Read/ReadVariableOpReadVariableOpdense_58/bias*
_output_shapes
:d*
dtype0
z
dense_59/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d* 
shared_namedense_59/kernel
s
#dense_59/kernel/Read/ReadVariableOpReadVariableOpdense_59/kernel*
_output_shapes

:d*
dtype0
r
dense_59/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_59/bias
k
!dense_59/bias/Read/ReadVariableOpReadVariableOpdense_59/bias*
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
Adam/dense_56/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	d*'
shared_nameAdam/dense_56/kernel/m
?
*Adam/dense_56/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_56/kernel/m*
_output_shapes

:	d*
dtype0
?
Adam/dense_56/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_56/bias/m
y
(Adam/dense_56/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_56/bias/m*
_output_shapes
:d*
dtype0
?
Adam/dense_57/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*'
shared_nameAdam/dense_57/kernel/m
?
*Adam/dense_57/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_57/kernel/m*
_output_shapes

:dd*
dtype0
?
Adam/dense_57/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_57/bias/m
y
(Adam/dense_57/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_57/bias/m*
_output_shapes
:d*
dtype0
?
Adam/dense_58/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*'
shared_nameAdam/dense_58/kernel/m
?
*Adam/dense_58/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_58/kernel/m*
_output_shapes

:dd*
dtype0
?
Adam/dense_58/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_58/bias/m
y
(Adam/dense_58/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_58/bias/m*
_output_shapes
:d*
dtype0
?
Adam/dense_59/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_59/kernel/m
?
*Adam/dense_59/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_59/kernel/m*
_output_shapes

:d*
dtype0
?
Adam/dense_59/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_59/bias/m
y
(Adam/dense_59/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_59/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_56/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	d*'
shared_nameAdam/dense_56/kernel/v
?
*Adam/dense_56/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_56/kernel/v*
_output_shapes

:	d*
dtype0
?
Adam/dense_56/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_56/bias/v
y
(Adam/dense_56/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_56/bias/v*
_output_shapes
:d*
dtype0
?
Adam/dense_57/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*'
shared_nameAdam/dense_57/kernel/v
?
*Adam/dense_57/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_57/kernel/v*
_output_shapes

:dd*
dtype0
?
Adam/dense_57/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_57/bias/v
y
(Adam/dense_57/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_57/bias/v*
_output_shapes
:d*
dtype0
?
Adam/dense_58/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*'
shared_nameAdam/dense_58/kernel/v
?
*Adam/dense_58/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_58/kernel/v*
_output_shapes

:dd*
dtype0
?
Adam/dense_58/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_58/bias/v
y
(Adam/dense_58/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_58/bias/v*
_output_shapes
:d*
dtype0
?
Adam/dense_59/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_59/kernel/v
?
*Adam/dense_59/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_59/kernel/v*
_output_shapes

:d*
dtype0
?
Adam/dense_59/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_59/bias/v
y
(Adam/dense_59/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_59/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?4
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?4
value?4B?4 B?4
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
	optimizer
	trainable_variables

	variables
regularization_losses
	keras_api

signatures
R
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
 regularization_losses
!	keras_api
h

"kernel
#bias
$trainable_variables
%	variables
&regularization_losses
'	keras_api
h

(kernel
)bias
*trainable_variables
+	variables
,regularization_losses
-	keras_api
R
.trainable_variables
/	variables
0regularization_losses
1	keras_api
?
2iter

3beta_1

4beta_2
	5decay
6learning_ratemjmkmlmm"mn#mo(mp)mqvrvsvtvu"vv#vw(vx)vy
8
0
1
2
3
"4
#5
(6
)7
8
0
1
2
3
"4
#5
(6
)7
 
?
7metrics
	trainable_variables
8non_trainable_variables
9layer_metrics

	variables
regularization_losses

:layers
;layer_regularization_losses
 
 
 
 
?
<metrics
trainable_variables
=non_trainable_variables
>layer_metrics
	variables
regularization_losses

?layers
@layer_regularization_losses
[Y
VARIABLE_VALUEdense_56/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_56/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Ametrics
trainable_variables
Bnon_trainable_variables
Clayer_metrics
	variables
regularization_losses

Dlayers
Elayer_regularization_losses
 
 
 
?
Fmetrics
trainable_variables
Gnon_trainable_variables
Hlayer_metrics
	variables
regularization_losses

Ilayers
Jlayer_regularization_losses
[Y
VARIABLE_VALUEdense_57/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_57/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Kmetrics
trainable_variables
Lnon_trainable_variables
Mlayer_metrics
	variables
 regularization_losses

Nlayers
Olayer_regularization_losses
[Y
VARIABLE_VALUEdense_58/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_58/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

"0
#1

"0
#1
 
?
Pmetrics
$trainable_variables
Qnon_trainable_variables
Rlayer_metrics
%	variables
&regularization_losses

Slayers
Tlayer_regularization_losses
[Y
VARIABLE_VALUEdense_59/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_59/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

(0
)1

(0
)1
 
?
Umetrics
*trainable_variables
Vnon_trainable_variables
Wlayer_metrics
+	variables
,regularization_losses

Xlayers
Ylayer_regularization_losses
 
 
 
?
Zmetrics
.trainable_variables
[non_trainable_variables
\layer_metrics
/	variables
0regularization_losses

]layers
^layer_regularization_losses
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

_0
`1
 
 
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
VARIABLE_VALUEAdam/dense_56/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_56/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_57/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_57/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_58/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_58/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_59/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_59/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_56/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_56/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_57/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_57/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_58/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_58/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_59/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_59/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_flatten_14_inputPlaceholder*'
_output_shapes
:?????????	*
dtype0*
shape:?????????	
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_flatten_14_inputdense_56/kerneldense_56/biasdense_57/kerneldense_57/biasdense_58/kerneldense_58/biasdense_59/kerneldense_59/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? *-
f(R&
$__inference_signature_wrapper_647217
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_56/kernel/Read/ReadVariableOp!dense_56/bias/Read/ReadVariableOp#dense_57/kernel/Read/ReadVariableOp!dense_57/bias/Read/ReadVariableOp#dense_58/kernel/Read/ReadVariableOp!dense_58/bias/Read/ReadVariableOp#dense_59/kernel/Read/ReadVariableOp!dense_59/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_56/kernel/m/Read/ReadVariableOp(Adam/dense_56/bias/m/Read/ReadVariableOp*Adam/dense_57/kernel/m/Read/ReadVariableOp(Adam/dense_57/bias/m/Read/ReadVariableOp*Adam/dense_58/kernel/m/Read/ReadVariableOp(Adam/dense_58/bias/m/Read/ReadVariableOp*Adam/dense_59/kernel/m/Read/ReadVariableOp(Adam/dense_59/bias/m/Read/ReadVariableOp*Adam/dense_56/kernel/v/Read/ReadVariableOp(Adam/dense_56/bias/v/Read/ReadVariableOp*Adam/dense_57/kernel/v/Read/ReadVariableOp(Adam/dense_57/bias/v/Read/ReadVariableOp*Adam/dense_58/kernel/v/Read/ReadVariableOp(Adam/dense_58/bias/v/Read/ReadVariableOp*Adam/dense_59/kernel/v/Read/ReadVariableOp(Adam/dense_59/bias/v/Read/ReadVariableOpConst*.
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
GPU2 *0J 8? *(
f#R!
__inference__traced_save_647881
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_56/kerneldense_56/biasdense_57/kerneldense_57/biasdense_58/kerneldense_58/biasdense_59/kerneldense_59/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_56/kernel/mAdam/dense_56/bias/mAdam/dense_57/kernel/mAdam/dense_57/bias/mAdam/dense_58/kernel/mAdam/dense_58/bias/mAdam/dense_59/kernel/mAdam/dense_59/bias/mAdam/dense_56/kernel/vAdam/dense_56/bias/vAdam/dense_57/kernel/vAdam/dense_57/bias/vAdam/dense_58/kernel/vAdam/dense_58/bias/vAdam/dense_59/kernel/vAdam/dense_59/bias/v*-
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
GPU2 *0J 8? *+
f&R$
"__inference__traced_restore_647990??
?
?
H__inference_dense_58_layer_call_and_return_all_conditional_losses_647612

inputs
unknown:dd
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
D__inference_dense_58_layer_call_and_return_conditional_losses_6466022
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
0__inference_dense_58_activity_regularizer_6464882
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
D__inference_dense_59_layer_call_and_return_conditional_losses_647759

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_59/bias/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
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
/dense_59/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_59/bias/Regularizer/Square/ReadVariableOp?
 dense_59/bias/Regularizer/SquareSquare7dense_59/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_59/bias/Regularizer/Square?
dense_59/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_59/bias/Regularizer/Const?
dense_59/bias/Regularizer/SumSum$dense_59/bias/Regularizer/Square:y:0(dense_59/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_59/bias/Regularizer/Sum?
dense_59/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_59/bias/Regularizer/mul/x?
dense_59/bias/Regularizer/mulMul(dense_59/bias/Regularizer/mul/x:output:0&dense_59/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_59/bias/Regularizer/mul?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_59/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_59/bias/Regularizer/Square/ReadVariableOp/dense_59/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?
!__inference__wrapped_model_646449
flatten_14_inputG
5sequential_14_dense_56_matmul_readvariableop_resource:	dD
6sequential_14_dense_56_biasadd_readvariableop_resource:dG
5sequential_14_dense_57_matmul_readvariableop_resource:ddD
6sequential_14_dense_57_biasadd_readvariableop_resource:dG
5sequential_14_dense_58_matmul_readvariableop_resource:ddD
6sequential_14_dense_58_biasadd_readvariableop_resource:dG
5sequential_14_dense_59_matmul_readvariableop_resource:dD
6sequential_14_dense_59_biasadd_readvariableop_resource:
identity??-sequential_14/dense_56/BiasAdd/ReadVariableOp?,sequential_14/dense_56/MatMul/ReadVariableOp?-sequential_14/dense_57/BiasAdd/ReadVariableOp?,sequential_14/dense_57/MatMul/ReadVariableOp?-sequential_14/dense_58/BiasAdd/ReadVariableOp?,sequential_14/dense_58/MatMul/ReadVariableOp?-sequential_14/dense_59/BiasAdd/ReadVariableOp?,sequential_14/dense_59/MatMul/ReadVariableOp?
sequential_14/flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"????	   2 
sequential_14/flatten_14/Const?
 sequential_14/flatten_14/ReshapeReshapeflatten_14_input'sequential_14/flatten_14/Const:output:0*
T0*'
_output_shapes
:?????????	2"
 sequential_14/flatten_14/Reshape?
,sequential_14/dense_56/MatMul/ReadVariableOpReadVariableOp5sequential_14_dense_56_matmul_readvariableop_resource*
_output_shapes

:	d*
dtype02.
,sequential_14/dense_56/MatMul/ReadVariableOp?
sequential_14/dense_56/MatMulMatMul)sequential_14/flatten_14/Reshape:output:04sequential_14/dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
sequential_14/dense_56/MatMul?
-sequential_14/dense_56/BiasAdd/ReadVariableOpReadVariableOp6sequential_14_dense_56_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02/
-sequential_14/dense_56/BiasAdd/ReadVariableOp?
sequential_14/dense_56/BiasAddBiasAdd'sequential_14/dense_56/MatMul:product:05sequential_14/dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2 
sequential_14/dense_56/BiasAdd?
sequential_14/dense_56/ReluRelu'sequential_14/dense_56/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
sequential_14/dense_56/Relu?
1sequential_14/dense_56/ActivityRegularizer/SquareSquare)sequential_14/dense_56/Relu:activations:0*
T0*'
_output_shapes
:?????????d23
1sequential_14/dense_56/ActivityRegularizer/Square?
0sequential_14/dense_56/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       22
0sequential_14/dense_56/ActivityRegularizer/Const?
.sequential_14/dense_56/ActivityRegularizer/SumSum5sequential_14/dense_56/ActivityRegularizer/Square:y:09sequential_14/dense_56/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 20
.sequential_14/dense_56/ActivityRegularizer/Sum?
0sequential_14/dense_56/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??822
0sequential_14/dense_56/ActivityRegularizer/mul/x?
.sequential_14/dense_56/ActivityRegularizer/mulMul9sequential_14/dense_56/ActivityRegularizer/mul/x:output:07sequential_14/dense_56/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 20
.sequential_14/dense_56/ActivityRegularizer/mul?
0sequential_14/dense_56/ActivityRegularizer/ShapeShape)sequential_14/dense_56/Relu:activations:0*
T0*
_output_shapes
:22
0sequential_14/dense_56/ActivityRegularizer/Shape?
>sequential_14/dense_56/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>sequential_14/dense_56/ActivityRegularizer/strided_slice/stack?
@sequential_14/dense_56/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_14/dense_56/ActivityRegularizer/strided_slice/stack_1?
@sequential_14/dense_56/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_14/dense_56/ActivityRegularizer/strided_slice/stack_2?
8sequential_14/dense_56/ActivityRegularizer/strided_sliceStridedSlice9sequential_14/dense_56/ActivityRegularizer/Shape:output:0Gsequential_14/dense_56/ActivityRegularizer/strided_slice/stack:output:0Isequential_14/dense_56/ActivityRegularizer/strided_slice/stack_1:output:0Isequential_14/dense_56/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8sequential_14/dense_56/ActivityRegularizer/strided_slice?
/sequential_14/dense_56/ActivityRegularizer/CastCastAsequential_14/dense_56/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 21
/sequential_14/dense_56/ActivityRegularizer/Cast?
2sequential_14/dense_56/ActivityRegularizer/truedivRealDiv2sequential_14/dense_56/ActivityRegularizer/mul:z:03sequential_14/dense_56/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 24
2sequential_14/dense_56/ActivityRegularizer/truediv?
!sequential_14/dropout_12/IdentityIdentity)sequential_14/dense_56/Relu:activations:0*
T0*'
_output_shapes
:?????????d2#
!sequential_14/dropout_12/Identity?
,sequential_14/dense_57/MatMul/ReadVariableOpReadVariableOp5sequential_14_dense_57_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype02.
,sequential_14/dense_57/MatMul/ReadVariableOp?
sequential_14/dense_57/MatMulMatMul*sequential_14/dropout_12/Identity:output:04sequential_14/dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
sequential_14/dense_57/MatMul?
-sequential_14/dense_57/BiasAdd/ReadVariableOpReadVariableOp6sequential_14_dense_57_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02/
-sequential_14/dense_57/BiasAdd/ReadVariableOp?
sequential_14/dense_57/BiasAddBiasAdd'sequential_14/dense_57/MatMul:product:05sequential_14/dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2 
sequential_14/dense_57/BiasAdd?
sequential_14/dense_57/ReluRelu'sequential_14/dense_57/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
sequential_14/dense_57/Relu?
1sequential_14/dense_57/ActivityRegularizer/SquareSquare)sequential_14/dense_57/Relu:activations:0*
T0*'
_output_shapes
:?????????d23
1sequential_14/dense_57/ActivityRegularizer/Square?
0sequential_14/dense_57/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       22
0sequential_14/dense_57/ActivityRegularizer/Const?
.sequential_14/dense_57/ActivityRegularizer/SumSum5sequential_14/dense_57/ActivityRegularizer/Square:y:09sequential_14/dense_57/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 20
.sequential_14/dense_57/ActivityRegularizer/Sum?
0sequential_14/dense_57/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??822
0sequential_14/dense_57/ActivityRegularizer/mul/x?
.sequential_14/dense_57/ActivityRegularizer/mulMul9sequential_14/dense_57/ActivityRegularizer/mul/x:output:07sequential_14/dense_57/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 20
.sequential_14/dense_57/ActivityRegularizer/mul?
0sequential_14/dense_57/ActivityRegularizer/ShapeShape)sequential_14/dense_57/Relu:activations:0*
T0*
_output_shapes
:22
0sequential_14/dense_57/ActivityRegularizer/Shape?
>sequential_14/dense_57/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>sequential_14/dense_57/ActivityRegularizer/strided_slice/stack?
@sequential_14/dense_57/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_14/dense_57/ActivityRegularizer/strided_slice/stack_1?
@sequential_14/dense_57/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_14/dense_57/ActivityRegularizer/strided_slice/stack_2?
8sequential_14/dense_57/ActivityRegularizer/strided_sliceStridedSlice9sequential_14/dense_57/ActivityRegularizer/Shape:output:0Gsequential_14/dense_57/ActivityRegularizer/strided_slice/stack:output:0Isequential_14/dense_57/ActivityRegularizer/strided_slice/stack_1:output:0Isequential_14/dense_57/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8sequential_14/dense_57/ActivityRegularizer/strided_slice?
/sequential_14/dense_57/ActivityRegularizer/CastCastAsequential_14/dense_57/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 21
/sequential_14/dense_57/ActivityRegularizer/Cast?
2sequential_14/dense_57/ActivityRegularizer/truedivRealDiv2sequential_14/dense_57/ActivityRegularizer/mul:z:03sequential_14/dense_57/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 24
2sequential_14/dense_57/ActivityRegularizer/truediv?
,sequential_14/dense_58/MatMul/ReadVariableOpReadVariableOp5sequential_14_dense_58_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype02.
,sequential_14/dense_58/MatMul/ReadVariableOp?
sequential_14/dense_58/MatMulMatMul)sequential_14/dense_57/Relu:activations:04sequential_14/dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
sequential_14/dense_58/MatMul?
-sequential_14/dense_58/BiasAdd/ReadVariableOpReadVariableOp6sequential_14_dense_58_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02/
-sequential_14/dense_58/BiasAdd/ReadVariableOp?
sequential_14/dense_58/BiasAddBiasAdd'sequential_14/dense_58/MatMul:product:05sequential_14/dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2 
sequential_14/dense_58/BiasAdd?
sequential_14/dense_58/ReluRelu'sequential_14/dense_58/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
sequential_14/dense_58/Relu?
1sequential_14/dense_58/ActivityRegularizer/SquareSquare)sequential_14/dense_58/Relu:activations:0*
T0*'
_output_shapes
:?????????d23
1sequential_14/dense_58/ActivityRegularizer/Square?
0sequential_14/dense_58/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       22
0sequential_14/dense_58/ActivityRegularizer/Const?
.sequential_14/dense_58/ActivityRegularizer/SumSum5sequential_14/dense_58/ActivityRegularizer/Square:y:09sequential_14/dense_58/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 20
.sequential_14/dense_58/ActivityRegularizer/Sum?
0sequential_14/dense_58/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??822
0sequential_14/dense_58/ActivityRegularizer/mul/x?
.sequential_14/dense_58/ActivityRegularizer/mulMul9sequential_14/dense_58/ActivityRegularizer/mul/x:output:07sequential_14/dense_58/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 20
.sequential_14/dense_58/ActivityRegularizer/mul?
0sequential_14/dense_58/ActivityRegularizer/ShapeShape)sequential_14/dense_58/Relu:activations:0*
T0*
_output_shapes
:22
0sequential_14/dense_58/ActivityRegularizer/Shape?
>sequential_14/dense_58/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>sequential_14/dense_58/ActivityRegularizer/strided_slice/stack?
@sequential_14/dense_58/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_14/dense_58/ActivityRegularizer/strided_slice/stack_1?
@sequential_14/dense_58/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_14/dense_58/ActivityRegularizer/strided_slice/stack_2?
8sequential_14/dense_58/ActivityRegularizer/strided_sliceStridedSlice9sequential_14/dense_58/ActivityRegularizer/Shape:output:0Gsequential_14/dense_58/ActivityRegularizer/strided_slice/stack:output:0Isequential_14/dense_58/ActivityRegularizer/strided_slice/stack_1:output:0Isequential_14/dense_58/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8sequential_14/dense_58/ActivityRegularizer/strided_slice?
/sequential_14/dense_58/ActivityRegularizer/CastCastAsequential_14/dense_58/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 21
/sequential_14/dense_58/ActivityRegularizer/Cast?
2sequential_14/dense_58/ActivityRegularizer/truedivRealDiv2sequential_14/dense_58/ActivityRegularizer/mul:z:03sequential_14/dense_58/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 24
2sequential_14/dense_58/ActivityRegularizer/truediv?
,sequential_14/dense_59/MatMul/ReadVariableOpReadVariableOp5sequential_14_dense_59_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02.
,sequential_14/dense_59/MatMul/ReadVariableOp?
sequential_14/dense_59/MatMulMatMul)sequential_14/dense_58/Relu:activations:04sequential_14/dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_14/dense_59/MatMul?
-sequential_14/dense_59/BiasAdd/ReadVariableOpReadVariableOp6sequential_14_dense_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_14/dense_59/BiasAdd/ReadVariableOp?
sequential_14/dense_59/BiasAddBiasAdd'sequential_14/dense_59/MatMul:product:05sequential_14/dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_14/dense_59/BiasAdd?
1sequential_14/dense_59/ActivityRegularizer/SquareSquare'sequential_14/dense_59/BiasAdd:output:0*
T0*'
_output_shapes
:?????????23
1sequential_14/dense_59/ActivityRegularizer/Square?
0sequential_14/dense_59/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       22
0sequential_14/dense_59/ActivityRegularizer/Const?
.sequential_14/dense_59/ActivityRegularizer/SumSum5sequential_14/dense_59/ActivityRegularizer/Square:y:09sequential_14/dense_59/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 20
.sequential_14/dense_59/ActivityRegularizer/Sum?
0sequential_14/dense_59/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??822
0sequential_14/dense_59/ActivityRegularizer/mul/x?
.sequential_14/dense_59/ActivityRegularizer/mulMul9sequential_14/dense_59/ActivityRegularizer/mul/x:output:07sequential_14/dense_59/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 20
.sequential_14/dense_59/ActivityRegularizer/mul?
0sequential_14/dense_59/ActivityRegularizer/ShapeShape'sequential_14/dense_59/BiasAdd:output:0*
T0*
_output_shapes
:22
0sequential_14/dense_59/ActivityRegularizer/Shape?
>sequential_14/dense_59/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>sequential_14/dense_59/ActivityRegularizer/strided_slice/stack?
@sequential_14/dense_59/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_14/dense_59/ActivityRegularizer/strided_slice/stack_1?
@sequential_14/dense_59/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_14/dense_59/ActivityRegularizer/strided_slice/stack_2?
8sequential_14/dense_59/ActivityRegularizer/strided_sliceStridedSlice9sequential_14/dense_59/ActivityRegularizer/Shape:output:0Gsequential_14/dense_59/ActivityRegularizer/strided_slice/stack:output:0Isequential_14/dense_59/ActivityRegularizer/strided_slice/stack_1:output:0Isequential_14/dense_59/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8sequential_14/dense_59/ActivityRegularizer/strided_slice?
/sequential_14/dense_59/ActivityRegularizer/CastCastAsequential_14/dense_59/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 21
/sequential_14/dense_59/ActivityRegularizer/Cast?
2sequential_14/dense_59/ActivityRegularizer/truedivRealDiv2sequential_14/dense_59/ActivityRegularizer/mul:z:03sequential_14/dense_59/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 24
2sequential_14/dense_59/ActivityRegularizer/truediv?
sequential_14/softmax_6/SoftmaxSoftmax'sequential_14/dense_59/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2!
sequential_14/softmax_6/Softmax?
IdentityIdentity)sequential_14/softmax_6/Softmax:softmax:0.^sequential_14/dense_56/BiasAdd/ReadVariableOp-^sequential_14/dense_56/MatMul/ReadVariableOp.^sequential_14/dense_57/BiasAdd/ReadVariableOp-^sequential_14/dense_57/MatMul/ReadVariableOp.^sequential_14/dense_58/BiasAdd/ReadVariableOp-^sequential_14/dense_58/MatMul/ReadVariableOp.^sequential_14/dense_59/BiasAdd/ReadVariableOp-^sequential_14/dense_59/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : : : 2^
-sequential_14/dense_56/BiasAdd/ReadVariableOp-sequential_14/dense_56/BiasAdd/ReadVariableOp2\
,sequential_14/dense_56/MatMul/ReadVariableOp,sequential_14/dense_56/MatMul/ReadVariableOp2^
-sequential_14/dense_57/BiasAdd/ReadVariableOp-sequential_14/dense_57/BiasAdd/ReadVariableOp2\
,sequential_14/dense_57/MatMul/ReadVariableOp,sequential_14/dense_57/MatMul/ReadVariableOp2^
-sequential_14/dense_58/BiasAdd/ReadVariableOp-sequential_14/dense_58/BiasAdd/ReadVariableOp2\
,sequential_14/dense_58/MatMul/ReadVariableOp,sequential_14/dense_58/MatMul/ReadVariableOp2^
-sequential_14/dense_59/BiasAdd/ReadVariableOp-sequential_14/dense_59/BiasAdd/ReadVariableOp2\
,sequential_14/dense_59/MatMul/ReadVariableOp,sequential_14/dense_59/MatMul/ReadVariableOp:Y U
'
_output_shapes
:?????????	
*
_user_specified_nameflatten_14_input
ӓ
?
I__inference_sequential_14_layer_call_and_return_conditional_losses_646942

inputs!
dense_56_646859:	d
dense_56_646861:d!
dense_57_646873:dd
dense_57_646875:d!
dense_58_646886:dd
dense_58_646888:d!
dense_59_646899:d
dense_59_646901:
identity

identity_1

identity_2

identity_3

identity_4?? dense_56/StatefulPartitionedCall?/dense_56/bias/Regularizer/Square/ReadVariableOp? dense_57/StatefulPartitionedCall?/dense_57/bias/Regularizer/Square/ReadVariableOp? dense_58/StatefulPartitionedCall?/dense_58/bias/Regularizer/Square/ReadVariableOp? dense_59/StatefulPartitionedCall?/dense_59/bias/Regularizer/Square/ReadVariableOp?"dropout_12/StatefulPartitionedCall?
flatten_14/PartitionedCallPartitionedCallinputs*
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
F__inference_flatten_14_layer_call_and_return_conditional_losses_6465142
flatten_14/PartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_56_646859dense_56_646861*
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
D__inference_dense_56_layer_call_and_return_conditional_losses_6465332"
 dense_56/StatefulPartitionedCall?
,dense_56/ActivityRegularizer/PartitionedCallPartitionedCall)dense_56/StatefulPartitionedCall:output:0*
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
0__inference_dense_56_activity_regularizer_6464622.
,dense_56/ActivityRegularizer/PartitionedCall?
"dense_56/ActivityRegularizer/ShapeShape)dense_56/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_56/ActivityRegularizer/Shape?
0dense_56/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_56/ActivityRegularizer/strided_slice/stack?
2dense_56/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_56/ActivityRegularizer/strided_slice/stack_1?
2dense_56/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_56/ActivityRegularizer/strided_slice/stack_2?
*dense_56/ActivityRegularizer/strided_sliceStridedSlice+dense_56/ActivityRegularizer/Shape:output:09dense_56/ActivityRegularizer/strided_slice/stack:output:0;dense_56/ActivityRegularizer/strided_slice/stack_1:output:0;dense_56/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_56/ActivityRegularizer/strided_slice?
!dense_56/ActivityRegularizer/CastCast3dense_56/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_56/ActivityRegularizer/Cast?
$dense_56/ActivityRegularizer/truedivRealDiv5dense_56/ActivityRegularizer/PartitionedCall:output:0%dense_56/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_56/ActivityRegularizer/truediv?
"dropout_12/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_6467972$
"dropout_12/StatefulPartitionedCall?
 dense_57/StatefulPartitionedCallStatefulPartitionedCall+dropout_12/StatefulPartitionedCall:output:0dense_57_646873dense_57_646875*
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
D__inference_dense_57_layer_call_and_return_conditional_losses_6465712"
 dense_57/StatefulPartitionedCall?
,dense_57/ActivityRegularizer/PartitionedCallPartitionedCall)dense_57/StatefulPartitionedCall:output:0*
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
0__inference_dense_57_activity_regularizer_6464752.
,dense_57/ActivityRegularizer/PartitionedCall?
"dense_57/ActivityRegularizer/ShapeShape)dense_57/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_57/ActivityRegularizer/Shape?
0dense_57/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_57/ActivityRegularizer/strided_slice/stack?
2dense_57/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_57/ActivityRegularizer/strided_slice/stack_1?
2dense_57/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_57/ActivityRegularizer/strided_slice/stack_2?
*dense_57/ActivityRegularizer/strided_sliceStridedSlice+dense_57/ActivityRegularizer/Shape:output:09dense_57/ActivityRegularizer/strided_slice/stack:output:0;dense_57/ActivityRegularizer/strided_slice/stack_1:output:0;dense_57/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_57/ActivityRegularizer/strided_slice?
!dense_57/ActivityRegularizer/CastCast3dense_57/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_57/ActivityRegularizer/Cast?
$dense_57/ActivityRegularizer/truedivRealDiv5dense_57/ActivityRegularizer/PartitionedCall:output:0%dense_57/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_57/ActivityRegularizer/truediv?
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0dense_58_646886dense_58_646888*
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
D__inference_dense_58_layer_call_and_return_conditional_losses_6466022"
 dense_58/StatefulPartitionedCall?
,dense_58/ActivityRegularizer/PartitionedCallPartitionedCall)dense_58/StatefulPartitionedCall:output:0*
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
0__inference_dense_58_activity_regularizer_6464882.
,dense_58/ActivityRegularizer/PartitionedCall?
"dense_58/ActivityRegularizer/ShapeShape)dense_58/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_58/ActivityRegularizer/Shape?
0dense_58/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_58/ActivityRegularizer/strided_slice/stack?
2dense_58/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_58/ActivityRegularizer/strided_slice/stack_1?
2dense_58/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_58/ActivityRegularizer/strided_slice/stack_2?
*dense_58/ActivityRegularizer/strided_sliceStridedSlice+dense_58/ActivityRegularizer/Shape:output:09dense_58/ActivityRegularizer/strided_slice/stack:output:0;dense_58/ActivityRegularizer/strided_slice/stack_1:output:0;dense_58/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_58/ActivityRegularizer/strided_slice?
!dense_58/ActivityRegularizer/CastCast3dense_58/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_58/ActivityRegularizer/Cast?
$dense_58/ActivityRegularizer/truedivRealDiv5dense_58/ActivityRegularizer/PartitionedCall:output:0%dense_58/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_58/ActivityRegularizer/truediv?
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0dense_59_646899dense_59_646901*
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
D__inference_dense_59_layer_call_and_return_conditional_losses_6466322"
 dense_59/StatefulPartitionedCall?
,dense_59/ActivityRegularizer/PartitionedCallPartitionedCall)dense_59/StatefulPartitionedCall:output:0*
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
0__inference_dense_59_activity_regularizer_6465012.
,dense_59/ActivityRegularizer/PartitionedCall?
"dense_59/ActivityRegularizer/ShapeShape)dense_59/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_59/ActivityRegularizer/Shape?
0dense_59/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_59/ActivityRegularizer/strided_slice/stack?
2dense_59/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_59/ActivityRegularizer/strided_slice/stack_1?
2dense_59/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_59/ActivityRegularizer/strided_slice/stack_2?
*dense_59/ActivityRegularizer/strided_sliceStridedSlice+dense_59/ActivityRegularizer/Shape:output:09dense_59/ActivityRegularizer/strided_slice/stack:output:0;dense_59/ActivityRegularizer/strided_slice/stack_1:output:0;dense_59/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_59/ActivityRegularizer/strided_slice?
!dense_59/ActivityRegularizer/CastCast3dense_59/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_59/ActivityRegularizer/Cast?
$dense_59/ActivityRegularizer/truedivRealDiv5dense_59/ActivityRegularizer/PartitionedCall:output:0%dense_59/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_59/ActivityRegularizer/truediv?
softmax_6/PartitionedCallPartitionedCall)dense_59/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8? *N
fIRG
E__inference_softmax_6_layer_call_and_return_conditional_losses_6466512
softmax_6/PartitionedCall?
/dense_56/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_56_646861*
_output_shapes
:d*
dtype021
/dense_56/bias/Regularizer/Square/ReadVariableOp?
 dense_56/bias/Regularizer/SquareSquare7dense_56/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_56/bias/Regularizer/Square?
dense_56/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_56/bias/Regularizer/Const?
dense_56/bias/Regularizer/SumSum$dense_56/bias/Regularizer/Square:y:0(dense_56/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/Sum?
dense_56/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_56/bias/Regularizer/mul/x?
dense_56/bias/Regularizer/mulMul(dense_56/bias/Regularizer/mul/x:output:0&dense_56/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/mul?
/dense_57/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_57_646875*
_output_shapes
:d*
dtype021
/dense_57/bias/Regularizer/Square/ReadVariableOp?
 dense_57/bias/Regularizer/SquareSquare7dense_57/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_57/bias/Regularizer/Square?
dense_57/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_57/bias/Regularizer/Const?
dense_57/bias/Regularizer/SumSum$dense_57/bias/Regularizer/Square:y:0(dense_57/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/Sum?
dense_57/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_57/bias/Regularizer/mul/x?
dense_57/bias/Regularizer/mulMul(dense_57/bias/Regularizer/mul/x:output:0&dense_57/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/mul?
/dense_58/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_58_646888*
_output_shapes
:d*
dtype021
/dense_58/bias/Regularizer/Square/ReadVariableOp?
 dense_58/bias/Regularizer/SquareSquare7dense_58/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_58/bias/Regularizer/Square?
dense_58/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_58/bias/Regularizer/Const?
dense_58/bias/Regularizer/SumSum$dense_58/bias/Regularizer/Square:y:0(dense_58/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/Sum?
dense_58/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_58/bias/Regularizer/mul/x?
dense_58/bias/Regularizer/mulMul(dense_58/bias/Regularizer/mul/x:output:0&dense_58/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/mul?
/dense_59/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_59_646901*
_output_shapes
:*
dtype021
/dense_59/bias/Regularizer/Square/ReadVariableOp?
 dense_59/bias/Regularizer/SquareSquare7dense_59/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_59/bias/Regularizer/Square?
dense_59/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_59/bias/Regularizer/Const?
dense_59/bias/Regularizer/SumSum$dense_59/bias/Regularizer/Square:y:0(dense_59/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_59/bias/Regularizer/Sum?
dense_59/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_59/bias/Regularizer/mul/x?
dense_59/bias/Regularizer/mulMul(dense_59/bias/Regularizer/mul/x:output:0&dense_59/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_59/bias/Regularizer/mul?
IdentityIdentity"softmax_6/PartitionedCall:output:0!^dense_56/StatefulPartitionedCall0^dense_56/bias/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall0^dense_57/bias/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall0^dense_58/bias/Regularizer/Square/ReadVariableOp!^dense_59/StatefulPartitionedCall0^dense_59/bias/Regularizer/Square/ReadVariableOp#^dropout_12/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(dense_56/ActivityRegularizer/truediv:z:0!^dense_56/StatefulPartitionedCall0^dense_56/bias/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall0^dense_57/bias/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall0^dense_58/bias/Regularizer/Square/ReadVariableOp!^dense_59/StatefulPartitionedCall0^dense_59/bias/Regularizer/Square/ReadVariableOp#^dropout_12/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_57/ActivityRegularizer/truediv:z:0!^dense_56/StatefulPartitionedCall0^dense_56/bias/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall0^dense_57/bias/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall0^dense_58/bias/Regularizer/Square/ReadVariableOp!^dense_59/StatefulPartitionedCall0^dense_59/bias/Regularizer/Square/ReadVariableOp#^dropout_12/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_58/ActivityRegularizer/truediv:z:0!^dense_56/StatefulPartitionedCall0^dense_56/bias/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall0^dense_57/bias/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall0^dense_58/bias/Regularizer/Square/ReadVariableOp!^dense_59/StatefulPartitionedCall0^dense_59/bias/Regularizer/Square/ReadVariableOp#^dropout_12/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_3?

Identity_4Identity(dense_59/ActivityRegularizer/truediv:z:0!^dense_56/StatefulPartitionedCall0^dense_56/bias/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall0^dense_57/bias/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall0^dense_58/bias/Regularizer/Square/ReadVariableOp!^dense_59/StatefulPartitionedCall0^dense_59/bias/Regularizer/Square/ReadVariableOp#^dropout_12/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : : : 2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2b
/dense_56/bias/Regularizer/Square/ReadVariableOp/dense_56/bias/Regularizer/Square/ReadVariableOp2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2b
/dense_57/bias/Regularizer/Square/ReadVariableOp/dense_57/bias/Regularizer/Square/ReadVariableOp2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2b
/dense_58/bias/Regularizer/Square/ReadVariableOp/dense_58/bias/Regularizer/Square/ReadVariableOp2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2b
/dense_59/bias/Regularizer/Square/ReadVariableOp/dense_59/bias/Regularizer/Square/ReadVariableOp2H
"dropout_12/StatefulPartitionedCall"dropout_12/StatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?	
?
.__inference_sequential_14_layer_call_fn_646990
flatten_14_input
unknown:	d
	unknown_0:d
	unknown_1:dd
	unknown_2:d
	unknown_3:dd
	unknown_4:d
	unknown_5:d
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_14_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout	
2*
_collective_manager_ids
 */
_output_shapes
:?????????: : : : **
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_6469422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:?????????	
*
_user_specified_nameflatten_14_input
?	
?
.__inference_sequential_14_layer_call_fn_646705
flatten_14_input
unknown:	d
	unknown_0:d
	unknown_1:dd
	unknown_2:d
	unknown_3:dd
	unknown_4:d
	unknown_5:d
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_14_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout	
2*
_collective_manager_ids
 */
_output_shapes
:?????????: : : : **
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_6466822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:?????????	
*
_user_specified_nameflatten_14_input
?
?
D__inference_dense_56_layer_call_and_return_conditional_losses_646533

inputs0
matmul_readvariableop_resource:	d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_56/bias/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	d*
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
/dense_56/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_56/bias/Regularizer/Square/ReadVariableOp?
 dense_56/bias/Regularizer/SquareSquare7dense_56/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_56/bias/Regularizer/Square?
dense_56/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_56/bias/Regularizer/Const?
dense_56/bias/Regularizer/SumSum$dense_56/bias/Regularizer/Square:y:0(dense_56/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/Sum?
dense_56/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_56/bias/Regularizer/mul/x?
dense_56/bias/Regularizer/mulMul(dense_56/bias/Regularizer/mul/x:output:0&dense_56/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_56/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_56/bias/Regularizer/Square/ReadVariableOp/dense_56/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?G
?
__inference__traced_save_647881
file_prefix.
*savev2_dense_56_kernel_read_readvariableop,
(savev2_dense_56_bias_read_readvariableop.
*savev2_dense_57_kernel_read_readvariableop,
(savev2_dense_57_bias_read_readvariableop.
*savev2_dense_58_kernel_read_readvariableop,
(savev2_dense_58_bias_read_readvariableop.
*savev2_dense_59_kernel_read_readvariableop,
(savev2_dense_59_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_56_kernel_m_read_readvariableop3
/savev2_adam_dense_56_bias_m_read_readvariableop5
1savev2_adam_dense_57_kernel_m_read_readvariableop3
/savev2_adam_dense_57_bias_m_read_readvariableop5
1savev2_adam_dense_58_kernel_m_read_readvariableop3
/savev2_adam_dense_58_bias_m_read_readvariableop5
1savev2_adam_dense_59_kernel_m_read_readvariableop3
/savev2_adam_dense_59_bias_m_read_readvariableop5
1savev2_adam_dense_56_kernel_v_read_readvariableop3
/savev2_adam_dense_56_bias_v_read_readvariableop5
1savev2_adam_dense_57_kernel_v_read_readvariableop3
/savev2_adam_dense_57_bias_v_read_readvariableop5
1savev2_adam_dense_58_kernel_v_read_readvariableop3
/savev2_adam_dense_58_bias_v_read_readvariableop5
1savev2_adam_dense_59_kernel_v_read_readvariableop3
/savev2_adam_dense_59_bias_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_56_kernel_read_readvariableop(savev2_dense_56_bias_read_readvariableop*savev2_dense_57_kernel_read_readvariableop(savev2_dense_57_bias_read_readvariableop*savev2_dense_58_kernel_read_readvariableop(savev2_dense_58_bias_read_readvariableop*savev2_dense_59_kernel_read_readvariableop(savev2_dense_59_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_56_kernel_m_read_readvariableop/savev2_adam_dense_56_bias_m_read_readvariableop1savev2_adam_dense_57_kernel_m_read_readvariableop/savev2_adam_dense_57_bias_m_read_readvariableop1savev2_adam_dense_58_kernel_m_read_readvariableop/savev2_adam_dense_58_bias_m_read_readvariableop1savev2_adam_dense_59_kernel_m_read_readvariableop/savev2_adam_dense_59_bias_m_read_readvariableop1savev2_adam_dense_56_kernel_v_read_readvariableop/savev2_adam_dense_56_bias_v_read_readvariableop1savev2_adam_dense_57_kernel_v_read_readvariableop/savev2_adam_dense_57_bias_v_read_readvariableop1savev2_adam_dense_58_kernel_v_read_readvariableop/savev2_adam_dense_58_bias_v_read_readvariableop1savev2_adam_dense_59_kernel_v_read_readvariableop/savev2_adam_dense_59_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	2
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
?: :	d:d:dd:d:dd:d:d:: : : : : : : : : :	d:d:dd:d:dd:d:d::	d:d:dd:d:dd:d:d:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:	d: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

:d: 

_output_shapes
::	
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
: :$ 

_output_shapes

:	d: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

:d: 

_output_shapes
::$ 

_output_shapes

:	d: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$  

_output_shapes

:d: !

_output_shapes
::"

_output_shapes
: 
?
?
D__inference_dense_58_layer_call_and_return_conditional_losses_646602

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_58/bias/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
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
/dense_58/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_58/bias/Regularizer/Square/ReadVariableOp?
 dense_58/bias/Regularizer/SquareSquare7dense_58/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_58/bias/Regularizer/Square?
dense_58/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_58/bias/Regularizer/Const?
dense_58/bias/Regularizer/SumSum$dense_58/bias/Regularizer/Square:y:0(dense_58/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/Sum?
dense_58/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_58/bias/Regularizer/mul/x?
dense_58/bias/Regularizer/mulMul(dense_58/bias/Regularizer/mul/x:output:0&dense_58/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_58/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_58/bias/Regularizer/Square/ReadVariableOp/dense_58/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
a
E__inference_softmax_6_layer_call_and_return_conditional_losses_647648

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
?
$__inference_signature_wrapper_647217
flatten_14_input
unknown:	d
	unknown_0:d
	unknown_1:dd
	unknown_2:d
	unknown_3:dd
	unknown_4:d
	unknown_5:d
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_14_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? **
f%R#
!__inference__wrapped_model_6464492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:?????????	
*
_user_specified_nameflatten_14_input
?
b
F__inference_flatten_14_layer_call_and_return_conditional_losses_646514

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
?
?
D__inference_dense_56_layer_call_and_return_conditional_losses_647709

inputs0
matmul_readvariableop_resource:	d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_56/bias/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	d*
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
/dense_56/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_56/bias/Regularizer/Square/ReadVariableOp?
 dense_56/bias/Regularizer/SquareSquare7dense_56/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_56/bias/Regularizer/Square?
dense_56/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_56/bias/Regularizer/Const?
dense_56/bias/Regularizer/SumSum$dense_56/bias/Regularizer/Square:y:0(dense_56/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/Sum?
dense_56/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_56/bias/Regularizer/mul/x?
dense_56/bias/Regularizer/mulMul(dense_56/bias/Regularizer/mul/x:output:0&dense_56/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_56/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_56/bias/Regularizer/Square/ReadVariableOp/dense_56/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
)__inference_dense_57_layer_call_fn_647575

inputs
unknown:dd
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
D__inference_dense_57_layer_call_and_return_conditional_losses_6465712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????d2

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
?
?
H__inference_dense_56_layer_call_and_return_all_conditional_losses_647533

inputs
unknown:	d
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
D__inference_dense_56_layer_call_and_return_conditional_losses_6465332
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
0__inference_dense_56_activity_regularizer_6464622
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
_construction_contextkEagerRuntime**
_input_shapes
:?????????	: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
H__inference_dense_57_layer_call_and_return_all_conditional_losses_647586

inputs
unknown:dd
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
D__inference_dense_57_layer_call_and_return_conditional_losses_6465712
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
0__inference_dense_57_activity_regularizer_6464752
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
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
)__inference_dense_59_layer_call_fn_647627

inputs
unknown:d
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
D__inference_dense_59_layer_call_and_return_conditional_losses_6466322
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

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
?
G
0__inference_dense_59_activity_regularizer_646501
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
?
?
D__inference_dense_57_layer_call_and_return_conditional_losses_647726

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_57/bias/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
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
/dense_57/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_57/bias/Regularizer/Square/ReadVariableOp?
 dense_57/bias/Regularizer/SquareSquare7dense_57/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_57/bias/Regularizer/Square?
dense_57/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_57/bias/Regularizer/Const?
dense_57/bias/Regularizer/SumSum$dense_57/bias/Regularizer/Square:y:0(dense_57/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/Sum?
dense_57/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_57/bias/Regularizer/mul/x?
dense_57/bias/Regularizer/mulMul(dense_57/bias/Regularizer/mul/x:output:0&dense_57/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_57/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_57/bias/Regularizer/Square/ReadVariableOp/dense_57/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_647659F
8dense_56_bias_regularizer_square_readvariableop_resource:d
identity??/dense_56/bias/Regularizer/Square/ReadVariableOp?
/dense_56/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_56_bias_regularizer_square_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_56/bias/Regularizer/Square/ReadVariableOp?
 dense_56/bias/Regularizer/SquareSquare7dense_56/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_56/bias/Regularizer/Square?
dense_56/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_56/bias/Regularizer/Const?
dense_56/bias/Regularizer/SumSum$dense_56/bias/Regularizer/Square:y:0(dense_56/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/Sum?
dense_56/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_56/bias/Regularizer/mul/x?
dense_56/bias/Regularizer/mulMul(dense_56/bias/Regularizer/mul/x:output:0&dense_56/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/mul?
IdentityIdentity!dense_56/bias/Regularizer/mul:z:00^dense_56/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_56/bias/Regularizer/Square/ReadVariableOp/dense_56/bias/Regularizer/Square/ReadVariableOp
?
b
F__inference_flatten_14_layer_call_and_return_conditional_losses_647507

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
??
?
I__inference_sequential_14_layer_call_and_return_conditional_losses_647077
flatten_14_input!
dense_56_646994:	d
dense_56_646996:d!
dense_57_647008:dd
dense_57_647010:d!
dense_58_647021:dd
dense_58_647023:d!
dense_59_647034:d
dense_59_647036:
identity

identity_1

identity_2

identity_3

identity_4?? dense_56/StatefulPartitionedCall?/dense_56/bias/Regularizer/Square/ReadVariableOp? dense_57/StatefulPartitionedCall?/dense_57/bias/Regularizer/Square/ReadVariableOp? dense_58/StatefulPartitionedCall?/dense_58/bias/Regularizer/Square/ReadVariableOp? dense_59/StatefulPartitionedCall?/dense_59/bias/Regularizer/Square/ReadVariableOp?
flatten_14/PartitionedCallPartitionedCallflatten_14_input*
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
F__inference_flatten_14_layer_call_and_return_conditional_losses_6465142
flatten_14/PartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_56_646994dense_56_646996*
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
D__inference_dense_56_layer_call_and_return_conditional_losses_6465332"
 dense_56/StatefulPartitionedCall?
,dense_56/ActivityRegularizer/PartitionedCallPartitionedCall)dense_56/StatefulPartitionedCall:output:0*
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
0__inference_dense_56_activity_regularizer_6464622.
,dense_56/ActivityRegularizer/PartitionedCall?
"dense_56/ActivityRegularizer/ShapeShape)dense_56/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_56/ActivityRegularizer/Shape?
0dense_56/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_56/ActivityRegularizer/strided_slice/stack?
2dense_56/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_56/ActivityRegularizer/strided_slice/stack_1?
2dense_56/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_56/ActivityRegularizer/strided_slice/stack_2?
*dense_56/ActivityRegularizer/strided_sliceStridedSlice+dense_56/ActivityRegularizer/Shape:output:09dense_56/ActivityRegularizer/strided_slice/stack:output:0;dense_56/ActivityRegularizer/strided_slice/stack_1:output:0;dense_56/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_56/ActivityRegularizer/strided_slice?
!dense_56/ActivityRegularizer/CastCast3dense_56/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_56/ActivityRegularizer/Cast?
$dense_56/ActivityRegularizer/truedivRealDiv5dense_56/ActivityRegularizer/PartitionedCall:output:0%dense_56/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_56/ActivityRegularizer/truediv?
dropout_12/PartitionedCallPartitionedCall)dense_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_6465522
dropout_12/PartitionedCall?
 dense_57/StatefulPartitionedCallStatefulPartitionedCall#dropout_12/PartitionedCall:output:0dense_57_647008dense_57_647010*
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
D__inference_dense_57_layer_call_and_return_conditional_losses_6465712"
 dense_57/StatefulPartitionedCall?
,dense_57/ActivityRegularizer/PartitionedCallPartitionedCall)dense_57/StatefulPartitionedCall:output:0*
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
0__inference_dense_57_activity_regularizer_6464752.
,dense_57/ActivityRegularizer/PartitionedCall?
"dense_57/ActivityRegularizer/ShapeShape)dense_57/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_57/ActivityRegularizer/Shape?
0dense_57/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_57/ActivityRegularizer/strided_slice/stack?
2dense_57/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_57/ActivityRegularizer/strided_slice/stack_1?
2dense_57/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_57/ActivityRegularizer/strided_slice/stack_2?
*dense_57/ActivityRegularizer/strided_sliceStridedSlice+dense_57/ActivityRegularizer/Shape:output:09dense_57/ActivityRegularizer/strided_slice/stack:output:0;dense_57/ActivityRegularizer/strided_slice/stack_1:output:0;dense_57/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_57/ActivityRegularizer/strided_slice?
!dense_57/ActivityRegularizer/CastCast3dense_57/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_57/ActivityRegularizer/Cast?
$dense_57/ActivityRegularizer/truedivRealDiv5dense_57/ActivityRegularizer/PartitionedCall:output:0%dense_57/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_57/ActivityRegularizer/truediv?
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0dense_58_647021dense_58_647023*
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
D__inference_dense_58_layer_call_and_return_conditional_losses_6466022"
 dense_58/StatefulPartitionedCall?
,dense_58/ActivityRegularizer/PartitionedCallPartitionedCall)dense_58/StatefulPartitionedCall:output:0*
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
0__inference_dense_58_activity_regularizer_6464882.
,dense_58/ActivityRegularizer/PartitionedCall?
"dense_58/ActivityRegularizer/ShapeShape)dense_58/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_58/ActivityRegularizer/Shape?
0dense_58/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_58/ActivityRegularizer/strided_slice/stack?
2dense_58/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_58/ActivityRegularizer/strided_slice/stack_1?
2dense_58/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_58/ActivityRegularizer/strided_slice/stack_2?
*dense_58/ActivityRegularizer/strided_sliceStridedSlice+dense_58/ActivityRegularizer/Shape:output:09dense_58/ActivityRegularizer/strided_slice/stack:output:0;dense_58/ActivityRegularizer/strided_slice/stack_1:output:0;dense_58/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_58/ActivityRegularizer/strided_slice?
!dense_58/ActivityRegularizer/CastCast3dense_58/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_58/ActivityRegularizer/Cast?
$dense_58/ActivityRegularizer/truedivRealDiv5dense_58/ActivityRegularizer/PartitionedCall:output:0%dense_58/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_58/ActivityRegularizer/truediv?
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0dense_59_647034dense_59_647036*
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
D__inference_dense_59_layer_call_and_return_conditional_losses_6466322"
 dense_59/StatefulPartitionedCall?
,dense_59/ActivityRegularizer/PartitionedCallPartitionedCall)dense_59/StatefulPartitionedCall:output:0*
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
0__inference_dense_59_activity_regularizer_6465012.
,dense_59/ActivityRegularizer/PartitionedCall?
"dense_59/ActivityRegularizer/ShapeShape)dense_59/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_59/ActivityRegularizer/Shape?
0dense_59/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_59/ActivityRegularizer/strided_slice/stack?
2dense_59/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_59/ActivityRegularizer/strided_slice/stack_1?
2dense_59/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_59/ActivityRegularizer/strided_slice/stack_2?
*dense_59/ActivityRegularizer/strided_sliceStridedSlice+dense_59/ActivityRegularizer/Shape:output:09dense_59/ActivityRegularizer/strided_slice/stack:output:0;dense_59/ActivityRegularizer/strided_slice/stack_1:output:0;dense_59/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_59/ActivityRegularizer/strided_slice?
!dense_59/ActivityRegularizer/CastCast3dense_59/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_59/ActivityRegularizer/Cast?
$dense_59/ActivityRegularizer/truedivRealDiv5dense_59/ActivityRegularizer/PartitionedCall:output:0%dense_59/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_59/ActivityRegularizer/truediv?
softmax_6/PartitionedCallPartitionedCall)dense_59/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8? *N
fIRG
E__inference_softmax_6_layer_call_and_return_conditional_losses_6466512
softmax_6/PartitionedCall?
/dense_56/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_56_646996*
_output_shapes
:d*
dtype021
/dense_56/bias/Regularizer/Square/ReadVariableOp?
 dense_56/bias/Regularizer/SquareSquare7dense_56/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_56/bias/Regularizer/Square?
dense_56/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_56/bias/Regularizer/Const?
dense_56/bias/Regularizer/SumSum$dense_56/bias/Regularizer/Square:y:0(dense_56/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/Sum?
dense_56/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_56/bias/Regularizer/mul/x?
dense_56/bias/Regularizer/mulMul(dense_56/bias/Regularizer/mul/x:output:0&dense_56/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/mul?
/dense_57/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_57_647010*
_output_shapes
:d*
dtype021
/dense_57/bias/Regularizer/Square/ReadVariableOp?
 dense_57/bias/Regularizer/SquareSquare7dense_57/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_57/bias/Regularizer/Square?
dense_57/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_57/bias/Regularizer/Const?
dense_57/bias/Regularizer/SumSum$dense_57/bias/Regularizer/Square:y:0(dense_57/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/Sum?
dense_57/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_57/bias/Regularizer/mul/x?
dense_57/bias/Regularizer/mulMul(dense_57/bias/Regularizer/mul/x:output:0&dense_57/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/mul?
/dense_58/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_58_647023*
_output_shapes
:d*
dtype021
/dense_58/bias/Regularizer/Square/ReadVariableOp?
 dense_58/bias/Regularizer/SquareSquare7dense_58/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_58/bias/Regularizer/Square?
dense_58/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_58/bias/Regularizer/Const?
dense_58/bias/Regularizer/SumSum$dense_58/bias/Regularizer/Square:y:0(dense_58/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/Sum?
dense_58/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_58/bias/Regularizer/mul/x?
dense_58/bias/Regularizer/mulMul(dense_58/bias/Regularizer/mul/x:output:0&dense_58/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/mul?
/dense_59/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_59_647036*
_output_shapes
:*
dtype021
/dense_59/bias/Regularizer/Square/ReadVariableOp?
 dense_59/bias/Regularizer/SquareSquare7dense_59/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_59/bias/Regularizer/Square?
dense_59/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_59/bias/Regularizer/Const?
dense_59/bias/Regularizer/SumSum$dense_59/bias/Regularizer/Square:y:0(dense_59/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_59/bias/Regularizer/Sum?
dense_59/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_59/bias/Regularizer/mul/x?
dense_59/bias/Regularizer/mulMul(dense_59/bias/Regularizer/mul/x:output:0&dense_59/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_59/bias/Regularizer/mul?
IdentityIdentity"softmax_6/PartitionedCall:output:0!^dense_56/StatefulPartitionedCall0^dense_56/bias/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall0^dense_57/bias/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall0^dense_58/bias/Regularizer/Square/ReadVariableOp!^dense_59/StatefulPartitionedCall0^dense_59/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(dense_56/ActivityRegularizer/truediv:z:0!^dense_56/StatefulPartitionedCall0^dense_56/bias/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall0^dense_57/bias/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall0^dense_58/bias/Regularizer/Square/ReadVariableOp!^dense_59/StatefulPartitionedCall0^dense_59/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_57/ActivityRegularizer/truediv:z:0!^dense_56/StatefulPartitionedCall0^dense_56/bias/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall0^dense_57/bias/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall0^dense_58/bias/Regularizer/Square/ReadVariableOp!^dense_59/StatefulPartitionedCall0^dense_59/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_58/ActivityRegularizer/truediv:z:0!^dense_56/StatefulPartitionedCall0^dense_56/bias/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall0^dense_57/bias/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall0^dense_58/bias/Regularizer/Square/ReadVariableOp!^dense_59/StatefulPartitionedCall0^dense_59/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3?

Identity_4Identity(dense_59/ActivityRegularizer/truediv:z:0!^dense_56/StatefulPartitionedCall0^dense_56/bias/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall0^dense_57/bias/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall0^dense_58/bias/Regularizer/Square/ReadVariableOp!^dense_59/StatefulPartitionedCall0^dense_59/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : : : 2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2b
/dense_56/bias/Regularizer/Square/ReadVariableOp/dense_56/bias/Regularizer/Square/ReadVariableOp2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2b
/dense_57/bias/Regularizer/Square/ReadVariableOp/dense_57/bias/Regularizer/Square/ReadVariableOp2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2b
/dense_58/bias/Regularizer/Square/ReadVariableOp/dense_58/bias/Regularizer/Square/ReadVariableOp2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2b
/dense_59/bias/Regularizer/Square/ReadVariableOp/dense_59/bias/Regularizer/Square/ReadVariableOp:Y U
'
_output_shapes
:?????????	
*
_user_specified_nameflatten_14_input
?
d
F__inference_dropout_12_layer_call_and_return_conditional_losses_646552

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????d2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????d2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?	
?
.__inference_sequential_14_layer_call_fn_647242

inputs
unknown:	d
	unknown_0:d
	unknown_1:dd
	unknown_2:d
	unknown_3:dd
	unknown_4:d
	unknown_5:d
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout	
2*
_collective_manager_ids
 */
_output_shapes
:?????????: : : : **
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_6466822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
G
+__inference_dropout_12_layer_call_fn_647538

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
:?????????d* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_6465522
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
G
0__inference_dense_57_activity_regularizer_646475
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
??
?
I__inference_sequential_14_layer_call_and_return_conditional_losses_647164
flatten_14_input!
dense_56_647081:	d
dense_56_647083:d!
dense_57_647095:dd
dense_57_647097:d!
dense_58_647108:dd
dense_58_647110:d!
dense_59_647121:d
dense_59_647123:
identity

identity_1

identity_2

identity_3

identity_4?? dense_56/StatefulPartitionedCall?/dense_56/bias/Regularizer/Square/ReadVariableOp? dense_57/StatefulPartitionedCall?/dense_57/bias/Regularizer/Square/ReadVariableOp? dense_58/StatefulPartitionedCall?/dense_58/bias/Regularizer/Square/ReadVariableOp? dense_59/StatefulPartitionedCall?/dense_59/bias/Regularizer/Square/ReadVariableOp?"dropout_12/StatefulPartitionedCall?
flatten_14/PartitionedCallPartitionedCallflatten_14_input*
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
F__inference_flatten_14_layer_call_and_return_conditional_losses_6465142
flatten_14/PartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_56_647081dense_56_647083*
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
D__inference_dense_56_layer_call_and_return_conditional_losses_6465332"
 dense_56/StatefulPartitionedCall?
,dense_56/ActivityRegularizer/PartitionedCallPartitionedCall)dense_56/StatefulPartitionedCall:output:0*
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
0__inference_dense_56_activity_regularizer_6464622.
,dense_56/ActivityRegularizer/PartitionedCall?
"dense_56/ActivityRegularizer/ShapeShape)dense_56/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_56/ActivityRegularizer/Shape?
0dense_56/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_56/ActivityRegularizer/strided_slice/stack?
2dense_56/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_56/ActivityRegularizer/strided_slice/stack_1?
2dense_56/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_56/ActivityRegularizer/strided_slice/stack_2?
*dense_56/ActivityRegularizer/strided_sliceStridedSlice+dense_56/ActivityRegularizer/Shape:output:09dense_56/ActivityRegularizer/strided_slice/stack:output:0;dense_56/ActivityRegularizer/strided_slice/stack_1:output:0;dense_56/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_56/ActivityRegularizer/strided_slice?
!dense_56/ActivityRegularizer/CastCast3dense_56/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_56/ActivityRegularizer/Cast?
$dense_56/ActivityRegularizer/truedivRealDiv5dense_56/ActivityRegularizer/PartitionedCall:output:0%dense_56/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_56/ActivityRegularizer/truediv?
"dropout_12/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_6467972$
"dropout_12/StatefulPartitionedCall?
 dense_57/StatefulPartitionedCallStatefulPartitionedCall+dropout_12/StatefulPartitionedCall:output:0dense_57_647095dense_57_647097*
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
D__inference_dense_57_layer_call_and_return_conditional_losses_6465712"
 dense_57/StatefulPartitionedCall?
,dense_57/ActivityRegularizer/PartitionedCallPartitionedCall)dense_57/StatefulPartitionedCall:output:0*
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
0__inference_dense_57_activity_regularizer_6464752.
,dense_57/ActivityRegularizer/PartitionedCall?
"dense_57/ActivityRegularizer/ShapeShape)dense_57/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_57/ActivityRegularizer/Shape?
0dense_57/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_57/ActivityRegularizer/strided_slice/stack?
2dense_57/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_57/ActivityRegularizer/strided_slice/stack_1?
2dense_57/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_57/ActivityRegularizer/strided_slice/stack_2?
*dense_57/ActivityRegularizer/strided_sliceStridedSlice+dense_57/ActivityRegularizer/Shape:output:09dense_57/ActivityRegularizer/strided_slice/stack:output:0;dense_57/ActivityRegularizer/strided_slice/stack_1:output:0;dense_57/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_57/ActivityRegularizer/strided_slice?
!dense_57/ActivityRegularizer/CastCast3dense_57/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_57/ActivityRegularizer/Cast?
$dense_57/ActivityRegularizer/truedivRealDiv5dense_57/ActivityRegularizer/PartitionedCall:output:0%dense_57/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_57/ActivityRegularizer/truediv?
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0dense_58_647108dense_58_647110*
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
D__inference_dense_58_layer_call_and_return_conditional_losses_6466022"
 dense_58/StatefulPartitionedCall?
,dense_58/ActivityRegularizer/PartitionedCallPartitionedCall)dense_58/StatefulPartitionedCall:output:0*
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
0__inference_dense_58_activity_regularizer_6464882.
,dense_58/ActivityRegularizer/PartitionedCall?
"dense_58/ActivityRegularizer/ShapeShape)dense_58/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_58/ActivityRegularizer/Shape?
0dense_58/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_58/ActivityRegularizer/strided_slice/stack?
2dense_58/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_58/ActivityRegularizer/strided_slice/stack_1?
2dense_58/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_58/ActivityRegularizer/strided_slice/stack_2?
*dense_58/ActivityRegularizer/strided_sliceStridedSlice+dense_58/ActivityRegularizer/Shape:output:09dense_58/ActivityRegularizer/strided_slice/stack:output:0;dense_58/ActivityRegularizer/strided_slice/stack_1:output:0;dense_58/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_58/ActivityRegularizer/strided_slice?
!dense_58/ActivityRegularizer/CastCast3dense_58/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_58/ActivityRegularizer/Cast?
$dense_58/ActivityRegularizer/truedivRealDiv5dense_58/ActivityRegularizer/PartitionedCall:output:0%dense_58/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_58/ActivityRegularizer/truediv?
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0dense_59_647121dense_59_647123*
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
D__inference_dense_59_layer_call_and_return_conditional_losses_6466322"
 dense_59/StatefulPartitionedCall?
,dense_59/ActivityRegularizer/PartitionedCallPartitionedCall)dense_59/StatefulPartitionedCall:output:0*
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
0__inference_dense_59_activity_regularizer_6465012.
,dense_59/ActivityRegularizer/PartitionedCall?
"dense_59/ActivityRegularizer/ShapeShape)dense_59/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_59/ActivityRegularizer/Shape?
0dense_59/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_59/ActivityRegularizer/strided_slice/stack?
2dense_59/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_59/ActivityRegularizer/strided_slice/stack_1?
2dense_59/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_59/ActivityRegularizer/strided_slice/stack_2?
*dense_59/ActivityRegularizer/strided_sliceStridedSlice+dense_59/ActivityRegularizer/Shape:output:09dense_59/ActivityRegularizer/strided_slice/stack:output:0;dense_59/ActivityRegularizer/strided_slice/stack_1:output:0;dense_59/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_59/ActivityRegularizer/strided_slice?
!dense_59/ActivityRegularizer/CastCast3dense_59/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_59/ActivityRegularizer/Cast?
$dense_59/ActivityRegularizer/truedivRealDiv5dense_59/ActivityRegularizer/PartitionedCall:output:0%dense_59/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_59/ActivityRegularizer/truediv?
softmax_6/PartitionedCallPartitionedCall)dense_59/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8? *N
fIRG
E__inference_softmax_6_layer_call_and_return_conditional_losses_6466512
softmax_6/PartitionedCall?
/dense_56/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_56_647083*
_output_shapes
:d*
dtype021
/dense_56/bias/Regularizer/Square/ReadVariableOp?
 dense_56/bias/Regularizer/SquareSquare7dense_56/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_56/bias/Regularizer/Square?
dense_56/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_56/bias/Regularizer/Const?
dense_56/bias/Regularizer/SumSum$dense_56/bias/Regularizer/Square:y:0(dense_56/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/Sum?
dense_56/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_56/bias/Regularizer/mul/x?
dense_56/bias/Regularizer/mulMul(dense_56/bias/Regularizer/mul/x:output:0&dense_56/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/mul?
/dense_57/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_57_647097*
_output_shapes
:d*
dtype021
/dense_57/bias/Regularizer/Square/ReadVariableOp?
 dense_57/bias/Regularizer/SquareSquare7dense_57/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_57/bias/Regularizer/Square?
dense_57/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_57/bias/Regularizer/Const?
dense_57/bias/Regularizer/SumSum$dense_57/bias/Regularizer/Square:y:0(dense_57/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/Sum?
dense_57/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_57/bias/Regularizer/mul/x?
dense_57/bias/Regularizer/mulMul(dense_57/bias/Regularizer/mul/x:output:0&dense_57/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/mul?
/dense_58/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_58_647110*
_output_shapes
:d*
dtype021
/dense_58/bias/Regularizer/Square/ReadVariableOp?
 dense_58/bias/Regularizer/SquareSquare7dense_58/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_58/bias/Regularizer/Square?
dense_58/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_58/bias/Regularizer/Const?
dense_58/bias/Regularizer/SumSum$dense_58/bias/Regularizer/Square:y:0(dense_58/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/Sum?
dense_58/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_58/bias/Regularizer/mul/x?
dense_58/bias/Regularizer/mulMul(dense_58/bias/Regularizer/mul/x:output:0&dense_58/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/mul?
/dense_59/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_59_647123*
_output_shapes
:*
dtype021
/dense_59/bias/Regularizer/Square/ReadVariableOp?
 dense_59/bias/Regularizer/SquareSquare7dense_59/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_59/bias/Regularizer/Square?
dense_59/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_59/bias/Regularizer/Const?
dense_59/bias/Regularizer/SumSum$dense_59/bias/Regularizer/Square:y:0(dense_59/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_59/bias/Regularizer/Sum?
dense_59/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_59/bias/Regularizer/mul/x?
dense_59/bias/Regularizer/mulMul(dense_59/bias/Regularizer/mul/x:output:0&dense_59/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_59/bias/Regularizer/mul?
IdentityIdentity"softmax_6/PartitionedCall:output:0!^dense_56/StatefulPartitionedCall0^dense_56/bias/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall0^dense_57/bias/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall0^dense_58/bias/Regularizer/Square/ReadVariableOp!^dense_59/StatefulPartitionedCall0^dense_59/bias/Regularizer/Square/ReadVariableOp#^dropout_12/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(dense_56/ActivityRegularizer/truediv:z:0!^dense_56/StatefulPartitionedCall0^dense_56/bias/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall0^dense_57/bias/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall0^dense_58/bias/Regularizer/Square/ReadVariableOp!^dense_59/StatefulPartitionedCall0^dense_59/bias/Regularizer/Square/ReadVariableOp#^dropout_12/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_57/ActivityRegularizer/truediv:z:0!^dense_56/StatefulPartitionedCall0^dense_56/bias/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall0^dense_57/bias/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall0^dense_58/bias/Regularizer/Square/ReadVariableOp!^dense_59/StatefulPartitionedCall0^dense_59/bias/Regularizer/Square/ReadVariableOp#^dropout_12/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_58/ActivityRegularizer/truediv:z:0!^dense_56/StatefulPartitionedCall0^dense_56/bias/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall0^dense_57/bias/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall0^dense_58/bias/Regularizer/Square/ReadVariableOp!^dense_59/StatefulPartitionedCall0^dense_59/bias/Regularizer/Square/ReadVariableOp#^dropout_12/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_3?

Identity_4Identity(dense_59/ActivityRegularizer/truediv:z:0!^dense_56/StatefulPartitionedCall0^dense_56/bias/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall0^dense_57/bias/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall0^dense_58/bias/Regularizer/Square/ReadVariableOp!^dense_59/StatefulPartitionedCall0^dense_59/bias/Regularizer/Square/ReadVariableOp#^dropout_12/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : : : 2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2b
/dense_56/bias/Regularizer/Square/ReadVariableOp/dense_56/bias/Regularizer/Square/ReadVariableOp2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2b
/dense_57/bias/Regularizer/Square/ReadVariableOp/dense_57/bias/Regularizer/Square/ReadVariableOp2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2b
/dense_58/bias/Regularizer/Square/ReadVariableOp/dense_58/bias/Regularizer/Square/ReadVariableOp2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2b
/dense_59/bias/Regularizer/Square/ReadVariableOp/dense_59/bias/Regularizer/Square/ReadVariableOp2H
"dropout_12/StatefulPartitionedCall"dropout_12/StatefulPartitionedCall:Y U
'
_output_shapes
:?????????	
*
_user_specified_nameflatten_14_input
?
F
*__inference_softmax_6_layer_call_fn_647643

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
GPU2 *0J 8? *N
fIRG
E__inference_softmax_6_layer_call_and_return_conditional_losses_6466512
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
?
G
0__inference_dense_56_activity_regularizer_646462
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
?
__inference_loss_fn_2_647681F
8dense_58_bias_regularizer_square_readvariableop_resource:d
identity??/dense_58/bias/Regularizer/Square/ReadVariableOp?
/dense_58/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_58_bias_regularizer_square_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_58/bias/Regularizer/Square/ReadVariableOp?
 dense_58/bias/Regularizer/SquareSquare7dense_58/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_58/bias/Regularizer/Square?
dense_58/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_58/bias/Regularizer/Const?
dense_58/bias/Regularizer/SumSum$dense_58/bias/Regularizer/Square:y:0(dense_58/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/Sum?
dense_58/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_58/bias/Regularizer/mul/x?
dense_58/bias/Regularizer/mulMul(dense_58/bias/Regularizer/mul/x:output:0&dense_58/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/mul?
IdentityIdentity!dense_58/bias/Regularizer/mul:z:00^dense_58/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_58/bias/Regularizer/Square/ReadVariableOp/dense_58/bias/Regularizer/Square/ReadVariableOp
??
?
I__inference_sequential_14_layer_call_and_return_conditional_losses_647496

inputs9
'dense_56_matmul_readvariableop_resource:	d6
(dense_56_biasadd_readvariableop_resource:d9
'dense_57_matmul_readvariableop_resource:dd6
(dense_57_biasadd_readvariableop_resource:d9
'dense_58_matmul_readvariableop_resource:dd6
(dense_58_biasadd_readvariableop_resource:d9
'dense_59_matmul_readvariableop_resource:d6
(dense_59_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3

identity_4??dense_56/BiasAdd/ReadVariableOp?dense_56/MatMul/ReadVariableOp?/dense_56/bias/Regularizer/Square/ReadVariableOp?dense_57/BiasAdd/ReadVariableOp?dense_57/MatMul/ReadVariableOp?/dense_57/bias/Regularizer/Square/ReadVariableOp?dense_58/BiasAdd/ReadVariableOp?dense_58/MatMul/ReadVariableOp?/dense_58/bias/Regularizer/Square/ReadVariableOp?dense_59/BiasAdd/ReadVariableOp?dense_59/MatMul/ReadVariableOp?/dense_59/bias/Regularizer/Square/ReadVariableOpu
flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"????	   2
flatten_14/Const?
flatten_14/ReshapeReshapeinputsflatten_14/Const:output:0*
T0*'
_output_shapes
:?????????	2
flatten_14/Reshape?
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes

:	d*
dtype02 
dense_56/MatMul/ReadVariableOp?
dense_56/MatMulMatMulflatten_14/Reshape:output:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_56/MatMul?
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_56/BiasAdd/ReadVariableOp?
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_56/BiasAdds
dense_56/ReluReludense_56/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_56/Relu?
#dense_56/ActivityRegularizer/SquareSquaredense_56/Relu:activations:0*
T0*'
_output_shapes
:?????????d2%
#dense_56/ActivityRegularizer/Square?
"dense_56/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_56/ActivityRegularizer/Const?
 dense_56/ActivityRegularizer/SumSum'dense_56/ActivityRegularizer/Square:y:0+dense_56/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_56/ActivityRegularizer/Sum?
"dense_56/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82$
"dense_56/ActivityRegularizer/mul/x?
 dense_56/ActivityRegularizer/mulMul+dense_56/ActivityRegularizer/mul/x:output:0)dense_56/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_56/ActivityRegularizer/mul?
"dense_56/ActivityRegularizer/ShapeShapedense_56/Relu:activations:0*
T0*
_output_shapes
:2$
"dense_56/ActivityRegularizer/Shape?
0dense_56/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_56/ActivityRegularizer/strided_slice/stack?
2dense_56/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_56/ActivityRegularizer/strided_slice/stack_1?
2dense_56/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_56/ActivityRegularizer/strided_slice/stack_2?
*dense_56/ActivityRegularizer/strided_sliceStridedSlice+dense_56/ActivityRegularizer/Shape:output:09dense_56/ActivityRegularizer/strided_slice/stack:output:0;dense_56/ActivityRegularizer/strided_slice/stack_1:output:0;dense_56/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_56/ActivityRegularizer/strided_slice?
!dense_56/ActivityRegularizer/CastCast3dense_56/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_56/ActivityRegularizer/Cast?
$dense_56/ActivityRegularizer/truedivRealDiv$dense_56/ActivityRegularizer/mul:z:0%dense_56/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_56/ActivityRegularizer/truedivy
dropout_12/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_12/dropout/Const?
dropout_12/dropout/MulMuldense_56/Relu:activations:0!dropout_12/dropout/Const:output:0*
T0*'
_output_shapes
:?????????d2
dropout_12/dropout/Mul
dropout_12/dropout/ShapeShapedense_56/Relu:activations:0*
T0*
_output_shapes
:2
dropout_12/dropout/Shape?
/dropout_12/dropout/random_uniform/RandomUniformRandomUniform!dropout_12/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????d*
dtype021
/dropout_12/dropout/random_uniform/RandomUniform?
!dropout_12/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<2#
!dropout_12/dropout/GreaterEqual/y?
dropout_12/dropout/GreaterEqualGreaterEqual8dropout_12/dropout/random_uniform/RandomUniform:output:0*dropout_12/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????d2!
dropout_12/dropout/GreaterEqual?
dropout_12/dropout/CastCast#dropout_12/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????d2
dropout_12/dropout/Cast?
dropout_12/dropout/Mul_1Muldropout_12/dropout/Mul:z:0dropout_12/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????d2
dropout_12/dropout/Mul_1?
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype02 
dense_57/MatMul/ReadVariableOp?
dense_57/MatMulMatMuldropout_12/dropout/Mul_1:z:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_57/MatMul?
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_57/BiasAdd/ReadVariableOp?
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_57/BiasAdds
dense_57/ReluReludense_57/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_57/Relu?
#dense_57/ActivityRegularizer/SquareSquaredense_57/Relu:activations:0*
T0*'
_output_shapes
:?????????d2%
#dense_57/ActivityRegularizer/Square?
"dense_57/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_57/ActivityRegularizer/Const?
 dense_57/ActivityRegularizer/SumSum'dense_57/ActivityRegularizer/Square:y:0+dense_57/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_57/ActivityRegularizer/Sum?
"dense_57/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82$
"dense_57/ActivityRegularizer/mul/x?
 dense_57/ActivityRegularizer/mulMul+dense_57/ActivityRegularizer/mul/x:output:0)dense_57/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_57/ActivityRegularizer/mul?
"dense_57/ActivityRegularizer/ShapeShapedense_57/Relu:activations:0*
T0*
_output_shapes
:2$
"dense_57/ActivityRegularizer/Shape?
0dense_57/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_57/ActivityRegularizer/strided_slice/stack?
2dense_57/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_57/ActivityRegularizer/strided_slice/stack_1?
2dense_57/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_57/ActivityRegularizer/strided_slice/stack_2?
*dense_57/ActivityRegularizer/strided_sliceStridedSlice+dense_57/ActivityRegularizer/Shape:output:09dense_57/ActivityRegularizer/strided_slice/stack:output:0;dense_57/ActivityRegularizer/strided_slice/stack_1:output:0;dense_57/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_57/ActivityRegularizer/strided_slice?
!dense_57/ActivityRegularizer/CastCast3dense_57/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_57/ActivityRegularizer/Cast?
$dense_57/ActivityRegularizer/truedivRealDiv$dense_57/ActivityRegularizer/mul:z:0%dense_57/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_57/ActivityRegularizer/truediv?
dense_58/MatMul/ReadVariableOpReadVariableOp'dense_58_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype02 
dense_58/MatMul/ReadVariableOp?
dense_58/MatMulMatMuldense_57/Relu:activations:0&dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_58/MatMul?
dense_58/BiasAdd/ReadVariableOpReadVariableOp(dense_58_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_58/BiasAdd/ReadVariableOp?
dense_58/BiasAddBiasAdddense_58/MatMul:product:0'dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_58/BiasAdds
dense_58/ReluReludense_58/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_58/Relu?
#dense_58/ActivityRegularizer/SquareSquaredense_58/Relu:activations:0*
T0*'
_output_shapes
:?????????d2%
#dense_58/ActivityRegularizer/Square?
"dense_58/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_58/ActivityRegularizer/Const?
 dense_58/ActivityRegularizer/SumSum'dense_58/ActivityRegularizer/Square:y:0+dense_58/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_58/ActivityRegularizer/Sum?
"dense_58/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82$
"dense_58/ActivityRegularizer/mul/x?
 dense_58/ActivityRegularizer/mulMul+dense_58/ActivityRegularizer/mul/x:output:0)dense_58/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_58/ActivityRegularizer/mul?
"dense_58/ActivityRegularizer/ShapeShapedense_58/Relu:activations:0*
T0*
_output_shapes
:2$
"dense_58/ActivityRegularizer/Shape?
0dense_58/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_58/ActivityRegularizer/strided_slice/stack?
2dense_58/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_58/ActivityRegularizer/strided_slice/stack_1?
2dense_58/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_58/ActivityRegularizer/strided_slice/stack_2?
*dense_58/ActivityRegularizer/strided_sliceStridedSlice+dense_58/ActivityRegularizer/Shape:output:09dense_58/ActivityRegularizer/strided_slice/stack:output:0;dense_58/ActivityRegularizer/strided_slice/stack_1:output:0;dense_58/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_58/ActivityRegularizer/strided_slice?
!dense_58/ActivityRegularizer/CastCast3dense_58/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_58/ActivityRegularizer/Cast?
$dense_58/ActivityRegularizer/truedivRealDiv$dense_58/ActivityRegularizer/mul:z:0%dense_58/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_58/ActivityRegularizer/truediv?
dense_59/MatMul/ReadVariableOpReadVariableOp'dense_59_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_59/MatMul/ReadVariableOp?
dense_59/MatMulMatMuldense_58/Relu:activations:0&dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_59/MatMul?
dense_59/BiasAdd/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_59/BiasAdd/ReadVariableOp?
dense_59/BiasAddBiasAdddense_59/MatMul:product:0'dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_59/BiasAdd?
#dense_59/ActivityRegularizer/SquareSquaredense_59/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2%
#dense_59/ActivityRegularizer/Square?
"dense_59/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_59/ActivityRegularizer/Const?
 dense_59/ActivityRegularizer/SumSum'dense_59/ActivityRegularizer/Square:y:0+dense_59/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_59/ActivityRegularizer/Sum?
"dense_59/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82$
"dense_59/ActivityRegularizer/mul/x?
 dense_59/ActivityRegularizer/mulMul+dense_59/ActivityRegularizer/mul/x:output:0)dense_59/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_59/ActivityRegularizer/mul?
"dense_59/ActivityRegularizer/ShapeShapedense_59/BiasAdd:output:0*
T0*
_output_shapes
:2$
"dense_59/ActivityRegularizer/Shape?
0dense_59/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_59/ActivityRegularizer/strided_slice/stack?
2dense_59/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_59/ActivityRegularizer/strided_slice/stack_1?
2dense_59/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_59/ActivityRegularizer/strided_slice/stack_2?
*dense_59/ActivityRegularizer/strided_sliceStridedSlice+dense_59/ActivityRegularizer/Shape:output:09dense_59/ActivityRegularizer/strided_slice/stack:output:0;dense_59/ActivityRegularizer/strided_slice/stack_1:output:0;dense_59/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_59/ActivityRegularizer/strided_slice?
!dense_59/ActivityRegularizer/CastCast3dense_59/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_59/ActivityRegularizer/Cast?
$dense_59/ActivityRegularizer/truedivRealDiv$dense_59/ActivityRegularizer/mul:z:0%dense_59/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_59/ActivityRegularizer/truediv~
softmax_6/SoftmaxSoftmaxdense_59/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
softmax_6/Softmax?
/dense_56/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_56/bias/Regularizer/Square/ReadVariableOp?
 dense_56/bias/Regularizer/SquareSquare7dense_56/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_56/bias/Regularizer/Square?
dense_56/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_56/bias/Regularizer/Const?
dense_56/bias/Regularizer/SumSum$dense_56/bias/Regularizer/Square:y:0(dense_56/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/Sum?
dense_56/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_56/bias/Regularizer/mul/x?
dense_56/bias/Regularizer/mulMul(dense_56/bias/Regularizer/mul/x:output:0&dense_56/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/mul?
/dense_57/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_57/bias/Regularizer/Square/ReadVariableOp?
 dense_57/bias/Regularizer/SquareSquare7dense_57/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_57/bias/Regularizer/Square?
dense_57/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_57/bias/Regularizer/Const?
dense_57/bias/Regularizer/SumSum$dense_57/bias/Regularizer/Square:y:0(dense_57/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/Sum?
dense_57/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_57/bias/Regularizer/mul/x?
dense_57/bias/Regularizer/mulMul(dense_57/bias/Regularizer/mul/x:output:0&dense_57/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/mul?
/dense_58/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_58_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_58/bias/Regularizer/Square/ReadVariableOp?
 dense_58/bias/Regularizer/SquareSquare7dense_58/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_58/bias/Regularizer/Square?
dense_58/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_58/bias/Regularizer/Const?
dense_58/bias/Regularizer/SumSum$dense_58/bias/Regularizer/Square:y:0(dense_58/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/Sum?
dense_58/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_58/bias/Regularizer/mul/x?
dense_58/bias/Regularizer/mulMul(dense_58/bias/Regularizer/mul/x:output:0&dense_58/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/mul?
/dense_59/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_59/bias/Regularizer/Square/ReadVariableOp?
 dense_59/bias/Regularizer/SquareSquare7dense_59/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_59/bias/Regularizer/Square?
dense_59/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_59/bias/Regularizer/Const?
dense_59/bias/Regularizer/SumSum$dense_59/bias/Regularizer/Square:y:0(dense_59/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_59/bias/Regularizer/Sum?
dense_59/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_59/bias/Regularizer/mul/x?
dense_59/bias/Regularizer/mulMul(dense_59/bias/Regularizer/mul/x:output:0&dense_59/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_59/bias/Regularizer/mul?
IdentityIdentitysoftmax_6/Softmax:softmax:0 ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp0^dense_56/bias/Regularizer/Square/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp0^dense_57/bias/Regularizer/Square/ReadVariableOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp0^dense_58/bias/Regularizer/Square/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp0^dense_59/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(dense_56/ActivityRegularizer/truediv:z:0 ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp0^dense_56/bias/Regularizer/Square/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp0^dense_57/bias/Regularizer/Square/ReadVariableOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp0^dense_58/bias/Regularizer/Square/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp0^dense_59/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_57/ActivityRegularizer/truediv:z:0 ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp0^dense_56/bias/Regularizer/Square/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp0^dense_57/bias/Regularizer/Square/ReadVariableOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp0^dense_58/bias/Regularizer/Square/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp0^dense_59/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_58/ActivityRegularizer/truediv:z:0 ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp0^dense_56/bias/Regularizer/Square/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp0^dense_57/bias/Regularizer/Square/ReadVariableOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp0^dense_58/bias/Regularizer/Square/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp0^dense_59/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3?

Identity_4Identity(dense_59/ActivityRegularizer/truediv:z:0 ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp0^dense_56/bias/Regularizer/Square/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp0^dense_57/bias/Regularizer/Square/ReadVariableOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp0^dense_58/bias/Regularizer/Square/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp0^dense_59/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : : : 2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp2b
/dense_56/bias/Regularizer/Square/ReadVariableOp/dense_56/bias/Regularizer/Square/ReadVariableOp2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp2b
/dense_57/bias/Regularizer/Square/ReadVariableOp/dense_57/bias/Regularizer/Square/ReadVariableOp2B
dense_58/BiasAdd/ReadVariableOpdense_58/BiasAdd/ReadVariableOp2@
dense_58/MatMul/ReadVariableOpdense_58/MatMul/ReadVariableOp2b
/dense_58/bias/Regularizer/Square/ReadVariableOp/dense_58/bias/Regularizer/Square/ReadVariableOp2B
dense_59/BiasAdd/ReadVariableOpdense_59/BiasAdd/ReadVariableOp2@
dense_59/MatMul/ReadVariableOpdense_59/MatMul/ReadVariableOp2b
/dense_59/bias/Regularizer/Square/ReadVariableOp/dense_59/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
e
F__inference_dropout_12_layer_call_and_return_conditional_losses_647560

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????d2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????d*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????d2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????d2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????d2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
)__inference_dense_58_layer_call_fn_647601

inputs
unknown:dd
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
D__inference_dense_58_layer_call_and_return_conditional_losses_6466022
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????d2

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
??
?
I__inference_sequential_14_layer_call_and_return_conditional_losses_647378

inputs9
'dense_56_matmul_readvariableop_resource:	d6
(dense_56_biasadd_readvariableop_resource:d9
'dense_57_matmul_readvariableop_resource:dd6
(dense_57_biasadd_readvariableop_resource:d9
'dense_58_matmul_readvariableop_resource:dd6
(dense_58_biasadd_readvariableop_resource:d9
'dense_59_matmul_readvariableop_resource:d6
(dense_59_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3

identity_4??dense_56/BiasAdd/ReadVariableOp?dense_56/MatMul/ReadVariableOp?/dense_56/bias/Regularizer/Square/ReadVariableOp?dense_57/BiasAdd/ReadVariableOp?dense_57/MatMul/ReadVariableOp?/dense_57/bias/Regularizer/Square/ReadVariableOp?dense_58/BiasAdd/ReadVariableOp?dense_58/MatMul/ReadVariableOp?/dense_58/bias/Regularizer/Square/ReadVariableOp?dense_59/BiasAdd/ReadVariableOp?dense_59/MatMul/ReadVariableOp?/dense_59/bias/Regularizer/Square/ReadVariableOpu
flatten_14/ConstConst*
_output_shapes
:*
dtype0*
valueB"????	   2
flatten_14/Const?
flatten_14/ReshapeReshapeinputsflatten_14/Const:output:0*
T0*'
_output_shapes
:?????????	2
flatten_14/Reshape?
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes

:	d*
dtype02 
dense_56/MatMul/ReadVariableOp?
dense_56/MatMulMatMulflatten_14/Reshape:output:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_56/MatMul?
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_56/BiasAdd/ReadVariableOp?
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_56/BiasAdds
dense_56/ReluReludense_56/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_56/Relu?
#dense_56/ActivityRegularizer/SquareSquaredense_56/Relu:activations:0*
T0*'
_output_shapes
:?????????d2%
#dense_56/ActivityRegularizer/Square?
"dense_56/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_56/ActivityRegularizer/Const?
 dense_56/ActivityRegularizer/SumSum'dense_56/ActivityRegularizer/Square:y:0+dense_56/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_56/ActivityRegularizer/Sum?
"dense_56/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82$
"dense_56/ActivityRegularizer/mul/x?
 dense_56/ActivityRegularizer/mulMul+dense_56/ActivityRegularizer/mul/x:output:0)dense_56/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_56/ActivityRegularizer/mul?
"dense_56/ActivityRegularizer/ShapeShapedense_56/Relu:activations:0*
T0*
_output_shapes
:2$
"dense_56/ActivityRegularizer/Shape?
0dense_56/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_56/ActivityRegularizer/strided_slice/stack?
2dense_56/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_56/ActivityRegularizer/strided_slice/stack_1?
2dense_56/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_56/ActivityRegularizer/strided_slice/stack_2?
*dense_56/ActivityRegularizer/strided_sliceStridedSlice+dense_56/ActivityRegularizer/Shape:output:09dense_56/ActivityRegularizer/strided_slice/stack:output:0;dense_56/ActivityRegularizer/strided_slice/stack_1:output:0;dense_56/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_56/ActivityRegularizer/strided_slice?
!dense_56/ActivityRegularizer/CastCast3dense_56/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_56/ActivityRegularizer/Cast?
$dense_56/ActivityRegularizer/truedivRealDiv$dense_56/ActivityRegularizer/mul:z:0%dense_56/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_56/ActivityRegularizer/truediv?
dropout_12/IdentityIdentitydense_56/Relu:activations:0*
T0*'
_output_shapes
:?????????d2
dropout_12/Identity?
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype02 
dense_57/MatMul/ReadVariableOp?
dense_57/MatMulMatMuldropout_12/Identity:output:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_57/MatMul?
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_57/BiasAdd/ReadVariableOp?
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_57/BiasAdds
dense_57/ReluReludense_57/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_57/Relu?
#dense_57/ActivityRegularizer/SquareSquaredense_57/Relu:activations:0*
T0*'
_output_shapes
:?????????d2%
#dense_57/ActivityRegularizer/Square?
"dense_57/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_57/ActivityRegularizer/Const?
 dense_57/ActivityRegularizer/SumSum'dense_57/ActivityRegularizer/Square:y:0+dense_57/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_57/ActivityRegularizer/Sum?
"dense_57/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82$
"dense_57/ActivityRegularizer/mul/x?
 dense_57/ActivityRegularizer/mulMul+dense_57/ActivityRegularizer/mul/x:output:0)dense_57/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_57/ActivityRegularizer/mul?
"dense_57/ActivityRegularizer/ShapeShapedense_57/Relu:activations:0*
T0*
_output_shapes
:2$
"dense_57/ActivityRegularizer/Shape?
0dense_57/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_57/ActivityRegularizer/strided_slice/stack?
2dense_57/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_57/ActivityRegularizer/strided_slice/stack_1?
2dense_57/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_57/ActivityRegularizer/strided_slice/stack_2?
*dense_57/ActivityRegularizer/strided_sliceStridedSlice+dense_57/ActivityRegularizer/Shape:output:09dense_57/ActivityRegularizer/strided_slice/stack:output:0;dense_57/ActivityRegularizer/strided_slice/stack_1:output:0;dense_57/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_57/ActivityRegularizer/strided_slice?
!dense_57/ActivityRegularizer/CastCast3dense_57/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_57/ActivityRegularizer/Cast?
$dense_57/ActivityRegularizer/truedivRealDiv$dense_57/ActivityRegularizer/mul:z:0%dense_57/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_57/ActivityRegularizer/truediv?
dense_58/MatMul/ReadVariableOpReadVariableOp'dense_58_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype02 
dense_58/MatMul/ReadVariableOp?
dense_58/MatMulMatMuldense_57/Relu:activations:0&dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_58/MatMul?
dense_58/BiasAdd/ReadVariableOpReadVariableOp(dense_58_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_58/BiasAdd/ReadVariableOp?
dense_58/BiasAddBiasAdddense_58/MatMul:product:0'dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_58/BiasAdds
dense_58/ReluReludense_58/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_58/Relu?
#dense_58/ActivityRegularizer/SquareSquaredense_58/Relu:activations:0*
T0*'
_output_shapes
:?????????d2%
#dense_58/ActivityRegularizer/Square?
"dense_58/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_58/ActivityRegularizer/Const?
 dense_58/ActivityRegularizer/SumSum'dense_58/ActivityRegularizer/Square:y:0+dense_58/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_58/ActivityRegularizer/Sum?
"dense_58/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82$
"dense_58/ActivityRegularizer/mul/x?
 dense_58/ActivityRegularizer/mulMul+dense_58/ActivityRegularizer/mul/x:output:0)dense_58/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_58/ActivityRegularizer/mul?
"dense_58/ActivityRegularizer/ShapeShapedense_58/Relu:activations:0*
T0*
_output_shapes
:2$
"dense_58/ActivityRegularizer/Shape?
0dense_58/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_58/ActivityRegularizer/strided_slice/stack?
2dense_58/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_58/ActivityRegularizer/strided_slice/stack_1?
2dense_58/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_58/ActivityRegularizer/strided_slice/stack_2?
*dense_58/ActivityRegularizer/strided_sliceStridedSlice+dense_58/ActivityRegularizer/Shape:output:09dense_58/ActivityRegularizer/strided_slice/stack:output:0;dense_58/ActivityRegularizer/strided_slice/stack_1:output:0;dense_58/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_58/ActivityRegularizer/strided_slice?
!dense_58/ActivityRegularizer/CastCast3dense_58/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_58/ActivityRegularizer/Cast?
$dense_58/ActivityRegularizer/truedivRealDiv$dense_58/ActivityRegularizer/mul:z:0%dense_58/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_58/ActivityRegularizer/truediv?
dense_59/MatMul/ReadVariableOpReadVariableOp'dense_59_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_59/MatMul/ReadVariableOp?
dense_59/MatMulMatMuldense_58/Relu:activations:0&dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_59/MatMul?
dense_59/BiasAdd/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_59/BiasAdd/ReadVariableOp?
dense_59/BiasAddBiasAdddense_59/MatMul:product:0'dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_59/BiasAdd?
#dense_59/ActivityRegularizer/SquareSquaredense_59/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2%
#dense_59/ActivityRegularizer/Square?
"dense_59/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_59/ActivityRegularizer/Const?
 dense_59/ActivityRegularizer/SumSum'dense_59/ActivityRegularizer/Square:y:0+dense_59/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_59/ActivityRegularizer/Sum?
"dense_59/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82$
"dense_59/ActivityRegularizer/mul/x?
 dense_59/ActivityRegularizer/mulMul+dense_59/ActivityRegularizer/mul/x:output:0)dense_59/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_59/ActivityRegularizer/mul?
"dense_59/ActivityRegularizer/ShapeShapedense_59/BiasAdd:output:0*
T0*
_output_shapes
:2$
"dense_59/ActivityRegularizer/Shape?
0dense_59/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_59/ActivityRegularizer/strided_slice/stack?
2dense_59/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_59/ActivityRegularizer/strided_slice/stack_1?
2dense_59/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_59/ActivityRegularizer/strided_slice/stack_2?
*dense_59/ActivityRegularizer/strided_sliceStridedSlice+dense_59/ActivityRegularizer/Shape:output:09dense_59/ActivityRegularizer/strided_slice/stack:output:0;dense_59/ActivityRegularizer/strided_slice/stack_1:output:0;dense_59/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_59/ActivityRegularizer/strided_slice?
!dense_59/ActivityRegularizer/CastCast3dense_59/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_59/ActivityRegularizer/Cast?
$dense_59/ActivityRegularizer/truedivRealDiv$dense_59/ActivityRegularizer/mul:z:0%dense_59/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_59/ActivityRegularizer/truediv~
softmax_6/SoftmaxSoftmaxdense_59/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
softmax_6/Softmax?
/dense_56/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_56/bias/Regularizer/Square/ReadVariableOp?
 dense_56/bias/Regularizer/SquareSquare7dense_56/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_56/bias/Regularizer/Square?
dense_56/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_56/bias/Regularizer/Const?
dense_56/bias/Regularizer/SumSum$dense_56/bias/Regularizer/Square:y:0(dense_56/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/Sum?
dense_56/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_56/bias/Regularizer/mul/x?
dense_56/bias/Regularizer/mulMul(dense_56/bias/Regularizer/mul/x:output:0&dense_56/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/mul?
/dense_57/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_57/bias/Regularizer/Square/ReadVariableOp?
 dense_57/bias/Regularizer/SquareSquare7dense_57/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_57/bias/Regularizer/Square?
dense_57/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_57/bias/Regularizer/Const?
dense_57/bias/Regularizer/SumSum$dense_57/bias/Regularizer/Square:y:0(dense_57/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/Sum?
dense_57/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_57/bias/Regularizer/mul/x?
dense_57/bias/Regularizer/mulMul(dense_57/bias/Regularizer/mul/x:output:0&dense_57/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/mul?
/dense_58/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_58_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_58/bias/Regularizer/Square/ReadVariableOp?
 dense_58/bias/Regularizer/SquareSquare7dense_58/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_58/bias/Regularizer/Square?
dense_58/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_58/bias/Regularizer/Const?
dense_58/bias/Regularizer/SumSum$dense_58/bias/Regularizer/Square:y:0(dense_58/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/Sum?
dense_58/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_58/bias/Regularizer/mul/x?
dense_58/bias/Regularizer/mulMul(dense_58/bias/Regularizer/mul/x:output:0&dense_58/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/mul?
/dense_59/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_59/bias/Regularizer/Square/ReadVariableOp?
 dense_59/bias/Regularizer/SquareSquare7dense_59/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_59/bias/Regularizer/Square?
dense_59/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_59/bias/Regularizer/Const?
dense_59/bias/Regularizer/SumSum$dense_59/bias/Regularizer/Square:y:0(dense_59/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_59/bias/Regularizer/Sum?
dense_59/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_59/bias/Regularizer/mul/x?
dense_59/bias/Regularizer/mulMul(dense_59/bias/Regularizer/mul/x:output:0&dense_59/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_59/bias/Regularizer/mul?
IdentityIdentitysoftmax_6/Softmax:softmax:0 ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp0^dense_56/bias/Regularizer/Square/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp0^dense_57/bias/Regularizer/Square/ReadVariableOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp0^dense_58/bias/Regularizer/Square/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp0^dense_59/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(dense_56/ActivityRegularizer/truediv:z:0 ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp0^dense_56/bias/Regularizer/Square/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp0^dense_57/bias/Regularizer/Square/ReadVariableOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp0^dense_58/bias/Regularizer/Square/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp0^dense_59/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_57/ActivityRegularizer/truediv:z:0 ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp0^dense_56/bias/Regularizer/Square/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp0^dense_57/bias/Regularizer/Square/ReadVariableOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp0^dense_58/bias/Regularizer/Square/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp0^dense_59/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_58/ActivityRegularizer/truediv:z:0 ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp0^dense_56/bias/Regularizer/Square/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp0^dense_57/bias/Regularizer/Square/ReadVariableOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp0^dense_58/bias/Regularizer/Square/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp0^dense_59/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3?

Identity_4Identity(dense_59/ActivityRegularizer/truediv:z:0 ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp0^dense_56/bias/Regularizer/Square/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp0^dense_57/bias/Regularizer/Square/ReadVariableOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp0^dense_58/bias/Regularizer/Square/ReadVariableOp ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp0^dense_59/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : : : 2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp2b
/dense_56/bias/Regularizer/Square/ReadVariableOp/dense_56/bias/Regularizer/Square/ReadVariableOp2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp2b
/dense_57/bias/Regularizer/Square/ReadVariableOp/dense_57/bias/Regularizer/Square/ReadVariableOp2B
dense_58/BiasAdd/ReadVariableOpdense_58/BiasAdd/ReadVariableOp2@
dense_58/MatMul/ReadVariableOpdense_58/MatMul/ReadVariableOp2b
/dense_58/bias/Regularizer/Square/ReadVariableOp/dense_58/bias/Regularizer/Square/ReadVariableOp2B
dense_59/BiasAdd/ReadVariableOpdense_59/BiasAdd/ReadVariableOp2@
dense_59/MatMul/ReadVariableOpdense_59/MatMul/ReadVariableOp2b
/dense_59/bias/Regularizer/Square/ReadVariableOp/dense_59/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
??
?
"__inference__traced_restore_647990
file_prefix2
 assignvariableop_dense_56_kernel:	d.
 assignvariableop_1_dense_56_bias:d4
"assignvariableop_2_dense_57_kernel:dd.
 assignvariableop_3_dense_57_bias:d4
"assignvariableop_4_dense_58_kernel:dd.
 assignvariableop_5_dense_58_bias:d4
"assignvariableop_6_dense_59_kernel:d.
 assignvariableop_7_dense_59_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: <
*assignvariableop_17_adam_dense_56_kernel_m:	d6
(assignvariableop_18_adam_dense_56_bias_m:d<
*assignvariableop_19_adam_dense_57_kernel_m:dd6
(assignvariableop_20_adam_dense_57_bias_m:d<
*assignvariableop_21_adam_dense_58_kernel_m:dd6
(assignvariableop_22_adam_dense_58_bias_m:d<
*assignvariableop_23_adam_dense_59_kernel_m:d6
(assignvariableop_24_adam_dense_59_bias_m:<
*assignvariableop_25_adam_dense_56_kernel_v:	d6
(assignvariableop_26_adam_dense_56_bias_v:d<
*assignvariableop_27_adam_dense_57_kernel_v:dd6
(assignvariableop_28_adam_dense_57_bias_v:d<
*assignvariableop_29_adam_dense_58_kernel_v:dd6
(assignvariableop_30_adam_dense_58_bias_v:d<
*assignvariableop_31_adam_dense_59_kernel_v:d6
(assignvariableop_32_adam_dense_59_bias_v:
identity_34??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_56_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_56_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_57_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_57_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_58_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_58_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_59_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_59_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_56_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_56_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_57_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_57_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_58_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_58_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_59_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_59_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_56_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_56_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_57_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_57_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_58_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_58_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_59_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_59_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_329
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_33?
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
?	
?
.__inference_sequential_14_layer_call_fn_647267

inputs
unknown:	d
	unknown_0:d
	unknown_1:dd
	unknown_2:d
	unknown_3:dd
	unknown_4:d
	unknown_5:d
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout	
2*
_collective_manager_ids
 */
_output_shapes
:?????????: : : : **
_read_only_resource_inputs

*2
config_proto" 

CPU

GPU2 *0J 8? *R
fMRK
I__inference_sequential_14_layer_call_and_return_conditional_losses_6469422
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
)__inference_dense_56_layer_call_fn_647522

inputs
unknown:	d
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
D__inference_dense_56_layer_call_and_return_conditional_losses_6465332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????d2

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
?
?
D__inference_dense_57_layer_call_and_return_conditional_losses_646571

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_57/bias/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
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
/dense_57/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_57/bias/Regularizer/Square/ReadVariableOp?
 dense_57/bias/Regularizer/SquareSquare7dense_57/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_57/bias/Regularizer/Square?
dense_57/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_57/bias/Regularizer/Const?
dense_57/bias/Regularizer/SumSum$dense_57/bias/Regularizer/Square:y:0(dense_57/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/Sum?
dense_57/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_57/bias/Regularizer/mul/x?
dense_57/bias/Regularizer/mulMul(dense_57/bias/Regularizer/mul/x:output:0&dense_57/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_57/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_57/bias/Regularizer/Square/ReadVariableOp/dense_57/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
G
+__inference_flatten_14_layer_call_fn_647501

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
F__inference_flatten_14_layer_call_and_return_conditional_losses_6465142
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
??
?
I__inference_sequential_14_layer_call_and_return_conditional_losses_646682

inputs!
dense_56_646534:	d
dense_56_646536:d!
dense_57_646572:dd
dense_57_646574:d!
dense_58_646603:dd
dense_58_646605:d!
dense_59_646633:d
dense_59_646635:
identity

identity_1

identity_2

identity_3

identity_4?? dense_56/StatefulPartitionedCall?/dense_56/bias/Regularizer/Square/ReadVariableOp? dense_57/StatefulPartitionedCall?/dense_57/bias/Regularizer/Square/ReadVariableOp? dense_58/StatefulPartitionedCall?/dense_58/bias/Regularizer/Square/ReadVariableOp? dense_59/StatefulPartitionedCall?/dense_59/bias/Regularizer/Square/ReadVariableOp?
flatten_14/PartitionedCallPartitionedCallinputs*
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
F__inference_flatten_14_layer_call_and_return_conditional_losses_6465142
flatten_14/PartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall#flatten_14/PartitionedCall:output:0dense_56_646534dense_56_646536*
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
D__inference_dense_56_layer_call_and_return_conditional_losses_6465332"
 dense_56/StatefulPartitionedCall?
,dense_56/ActivityRegularizer/PartitionedCallPartitionedCall)dense_56/StatefulPartitionedCall:output:0*
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
0__inference_dense_56_activity_regularizer_6464622.
,dense_56/ActivityRegularizer/PartitionedCall?
"dense_56/ActivityRegularizer/ShapeShape)dense_56/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_56/ActivityRegularizer/Shape?
0dense_56/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_56/ActivityRegularizer/strided_slice/stack?
2dense_56/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_56/ActivityRegularizer/strided_slice/stack_1?
2dense_56/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_56/ActivityRegularizer/strided_slice/stack_2?
*dense_56/ActivityRegularizer/strided_sliceStridedSlice+dense_56/ActivityRegularizer/Shape:output:09dense_56/ActivityRegularizer/strided_slice/stack:output:0;dense_56/ActivityRegularizer/strided_slice/stack_1:output:0;dense_56/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_56/ActivityRegularizer/strided_slice?
!dense_56/ActivityRegularizer/CastCast3dense_56/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_56/ActivityRegularizer/Cast?
$dense_56/ActivityRegularizer/truedivRealDiv5dense_56/ActivityRegularizer/PartitionedCall:output:0%dense_56/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_56/ActivityRegularizer/truediv?
dropout_12/PartitionedCallPartitionedCall)dense_56/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_6465522
dropout_12/PartitionedCall?
 dense_57/StatefulPartitionedCallStatefulPartitionedCall#dropout_12/PartitionedCall:output:0dense_57_646572dense_57_646574*
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
D__inference_dense_57_layer_call_and_return_conditional_losses_6465712"
 dense_57/StatefulPartitionedCall?
,dense_57/ActivityRegularizer/PartitionedCallPartitionedCall)dense_57/StatefulPartitionedCall:output:0*
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
0__inference_dense_57_activity_regularizer_6464752.
,dense_57/ActivityRegularizer/PartitionedCall?
"dense_57/ActivityRegularizer/ShapeShape)dense_57/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_57/ActivityRegularizer/Shape?
0dense_57/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_57/ActivityRegularizer/strided_slice/stack?
2dense_57/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_57/ActivityRegularizer/strided_slice/stack_1?
2dense_57/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_57/ActivityRegularizer/strided_slice/stack_2?
*dense_57/ActivityRegularizer/strided_sliceStridedSlice+dense_57/ActivityRegularizer/Shape:output:09dense_57/ActivityRegularizer/strided_slice/stack:output:0;dense_57/ActivityRegularizer/strided_slice/stack_1:output:0;dense_57/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_57/ActivityRegularizer/strided_slice?
!dense_57/ActivityRegularizer/CastCast3dense_57/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_57/ActivityRegularizer/Cast?
$dense_57/ActivityRegularizer/truedivRealDiv5dense_57/ActivityRegularizer/PartitionedCall:output:0%dense_57/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_57/ActivityRegularizer/truediv?
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0dense_58_646603dense_58_646605*
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
D__inference_dense_58_layer_call_and_return_conditional_losses_6466022"
 dense_58/StatefulPartitionedCall?
,dense_58/ActivityRegularizer/PartitionedCallPartitionedCall)dense_58/StatefulPartitionedCall:output:0*
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
0__inference_dense_58_activity_regularizer_6464882.
,dense_58/ActivityRegularizer/PartitionedCall?
"dense_58/ActivityRegularizer/ShapeShape)dense_58/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_58/ActivityRegularizer/Shape?
0dense_58/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_58/ActivityRegularizer/strided_slice/stack?
2dense_58/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_58/ActivityRegularizer/strided_slice/stack_1?
2dense_58/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_58/ActivityRegularizer/strided_slice/stack_2?
*dense_58/ActivityRegularizer/strided_sliceStridedSlice+dense_58/ActivityRegularizer/Shape:output:09dense_58/ActivityRegularizer/strided_slice/stack:output:0;dense_58/ActivityRegularizer/strided_slice/stack_1:output:0;dense_58/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_58/ActivityRegularizer/strided_slice?
!dense_58/ActivityRegularizer/CastCast3dense_58/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_58/ActivityRegularizer/Cast?
$dense_58/ActivityRegularizer/truedivRealDiv5dense_58/ActivityRegularizer/PartitionedCall:output:0%dense_58/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_58/ActivityRegularizer/truediv?
 dense_59/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0dense_59_646633dense_59_646635*
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
D__inference_dense_59_layer_call_and_return_conditional_losses_6466322"
 dense_59/StatefulPartitionedCall?
,dense_59/ActivityRegularizer/PartitionedCallPartitionedCall)dense_59/StatefulPartitionedCall:output:0*
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
0__inference_dense_59_activity_regularizer_6465012.
,dense_59/ActivityRegularizer/PartitionedCall?
"dense_59/ActivityRegularizer/ShapeShape)dense_59/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_59/ActivityRegularizer/Shape?
0dense_59/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_59/ActivityRegularizer/strided_slice/stack?
2dense_59/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_59/ActivityRegularizer/strided_slice/stack_1?
2dense_59/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_59/ActivityRegularizer/strided_slice/stack_2?
*dense_59/ActivityRegularizer/strided_sliceStridedSlice+dense_59/ActivityRegularizer/Shape:output:09dense_59/ActivityRegularizer/strided_slice/stack:output:0;dense_59/ActivityRegularizer/strided_slice/stack_1:output:0;dense_59/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_59/ActivityRegularizer/strided_slice?
!dense_59/ActivityRegularizer/CastCast3dense_59/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_59/ActivityRegularizer/Cast?
$dense_59/ActivityRegularizer/truedivRealDiv5dense_59/ActivityRegularizer/PartitionedCall:output:0%dense_59/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_59/ActivityRegularizer/truediv?
softmax_6/PartitionedCallPartitionedCall)dense_59/StatefulPartitionedCall:output:0*
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
GPU2 *0J 8? *N
fIRG
E__inference_softmax_6_layer_call_and_return_conditional_losses_6466512
softmax_6/PartitionedCall?
/dense_56/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_56_646536*
_output_shapes
:d*
dtype021
/dense_56/bias/Regularizer/Square/ReadVariableOp?
 dense_56/bias/Regularizer/SquareSquare7dense_56/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_56/bias/Regularizer/Square?
dense_56/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_56/bias/Regularizer/Const?
dense_56/bias/Regularizer/SumSum$dense_56/bias/Regularizer/Square:y:0(dense_56/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/Sum?
dense_56/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_56/bias/Regularizer/mul/x?
dense_56/bias/Regularizer/mulMul(dense_56/bias/Regularizer/mul/x:output:0&dense_56/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/mul?
/dense_57/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_57_646574*
_output_shapes
:d*
dtype021
/dense_57/bias/Regularizer/Square/ReadVariableOp?
 dense_57/bias/Regularizer/SquareSquare7dense_57/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_57/bias/Regularizer/Square?
dense_57/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_57/bias/Regularizer/Const?
dense_57/bias/Regularizer/SumSum$dense_57/bias/Regularizer/Square:y:0(dense_57/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/Sum?
dense_57/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_57/bias/Regularizer/mul/x?
dense_57/bias/Regularizer/mulMul(dense_57/bias/Regularizer/mul/x:output:0&dense_57/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/mul?
/dense_58/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_58_646605*
_output_shapes
:d*
dtype021
/dense_58/bias/Regularizer/Square/ReadVariableOp?
 dense_58/bias/Regularizer/SquareSquare7dense_58/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_58/bias/Regularizer/Square?
dense_58/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_58/bias/Regularizer/Const?
dense_58/bias/Regularizer/SumSum$dense_58/bias/Regularizer/Square:y:0(dense_58/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/Sum?
dense_58/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_58/bias/Regularizer/mul/x?
dense_58/bias/Regularizer/mulMul(dense_58/bias/Regularizer/mul/x:output:0&dense_58/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/mul?
/dense_59/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_59_646635*
_output_shapes
:*
dtype021
/dense_59/bias/Regularizer/Square/ReadVariableOp?
 dense_59/bias/Regularizer/SquareSquare7dense_59/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_59/bias/Regularizer/Square?
dense_59/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_59/bias/Regularizer/Const?
dense_59/bias/Regularizer/SumSum$dense_59/bias/Regularizer/Square:y:0(dense_59/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_59/bias/Regularizer/Sum?
dense_59/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_59/bias/Regularizer/mul/x?
dense_59/bias/Regularizer/mulMul(dense_59/bias/Regularizer/mul/x:output:0&dense_59/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_59/bias/Regularizer/mul?
IdentityIdentity"softmax_6/PartitionedCall:output:0!^dense_56/StatefulPartitionedCall0^dense_56/bias/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall0^dense_57/bias/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall0^dense_58/bias/Regularizer/Square/ReadVariableOp!^dense_59/StatefulPartitionedCall0^dense_59/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(dense_56/ActivityRegularizer/truediv:z:0!^dense_56/StatefulPartitionedCall0^dense_56/bias/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall0^dense_57/bias/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall0^dense_58/bias/Regularizer/Square/ReadVariableOp!^dense_59/StatefulPartitionedCall0^dense_59/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_57/ActivityRegularizer/truediv:z:0!^dense_56/StatefulPartitionedCall0^dense_56/bias/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall0^dense_57/bias/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall0^dense_58/bias/Regularizer/Square/ReadVariableOp!^dense_59/StatefulPartitionedCall0^dense_59/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_58/ActivityRegularizer/truediv:z:0!^dense_56/StatefulPartitionedCall0^dense_56/bias/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall0^dense_57/bias/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall0^dense_58/bias/Regularizer/Square/ReadVariableOp!^dense_59/StatefulPartitionedCall0^dense_59/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3?

Identity_4Identity(dense_59/ActivityRegularizer/truediv:z:0!^dense_56/StatefulPartitionedCall0^dense_56/bias/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall0^dense_57/bias/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall0^dense_58/bias/Regularizer/Square/ReadVariableOp!^dense_59/StatefulPartitionedCall0^dense_59/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????	: : : : : : : : 2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2b
/dense_56/bias/Regularizer/Square/ReadVariableOp/dense_56/bias/Regularizer/Square/ReadVariableOp2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2b
/dense_57/bias/Regularizer/Square/ReadVariableOp/dense_57/bias/Regularizer/Square/ReadVariableOp2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2b
/dense_58/bias/Regularizer/Square/ReadVariableOp/dense_58/bias/Regularizer/Square/ReadVariableOp2D
 dense_59/StatefulPartitionedCall dense_59/StatefulPartitionedCall2b
/dense_59/bias/Regularizer/Square/ReadVariableOp/dense_59/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
G
0__inference_dense_58_activity_regularizer_646488
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
?
d
+__inference_dropout_12_layer_call_fn_647543

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_dropout_12_layer_call_and_return_conditional_losses_6467972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
d
F__inference_dropout_12_layer_call_and_return_conditional_losses_647548

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????d2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????d2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
e
F__inference_dropout_12_layer_call_and_return_conditional_losses_646797

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????d2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????d*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????d2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????d2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????d2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
a
E__inference_softmax_6_layer_call_and_return_conditional_losses_646651

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
__inference_loss_fn_3_647692F
8dense_59_bias_regularizer_square_readvariableop_resource:
identity??/dense_59/bias/Regularizer/Square/ReadVariableOp?
/dense_59/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_59_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_59/bias/Regularizer/Square/ReadVariableOp?
 dense_59/bias/Regularizer/SquareSquare7dense_59/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_59/bias/Regularizer/Square?
dense_59/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_59/bias/Regularizer/Const?
dense_59/bias/Regularizer/SumSum$dense_59/bias/Regularizer/Square:y:0(dense_59/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_59/bias/Regularizer/Sum?
dense_59/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_59/bias/Regularizer/mul/x?
dense_59/bias/Regularizer/mulMul(dense_59/bias/Regularizer/mul/x:output:0&dense_59/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_59/bias/Regularizer/mul?
IdentityIdentity!dense_59/bias/Regularizer/mul:z:00^dense_59/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_59/bias/Regularizer/Square/ReadVariableOp/dense_59/bias/Regularizer/Square/ReadVariableOp
?
?
D__inference_dense_58_layer_call_and_return_conditional_losses_647743

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_58/bias/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
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
/dense_58/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_58/bias/Regularizer/Square/ReadVariableOp?
 dense_58/bias/Regularizer/SquareSquare7dense_58/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_58/bias/Regularizer/Square?
dense_58/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_58/bias/Regularizer/Const?
dense_58/bias/Regularizer/SumSum$dense_58/bias/Regularizer/Square:y:0(dense_58/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/Sum?
dense_58/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_58/bias/Regularizer/mul/x?
dense_58/bias/Regularizer/mulMul(dense_58/bias/Regularizer/mul/x:output:0&dense_58/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_58/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_58/bias/Regularizer/Square/ReadVariableOp/dense_58/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
H__inference_dense_59_layer_call_and_return_all_conditional_losses_647638

inputs
unknown:d
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
D__inference_dense_59_layer_call_and_return_conditional_losses_6466322
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
0__inference_dense_59_activity_regularizer_6465012
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
D__inference_dense_59_layer_call_and_return_conditional_losses_646632

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_59/bias/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
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
/dense_59/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_59/bias/Regularizer/Square/ReadVariableOp?
 dense_59/bias/Regularizer/SquareSquare7dense_59/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_59/bias/Regularizer/Square?
dense_59/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_59/bias/Regularizer/Const?
dense_59/bias/Regularizer/SumSum$dense_59/bias/Regularizer/Square:y:0(dense_59/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_59/bias/Regularizer/Sum?
dense_59/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_59/bias/Regularizer/mul/x?
dense_59/bias/Regularizer/mulMul(dense_59/bias/Regularizer/mul/x:output:0&dense_59/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_59/bias/Regularizer/mul?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_59/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_59/bias/Regularizer/Square/ReadVariableOp/dense_59/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_647670F
8dense_57_bias_regularizer_square_readvariableop_resource:d
identity??/dense_57/bias/Regularizer/Square/ReadVariableOp?
/dense_57/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_57_bias_regularizer_square_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_57/bias/Regularizer/Square/ReadVariableOp?
 dense_57/bias/Regularizer/SquareSquare7dense_57/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_57/bias/Regularizer/Square?
dense_57/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_57/bias/Regularizer/Const?
dense_57/bias/Regularizer/SumSum$dense_57/bias/Regularizer/Square:y:0(dense_57/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/Sum?
dense_57/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_57/bias/Regularizer/mul/x?
dense_57/bias/Regularizer/mulMul(dense_57/bias/Regularizer/mul/x:output:0&dense_57/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/mul?
IdentityIdentity!dense_57/bias/Regularizer/mul:z:00^dense_57/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_57/bias/Regularizer/Square/ReadVariableOp/dense_57/bias/Regularizer/Square/ReadVariableOp"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
flatten_14_input9
"serving_default_flatten_14_input:0?????????	=
	softmax_60
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
??
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
	optimizer
	trainable_variables

	variables
regularization_losses
	keras_api

signatures
z__call__
*{&call_and_return_all_conditional_losses
|_default_save_signature"?<
_tf_keras_sequential?;{"name": "sequential_14", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_14", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_14_input"}}, {"class_name": "Flatten", "config": {"name": "flatten_14", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_56", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_12", "trainable": true, "dtype": "float32", "rate": 0.02, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_57", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_58", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_59", "trainable": true, "dtype": "float32", "units": 7, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Softmax", "config": {"name": "softmax_6", "trainable": true, "dtype": "float32", "axis": -1}}]}, "shared_object_id": 24, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 9]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 9]}, "float32", "flatten_14_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_14", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_14_input"}, "shared_object_id": 0}, {"class_name": "Flatten", "config": {"name": "flatten_14", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 1}, {"class_name": "Dense", "config": {"name": "dense_56", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 4}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 5}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, {"class_name": "Dropout", "config": {"name": "dropout_12", "trainable": true, "dtype": "float32", "rate": 0.02, "noise_shape": null, "seed": null}, "shared_object_id": 7}, {"class_name": "Dense", "config": {"name": "dense_57", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 10}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 11}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, {"class_name": "Dense", "config": {"name": "dense_58", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 15}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 16}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17}, {"class_name": "Dense", "config": {"name": "dense_59", "trainable": true, "dtype": "float32", "units": 7, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 20}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 21}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 22}, {"class_name": "Softmax", "config": {"name": "softmax_6", "trainable": true, "dtype": "float32", "axis": -1}, "shared_object_id": 23}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": false}, "shared_object_id": 26}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 27}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-06, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
trainable_variables
	variables
regularization_losses
	keras_api
}__call__
*~&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten_14", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_14", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 9]}, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 1, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 25}}
?


kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "dense_56", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_56", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 4}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 5}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 9}}, "shared_object_id": 28}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 5}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 9]}}
?
trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_12", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_12", "trainable": true, "dtype": "float32", "rate": 0.02, "noise_shape": null, "seed": null}, "shared_object_id": 7}
?


kernel
bias
trainable_variables
	variables
 regularization_losses
!	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "dense_57", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_57", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 10}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 11}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 29}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 11}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?


"kernel
#bias
$trainable_variables
%	variables
&regularization_losses
'	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "dense_58", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_58", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 15}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 16}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 30}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 16}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?


(kernel
)bias
*trainable_variables
+	variables
,regularization_losses
-	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "dense_59", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_59", "trainable": true, "dtype": "float32", "units": 7, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 20}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 21}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 31}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?
.trainable_variables
/	variables
0regularization_losses
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "softmax_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Softmax", "config": {"name": "softmax_6", "trainable": true, "dtype": "float32", "axis": -1}, "shared_object_id": 23}
?
2iter

3beta_1

4beta_2
	5decay
6learning_ratemjmkmlmm"mn#mo(mp)mqvrvsvtvu"vv#vw(vx)vy"
	optimizer
X
0
1
2
3
"4
#5
(6
)7"
trackable_list_wrapper
X
0
1
2
3
"4
#5
(6
)7"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
?
7metrics
	trainable_variables
8non_trainable_variables
9layer_metrics

	variables
regularization_losses

:layers
;layer_regularization_losses
z__call__
|_default_save_signature
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
<metrics
trainable_variables
=non_trainable_variables
>layer_metrics
	variables
regularization_losses

?layers
@layer_regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
!:	d2dense_56/kernel
:d2dense_56/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
Ametrics
trainable_variables
Bnon_trainable_variables
Clayer_metrics
	variables
regularization_losses

Dlayers
Elayer_regularization_losses
__call__
?activity_regularizer_fn
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Fmetrics
trainable_variables
Gnon_trainable_variables
Hlayer_metrics
	variables
regularization_losses

Ilayers
Jlayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:dd2dense_57/kernel
:d2dense_57/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
Kmetrics
trainable_variables
Lnon_trainable_variables
Mlayer_metrics
	variables
 regularization_losses

Nlayers
Olayer_regularization_losses
?__call__
?activity_regularizer_fn
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:dd2dense_58/kernel
:d2dense_58/bias
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
Pmetrics
$trainable_variables
Qnon_trainable_variables
Rlayer_metrics
%	variables
&regularization_losses

Slayers
Tlayer_regularization_losses
?__call__
?activity_regularizer_fn
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:d2dense_59/kernel
:2dense_59/bias
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
Umetrics
*trainable_variables
Vnon_trainable_variables
Wlayer_metrics
+	variables
,regularization_losses

Xlayers
Ylayer_regularization_losses
?__call__
?activity_regularizer_fn
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Zmetrics
.trainable_variables
[non_trainable_variables
\layer_metrics
/	variables
0regularization_losses

]layers
^layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
(
?0"
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
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
(
?0"
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
	atotal
	bcount
c	variables
d	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 32}
?
	etotal
	fcount
g
_fn_kwargs
h	variables
i	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 27}
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
&:$	d2Adam/dense_56/kernel/m
 :d2Adam/dense_56/bias/m
&:$dd2Adam/dense_57/kernel/m
 :d2Adam/dense_57/bias/m
&:$dd2Adam/dense_58/kernel/m
 :d2Adam/dense_58/bias/m
&:$d2Adam/dense_59/kernel/m
 :2Adam/dense_59/bias/m
&:$	d2Adam/dense_56/kernel/v
 :d2Adam/dense_56/bias/v
&:$dd2Adam/dense_57/kernel/v
 :d2Adam/dense_57/bias/v
&:$dd2Adam/dense_58/kernel/v
 :d2Adam/dense_58/bias/v
&:$d2Adam/dense_59/kernel/v
 :2Adam/dense_59/bias/v
?2?
.__inference_sequential_14_layer_call_fn_646705
.__inference_sequential_14_layer_call_fn_647242
.__inference_sequential_14_layer_call_fn_647267
.__inference_sequential_14_layer_call_fn_646990?
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
I__inference_sequential_14_layer_call_and_return_conditional_losses_647378
I__inference_sequential_14_layer_call_and_return_conditional_losses_647496
I__inference_sequential_14_layer_call_and_return_conditional_losses_647077
I__inference_sequential_14_layer_call_and_return_conditional_losses_647164?
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
!__inference__wrapped_model_646449?
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
flatten_14_input?????????	
?2?
+__inference_flatten_14_layer_call_fn_647501?
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
F__inference_flatten_14_layer_call_and_return_conditional_losses_647507?
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
)__inference_dense_56_layer_call_fn_647522?
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
H__inference_dense_56_layer_call_and_return_all_conditional_losses_647533?
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
+__inference_dropout_12_layer_call_fn_647538
+__inference_dropout_12_layer_call_fn_647543?
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
F__inference_dropout_12_layer_call_and_return_conditional_losses_647548
F__inference_dropout_12_layer_call_and_return_conditional_losses_647560?
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
)__inference_dense_57_layer_call_fn_647575?
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
H__inference_dense_57_layer_call_and_return_all_conditional_losses_647586?
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
)__inference_dense_58_layer_call_fn_647601?
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
H__inference_dense_58_layer_call_and_return_all_conditional_losses_647612?
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
)__inference_dense_59_layer_call_fn_647627?
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
H__inference_dense_59_layer_call_and_return_all_conditional_losses_647638?
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
*__inference_softmax_6_layer_call_fn_647643?
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
E__inference_softmax_6_layer_call_and_return_conditional_losses_647648?
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
__inference_loss_fn_0_647659?
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
__inference_loss_fn_1_647670?
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
__inference_loss_fn_2_647681?
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
__inference_loss_fn_3_647692?
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
$__inference_signature_wrapper_647217flatten_14_input"?
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
0__inference_dense_56_activity_regularizer_646462?
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
D__inference_dense_56_layer_call_and_return_conditional_losses_647709?
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
0__inference_dense_57_activity_regularizer_646475?
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
D__inference_dense_57_layer_call_and_return_conditional_losses_647726?
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
0__inference_dense_58_activity_regularizer_646488?
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
D__inference_dense_58_layer_call_and_return_conditional_losses_647743?
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
0__inference_dense_59_activity_regularizer_646501?
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
D__inference_dense_59_layer_call_and_return_conditional_losses_647759?
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
!__inference__wrapped_model_646449|"#()9?6
/?,
*?'
flatten_14_input?????????	
? "5?2
0
	softmax_6#? 
	softmax_6?????????Z
0__inference_dense_56_activity_regularizer_646462&?
?
?	
x
? "? ?
H__inference_dense_56_layer_call_and_return_all_conditional_losses_647533j/?,
%?"
 ?
inputs?????????	
? "3?0
?
0?????????d
?
?	
1/0 ?
D__inference_dense_56_layer_call_and_return_conditional_losses_647709\/?,
%?"
 ?
inputs?????????	
? "%?"
?
0?????????d
? |
)__inference_dense_56_layer_call_fn_647522O/?,
%?"
 ?
inputs?????????	
? "??????????dZ
0__inference_dense_57_activity_regularizer_646475&?
?
?	
x
? "? ?
H__inference_dense_57_layer_call_and_return_all_conditional_losses_647586j/?,
%?"
 ?
inputs?????????d
? "3?0
?
0?????????d
?
?	
1/0 ?
D__inference_dense_57_layer_call_and_return_conditional_losses_647726\/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????d
? |
)__inference_dense_57_layer_call_fn_647575O/?,
%?"
 ?
inputs?????????d
? "??????????dZ
0__inference_dense_58_activity_regularizer_646488&?
?
?	
x
? "? ?
H__inference_dense_58_layer_call_and_return_all_conditional_losses_647612j"#/?,
%?"
 ?
inputs?????????d
? "3?0
?
0?????????d
?
?	
1/0 ?
D__inference_dense_58_layer_call_and_return_conditional_losses_647743\"#/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????d
? |
)__inference_dense_58_layer_call_fn_647601O"#/?,
%?"
 ?
inputs?????????d
? "??????????dZ
0__inference_dense_59_activity_regularizer_646501&?
?
?	
x
? "? ?
H__inference_dense_59_layer_call_and_return_all_conditional_losses_647638j()/?,
%?"
 ?
inputs?????????d
? "3?0
?
0?????????
?
?	
1/0 ?
D__inference_dense_59_layer_call_and_return_conditional_losses_647759\()/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????
? |
)__inference_dense_59_layer_call_fn_647627O()/?,
%?"
 ?
inputs?????????d
? "???????????
F__inference_dropout_12_layer_call_and_return_conditional_losses_647548\3?0
)?&
 ?
inputs?????????d
p 
? "%?"
?
0?????????d
? ?
F__inference_dropout_12_layer_call_and_return_conditional_losses_647560\3?0
)?&
 ?
inputs?????????d
p
? "%?"
?
0?????????d
? ~
+__inference_dropout_12_layer_call_fn_647538O3?0
)?&
 ?
inputs?????????d
p 
? "??????????d~
+__inference_dropout_12_layer_call_fn_647543O3?0
)?&
 ?
inputs?????????d
p
? "??????????d?
F__inference_flatten_14_layer_call_and_return_conditional_losses_647507X/?,
%?"
 ?
inputs?????????	
? "%?"
?
0?????????	
? z
+__inference_flatten_14_layer_call_fn_647501K/?,
%?"
 ?
inputs?????????	
? "??????????	;
__inference_loss_fn_0_647659?

? 
? "? ;
__inference_loss_fn_1_647670?

? 
? "? ;
__inference_loss_fn_2_647681#?

? 
? "? ;
__inference_loss_fn_3_647692)?

? 
? "? ?
I__inference_sequential_14_layer_call_and_return_conditional_losses_647077?"#()A?>
7?4
*?'
flatten_14_input?????????	
p 

 
? "]?Z
?
0?????????
;?8
?	
1/0 
?	
1/1 
?	
1/2 
?	
1/3 ?
I__inference_sequential_14_layer_call_and_return_conditional_losses_647164?"#()A?>
7?4
*?'
flatten_14_input?????????	
p

 
? "]?Z
?
0?????????
;?8
?	
1/0 
?	
1/1 
?	
1/2 
?	
1/3 ?
I__inference_sequential_14_layer_call_and_return_conditional_losses_647378?"#()7?4
-?*
 ?
inputs?????????	
p 

 
? "]?Z
?
0?????????
;?8
?	
1/0 
?	
1/1 
?	
1/2 
?	
1/3 ?
I__inference_sequential_14_layer_call_and_return_conditional_losses_647496?"#()7?4
-?*
 ?
inputs?????????	
p

 
? "]?Z
?
0?????????
;?8
?	
1/0 
?	
1/1 
?	
1/2 
?	
1/3 ?
.__inference_sequential_14_layer_call_fn_646705g"#()A?>
7?4
*?'
flatten_14_input?????????	
p 

 
? "???????????
.__inference_sequential_14_layer_call_fn_646990g"#()A?>
7?4
*?'
flatten_14_input?????????	
p

 
? "???????????
.__inference_sequential_14_layer_call_fn_647242]"#()7?4
-?*
 ?
inputs?????????	
p 

 
? "???????????
.__inference_sequential_14_layer_call_fn_647267]"#()7?4
-?*
 ?
inputs?????????	
p

 
? "???????????
$__inference_signature_wrapper_647217?"#()M?J
? 
C?@
>
flatten_14_input*?'
flatten_14_input?????????	"5?2
0
	softmax_6#? 
	softmax_6??????????
E__inference_softmax_6_layer_call_and_return_conditional_losses_647648\3?0
)?&
 ?
inputs?????????

 
? "%?"
?
0?????????
? }
*__inference_softmax_6_layer_call_fn_647643O3?0
)?&
 ?
inputs?????????

 
? "??????????