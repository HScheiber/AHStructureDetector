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
dense_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d* 
shared_namedense_64/kernel
s
#dense_64/kernel/Read/ReadVariableOpReadVariableOpdense_64/kernel*
_output_shapes

:d*
dtype0
r
dense_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_64/bias
k
!dense_64/bias/Read/ReadVariableOpReadVariableOpdense_64/bias*
_output_shapes
:d*
dtype0
z
dense_65/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd* 
shared_namedense_65/kernel
s
#dense_65/kernel/Read/ReadVariableOpReadVariableOpdense_65/kernel*
_output_shapes

:dd*
dtype0
r
dense_65/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_65/bias
k
!dense_65/bias/Read/ReadVariableOpReadVariableOpdense_65/bias*
_output_shapes
:d*
dtype0
z
dense_66/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd* 
shared_namedense_66/kernel
s
#dense_66/kernel/Read/ReadVariableOpReadVariableOpdense_66/kernel*
_output_shapes

:dd*
dtype0
r
dense_66/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_66/bias
k
!dense_66/bias/Read/ReadVariableOpReadVariableOpdense_66/bias*
_output_shapes
:d*
dtype0
z
dense_67/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d* 
shared_namedense_67/kernel
s
#dense_67/kernel/Read/ReadVariableOpReadVariableOpdense_67/kernel*
_output_shapes

:d*
dtype0
r
dense_67/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_67/bias
k
!dense_67/bias/Read/ReadVariableOpReadVariableOpdense_67/bias*
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
Adam/dense_64/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_64/kernel/m
?
*Adam/dense_64/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_64/kernel/m*
_output_shapes

:d*
dtype0
?
Adam/dense_64/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_64/bias/m
y
(Adam/dense_64/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_64/bias/m*
_output_shapes
:d*
dtype0
?
Adam/dense_65/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*'
shared_nameAdam/dense_65/kernel/m
?
*Adam/dense_65/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_65/kernel/m*
_output_shapes

:dd*
dtype0
?
Adam/dense_65/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_65/bias/m
y
(Adam/dense_65/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_65/bias/m*
_output_shapes
:d*
dtype0
?
Adam/dense_66/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*'
shared_nameAdam/dense_66/kernel/m
?
*Adam/dense_66/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_66/kernel/m*
_output_shapes

:dd*
dtype0
?
Adam/dense_66/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_66/bias/m
y
(Adam/dense_66/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_66/bias/m*
_output_shapes
:d*
dtype0
?
Adam/dense_67/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_67/kernel/m
?
*Adam/dense_67/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_67/kernel/m*
_output_shapes

:d*
dtype0
?
Adam/dense_67/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_67/bias/m
y
(Adam/dense_67/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_67/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_64/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_64/kernel/v
?
*Adam/dense_64/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_64/kernel/v*
_output_shapes

:d*
dtype0
?
Adam/dense_64/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_64/bias/v
y
(Adam/dense_64/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_64/bias/v*
_output_shapes
:d*
dtype0
?
Adam/dense_65/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*'
shared_nameAdam/dense_65/kernel/v
?
*Adam/dense_65/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_65/kernel/v*
_output_shapes

:dd*
dtype0
?
Adam/dense_65/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_65/bias/v
y
(Adam/dense_65/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_65/bias/v*
_output_shapes
:d*
dtype0
?
Adam/dense_66/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*'
shared_nameAdam/dense_66/kernel/v
?
*Adam/dense_66/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_66/kernel/v*
_output_shapes

:dd*
dtype0
?
Adam/dense_66/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_66/bias/v
y
(Adam/dense_66/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_66/bias/v*
_output_shapes
:d*
dtype0
?
Adam/dense_67/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_67/kernel/v
?
*Adam/dense_67/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_67/kernel/v*
_output_shapes

:d*
dtype0
?
Adam/dense_67/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_67/bias/v
y
(Adam/dense_67/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_67/bias/v*
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
VARIABLE_VALUEdense_64/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_64/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_65/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_65/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_66/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_66/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_67/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_67/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/dense_64/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_64/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_65/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_65/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_66/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_66/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_67/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_67/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_64/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_64/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_65/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_65/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_66/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_66/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_67/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_67/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_flatten_16_inputPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_flatten_16_inputdense_64/kerneldense_64/biasdense_65/kerneldense_65/biasdense_66/kerneldense_66/biasdense_67/kerneldense_67/bias*
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
$__inference_signature_wrapper_816069
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_64/kernel/Read/ReadVariableOp!dense_64/bias/Read/ReadVariableOp#dense_65/kernel/Read/ReadVariableOp!dense_65/bias/Read/ReadVariableOp#dense_66/kernel/Read/ReadVariableOp!dense_66/bias/Read/ReadVariableOp#dense_67/kernel/Read/ReadVariableOp!dense_67/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_64/kernel/m/Read/ReadVariableOp(Adam/dense_64/bias/m/Read/ReadVariableOp*Adam/dense_65/kernel/m/Read/ReadVariableOp(Adam/dense_65/bias/m/Read/ReadVariableOp*Adam/dense_66/kernel/m/Read/ReadVariableOp(Adam/dense_66/bias/m/Read/ReadVariableOp*Adam/dense_67/kernel/m/Read/ReadVariableOp(Adam/dense_67/bias/m/Read/ReadVariableOp*Adam/dense_64/kernel/v/Read/ReadVariableOp(Adam/dense_64/bias/v/Read/ReadVariableOp*Adam/dense_65/kernel/v/Read/ReadVariableOp(Adam/dense_65/bias/v/Read/ReadVariableOp*Adam/dense_66/kernel/v/Read/ReadVariableOp(Adam/dense_66/bias/v/Read/ReadVariableOp*Adam/dense_67/kernel/v/Read/ReadVariableOp(Adam/dense_67/bias/v/Read/ReadVariableOpConst*.
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
__inference__traced_save_816733
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_64/kerneldense_64/biasdense_65/kerneldense_65/biasdense_66/kerneldense_66/biasdense_67/kerneldense_67/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_64/kernel/mAdam/dense_64/bias/mAdam/dense_65/kernel/mAdam/dense_65/bias/mAdam/dense_66/kernel/mAdam/dense_66/bias/mAdam/dense_67/kernel/mAdam/dense_67/bias/mAdam/dense_64/kernel/vAdam/dense_64/bias/vAdam/dense_65/kernel/vAdam/dense_65/bias/vAdam/dense_66/kernel/vAdam/dense_66/bias/vAdam/dense_67/kernel/vAdam/dense_67/bias/v*-
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
"__inference__traced_restore_816842??
?
d
+__inference_dropout_14_layer_call_fn_816395

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
F__inference_dropout_14_layer_call_and_return_conditional_losses_8156492
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
?
?
H__inference_dense_64_layer_call_and_return_all_conditional_losses_816385

inputs
unknown:d
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
D__inference_dense_64_layer_call_and_return_conditional_losses_8153852
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
0__inference_dense_64_activity_regularizer_8153142
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
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
.__inference_sequential_16_layer_call_fn_816094

inputs
unknown:d
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
I__inference_sequential_16_layer_call_and_return_conditional_losses_8155342
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
a
E__inference_softmax_8_layer_call_and_return_conditional_losses_815503

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
)__inference_dense_65_layer_call_fn_816427

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
D__inference_dense_65_layer_call_and_return_conditional_losses_8154232
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
?
a
E__inference_softmax_8_layer_call_and_return_conditional_losses_816500

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
H__inference_dense_65_layer_call_and_return_all_conditional_losses_816438

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
D__inference_dense_65_layer_call_and_return_conditional_losses_8154232
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
0__inference_dense_65_activity_regularizer_8153272
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
?	
?
.__inference_sequential_16_layer_call_fn_816119

inputs
unknown:d
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
I__inference_sequential_16_layer_call_and_return_conditional_losses_8157942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_16_layer_call_and_return_conditional_losses_816359

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_2_816533F
8dense_66_bias_regularizer_square_readvariableop_resource:d
identity??/dense_66/bias/Regularizer/Square/ReadVariableOp?
/dense_66/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_66_bias_regularizer_square_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_66/bias/Regularizer/Square/ReadVariableOp?
 dense_66/bias/Regularizer/SquareSquare7dense_66/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_66/bias/Regularizer/Square?
dense_66/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_66/bias/Regularizer/Const?
dense_66/bias/Regularizer/SumSum$dense_66/bias/Regularizer/Square:y:0(dense_66/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_66/bias/Regularizer/Sum?
dense_66/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_66/bias/Regularizer/mul/x?
dense_66/bias/Regularizer/mulMul(dense_66/bias/Regularizer/mul/x:output:0&dense_66/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_66/bias/Regularizer/mul?
IdentityIdentity!dense_66/bias/Regularizer/mul:z:00^dense_66/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_66/bias/Regularizer/Square/ReadVariableOp/dense_66/bias/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_0_816511F
8dense_64_bias_regularizer_square_readvariableop_resource:d
identity??/dense_64/bias/Regularizer/Square/ReadVariableOp?
/dense_64/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_64_bias_regularizer_square_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_64/bias/Regularizer/Square/ReadVariableOp?
 dense_64/bias/Regularizer/SquareSquare7dense_64/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_64/bias/Regularizer/Square?
dense_64/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_64/bias/Regularizer/Const?
dense_64/bias/Regularizer/SumSum$dense_64/bias/Regularizer/Square:y:0(dense_64/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_64/bias/Regularizer/Sum?
dense_64/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_64/bias/Regularizer/mul/x?
dense_64/bias/Regularizer/mulMul(dense_64/bias/Regularizer/mul/x:output:0&dense_64/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_64/bias/Regularizer/mul?
IdentityIdentity!dense_64/bias/Regularizer/mul:z:00^dense_64/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_64/bias/Regularizer/Square/ReadVariableOp/dense_64/bias/Regularizer/Square/ReadVariableOp
?G
?
__inference__traced_save_816733
file_prefix.
*savev2_dense_64_kernel_read_readvariableop,
(savev2_dense_64_bias_read_readvariableop.
*savev2_dense_65_kernel_read_readvariableop,
(savev2_dense_65_bias_read_readvariableop.
*savev2_dense_66_kernel_read_readvariableop,
(savev2_dense_66_bias_read_readvariableop.
*savev2_dense_67_kernel_read_readvariableop,
(savev2_dense_67_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_64_kernel_m_read_readvariableop3
/savev2_adam_dense_64_bias_m_read_readvariableop5
1savev2_adam_dense_65_kernel_m_read_readvariableop3
/savev2_adam_dense_65_bias_m_read_readvariableop5
1savev2_adam_dense_66_kernel_m_read_readvariableop3
/savev2_adam_dense_66_bias_m_read_readvariableop5
1savev2_adam_dense_67_kernel_m_read_readvariableop3
/savev2_adam_dense_67_bias_m_read_readvariableop5
1savev2_adam_dense_64_kernel_v_read_readvariableop3
/savev2_adam_dense_64_bias_v_read_readvariableop5
1savev2_adam_dense_65_kernel_v_read_readvariableop3
/savev2_adam_dense_65_bias_v_read_readvariableop5
1savev2_adam_dense_66_kernel_v_read_readvariableop3
/savev2_adam_dense_66_bias_v_read_readvariableop5
1savev2_adam_dense_67_kernel_v_read_readvariableop3
/savev2_adam_dense_67_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_64_kernel_read_readvariableop(savev2_dense_64_bias_read_readvariableop*savev2_dense_65_kernel_read_readvariableop(savev2_dense_65_bias_read_readvariableop*savev2_dense_66_kernel_read_readvariableop(savev2_dense_66_bias_read_readvariableop*savev2_dense_67_kernel_read_readvariableop(savev2_dense_67_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_64_kernel_m_read_readvariableop/savev2_adam_dense_64_bias_m_read_readvariableop1savev2_adam_dense_65_kernel_m_read_readvariableop/savev2_adam_dense_65_bias_m_read_readvariableop1savev2_adam_dense_66_kernel_m_read_readvariableop/savev2_adam_dense_66_bias_m_read_readvariableop1savev2_adam_dense_67_kernel_m_read_readvariableop/savev2_adam_dense_67_bias_m_read_readvariableop1savev2_adam_dense_64_kernel_v_read_readvariableop/savev2_adam_dense_64_bias_v_read_readvariableop1savev2_adam_dense_65_kernel_v_read_readvariableop/savev2_adam_dense_65_bias_v_read_readvariableop1savev2_adam_dense_66_kernel_v_read_readvariableop/savev2_adam_dense_66_bias_v_read_readvariableop1savev2_adam_dense_67_kernel_v_read_readvariableop/savev2_adam_dense_67_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?: :d:d:dd:d:dd:d:d:: : : : : : : : : :d:d:dd:d:dd:d:d::d:d:dd:d:dd:d:d:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:d: 
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

:d: 
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

:d: 
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
D__inference_dense_65_layer_call_and_return_conditional_losses_815423

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_65/bias/Regularizer/Square/ReadVariableOp?
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
/dense_65/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_65/bias/Regularizer/Square/ReadVariableOp?
 dense_65/bias/Regularizer/SquareSquare7dense_65/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_65/bias/Regularizer/Square?
dense_65/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_65/bias/Regularizer/Const?
dense_65/bias/Regularizer/SumSum$dense_65/bias/Regularizer/Square:y:0(dense_65/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_65/bias/Regularizer/Sum?
dense_65/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_65/bias/Regularizer/mul/x?
dense_65/bias/Regularizer/mulMul(dense_65/bias/Regularizer/mul/x:output:0&dense_65/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_65/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_65/bias/Regularizer/Square/ReadVariableOp*
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
/dense_65/bias/Regularizer/Square/ReadVariableOp/dense_65/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
ӓ
?
I__inference_sequential_16_layer_call_and_return_conditional_losses_815794

inputs!
dense_64_815711:d
dense_64_815713:d!
dense_65_815725:dd
dense_65_815727:d!
dense_66_815738:dd
dense_66_815740:d!
dense_67_815751:d
dense_67_815753:
identity

identity_1

identity_2

identity_3

identity_4?? dense_64/StatefulPartitionedCall?/dense_64/bias/Regularizer/Square/ReadVariableOp? dense_65/StatefulPartitionedCall?/dense_65/bias/Regularizer/Square/ReadVariableOp? dense_66/StatefulPartitionedCall?/dense_66/bias/Regularizer/Square/ReadVariableOp? dense_67/StatefulPartitionedCall?/dense_67/bias/Regularizer/Square/ReadVariableOp?"dropout_14/StatefulPartitionedCall?
flatten_16/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_flatten_16_layer_call_and_return_conditional_losses_8153662
flatten_16/PartitionedCall?
 dense_64/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_64_815711dense_64_815713*
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
D__inference_dense_64_layer_call_and_return_conditional_losses_8153852"
 dense_64/StatefulPartitionedCall?
,dense_64/ActivityRegularizer/PartitionedCallPartitionedCall)dense_64/StatefulPartitionedCall:output:0*
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
0__inference_dense_64_activity_regularizer_8153142.
,dense_64/ActivityRegularizer/PartitionedCall?
"dense_64/ActivityRegularizer/ShapeShape)dense_64/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_64/ActivityRegularizer/Shape?
0dense_64/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_64/ActivityRegularizer/strided_slice/stack?
2dense_64/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_64/ActivityRegularizer/strided_slice/stack_1?
2dense_64/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_64/ActivityRegularizer/strided_slice/stack_2?
*dense_64/ActivityRegularizer/strided_sliceStridedSlice+dense_64/ActivityRegularizer/Shape:output:09dense_64/ActivityRegularizer/strided_slice/stack:output:0;dense_64/ActivityRegularizer/strided_slice/stack_1:output:0;dense_64/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_64/ActivityRegularizer/strided_slice?
!dense_64/ActivityRegularizer/CastCast3dense_64/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_64/ActivityRegularizer/Cast?
$dense_64/ActivityRegularizer/truedivRealDiv5dense_64/ActivityRegularizer/PartitionedCall:output:0%dense_64/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_64/ActivityRegularizer/truediv?
"dropout_14/StatefulPartitionedCallStatefulPartitionedCall)dense_64/StatefulPartitionedCall:output:0*
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
F__inference_dropout_14_layer_call_and_return_conditional_losses_8156492$
"dropout_14/StatefulPartitionedCall?
 dense_65/StatefulPartitionedCallStatefulPartitionedCall+dropout_14/StatefulPartitionedCall:output:0dense_65_815725dense_65_815727*
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
D__inference_dense_65_layer_call_and_return_conditional_losses_8154232"
 dense_65/StatefulPartitionedCall?
,dense_65/ActivityRegularizer/PartitionedCallPartitionedCall)dense_65/StatefulPartitionedCall:output:0*
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
0__inference_dense_65_activity_regularizer_8153272.
,dense_65/ActivityRegularizer/PartitionedCall?
"dense_65/ActivityRegularizer/ShapeShape)dense_65/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_65/ActivityRegularizer/Shape?
0dense_65/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_65/ActivityRegularizer/strided_slice/stack?
2dense_65/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_65/ActivityRegularizer/strided_slice/stack_1?
2dense_65/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_65/ActivityRegularizer/strided_slice/stack_2?
*dense_65/ActivityRegularizer/strided_sliceStridedSlice+dense_65/ActivityRegularizer/Shape:output:09dense_65/ActivityRegularizer/strided_slice/stack:output:0;dense_65/ActivityRegularizer/strided_slice/stack_1:output:0;dense_65/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_65/ActivityRegularizer/strided_slice?
!dense_65/ActivityRegularizer/CastCast3dense_65/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_65/ActivityRegularizer/Cast?
$dense_65/ActivityRegularizer/truedivRealDiv5dense_65/ActivityRegularizer/PartitionedCall:output:0%dense_65/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_65/ActivityRegularizer/truediv?
 dense_66/StatefulPartitionedCallStatefulPartitionedCall)dense_65/StatefulPartitionedCall:output:0dense_66_815738dense_66_815740*
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
D__inference_dense_66_layer_call_and_return_conditional_losses_8154542"
 dense_66/StatefulPartitionedCall?
,dense_66/ActivityRegularizer/PartitionedCallPartitionedCall)dense_66/StatefulPartitionedCall:output:0*
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
0__inference_dense_66_activity_regularizer_8153402.
,dense_66/ActivityRegularizer/PartitionedCall?
"dense_66/ActivityRegularizer/ShapeShape)dense_66/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_66/ActivityRegularizer/Shape?
0dense_66/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_66/ActivityRegularizer/strided_slice/stack?
2dense_66/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_66/ActivityRegularizer/strided_slice/stack_1?
2dense_66/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_66/ActivityRegularizer/strided_slice/stack_2?
*dense_66/ActivityRegularizer/strided_sliceStridedSlice+dense_66/ActivityRegularizer/Shape:output:09dense_66/ActivityRegularizer/strided_slice/stack:output:0;dense_66/ActivityRegularizer/strided_slice/stack_1:output:0;dense_66/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_66/ActivityRegularizer/strided_slice?
!dense_66/ActivityRegularizer/CastCast3dense_66/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_66/ActivityRegularizer/Cast?
$dense_66/ActivityRegularizer/truedivRealDiv5dense_66/ActivityRegularizer/PartitionedCall:output:0%dense_66/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_66/ActivityRegularizer/truediv?
 dense_67/StatefulPartitionedCallStatefulPartitionedCall)dense_66/StatefulPartitionedCall:output:0dense_67_815751dense_67_815753*
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
D__inference_dense_67_layer_call_and_return_conditional_losses_8154842"
 dense_67/StatefulPartitionedCall?
,dense_67/ActivityRegularizer/PartitionedCallPartitionedCall)dense_67/StatefulPartitionedCall:output:0*
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
0__inference_dense_67_activity_regularizer_8153532.
,dense_67/ActivityRegularizer/PartitionedCall?
"dense_67/ActivityRegularizer/ShapeShape)dense_67/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_67/ActivityRegularizer/Shape?
0dense_67/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_67/ActivityRegularizer/strided_slice/stack?
2dense_67/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_67/ActivityRegularizer/strided_slice/stack_1?
2dense_67/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_67/ActivityRegularizer/strided_slice/stack_2?
*dense_67/ActivityRegularizer/strided_sliceStridedSlice+dense_67/ActivityRegularizer/Shape:output:09dense_67/ActivityRegularizer/strided_slice/stack:output:0;dense_67/ActivityRegularizer/strided_slice/stack_1:output:0;dense_67/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_67/ActivityRegularizer/strided_slice?
!dense_67/ActivityRegularizer/CastCast3dense_67/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_67/ActivityRegularizer/Cast?
$dense_67/ActivityRegularizer/truedivRealDiv5dense_67/ActivityRegularizer/PartitionedCall:output:0%dense_67/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_67/ActivityRegularizer/truediv?
softmax_8/PartitionedCallPartitionedCall)dense_67/StatefulPartitionedCall:output:0*
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
E__inference_softmax_8_layer_call_and_return_conditional_losses_8155032
softmax_8/PartitionedCall?
/dense_64/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_64_815713*
_output_shapes
:d*
dtype021
/dense_64/bias/Regularizer/Square/ReadVariableOp?
 dense_64/bias/Regularizer/SquareSquare7dense_64/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_64/bias/Regularizer/Square?
dense_64/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_64/bias/Regularizer/Const?
dense_64/bias/Regularizer/SumSum$dense_64/bias/Regularizer/Square:y:0(dense_64/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_64/bias/Regularizer/Sum?
dense_64/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_64/bias/Regularizer/mul/x?
dense_64/bias/Regularizer/mulMul(dense_64/bias/Regularizer/mul/x:output:0&dense_64/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_64/bias/Regularizer/mul?
/dense_65/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_65_815727*
_output_shapes
:d*
dtype021
/dense_65/bias/Regularizer/Square/ReadVariableOp?
 dense_65/bias/Regularizer/SquareSquare7dense_65/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_65/bias/Regularizer/Square?
dense_65/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_65/bias/Regularizer/Const?
dense_65/bias/Regularizer/SumSum$dense_65/bias/Regularizer/Square:y:0(dense_65/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_65/bias/Regularizer/Sum?
dense_65/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_65/bias/Regularizer/mul/x?
dense_65/bias/Regularizer/mulMul(dense_65/bias/Regularizer/mul/x:output:0&dense_65/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_65/bias/Regularizer/mul?
/dense_66/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_66_815740*
_output_shapes
:d*
dtype021
/dense_66/bias/Regularizer/Square/ReadVariableOp?
 dense_66/bias/Regularizer/SquareSquare7dense_66/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_66/bias/Regularizer/Square?
dense_66/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_66/bias/Regularizer/Const?
dense_66/bias/Regularizer/SumSum$dense_66/bias/Regularizer/Square:y:0(dense_66/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_66/bias/Regularizer/Sum?
dense_66/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_66/bias/Regularizer/mul/x?
dense_66/bias/Regularizer/mulMul(dense_66/bias/Regularizer/mul/x:output:0&dense_66/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_66/bias/Regularizer/mul?
/dense_67/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_67_815753*
_output_shapes
:*
dtype021
/dense_67/bias/Regularizer/Square/ReadVariableOp?
 dense_67/bias/Regularizer/SquareSquare7dense_67/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_67/bias/Regularizer/Square?
dense_67/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_67/bias/Regularizer/Const?
dense_67/bias/Regularizer/SumSum$dense_67/bias/Regularizer/Square:y:0(dense_67/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_67/bias/Regularizer/Sum?
dense_67/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_67/bias/Regularizer/mul/x?
dense_67/bias/Regularizer/mulMul(dense_67/bias/Regularizer/mul/x:output:0&dense_67/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_67/bias/Regularizer/mul?
IdentityIdentity"softmax_8/PartitionedCall:output:0!^dense_64/StatefulPartitionedCall0^dense_64/bias/Regularizer/Square/ReadVariableOp!^dense_65/StatefulPartitionedCall0^dense_65/bias/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall0^dense_66/bias/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall0^dense_67/bias/Regularizer/Square/ReadVariableOp#^dropout_14/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(dense_64/ActivityRegularizer/truediv:z:0!^dense_64/StatefulPartitionedCall0^dense_64/bias/Regularizer/Square/ReadVariableOp!^dense_65/StatefulPartitionedCall0^dense_65/bias/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall0^dense_66/bias/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall0^dense_67/bias/Regularizer/Square/ReadVariableOp#^dropout_14/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_65/ActivityRegularizer/truediv:z:0!^dense_64/StatefulPartitionedCall0^dense_64/bias/Regularizer/Square/ReadVariableOp!^dense_65/StatefulPartitionedCall0^dense_65/bias/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall0^dense_66/bias/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall0^dense_67/bias/Regularizer/Square/ReadVariableOp#^dropout_14/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_66/ActivityRegularizer/truediv:z:0!^dense_64/StatefulPartitionedCall0^dense_64/bias/Regularizer/Square/ReadVariableOp!^dense_65/StatefulPartitionedCall0^dense_65/bias/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall0^dense_66/bias/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall0^dense_67/bias/Regularizer/Square/ReadVariableOp#^dropout_14/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_3?

Identity_4Identity(dense_67/ActivityRegularizer/truediv:z:0!^dense_64/StatefulPartitionedCall0^dense_64/bias/Regularizer/Square/ReadVariableOp!^dense_65/StatefulPartitionedCall0^dense_65/bias/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall0^dense_66/bias/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall0^dense_67/bias/Regularizer/Square/ReadVariableOp#^dropout_14/StatefulPartitionedCall*
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
#:?????????: : : : : : : : 2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall2b
/dense_64/bias/Regularizer/Square/ReadVariableOp/dense_64/bias/Regularizer/Square/ReadVariableOp2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall2b
/dense_65/bias/Regularizer/Square/ReadVariableOp/dense_65/bias/Regularizer/Square/ReadVariableOp2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2b
/dense_66/bias/Regularizer/Square/ReadVariableOp/dense_66/bias/Regularizer/Square/ReadVariableOp2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2b
/dense_67/bias/Regularizer/Square/ReadVariableOp/dense_67/bias/Regularizer/Square/ReadVariableOp2H
"dropout_14/StatefulPartitionedCall"dropout_14/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
F
*__inference_softmax_8_layer_call_fn_816495

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
E__inference_softmax_8_layer_call_and_return_conditional_losses_8155032
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
H__inference_dense_67_layer_call_and_return_all_conditional_losses_816490

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
D__inference_dense_67_layer_call_and_return_conditional_losses_8154842
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
0__inference_dense_67_activity_regularizer_8153532
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
??
?
I__inference_sequential_16_layer_call_and_return_conditional_losses_815534

inputs!
dense_64_815386:d
dense_64_815388:d!
dense_65_815424:dd
dense_65_815426:d!
dense_66_815455:dd
dense_66_815457:d!
dense_67_815485:d
dense_67_815487:
identity

identity_1

identity_2

identity_3

identity_4?? dense_64/StatefulPartitionedCall?/dense_64/bias/Regularizer/Square/ReadVariableOp? dense_65/StatefulPartitionedCall?/dense_65/bias/Regularizer/Square/ReadVariableOp? dense_66/StatefulPartitionedCall?/dense_66/bias/Regularizer/Square/ReadVariableOp? dense_67/StatefulPartitionedCall?/dense_67/bias/Regularizer/Square/ReadVariableOp?
flatten_16/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_flatten_16_layer_call_and_return_conditional_losses_8153662
flatten_16/PartitionedCall?
 dense_64/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_64_815386dense_64_815388*
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
D__inference_dense_64_layer_call_and_return_conditional_losses_8153852"
 dense_64/StatefulPartitionedCall?
,dense_64/ActivityRegularizer/PartitionedCallPartitionedCall)dense_64/StatefulPartitionedCall:output:0*
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
0__inference_dense_64_activity_regularizer_8153142.
,dense_64/ActivityRegularizer/PartitionedCall?
"dense_64/ActivityRegularizer/ShapeShape)dense_64/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_64/ActivityRegularizer/Shape?
0dense_64/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_64/ActivityRegularizer/strided_slice/stack?
2dense_64/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_64/ActivityRegularizer/strided_slice/stack_1?
2dense_64/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_64/ActivityRegularizer/strided_slice/stack_2?
*dense_64/ActivityRegularizer/strided_sliceStridedSlice+dense_64/ActivityRegularizer/Shape:output:09dense_64/ActivityRegularizer/strided_slice/stack:output:0;dense_64/ActivityRegularizer/strided_slice/stack_1:output:0;dense_64/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_64/ActivityRegularizer/strided_slice?
!dense_64/ActivityRegularizer/CastCast3dense_64/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_64/ActivityRegularizer/Cast?
$dense_64/ActivityRegularizer/truedivRealDiv5dense_64/ActivityRegularizer/PartitionedCall:output:0%dense_64/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_64/ActivityRegularizer/truediv?
dropout_14/PartitionedCallPartitionedCall)dense_64/StatefulPartitionedCall:output:0*
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
F__inference_dropout_14_layer_call_and_return_conditional_losses_8154042
dropout_14/PartitionedCall?
 dense_65/StatefulPartitionedCallStatefulPartitionedCall#dropout_14/PartitionedCall:output:0dense_65_815424dense_65_815426*
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
D__inference_dense_65_layer_call_and_return_conditional_losses_8154232"
 dense_65/StatefulPartitionedCall?
,dense_65/ActivityRegularizer/PartitionedCallPartitionedCall)dense_65/StatefulPartitionedCall:output:0*
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
0__inference_dense_65_activity_regularizer_8153272.
,dense_65/ActivityRegularizer/PartitionedCall?
"dense_65/ActivityRegularizer/ShapeShape)dense_65/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_65/ActivityRegularizer/Shape?
0dense_65/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_65/ActivityRegularizer/strided_slice/stack?
2dense_65/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_65/ActivityRegularizer/strided_slice/stack_1?
2dense_65/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_65/ActivityRegularizer/strided_slice/stack_2?
*dense_65/ActivityRegularizer/strided_sliceStridedSlice+dense_65/ActivityRegularizer/Shape:output:09dense_65/ActivityRegularizer/strided_slice/stack:output:0;dense_65/ActivityRegularizer/strided_slice/stack_1:output:0;dense_65/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_65/ActivityRegularizer/strided_slice?
!dense_65/ActivityRegularizer/CastCast3dense_65/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_65/ActivityRegularizer/Cast?
$dense_65/ActivityRegularizer/truedivRealDiv5dense_65/ActivityRegularizer/PartitionedCall:output:0%dense_65/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_65/ActivityRegularizer/truediv?
 dense_66/StatefulPartitionedCallStatefulPartitionedCall)dense_65/StatefulPartitionedCall:output:0dense_66_815455dense_66_815457*
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
D__inference_dense_66_layer_call_and_return_conditional_losses_8154542"
 dense_66/StatefulPartitionedCall?
,dense_66/ActivityRegularizer/PartitionedCallPartitionedCall)dense_66/StatefulPartitionedCall:output:0*
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
0__inference_dense_66_activity_regularizer_8153402.
,dense_66/ActivityRegularizer/PartitionedCall?
"dense_66/ActivityRegularizer/ShapeShape)dense_66/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_66/ActivityRegularizer/Shape?
0dense_66/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_66/ActivityRegularizer/strided_slice/stack?
2dense_66/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_66/ActivityRegularizer/strided_slice/stack_1?
2dense_66/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_66/ActivityRegularizer/strided_slice/stack_2?
*dense_66/ActivityRegularizer/strided_sliceStridedSlice+dense_66/ActivityRegularizer/Shape:output:09dense_66/ActivityRegularizer/strided_slice/stack:output:0;dense_66/ActivityRegularizer/strided_slice/stack_1:output:0;dense_66/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_66/ActivityRegularizer/strided_slice?
!dense_66/ActivityRegularizer/CastCast3dense_66/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_66/ActivityRegularizer/Cast?
$dense_66/ActivityRegularizer/truedivRealDiv5dense_66/ActivityRegularizer/PartitionedCall:output:0%dense_66/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_66/ActivityRegularizer/truediv?
 dense_67/StatefulPartitionedCallStatefulPartitionedCall)dense_66/StatefulPartitionedCall:output:0dense_67_815485dense_67_815487*
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
D__inference_dense_67_layer_call_and_return_conditional_losses_8154842"
 dense_67/StatefulPartitionedCall?
,dense_67/ActivityRegularizer/PartitionedCallPartitionedCall)dense_67/StatefulPartitionedCall:output:0*
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
0__inference_dense_67_activity_regularizer_8153532.
,dense_67/ActivityRegularizer/PartitionedCall?
"dense_67/ActivityRegularizer/ShapeShape)dense_67/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_67/ActivityRegularizer/Shape?
0dense_67/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_67/ActivityRegularizer/strided_slice/stack?
2dense_67/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_67/ActivityRegularizer/strided_slice/stack_1?
2dense_67/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_67/ActivityRegularizer/strided_slice/stack_2?
*dense_67/ActivityRegularizer/strided_sliceStridedSlice+dense_67/ActivityRegularizer/Shape:output:09dense_67/ActivityRegularizer/strided_slice/stack:output:0;dense_67/ActivityRegularizer/strided_slice/stack_1:output:0;dense_67/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_67/ActivityRegularizer/strided_slice?
!dense_67/ActivityRegularizer/CastCast3dense_67/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_67/ActivityRegularizer/Cast?
$dense_67/ActivityRegularizer/truedivRealDiv5dense_67/ActivityRegularizer/PartitionedCall:output:0%dense_67/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_67/ActivityRegularizer/truediv?
softmax_8/PartitionedCallPartitionedCall)dense_67/StatefulPartitionedCall:output:0*
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
E__inference_softmax_8_layer_call_and_return_conditional_losses_8155032
softmax_8/PartitionedCall?
/dense_64/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_64_815388*
_output_shapes
:d*
dtype021
/dense_64/bias/Regularizer/Square/ReadVariableOp?
 dense_64/bias/Regularizer/SquareSquare7dense_64/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_64/bias/Regularizer/Square?
dense_64/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_64/bias/Regularizer/Const?
dense_64/bias/Regularizer/SumSum$dense_64/bias/Regularizer/Square:y:0(dense_64/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_64/bias/Regularizer/Sum?
dense_64/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_64/bias/Regularizer/mul/x?
dense_64/bias/Regularizer/mulMul(dense_64/bias/Regularizer/mul/x:output:0&dense_64/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_64/bias/Regularizer/mul?
/dense_65/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_65_815426*
_output_shapes
:d*
dtype021
/dense_65/bias/Regularizer/Square/ReadVariableOp?
 dense_65/bias/Regularizer/SquareSquare7dense_65/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_65/bias/Regularizer/Square?
dense_65/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_65/bias/Regularizer/Const?
dense_65/bias/Regularizer/SumSum$dense_65/bias/Regularizer/Square:y:0(dense_65/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_65/bias/Regularizer/Sum?
dense_65/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_65/bias/Regularizer/mul/x?
dense_65/bias/Regularizer/mulMul(dense_65/bias/Regularizer/mul/x:output:0&dense_65/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_65/bias/Regularizer/mul?
/dense_66/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_66_815457*
_output_shapes
:d*
dtype021
/dense_66/bias/Regularizer/Square/ReadVariableOp?
 dense_66/bias/Regularizer/SquareSquare7dense_66/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_66/bias/Regularizer/Square?
dense_66/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_66/bias/Regularizer/Const?
dense_66/bias/Regularizer/SumSum$dense_66/bias/Regularizer/Square:y:0(dense_66/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_66/bias/Regularizer/Sum?
dense_66/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_66/bias/Regularizer/mul/x?
dense_66/bias/Regularizer/mulMul(dense_66/bias/Regularizer/mul/x:output:0&dense_66/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_66/bias/Regularizer/mul?
/dense_67/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_67_815487*
_output_shapes
:*
dtype021
/dense_67/bias/Regularizer/Square/ReadVariableOp?
 dense_67/bias/Regularizer/SquareSquare7dense_67/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_67/bias/Regularizer/Square?
dense_67/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_67/bias/Regularizer/Const?
dense_67/bias/Regularizer/SumSum$dense_67/bias/Regularizer/Square:y:0(dense_67/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_67/bias/Regularizer/Sum?
dense_67/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_67/bias/Regularizer/mul/x?
dense_67/bias/Regularizer/mulMul(dense_67/bias/Regularizer/mul/x:output:0&dense_67/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_67/bias/Regularizer/mul?
IdentityIdentity"softmax_8/PartitionedCall:output:0!^dense_64/StatefulPartitionedCall0^dense_64/bias/Regularizer/Square/ReadVariableOp!^dense_65/StatefulPartitionedCall0^dense_65/bias/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall0^dense_66/bias/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall0^dense_67/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(dense_64/ActivityRegularizer/truediv:z:0!^dense_64/StatefulPartitionedCall0^dense_64/bias/Regularizer/Square/ReadVariableOp!^dense_65/StatefulPartitionedCall0^dense_65/bias/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall0^dense_66/bias/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall0^dense_67/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_65/ActivityRegularizer/truediv:z:0!^dense_64/StatefulPartitionedCall0^dense_64/bias/Regularizer/Square/ReadVariableOp!^dense_65/StatefulPartitionedCall0^dense_65/bias/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall0^dense_66/bias/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall0^dense_67/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_66/ActivityRegularizer/truediv:z:0!^dense_64/StatefulPartitionedCall0^dense_64/bias/Regularizer/Square/ReadVariableOp!^dense_65/StatefulPartitionedCall0^dense_65/bias/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall0^dense_66/bias/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall0^dense_67/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3?

Identity_4Identity(dense_67/ActivityRegularizer/truediv:z:0!^dense_64/StatefulPartitionedCall0^dense_64/bias/Regularizer/Square/ReadVariableOp!^dense_65/StatefulPartitionedCall0^dense_65/bias/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall0^dense_66/bias/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall0^dense_67/bias/Regularizer/Square/ReadVariableOp*
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
#:?????????: : : : : : : : 2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall2b
/dense_64/bias/Regularizer/Square/ReadVariableOp/dense_64/bias/Regularizer/Square/ReadVariableOp2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall2b
/dense_65/bias/Regularizer/Square/ReadVariableOp/dense_65/bias/Regularizer/Square/ReadVariableOp2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2b
/dense_66/bias/Regularizer/Square/ReadVariableOp/dense_66/bias/Regularizer/Square/ReadVariableOp2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2b
/dense_67/bias/Regularizer/Square/ReadVariableOp/dense_67/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
+__inference_dropout_14_layer_call_fn_816390

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
F__inference_dropout_14_layer_call_and_return_conditional_losses_8154042
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
?
)__inference_dense_67_layer_call_fn_816479

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
D__inference_dense_67_layer_call_and_return_conditional_losses_8154842
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
??
?
"__inference__traced_restore_816842
file_prefix2
 assignvariableop_dense_64_kernel:d.
 assignvariableop_1_dense_64_bias:d4
"assignvariableop_2_dense_65_kernel:dd.
 assignvariableop_3_dense_65_bias:d4
"assignvariableop_4_dense_66_kernel:dd.
 assignvariableop_5_dense_66_bias:d4
"assignvariableop_6_dense_67_kernel:d.
 assignvariableop_7_dense_67_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: <
*assignvariableop_17_adam_dense_64_kernel_m:d6
(assignvariableop_18_adam_dense_64_bias_m:d<
*assignvariableop_19_adam_dense_65_kernel_m:dd6
(assignvariableop_20_adam_dense_65_bias_m:d<
*assignvariableop_21_adam_dense_66_kernel_m:dd6
(assignvariableop_22_adam_dense_66_bias_m:d<
*assignvariableop_23_adam_dense_67_kernel_m:d6
(assignvariableop_24_adam_dense_67_bias_m:<
*assignvariableop_25_adam_dense_64_kernel_v:d6
(assignvariableop_26_adam_dense_64_bias_v:d<
*assignvariableop_27_adam_dense_65_kernel_v:dd6
(assignvariableop_28_adam_dense_65_bias_v:d<
*assignvariableop_29_adam_dense_66_kernel_v:dd6
(assignvariableop_30_adam_dense_66_bias_v:d<
*assignvariableop_31_adam_dense_67_kernel_v:d6
(assignvariableop_32_adam_dense_67_bias_v:
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
AssignVariableOpAssignVariableOp assignvariableop_dense_64_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_64_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_65_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_65_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_66_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_66_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_67_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_67_biasIdentity_7:output:0"/device:CPU:0*
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
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_dense_64_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_dense_64_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_dense_65_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_dense_65_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_66_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_66_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_67_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_67_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_64_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_64_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_65_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_65_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_66_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_66_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_67_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_67_bias_vIdentity_32:output:0"/device:CPU:0*
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
?
__inference_loss_fn_3_816544F
8dense_67_bias_regularizer_square_readvariableop_resource:
identity??/dense_67/bias/Regularizer/Square/ReadVariableOp?
/dense_67/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_67_bias_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_67/bias/Regularizer/Square/ReadVariableOp?
 dense_67/bias/Regularizer/SquareSquare7dense_67/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_67/bias/Regularizer/Square?
dense_67/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_67/bias/Regularizer/Const?
dense_67/bias/Regularizer/SumSum$dense_67/bias/Regularizer/Square:y:0(dense_67/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_67/bias/Regularizer/Sum?
dense_67/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_67/bias/Regularizer/mul/x?
dense_67/bias/Regularizer/mulMul(dense_67/bias/Regularizer/mul/x:output:0&dense_67/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_67/bias/Regularizer/mul?
IdentityIdentity!dense_67/bias/Regularizer/mul:z:00^dense_67/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_67/bias/Regularizer/Square/ReadVariableOp/dense_67/bias/Regularizer/Square/ReadVariableOp
?
?
D__inference_dense_65_layer_call_and_return_conditional_losses_816578

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_65/bias/Regularizer/Square/ReadVariableOp?
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
/dense_65/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_65/bias/Regularizer/Square/ReadVariableOp?
 dense_65/bias/Regularizer/SquareSquare7dense_65/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_65/bias/Regularizer/Square?
dense_65/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_65/bias/Regularizer/Const?
dense_65/bias/Regularizer/SumSum$dense_65/bias/Regularizer/Square:y:0(dense_65/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_65/bias/Regularizer/Sum?
dense_65/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_65/bias/Regularizer/mul/x?
dense_65/bias/Regularizer/mulMul(dense_65/bias/Regularizer/mul/x:output:0&dense_65/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_65/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_65/bias/Regularizer/Square/ReadVariableOp*
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
/dense_65/bias/Regularizer/Square/ReadVariableOp/dense_65/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
D__inference_dense_67_layer_call_and_return_conditional_losses_815484

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_67/bias/Regularizer/Square/ReadVariableOp?
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
/dense_67/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_67/bias/Regularizer/Square/ReadVariableOp?
 dense_67/bias/Regularizer/SquareSquare7dense_67/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_67/bias/Regularizer/Square?
dense_67/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_67/bias/Regularizer/Const?
dense_67/bias/Regularizer/SumSum$dense_67/bias/Regularizer/Square:y:0(dense_67/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_67/bias/Regularizer/Sum?
dense_67/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_67/bias/Regularizer/mul/x?
dense_67/bias/Regularizer/mulMul(dense_67/bias/Regularizer/mul/x:output:0&dense_67/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_67/bias/Regularizer/mul?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_67/bias/Regularizer/Square/ReadVariableOp*
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
/dense_67/bias/Regularizer/Square/ReadVariableOp/dense_67/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?	
?
$__inference_signature_wrapper_816069
flatten_16_input
unknown:d
	unknown_0:d
	unknown_1:dd
	unknown_2:d
	unknown_3:dd
	unknown_4:d
	unknown_5:d
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
!__inference__wrapped_model_8153012
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:?????????
*
_user_specified_nameflatten_16_input
?
b
F__inference_flatten_16_layer_call_and_return_conditional_losses_815366

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
0__inference_dense_67_activity_regularizer_815353
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
D__inference_dense_66_layer_call_and_return_conditional_losses_815454

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_66/bias/Regularizer/Square/ReadVariableOp?
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
/dense_66/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_66/bias/Regularizer/Square/ReadVariableOp?
 dense_66/bias/Regularizer/SquareSquare7dense_66/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_66/bias/Regularizer/Square?
dense_66/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_66/bias/Regularizer/Const?
dense_66/bias/Regularizer/SumSum$dense_66/bias/Regularizer/Square:y:0(dense_66/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_66/bias/Regularizer/Sum?
dense_66/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_66/bias/Regularizer/mul/x?
dense_66/bias/Regularizer/mulMul(dense_66/bias/Regularizer/mul/x:output:0&dense_66/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_66/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_66/bias/Regularizer/Square/ReadVariableOp*
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
/dense_66/bias/Regularizer/Square/ReadVariableOp/dense_66/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?	
?
.__inference_sequential_16_layer_call_fn_815842
flatten_16_input
unknown:d
	unknown_0:d
	unknown_1:dd
	unknown_2:d
	unknown_3:dd
	unknown_4:d
	unknown_5:d
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
I__inference_sequential_16_layer_call_and_return_conditional_losses_8157942
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:?????????
*
_user_specified_nameflatten_16_input
??
?
I__inference_sequential_16_layer_call_and_return_conditional_losses_816348

inputs9
'dense_64_matmul_readvariableop_resource:d6
(dense_64_biasadd_readvariableop_resource:d9
'dense_65_matmul_readvariableop_resource:dd6
(dense_65_biasadd_readvariableop_resource:d9
'dense_66_matmul_readvariableop_resource:dd6
(dense_66_biasadd_readvariableop_resource:d9
'dense_67_matmul_readvariableop_resource:d6
(dense_67_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3

identity_4??dense_64/BiasAdd/ReadVariableOp?dense_64/MatMul/ReadVariableOp?/dense_64/bias/Regularizer/Square/ReadVariableOp?dense_65/BiasAdd/ReadVariableOp?dense_65/MatMul/ReadVariableOp?/dense_65/bias/Regularizer/Square/ReadVariableOp?dense_66/BiasAdd/ReadVariableOp?dense_66/MatMul/ReadVariableOp?/dense_66/bias/Regularizer/Square/ReadVariableOp?dense_67/BiasAdd/ReadVariableOp?dense_67/MatMul/ReadVariableOp?/dense_67/bias/Regularizer/Square/ReadVariableOpu
flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_16/Const?
flatten_16/ReshapeReshapeinputsflatten_16/Const:output:0*
T0*'
_output_shapes
:?????????2
flatten_16/Reshape?
dense_64/MatMul/ReadVariableOpReadVariableOp'dense_64_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_64/MatMul/ReadVariableOp?
dense_64/MatMulMatMulflatten_16/Reshape:output:0&dense_64/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_64/MatMul?
dense_64/BiasAdd/ReadVariableOpReadVariableOp(dense_64_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_64/BiasAdd/ReadVariableOp?
dense_64/BiasAddBiasAdddense_64/MatMul:product:0'dense_64/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_64/BiasAdds
dense_64/ReluReludense_64/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_64/Relu?
#dense_64/ActivityRegularizer/SquareSquaredense_64/Relu:activations:0*
T0*'
_output_shapes
:?????????d2%
#dense_64/ActivityRegularizer/Square?
"dense_64/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_64/ActivityRegularizer/Const?
 dense_64/ActivityRegularizer/SumSum'dense_64/ActivityRegularizer/Square:y:0+dense_64/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_64/ActivityRegularizer/Sum?
"dense_64/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82$
"dense_64/ActivityRegularizer/mul/x?
 dense_64/ActivityRegularizer/mulMul+dense_64/ActivityRegularizer/mul/x:output:0)dense_64/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_64/ActivityRegularizer/mul?
"dense_64/ActivityRegularizer/ShapeShapedense_64/Relu:activations:0*
T0*
_output_shapes
:2$
"dense_64/ActivityRegularizer/Shape?
0dense_64/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_64/ActivityRegularizer/strided_slice/stack?
2dense_64/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_64/ActivityRegularizer/strided_slice/stack_1?
2dense_64/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_64/ActivityRegularizer/strided_slice/stack_2?
*dense_64/ActivityRegularizer/strided_sliceStridedSlice+dense_64/ActivityRegularizer/Shape:output:09dense_64/ActivityRegularizer/strided_slice/stack:output:0;dense_64/ActivityRegularizer/strided_slice/stack_1:output:0;dense_64/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_64/ActivityRegularizer/strided_slice?
!dense_64/ActivityRegularizer/CastCast3dense_64/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_64/ActivityRegularizer/Cast?
$dense_64/ActivityRegularizer/truedivRealDiv$dense_64/ActivityRegularizer/mul:z:0%dense_64/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_64/ActivityRegularizer/truedivy
dropout_14/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????2
dropout_14/dropout/Const?
dropout_14/dropout/MulMuldense_64/Relu:activations:0!dropout_14/dropout/Const:output:0*
T0*'
_output_shapes
:?????????d2
dropout_14/dropout/Mul
dropout_14/dropout/ShapeShapedense_64/Relu:activations:0*
T0*
_output_shapes
:2
dropout_14/dropout/Shape?
/dropout_14/dropout/random_uniform/RandomUniformRandomUniform!dropout_14/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????d*
dtype021
/dropout_14/dropout/random_uniform/RandomUniform?
!dropout_14/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<2#
!dropout_14/dropout/GreaterEqual/y?
dropout_14/dropout/GreaterEqualGreaterEqual8dropout_14/dropout/random_uniform/RandomUniform:output:0*dropout_14/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????d2!
dropout_14/dropout/GreaterEqual?
dropout_14/dropout/CastCast#dropout_14/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????d2
dropout_14/dropout/Cast?
dropout_14/dropout/Mul_1Muldropout_14/dropout/Mul:z:0dropout_14/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????d2
dropout_14/dropout/Mul_1?
dense_65/MatMul/ReadVariableOpReadVariableOp'dense_65_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype02 
dense_65/MatMul/ReadVariableOp?
dense_65/MatMulMatMuldropout_14/dropout/Mul_1:z:0&dense_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_65/MatMul?
dense_65/BiasAdd/ReadVariableOpReadVariableOp(dense_65_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_65/BiasAdd/ReadVariableOp?
dense_65/BiasAddBiasAdddense_65/MatMul:product:0'dense_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_65/BiasAdds
dense_65/ReluReludense_65/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_65/Relu?
#dense_65/ActivityRegularizer/SquareSquaredense_65/Relu:activations:0*
T0*'
_output_shapes
:?????????d2%
#dense_65/ActivityRegularizer/Square?
"dense_65/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_65/ActivityRegularizer/Const?
 dense_65/ActivityRegularizer/SumSum'dense_65/ActivityRegularizer/Square:y:0+dense_65/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_65/ActivityRegularizer/Sum?
"dense_65/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82$
"dense_65/ActivityRegularizer/mul/x?
 dense_65/ActivityRegularizer/mulMul+dense_65/ActivityRegularizer/mul/x:output:0)dense_65/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_65/ActivityRegularizer/mul?
"dense_65/ActivityRegularizer/ShapeShapedense_65/Relu:activations:0*
T0*
_output_shapes
:2$
"dense_65/ActivityRegularizer/Shape?
0dense_65/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_65/ActivityRegularizer/strided_slice/stack?
2dense_65/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_65/ActivityRegularizer/strided_slice/stack_1?
2dense_65/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_65/ActivityRegularizer/strided_slice/stack_2?
*dense_65/ActivityRegularizer/strided_sliceStridedSlice+dense_65/ActivityRegularizer/Shape:output:09dense_65/ActivityRegularizer/strided_slice/stack:output:0;dense_65/ActivityRegularizer/strided_slice/stack_1:output:0;dense_65/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_65/ActivityRegularizer/strided_slice?
!dense_65/ActivityRegularizer/CastCast3dense_65/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_65/ActivityRegularizer/Cast?
$dense_65/ActivityRegularizer/truedivRealDiv$dense_65/ActivityRegularizer/mul:z:0%dense_65/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_65/ActivityRegularizer/truediv?
dense_66/MatMul/ReadVariableOpReadVariableOp'dense_66_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype02 
dense_66/MatMul/ReadVariableOp?
dense_66/MatMulMatMuldense_65/Relu:activations:0&dense_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_66/MatMul?
dense_66/BiasAdd/ReadVariableOpReadVariableOp(dense_66_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_66/BiasAdd/ReadVariableOp?
dense_66/BiasAddBiasAdddense_66/MatMul:product:0'dense_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_66/BiasAdds
dense_66/ReluReludense_66/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_66/Relu?
#dense_66/ActivityRegularizer/SquareSquaredense_66/Relu:activations:0*
T0*'
_output_shapes
:?????????d2%
#dense_66/ActivityRegularizer/Square?
"dense_66/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_66/ActivityRegularizer/Const?
 dense_66/ActivityRegularizer/SumSum'dense_66/ActivityRegularizer/Square:y:0+dense_66/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_66/ActivityRegularizer/Sum?
"dense_66/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82$
"dense_66/ActivityRegularizer/mul/x?
 dense_66/ActivityRegularizer/mulMul+dense_66/ActivityRegularizer/mul/x:output:0)dense_66/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_66/ActivityRegularizer/mul?
"dense_66/ActivityRegularizer/ShapeShapedense_66/Relu:activations:0*
T0*
_output_shapes
:2$
"dense_66/ActivityRegularizer/Shape?
0dense_66/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_66/ActivityRegularizer/strided_slice/stack?
2dense_66/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_66/ActivityRegularizer/strided_slice/stack_1?
2dense_66/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_66/ActivityRegularizer/strided_slice/stack_2?
*dense_66/ActivityRegularizer/strided_sliceStridedSlice+dense_66/ActivityRegularizer/Shape:output:09dense_66/ActivityRegularizer/strided_slice/stack:output:0;dense_66/ActivityRegularizer/strided_slice/stack_1:output:0;dense_66/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_66/ActivityRegularizer/strided_slice?
!dense_66/ActivityRegularizer/CastCast3dense_66/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_66/ActivityRegularizer/Cast?
$dense_66/ActivityRegularizer/truedivRealDiv$dense_66/ActivityRegularizer/mul:z:0%dense_66/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_66/ActivityRegularizer/truediv?
dense_67/MatMul/ReadVariableOpReadVariableOp'dense_67_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_67/MatMul/ReadVariableOp?
dense_67/MatMulMatMuldense_66/Relu:activations:0&dense_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_67/MatMul?
dense_67/BiasAdd/ReadVariableOpReadVariableOp(dense_67_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_67/BiasAdd/ReadVariableOp?
dense_67/BiasAddBiasAdddense_67/MatMul:product:0'dense_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_67/BiasAdd?
#dense_67/ActivityRegularizer/SquareSquaredense_67/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2%
#dense_67/ActivityRegularizer/Square?
"dense_67/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_67/ActivityRegularizer/Const?
 dense_67/ActivityRegularizer/SumSum'dense_67/ActivityRegularizer/Square:y:0+dense_67/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_67/ActivityRegularizer/Sum?
"dense_67/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82$
"dense_67/ActivityRegularizer/mul/x?
 dense_67/ActivityRegularizer/mulMul+dense_67/ActivityRegularizer/mul/x:output:0)dense_67/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_67/ActivityRegularizer/mul?
"dense_67/ActivityRegularizer/ShapeShapedense_67/BiasAdd:output:0*
T0*
_output_shapes
:2$
"dense_67/ActivityRegularizer/Shape?
0dense_67/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_67/ActivityRegularizer/strided_slice/stack?
2dense_67/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_67/ActivityRegularizer/strided_slice/stack_1?
2dense_67/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_67/ActivityRegularizer/strided_slice/stack_2?
*dense_67/ActivityRegularizer/strided_sliceStridedSlice+dense_67/ActivityRegularizer/Shape:output:09dense_67/ActivityRegularizer/strided_slice/stack:output:0;dense_67/ActivityRegularizer/strided_slice/stack_1:output:0;dense_67/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_67/ActivityRegularizer/strided_slice?
!dense_67/ActivityRegularizer/CastCast3dense_67/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_67/ActivityRegularizer/Cast?
$dense_67/ActivityRegularizer/truedivRealDiv$dense_67/ActivityRegularizer/mul:z:0%dense_67/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_67/ActivityRegularizer/truediv~
softmax_8/SoftmaxSoftmaxdense_67/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
softmax_8/Softmax?
/dense_64/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_64_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_64/bias/Regularizer/Square/ReadVariableOp?
 dense_64/bias/Regularizer/SquareSquare7dense_64/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_64/bias/Regularizer/Square?
dense_64/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_64/bias/Regularizer/Const?
dense_64/bias/Regularizer/SumSum$dense_64/bias/Regularizer/Square:y:0(dense_64/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_64/bias/Regularizer/Sum?
dense_64/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_64/bias/Regularizer/mul/x?
dense_64/bias/Regularizer/mulMul(dense_64/bias/Regularizer/mul/x:output:0&dense_64/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_64/bias/Regularizer/mul?
/dense_65/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_65_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_65/bias/Regularizer/Square/ReadVariableOp?
 dense_65/bias/Regularizer/SquareSquare7dense_65/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_65/bias/Regularizer/Square?
dense_65/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_65/bias/Regularizer/Const?
dense_65/bias/Regularizer/SumSum$dense_65/bias/Regularizer/Square:y:0(dense_65/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_65/bias/Regularizer/Sum?
dense_65/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_65/bias/Regularizer/mul/x?
dense_65/bias/Regularizer/mulMul(dense_65/bias/Regularizer/mul/x:output:0&dense_65/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_65/bias/Regularizer/mul?
/dense_66/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_66_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_66/bias/Regularizer/Square/ReadVariableOp?
 dense_66/bias/Regularizer/SquareSquare7dense_66/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_66/bias/Regularizer/Square?
dense_66/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_66/bias/Regularizer/Const?
dense_66/bias/Regularizer/SumSum$dense_66/bias/Regularizer/Square:y:0(dense_66/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_66/bias/Regularizer/Sum?
dense_66/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_66/bias/Regularizer/mul/x?
dense_66/bias/Regularizer/mulMul(dense_66/bias/Regularizer/mul/x:output:0&dense_66/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_66/bias/Regularizer/mul?
/dense_67/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_67_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_67/bias/Regularizer/Square/ReadVariableOp?
 dense_67/bias/Regularizer/SquareSquare7dense_67/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_67/bias/Regularizer/Square?
dense_67/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_67/bias/Regularizer/Const?
dense_67/bias/Regularizer/SumSum$dense_67/bias/Regularizer/Square:y:0(dense_67/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_67/bias/Regularizer/Sum?
dense_67/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_67/bias/Regularizer/mul/x?
dense_67/bias/Regularizer/mulMul(dense_67/bias/Regularizer/mul/x:output:0&dense_67/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_67/bias/Regularizer/mul?
IdentityIdentitysoftmax_8/Softmax:softmax:0 ^dense_64/BiasAdd/ReadVariableOp^dense_64/MatMul/ReadVariableOp0^dense_64/bias/Regularizer/Square/ReadVariableOp ^dense_65/BiasAdd/ReadVariableOp^dense_65/MatMul/ReadVariableOp0^dense_65/bias/Regularizer/Square/ReadVariableOp ^dense_66/BiasAdd/ReadVariableOp^dense_66/MatMul/ReadVariableOp0^dense_66/bias/Regularizer/Square/ReadVariableOp ^dense_67/BiasAdd/ReadVariableOp^dense_67/MatMul/ReadVariableOp0^dense_67/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(dense_64/ActivityRegularizer/truediv:z:0 ^dense_64/BiasAdd/ReadVariableOp^dense_64/MatMul/ReadVariableOp0^dense_64/bias/Regularizer/Square/ReadVariableOp ^dense_65/BiasAdd/ReadVariableOp^dense_65/MatMul/ReadVariableOp0^dense_65/bias/Regularizer/Square/ReadVariableOp ^dense_66/BiasAdd/ReadVariableOp^dense_66/MatMul/ReadVariableOp0^dense_66/bias/Regularizer/Square/ReadVariableOp ^dense_67/BiasAdd/ReadVariableOp^dense_67/MatMul/ReadVariableOp0^dense_67/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_65/ActivityRegularizer/truediv:z:0 ^dense_64/BiasAdd/ReadVariableOp^dense_64/MatMul/ReadVariableOp0^dense_64/bias/Regularizer/Square/ReadVariableOp ^dense_65/BiasAdd/ReadVariableOp^dense_65/MatMul/ReadVariableOp0^dense_65/bias/Regularizer/Square/ReadVariableOp ^dense_66/BiasAdd/ReadVariableOp^dense_66/MatMul/ReadVariableOp0^dense_66/bias/Regularizer/Square/ReadVariableOp ^dense_67/BiasAdd/ReadVariableOp^dense_67/MatMul/ReadVariableOp0^dense_67/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_66/ActivityRegularizer/truediv:z:0 ^dense_64/BiasAdd/ReadVariableOp^dense_64/MatMul/ReadVariableOp0^dense_64/bias/Regularizer/Square/ReadVariableOp ^dense_65/BiasAdd/ReadVariableOp^dense_65/MatMul/ReadVariableOp0^dense_65/bias/Regularizer/Square/ReadVariableOp ^dense_66/BiasAdd/ReadVariableOp^dense_66/MatMul/ReadVariableOp0^dense_66/bias/Regularizer/Square/ReadVariableOp ^dense_67/BiasAdd/ReadVariableOp^dense_67/MatMul/ReadVariableOp0^dense_67/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3?

Identity_4Identity(dense_67/ActivityRegularizer/truediv:z:0 ^dense_64/BiasAdd/ReadVariableOp^dense_64/MatMul/ReadVariableOp0^dense_64/bias/Regularizer/Square/ReadVariableOp ^dense_65/BiasAdd/ReadVariableOp^dense_65/MatMul/ReadVariableOp0^dense_65/bias/Regularizer/Square/ReadVariableOp ^dense_66/BiasAdd/ReadVariableOp^dense_66/MatMul/ReadVariableOp0^dense_66/bias/Regularizer/Square/ReadVariableOp ^dense_67/BiasAdd/ReadVariableOp^dense_67/MatMul/ReadVariableOp0^dense_67/bias/Regularizer/Square/ReadVariableOp*
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
#:?????????: : : : : : : : 2B
dense_64/BiasAdd/ReadVariableOpdense_64/BiasAdd/ReadVariableOp2@
dense_64/MatMul/ReadVariableOpdense_64/MatMul/ReadVariableOp2b
/dense_64/bias/Regularizer/Square/ReadVariableOp/dense_64/bias/Regularizer/Square/ReadVariableOp2B
dense_65/BiasAdd/ReadVariableOpdense_65/BiasAdd/ReadVariableOp2@
dense_65/MatMul/ReadVariableOpdense_65/MatMul/ReadVariableOp2b
/dense_65/bias/Regularizer/Square/ReadVariableOp/dense_65/bias/Regularizer/Square/ReadVariableOp2B
dense_66/BiasAdd/ReadVariableOpdense_66/BiasAdd/ReadVariableOp2@
dense_66/MatMul/ReadVariableOpdense_66/MatMul/ReadVariableOp2b
/dense_66/bias/Regularizer/Square/ReadVariableOp/dense_66/bias/Regularizer/Square/ReadVariableOp2B
dense_67/BiasAdd/ReadVariableOpdense_67/BiasAdd/ReadVariableOp2@
dense_67/MatMul/ReadVariableOpdense_67/MatMul/ReadVariableOp2b
/dense_67/bias/Regularizer/Square/ReadVariableOp/dense_67/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
D__inference_dense_67_layer_call_and_return_conditional_losses_816611

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_67/bias/Regularizer/Square/ReadVariableOp?
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
/dense_67/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_67/bias/Regularizer/Square/ReadVariableOp?
 dense_67/bias/Regularizer/SquareSquare7dense_67/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_67/bias/Regularizer/Square?
dense_67/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_67/bias/Regularizer/Const?
dense_67/bias/Regularizer/SumSum$dense_67/bias/Regularizer/Square:y:0(dense_67/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_67/bias/Regularizer/Sum?
dense_67/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_67/bias/Regularizer/mul/x?
dense_67/bias/Regularizer/mulMul(dense_67/bias/Regularizer/mul/x:output:0&dense_67/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_67/bias/Regularizer/mul?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_67/bias/Regularizer/Square/ReadVariableOp*
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
/dense_67/bias/Regularizer/Square/ReadVariableOp/dense_67/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
)__inference_dense_64_layer_call_fn_816374

inputs
unknown:d
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
D__inference_dense_64_layer_call_and_return_conditional_losses_8153852
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_14_layer_call_and_return_conditional_losses_815649

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
?
?
H__inference_dense_66_layer_call_and_return_all_conditional_losses_816464

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
D__inference_dense_66_layer_call_and_return_conditional_losses_8154542
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
0__inference_dense_66_activity_regularizer_8153402
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
D__inference_dense_66_layer_call_and_return_conditional_losses_816595

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_66/bias/Regularizer/Square/ReadVariableOp?
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
/dense_66/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_66/bias/Regularizer/Square/ReadVariableOp?
 dense_66/bias/Regularizer/SquareSquare7dense_66/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_66/bias/Regularizer/Square?
dense_66/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_66/bias/Regularizer/Const?
dense_66/bias/Regularizer/SumSum$dense_66/bias/Regularizer/Square:y:0(dense_66/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_66/bias/Regularizer/Sum?
dense_66/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_66/bias/Regularizer/mul/x?
dense_66/bias/Regularizer/mulMul(dense_66/bias/Regularizer/mul/x:output:0&dense_66/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_66/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_66/bias/Regularizer/Square/ReadVariableOp*
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
/dense_66/bias/Regularizer/Square/ReadVariableOp/dense_66/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
d
F__inference_dropout_14_layer_call_and_return_conditional_losses_816400

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
?
?
)__inference_dense_66_layer_call_fn_816453

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
D__inference_dense_66_layer_call_and_return_conditional_losses_8154542
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
?
G
0__inference_dense_66_activity_regularizer_815340
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
D__inference_dense_64_layer_call_and_return_conditional_losses_816561

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_64/bias/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
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
/dense_64/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_64/bias/Regularizer/Square/ReadVariableOp?
 dense_64/bias/Regularizer/SquareSquare7dense_64/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_64/bias/Regularizer/Square?
dense_64/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_64/bias/Regularizer/Const?
dense_64/bias/Regularizer/SumSum$dense_64/bias/Regularizer/Square:y:0(dense_64/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_64/bias/Regularizer/Sum?
dense_64/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_64/bias/Regularizer/mul/x?
dense_64/bias/Regularizer/mulMul(dense_64/bias/Regularizer/mul/x:output:0&dense_64/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_64/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_64/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_64/bias/Regularizer/Square/ReadVariableOp/dense_64/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
!__inference__wrapped_model_815301
flatten_16_inputG
5sequential_16_dense_64_matmul_readvariableop_resource:dD
6sequential_16_dense_64_biasadd_readvariableop_resource:dG
5sequential_16_dense_65_matmul_readvariableop_resource:ddD
6sequential_16_dense_65_biasadd_readvariableop_resource:dG
5sequential_16_dense_66_matmul_readvariableop_resource:ddD
6sequential_16_dense_66_biasadd_readvariableop_resource:dG
5sequential_16_dense_67_matmul_readvariableop_resource:dD
6sequential_16_dense_67_biasadd_readvariableop_resource:
identity??-sequential_16/dense_64/BiasAdd/ReadVariableOp?,sequential_16/dense_64/MatMul/ReadVariableOp?-sequential_16/dense_65/BiasAdd/ReadVariableOp?,sequential_16/dense_65/MatMul/ReadVariableOp?-sequential_16/dense_66/BiasAdd/ReadVariableOp?,sequential_16/dense_66/MatMul/ReadVariableOp?-sequential_16/dense_67/BiasAdd/ReadVariableOp?,sequential_16/dense_67/MatMul/ReadVariableOp?
sequential_16/flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2 
sequential_16/flatten_16/Const?
 sequential_16/flatten_16/ReshapeReshapeflatten_16_input'sequential_16/flatten_16/Const:output:0*
T0*'
_output_shapes
:?????????2"
 sequential_16/flatten_16/Reshape?
,sequential_16/dense_64/MatMul/ReadVariableOpReadVariableOp5sequential_16_dense_64_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02.
,sequential_16/dense_64/MatMul/ReadVariableOp?
sequential_16/dense_64/MatMulMatMul)sequential_16/flatten_16/Reshape:output:04sequential_16/dense_64/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
sequential_16/dense_64/MatMul?
-sequential_16/dense_64/BiasAdd/ReadVariableOpReadVariableOp6sequential_16_dense_64_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02/
-sequential_16/dense_64/BiasAdd/ReadVariableOp?
sequential_16/dense_64/BiasAddBiasAdd'sequential_16/dense_64/MatMul:product:05sequential_16/dense_64/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2 
sequential_16/dense_64/BiasAdd?
sequential_16/dense_64/ReluRelu'sequential_16/dense_64/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
sequential_16/dense_64/Relu?
1sequential_16/dense_64/ActivityRegularizer/SquareSquare)sequential_16/dense_64/Relu:activations:0*
T0*'
_output_shapes
:?????????d23
1sequential_16/dense_64/ActivityRegularizer/Square?
0sequential_16/dense_64/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       22
0sequential_16/dense_64/ActivityRegularizer/Const?
.sequential_16/dense_64/ActivityRegularizer/SumSum5sequential_16/dense_64/ActivityRegularizer/Square:y:09sequential_16/dense_64/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 20
.sequential_16/dense_64/ActivityRegularizer/Sum?
0sequential_16/dense_64/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??822
0sequential_16/dense_64/ActivityRegularizer/mul/x?
.sequential_16/dense_64/ActivityRegularizer/mulMul9sequential_16/dense_64/ActivityRegularizer/mul/x:output:07sequential_16/dense_64/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 20
.sequential_16/dense_64/ActivityRegularizer/mul?
0sequential_16/dense_64/ActivityRegularizer/ShapeShape)sequential_16/dense_64/Relu:activations:0*
T0*
_output_shapes
:22
0sequential_16/dense_64/ActivityRegularizer/Shape?
>sequential_16/dense_64/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>sequential_16/dense_64/ActivityRegularizer/strided_slice/stack?
@sequential_16/dense_64/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_16/dense_64/ActivityRegularizer/strided_slice/stack_1?
@sequential_16/dense_64/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_16/dense_64/ActivityRegularizer/strided_slice/stack_2?
8sequential_16/dense_64/ActivityRegularizer/strided_sliceStridedSlice9sequential_16/dense_64/ActivityRegularizer/Shape:output:0Gsequential_16/dense_64/ActivityRegularizer/strided_slice/stack:output:0Isequential_16/dense_64/ActivityRegularizer/strided_slice/stack_1:output:0Isequential_16/dense_64/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8sequential_16/dense_64/ActivityRegularizer/strided_slice?
/sequential_16/dense_64/ActivityRegularizer/CastCastAsequential_16/dense_64/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 21
/sequential_16/dense_64/ActivityRegularizer/Cast?
2sequential_16/dense_64/ActivityRegularizer/truedivRealDiv2sequential_16/dense_64/ActivityRegularizer/mul:z:03sequential_16/dense_64/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 24
2sequential_16/dense_64/ActivityRegularizer/truediv?
!sequential_16/dropout_14/IdentityIdentity)sequential_16/dense_64/Relu:activations:0*
T0*'
_output_shapes
:?????????d2#
!sequential_16/dropout_14/Identity?
,sequential_16/dense_65/MatMul/ReadVariableOpReadVariableOp5sequential_16_dense_65_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype02.
,sequential_16/dense_65/MatMul/ReadVariableOp?
sequential_16/dense_65/MatMulMatMul*sequential_16/dropout_14/Identity:output:04sequential_16/dense_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
sequential_16/dense_65/MatMul?
-sequential_16/dense_65/BiasAdd/ReadVariableOpReadVariableOp6sequential_16_dense_65_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02/
-sequential_16/dense_65/BiasAdd/ReadVariableOp?
sequential_16/dense_65/BiasAddBiasAdd'sequential_16/dense_65/MatMul:product:05sequential_16/dense_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2 
sequential_16/dense_65/BiasAdd?
sequential_16/dense_65/ReluRelu'sequential_16/dense_65/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
sequential_16/dense_65/Relu?
1sequential_16/dense_65/ActivityRegularizer/SquareSquare)sequential_16/dense_65/Relu:activations:0*
T0*'
_output_shapes
:?????????d23
1sequential_16/dense_65/ActivityRegularizer/Square?
0sequential_16/dense_65/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       22
0sequential_16/dense_65/ActivityRegularizer/Const?
.sequential_16/dense_65/ActivityRegularizer/SumSum5sequential_16/dense_65/ActivityRegularizer/Square:y:09sequential_16/dense_65/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 20
.sequential_16/dense_65/ActivityRegularizer/Sum?
0sequential_16/dense_65/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??822
0sequential_16/dense_65/ActivityRegularizer/mul/x?
.sequential_16/dense_65/ActivityRegularizer/mulMul9sequential_16/dense_65/ActivityRegularizer/mul/x:output:07sequential_16/dense_65/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 20
.sequential_16/dense_65/ActivityRegularizer/mul?
0sequential_16/dense_65/ActivityRegularizer/ShapeShape)sequential_16/dense_65/Relu:activations:0*
T0*
_output_shapes
:22
0sequential_16/dense_65/ActivityRegularizer/Shape?
>sequential_16/dense_65/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>sequential_16/dense_65/ActivityRegularizer/strided_slice/stack?
@sequential_16/dense_65/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_16/dense_65/ActivityRegularizer/strided_slice/stack_1?
@sequential_16/dense_65/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_16/dense_65/ActivityRegularizer/strided_slice/stack_2?
8sequential_16/dense_65/ActivityRegularizer/strided_sliceStridedSlice9sequential_16/dense_65/ActivityRegularizer/Shape:output:0Gsequential_16/dense_65/ActivityRegularizer/strided_slice/stack:output:0Isequential_16/dense_65/ActivityRegularizer/strided_slice/stack_1:output:0Isequential_16/dense_65/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8sequential_16/dense_65/ActivityRegularizer/strided_slice?
/sequential_16/dense_65/ActivityRegularizer/CastCastAsequential_16/dense_65/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 21
/sequential_16/dense_65/ActivityRegularizer/Cast?
2sequential_16/dense_65/ActivityRegularizer/truedivRealDiv2sequential_16/dense_65/ActivityRegularizer/mul:z:03sequential_16/dense_65/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 24
2sequential_16/dense_65/ActivityRegularizer/truediv?
,sequential_16/dense_66/MatMul/ReadVariableOpReadVariableOp5sequential_16_dense_66_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype02.
,sequential_16/dense_66/MatMul/ReadVariableOp?
sequential_16/dense_66/MatMulMatMul)sequential_16/dense_65/Relu:activations:04sequential_16/dense_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
sequential_16/dense_66/MatMul?
-sequential_16/dense_66/BiasAdd/ReadVariableOpReadVariableOp6sequential_16_dense_66_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02/
-sequential_16/dense_66/BiasAdd/ReadVariableOp?
sequential_16/dense_66/BiasAddBiasAdd'sequential_16/dense_66/MatMul:product:05sequential_16/dense_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2 
sequential_16/dense_66/BiasAdd?
sequential_16/dense_66/ReluRelu'sequential_16/dense_66/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
sequential_16/dense_66/Relu?
1sequential_16/dense_66/ActivityRegularizer/SquareSquare)sequential_16/dense_66/Relu:activations:0*
T0*'
_output_shapes
:?????????d23
1sequential_16/dense_66/ActivityRegularizer/Square?
0sequential_16/dense_66/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       22
0sequential_16/dense_66/ActivityRegularizer/Const?
.sequential_16/dense_66/ActivityRegularizer/SumSum5sequential_16/dense_66/ActivityRegularizer/Square:y:09sequential_16/dense_66/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 20
.sequential_16/dense_66/ActivityRegularizer/Sum?
0sequential_16/dense_66/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??822
0sequential_16/dense_66/ActivityRegularizer/mul/x?
.sequential_16/dense_66/ActivityRegularizer/mulMul9sequential_16/dense_66/ActivityRegularizer/mul/x:output:07sequential_16/dense_66/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 20
.sequential_16/dense_66/ActivityRegularizer/mul?
0sequential_16/dense_66/ActivityRegularizer/ShapeShape)sequential_16/dense_66/Relu:activations:0*
T0*
_output_shapes
:22
0sequential_16/dense_66/ActivityRegularizer/Shape?
>sequential_16/dense_66/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>sequential_16/dense_66/ActivityRegularizer/strided_slice/stack?
@sequential_16/dense_66/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_16/dense_66/ActivityRegularizer/strided_slice/stack_1?
@sequential_16/dense_66/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_16/dense_66/ActivityRegularizer/strided_slice/stack_2?
8sequential_16/dense_66/ActivityRegularizer/strided_sliceStridedSlice9sequential_16/dense_66/ActivityRegularizer/Shape:output:0Gsequential_16/dense_66/ActivityRegularizer/strided_slice/stack:output:0Isequential_16/dense_66/ActivityRegularizer/strided_slice/stack_1:output:0Isequential_16/dense_66/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8sequential_16/dense_66/ActivityRegularizer/strided_slice?
/sequential_16/dense_66/ActivityRegularizer/CastCastAsequential_16/dense_66/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 21
/sequential_16/dense_66/ActivityRegularizer/Cast?
2sequential_16/dense_66/ActivityRegularizer/truedivRealDiv2sequential_16/dense_66/ActivityRegularizer/mul:z:03sequential_16/dense_66/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 24
2sequential_16/dense_66/ActivityRegularizer/truediv?
,sequential_16/dense_67/MatMul/ReadVariableOpReadVariableOp5sequential_16_dense_67_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02.
,sequential_16/dense_67/MatMul/ReadVariableOp?
sequential_16/dense_67/MatMulMatMul)sequential_16/dense_66/Relu:activations:04sequential_16/dense_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
sequential_16/dense_67/MatMul?
-sequential_16/dense_67/BiasAdd/ReadVariableOpReadVariableOp6sequential_16_dense_67_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-sequential_16/dense_67/BiasAdd/ReadVariableOp?
sequential_16/dense_67/BiasAddBiasAdd'sequential_16/dense_67/MatMul:product:05sequential_16/dense_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2 
sequential_16/dense_67/BiasAdd?
1sequential_16/dense_67/ActivityRegularizer/SquareSquare'sequential_16/dense_67/BiasAdd:output:0*
T0*'
_output_shapes
:?????????23
1sequential_16/dense_67/ActivityRegularizer/Square?
0sequential_16/dense_67/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       22
0sequential_16/dense_67/ActivityRegularizer/Const?
.sequential_16/dense_67/ActivityRegularizer/SumSum5sequential_16/dense_67/ActivityRegularizer/Square:y:09sequential_16/dense_67/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 20
.sequential_16/dense_67/ActivityRegularizer/Sum?
0sequential_16/dense_67/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??822
0sequential_16/dense_67/ActivityRegularizer/mul/x?
.sequential_16/dense_67/ActivityRegularizer/mulMul9sequential_16/dense_67/ActivityRegularizer/mul/x:output:07sequential_16/dense_67/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 20
.sequential_16/dense_67/ActivityRegularizer/mul?
0sequential_16/dense_67/ActivityRegularizer/ShapeShape'sequential_16/dense_67/BiasAdd:output:0*
T0*
_output_shapes
:22
0sequential_16/dense_67/ActivityRegularizer/Shape?
>sequential_16/dense_67/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2@
>sequential_16/dense_67/ActivityRegularizer/strided_slice/stack?
@sequential_16/dense_67/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_16/dense_67/ActivityRegularizer/strided_slice/stack_1?
@sequential_16/dense_67/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2B
@sequential_16/dense_67/ActivityRegularizer/strided_slice/stack_2?
8sequential_16/dense_67/ActivityRegularizer/strided_sliceStridedSlice9sequential_16/dense_67/ActivityRegularizer/Shape:output:0Gsequential_16/dense_67/ActivityRegularizer/strided_slice/stack:output:0Isequential_16/dense_67/ActivityRegularizer/strided_slice/stack_1:output:0Isequential_16/dense_67/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2:
8sequential_16/dense_67/ActivityRegularizer/strided_slice?
/sequential_16/dense_67/ActivityRegularizer/CastCastAsequential_16/dense_67/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 21
/sequential_16/dense_67/ActivityRegularizer/Cast?
2sequential_16/dense_67/ActivityRegularizer/truedivRealDiv2sequential_16/dense_67/ActivityRegularizer/mul:z:03sequential_16/dense_67/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 24
2sequential_16/dense_67/ActivityRegularizer/truediv?
sequential_16/softmax_8/SoftmaxSoftmax'sequential_16/dense_67/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2!
sequential_16/softmax_8/Softmax?
IdentityIdentity)sequential_16/softmax_8/Softmax:softmax:0.^sequential_16/dense_64/BiasAdd/ReadVariableOp-^sequential_16/dense_64/MatMul/ReadVariableOp.^sequential_16/dense_65/BiasAdd/ReadVariableOp-^sequential_16/dense_65/MatMul/ReadVariableOp.^sequential_16/dense_66/BiasAdd/ReadVariableOp-^sequential_16/dense_66/MatMul/ReadVariableOp.^sequential_16/dense_67/BiasAdd/ReadVariableOp-^sequential_16/dense_67/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 2^
-sequential_16/dense_64/BiasAdd/ReadVariableOp-sequential_16/dense_64/BiasAdd/ReadVariableOp2\
,sequential_16/dense_64/MatMul/ReadVariableOp,sequential_16/dense_64/MatMul/ReadVariableOp2^
-sequential_16/dense_65/BiasAdd/ReadVariableOp-sequential_16/dense_65/BiasAdd/ReadVariableOp2\
,sequential_16/dense_65/MatMul/ReadVariableOp,sequential_16/dense_65/MatMul/ReadVariableOp2^
-sequential_16/dense_66/BiasAdd/ReadVariableOp-sequential_16/dense_66/BiasAdd/ReadVariableOp2\
,sequential_16/dense_66/MatMul/ReadVariableOp,sequential_16/dense_66/MatMul/ReadVariableOp2^
-sequential_16/dense_67/BiasAdd/ReadVariableOp-sequential_16/dense_67/BiasAdd/ReadVariableOp2\
,sequential_16/dense_67/MatMul/ReadVariableOp,sequential_16/dense_67/MatMul/ReadVariableOp:Y U
'
_output_shapes
:?????????
*
_user_specified_nameflatten_16_input
?
?
__inference_loss_fn_1_816522F
8dense_65_bias_regularizer_square_readvariableop_resource:d
identity??/dense_65/bias/Regularizer/Square/ReadVariableOp?
/dense_65/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_65_bias_regularizer_square_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_65/bias/Regularizer/Square/ReadVariableOp?
 dense_65/bias/Regularizer/SquareSquare7dense_65/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_65/bias/Regularizer/Square?
dense_65/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_65/bias/Regularizer/Const?
dense_65/bias/Regularizer/SumSum$dense_65/bias/Regularizer/Square:y:0(dense_65/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_65/bias/Regularizer/Sum?
dense_65/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_65/bias/Regularizer/mul/x?
dense_65/bias/Regularizer/mulMul(dense_65/bias/Regularizer/mul/x:output:0&dense_65/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_65/bias/Regularizer/mul?
IdentityIdentity!dense_65/bias/Regularizer/mul:z:00^dense_65/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_65/bias/Regularizer/Square/ReadVariableOp/dense_65/bias/Regularizer/Square/ReadVariableOp
?
G
0__inference_dense_64_activity_regularizer_815314
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
?
d
F__inference_dropout_14_layer_call_and_return_conditional_losses_815404

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
?
?
D__inference_dense_64_layer_call_and_return_conditional_losses_815385

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_64/bias/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
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
/dense_64/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_64/bias/Regularizer/Square/ReadVariableOp?
 dense_64/bias/Regularizer/SquareSquare7dense_64/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_64/bias/Regularizer/Square?
dense_64/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_64/bias/Regularizer/Const?
dense_64/bias/Regularizer/SumSum$dense_64/bias/Regularizer/Square:y:0(dense_64/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_64/bias/Regularizer/Sum?
dense_64/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_64/bias/Regularizer/mul/x?
dense_64/bias/Regularizer/mulMul(dense_64/bias/Regularizer/mul/x:output:0&dense_64/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_64/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_64/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_64/bias/Regularizer/Square/ReadVariableOp/dense_64/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
I__inference_sequential_16_layer_call_and_return_conditional_losses_816016
flatten_16_input!
dense_64_815933:d
dense_64_815935:d!
dense_65_815947:dd
dense_65_815949:d!
dense_66_815960:dd
dense_66_815962:d!
dense_67_815973:d
dense_67_815975:
identity

identity_1

identity_2

identity_3

identity_4?? dense_64/StatefulPartitionedCall?/dense_64/bias/Regularizer/Square/ReadVariableOp? dense_65/StatefulPartitionedCall?/dense_65/bias/Regularizer/Square/ReadVariableOp? dense_66/StatefulPartitionedCall?/dense_66/bias/Regularizer/Square/ReadVariableOp? dense_67/StatefulPartitionedCall?/dense_67/bias/Regularizer/Square/ReadVariableOp?"dropout_14/StatefulPartitionedCall?
flatten_16/PartitionedCallPartitionedCallflatten_16_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_flatten_16_layer_call_and_return_conditional_losses_8153662
flatten_16/PartitionedCall?
 dense_64/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_64_815933dense_64_815935*
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
D__inference_dense_64_layer_call_and_return_conditional_losses_8153852"
 dense_64/StatefulPartitionedCall?
,dense_64/ActivityRegularizer/PartitionedCallPartitionedCall)dense_64/StatefulPartitionedCall:output:0*
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
0__inference_dense_64_activity_regularizer_8153142.
,dense_64/ActivityRegularizer/PartitionedCall?
"dense_64/ActivityRegularizer/ShapeShape)dense_64/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_64/ActivityRegularizer/Shape?
0dense_64/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_64/ActivityRegularizer/strided_slice/stack?
2dense_64/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_64/ActivityRegularizer/strided_slice/stack_1?
2dense_64/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_64/ActivityRegularizer/strided_slice/stack_2?
*dense_64/ActivityRegularizer/strided_sliceStridedSlice+dense_64/ActivityRegularizer/Shape:output:09dense_64/ActivityRegularizer/strided_slice/stack:output:0;dense_64/ActivityRegularizer/strided_slice/stack_1:output:0;dense_64/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_64/ActivityRegularizer/strided_slice?
!dense_64/ActivityRegularizer/CastCast3dense_64/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_64/ActivityRegularizer/Cast?
$dense_64/ActivityRegularizer/truedivRealDiv5dense_64/ActivityRegularizer/PartitionedCall:output:0%dense_64/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_64/ActivityRegularizer/truediv?
"dropout_14/StatefulPartitionedCallStatefulPartitionedCall)dense_64/StatefulPartitionedCall:output:0*
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
F__inference_dropout_14_layer_call_and_return_conditional_losses_8156492$
"dropout_14/StatefulPartitionedCall?
 dense_65/StatefulPartitionedCallStatefulPartitionedCall+dropout_14/StatefulPartitionedCall:output:0dense_65_815947dense_65_815949*
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
D__inference_dense_65_layer_call_and_return_conditional_losses_8154232"
 dense_65/StatefulPartitionedCall?
,dense_65/ActivityRegularizer/PartitionedCallPartitionedCall)dense_65/StatefulPartitionedCall:output:0*
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
0__inference_dense_65_activity_regularizer_8153272.
,dense_65/ActivityRegularizer/PartitionedCall?
"dense_65/ActivityRegularizer/ShapeShape)dense_65/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_65/ActivityRegularizer/Shape?
0dense_65/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_65/ActivityRegularizer/strided_slice/stack?
2dense_65/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_65/ActivityRegularizer/strided_slice/stack_1?
2dense_65/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_65/ActivityRegularizer/strided_slice/stack_2?
*dense_65/ActivityRegularizer/strided_sliceStridedSlice+dense_65/ActivityRegularizer/Shape:output:09dense_65/ActivityRegularizer/strided_slice/stack:output:0;dense_65/ActivityRegularizer/strided_slice/stack_1:output:0;dense_65/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_65/ActivityRegularizer/strided_slice?
!dense_65/ActivityRegularizer/CastCast3dense_65/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_65/ActivityRegularizer/Cast?
$dense_65/ActivityRegularizer/truedivRealDiv5dense_65/ActivityRegularizer/PartitionedCall:output:0%dense_65/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_65/ActivityRegularizer/truediv?
 dense_66/StatefulPartitionedCallStatefulPartitionedCall)dense_65/StatefulPartitionedCall:output:0dense_66_815960dense_66_815962*
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
D__inference_dense_66_layer_call_and_return_conditional_losses_8154542"
 dense_66/StatefulPartitionedCall?
,dense_66/ActivityRegularizer/PartitionedCallPartitionedCall)dense_66/StatefulPartitionedCall:output:0*
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
0__inference_dense_66_activity_regularizer_8153402.
,dense_66/ActivityRegularizer/PartitionedCall?
"dense_66/ActivityRegularizer/ShapeShape)dense_66/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_66/ActivityRegularizer/Shape?
0dense_66/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_66/ActivityRegularizer/strided_slice/stack?
2dense_66/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_66/ActivityRegularizer/strided_slice/stack_1?
2dense_66/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_66/ActivityRegularizer/strided_slice/stack_2?
*dense_66/ActivityRegularizer/strided_sliceStridedSlice+dense_66/ActivityRegularizer/Shape:output:09dense_66/ActivityRegularizer/strided_slice/stack:output:0;dense_66/ActivityRegularizer/strided_slice/stack_1:output:0;dense_66/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_66/ActivityRegularizer/strided_slice?
!dense_66/ActivityRegularizer/CastCast3dense_66/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_66/ActivityRegularizer/Cast?
$dense_66/ActivityRegularizer/truedivRealDiv5dense_66/ActivityRegularizer/PartitionedCall:output:0%dense_66/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_66/ActivityRegularizer/truediv?
 dense_67/StatefulPartitionedCallStatefulPartitionedCall)dense_66/StatefulPartitionedCall:output:0dense_67_815973dense_67_815975*
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
D__inference_dense_67_layer_call_and_return_conditional_losses_8154842"
 dense_67/StatefulPartitionedCall?
,dense_67/ActivityRegularizer/PartitionedCallPartitionedCall)dense_67/StatefulPartitionedCall:output:0*
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
0__inference_dense_67_activity_regularizer_8153532.
,dense_67/ActivityRegularizer/PartitionedCall?
"dense_67/ActivityRegularizer/ShapeShape)dense_67/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_67/ActivityRegularizer/Shape?
0dense_67/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_67/ActivityRegularizer/strided_slice/stack?
2dense_67/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_67/ActivityRegularizer/strided_slice/stack_1?
2dense_67/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_67/ActivityRegularizer/strided_slice/stack_2?
*dense_67/ActivityRegularizer/strided_sliceStridedSlice+dense_67/ActivityRegularizer/Shape:output:09dense_67/ActivityRegularizer/strided_slice/stack:output:0;dense_67/ActivityRegularizer/strided_slice/stack_1:output:0;dense_67/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_67/ActivityRegularizer/strided_slice?
!dense_67/ActivityRegularizer/CastCast3dense_67/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_67/ActivityRegularizer/Cast?
$dense_67/ActivityRegularizer/truedivRealDiv5dense_67/ActivityRegularizer/PartitionedCall:output:0%dense_67/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_67/ActivityRegularizer/truediv?
softmax_8/PartitionedCallPartitionedCall)dense_67/StatefulPartitionedCall:output:0*
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
E__inference_softmax_8_layer_call_and_return_conditional_losses_8155032
softmax_8/PartitionedCall?
/dense_64/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_64_815935*
_output_shapes
:d*
dtype021
/dense_64/bias/Regularizer/Square/ReadVariableOp?
 dense_64/bias/Regularizer/SquareSquare7dense_64/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_64/bias/Regularizer/Square?
dense_64/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_64/bias/Regularizer/Const?
dense_64/bias/Regularizer/SumSum$dense_64/bias/Regularizer/Square:y:0(dense_64/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_64/bias/Regularizer/Sum?
dense_64/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_64/bias/Regularizer/mul/x?
dense_64/bias/Regularizer/mulMul(dense_64/bias/Regularizer/mul/x:output:0&dense_64/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_64/bias/Regularizer/mul?
/dense_65/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_65_815949*
_output_shapes
:d*
dtype021
/dense_65/bias/Regularizer/Square/ReadVariableOp?
 dense_65/bias/Regularizer/SquareSquare7dense_65/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_65/bias/Regularizer/Square?
dense_65/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_65/bias/Regularizer/Const?
dense_65/bias/Regularizer/SumSum$dense_65/bias/Regularizer/Square:y:0(dense_65/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_65/bias/Regularizer/Sum?
dense_65/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_65/bias/Regularizer/mul/x?
dense_65/bias/Regularizer/mulMul(dense_65/bias/Regularizer/mul/x:output:0&dense_65/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_65/bias/Regularizer/mul?
/dense_66/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_66_815962*
_output_shapes
:d*
dtype021
/dense_66/bias/Regularizer/Square/ReadVariableOp?
 dense_66/bias/Regularizer/SquareSquare7dense_66/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_66/bias/Regularizer/Square?
dense_66/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_66/bias/Regularizer/Const?
dense_66/bias/Regularizer/SumSum$dense_66/bias/Regularizer/Square:y:0(dense_66/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_66/bias/Regularizer/Sum?
dense_66/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_66/bias/Regularizer/mul/x?
dense_66/bias/Regularizer/mulMul(dense_66/bias/Regularizer/mul/x:output:0&dense_66/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_66/bias/Regularizer/mul?
/dense_67/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_67_815975*
_output_shapes
:*
dtype021
/dense_67/bias/Regularizer/Square/ReadVariableOp?
 dense_67/bias/Regularizer/SquareSquare7dense_67/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_67/bias/Regularizer/Square?
dense_67/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_67/bias/Regularizer/Const?
dense_67/bias/Regularizer/SumSum$dense_67/bias/Regularizer/Square:y:0(dense_67/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_67/bias/Regularizer/Sum?
dense_67/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_67/bias/Regularizer/mul/x?
dense_67/bias/Regularizer/mulMul(dense_67/bias/Regularizer/mul/x:output:0&dense_67/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_67/bias/Regularizer/mul?
IdentityIdentity"softmax_8/PartitionedCall:output:0!^dense_64/StatefulPartitionedCall0^dense_64/bias/Regularizer/Square/ReadVariableOp!^dense_65/StatefulPartitionedCall0^dense_65/bias/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall0^dense_66/bias/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall0^dense_67/bias/Regularizer/Square/ReadVariableOp#^dropout_14/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(dense_64/ActivityRegularizer/truediv:z:0!^dense_64/StatefulPartitionedCall0^dense_64/bias/Regularizer/Square/ReadVariableOp!^dense_65/StatefulPartitionedCall0^dense_65/bias/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall0^dense_66/bias/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall0^dense_67/bias/Regularizer/Square/ReadVariableOp#^dropout_14/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_65/ActivityRegularizer/truediv:z:0!^dense_64/StatefulPartitionedCall0^dense_64/bias/Regularizer/Square/ReadVariableOp!^dense_65/StatefulPartitionedCall0^dense_65/bias/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall0^dense_66/bias/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall0^dense_67/bias/Regularizer/Square/ReadVariableOp#^dropout_14/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_66/ActivityRegularizer/truediv:z:0!^dense_64/StatefulPartitionedCall0^dense_64/bias/Regularizer/Square/ReadVariableOp!^dense_65/StatefulPartitionedCall0^dense_65/bias/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall0^dense_66/bias/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall0^dense_67/bias/Regularizer/Square/ReadVariableOp#^dropout_14/StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_3?

Identity_4Identity(dense_67/ActivityRegularizer/truediv:z:0!^dense_64/StatefulPartitionedCall0^dense_64/bias/Regularizer/Square/ReadVariableOp!^dense_65/StatefulPartitionedCall0^dense_65/bias/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall0^dense_66/bias/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall0^dense_67/bias/Regularizer/Square/ReadVariableOp#^dropout_14/StatefulPartitionedCall*
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
#:?????????: : : : : : : : 2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall2b
/dense_64/bias/Regularizer/Square/ReadVariableOp/dense_64/bias/Regularizer/Square/ReadVariableOp2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall2b
/dense_65/bias/Regularizer/Square/ReadVariableOp/dense_65/bias/Regularizer/Square/ReadVariableOp2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2b
/dense_66/bias/Regularizer/Square/ReadVariableOp/dense_66/bias/Regularizer/Square/ReadVariableOp2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2b
/dense_67/bias/Regularizer/Square/ReadVariableOp/dense_67/bias/Regularizer/Square/ReadVariableOp2H
"dropout_14/StatefulPartitionedCall"dropout_14/StatefulPartitionedCall:Y U
'
_output_shapes
:?????????
*
_user_specified_nameflatten_16_input
?
e
F__inference_dropout_14_layer_call_and_return_conditional_losses_816412

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
?
G
+__inference_flatten_16_layer_call_fn_816353

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
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_flatten_16_layer_call_and_return_conditional_losses_8153662
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
I__inference_sequential_16_layer_call_and_return_conditional_losses_816230

inputs9
'dense_64_matmul_readvariableop_resource:d6
(dense_64_biasadd_readvariableop_resource:d9
'dense_65_matmul_readvariableop_resource:dd6
(dense_65_biasadd_readvariableop_resource:d9
'dense_66_matmul_readvariableop_resource:dd6
(dense_66_biasadd_readvariableop_resource:d9
'dense_67_matmul_readvariableop_resource:d6
(dense_67_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3

identity_4??dense_64/BiasAdd/ReadVariableOp?dense_64/MatMul/ReadVariableOp?/dense_64/bias/Regularizer/Square/ReadVariableOp?dense_65/BiasAdd/ReadVariableOp?dense_65/MatMul/ReadVariableOp?/dense_65/bias/Regularizer/Square/ReadVariableOp?dense_66/BiasAdd/ReadVariableOp?dense_66/MatMul/ReadVariableOp?/dense_66/bias/Regularizer/Square/ReadVariableOp?dense_67/BiasAdd/ReadVariableOp?dense_67/MatMul/ReadVariableOp?/dense_67/bias/Regularizer/Square/ReadVariableOpu
flatten_16/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_16/Const?
flatten_16/ReshapeReshapeinputsflatten_16/Const:output:0*
T0*'
_output_shapes
:?????????2
flatten_16/Reshape?
dense_64/MatMul/ReadVariableOpReadVariableOp'dense_64_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_64/MatMul/ReadVariableOp?
dense_64/MatMulMatMulflatten_16/Reshape:output:0&dense_64/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_64/MatMul?
dense_64/BiasAdd/ReadVariableOpReadVariableOp(dense_64_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_64/BiasAdd/ReadVariableOp?
dense_64/BiasAddBiasAdddense_64/MatMul:product:0'dense_64/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_64/BiasAdds
dense_64/ReluReludense_64/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_64/Relu?
#dense_64/ActivityRegularizer/SquareSquaredense_64/Relu:activations:0*
T0*'
_output_shapes
:?????????d2%
#dense_64/ActivityRegularizer/Square?
"dense_64/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_64/ActivityRegularizer/Const?
 dense_64/ActivityRegularizer/SumSum'dense_64/ActivityRegularizer/Square:y:0+dense_64/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_64/ActivityRegularizer/Sum?
"dense_64/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82$
"dense_64/ActivityRegularizer/mul/x?
 dense_64/ActivityRegularizer/mulMul+dense_64/ActivityRegularizer/mul/x:output:0)dense_64/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_64/ActivityRegularizer/mul?
"dense_64/ActivityRegularizer/ShapeShapedense_64/Relu:activations:0*
T0*
_output_shapes
:2$
"dense_64/ActivityRegularizer/Shape?
0dense_64/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_64/ActivityRegularizer/strided_slice/stack?
2dense_64/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_64/ActivityRegularizer/strided_slice/stack_1?
2dense_64/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_64/ActivityRegularizer/strided_slice/stack_2?
*dense_64/ActivityRegularizer/strided_sliceStridedSlice+dense_64/ActivityRegularizer/Shape:output:09dense_64/ActivityRegularizer/strided_slice/stack:output:0;dense_64/ActivityRegularizer/strided_slice/stack_1:output:0;dense_64/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_64/ActivityRegularizer/strided_slice?
!dense_64/ActivityRegularizer/CastCast3dense_64/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_64/ActivityRegularizer/Cast?
$dense_64/ActivityRegularizer/truedivRealDiv$dense_64/ActivityRegularizer/mul:z:0%dense_64/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_64/ActivityRegularizer/truediv?
dropout_14/IdentityIdentitydense_64/Relu:activations:0*
T0*'
_output_shapes
:?????????d2
dropout_14/Identity?
dense_65/MatMul/ReadVariableOpReadVariableOp'dense_65_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype02 
dense_65/MatMul/ReadVariableOp?
dense_65/MatMulMatMuldropout_14/Identity:output:0&dense_65/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_65/MatMul?
dense_65/BiasAdd/ReadVariableOpReadVariableOp(dense_65_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_65/BiasAdd/ReadVariableOp?
dense_65/BiasAddBiasAdddense_65/MatMul:product:0'dense_65/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_65/BiasAdds
dense_65/ReluReludense_65/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_65/Relu?
#dense_65/ActivityRegularizer/SquareSquaredense_65/Relu:activations:0*
T0*'
_output_shapes
:?????????d2%
#dense_65/ActivityRegularizer/Square?
"dense_65/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_65/ActivityRegularizer/Const?
 dense_65/ActivityRegularizer/SumSum'dense_65/ActivityRegularizer/Square:y:0+dense_65/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_65/ActivityRegularizer/Sum?
"dense_65/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82$
"dense_65/ActivityRegularizer/mul/x?
 dense_65/ActivityRegularizer/mulMul+dense_65/ActivityRegularizer/mul/x:output:0)dense_65/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_65/ActivityRegularizer/mul?
"dense_65/ActivityRegularizer/ShapeShapedense_65/Relu:activations:0*
T0*
_output_shapes
:2$
"dense_65/ActivityRegularizer/Shape?
0dense_65/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_65/ActivityRegularizer/strided_slice/stack?
2dense_65/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_65/ActivityRegularizer/strided_slice/stack_1?
2dense_65/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_65/ActivityRegularizer/strided_slice/stack_2?
*dense_65/ActivityRegularizer/strided_sliceStridedSlice+dense_65/ActivityRegularizer/Shape:output:09dense_65/ActivityRegularizer/strided_slice/stack:output:0;dense_65/ActivityRegularizer/strided_slice/stack_1:output:0;dense_65/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_65/ActivityRegularizer/strided_slice?
!dense_65/ActivityRegularizer/CastCast3dense_65/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_65/ActivityRegularizer/Cast?
$dense_65/ActivityRegularizer/truedivRealDiv$dense_65/ActivityRegularizer/mul:z:0%dense_65/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_65/ActivityRegularizer/truediv?
dense_66/MatMul/ReadVariableOpReadVariableOp'dense_66_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype02 
dense_66/MatMul/ReadVariableOp?
dense_66/MatMulMatMuldense_65/Relu:activations:0&dense_66/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_66/MatMul?
dense_66/BiasAdd/ReadVariableOpReadVariableOp(dense_66_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_66/BiasAdd/ReadVariableOp?
dense_66/BiasAddBiasAdddense_66/MatMul:product:0'dense_66/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_66/BiasAdds
dense_66/ReluReludense_66/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_66/Relu?
#dense_66/ActivityRegularizer/SquareSquaredense_66/Relu:activations:0*
T0*'
_output_shapes
:?????????d2%
#dense_66/ActivityRegularizer/Square?
"dense_66/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_66/ActivityRegularizer/Const?
 dense_66/ActivityRegularizer/SumSum'dense_66/ActivityRegularizer/Square:y:0+dense_66/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_66/ActivityRegularizer/Sum?
"dense_66/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82$
"dense_66/ActivityRegularizer/mul/x?
 dense_66/ActivityRegularizer/mulMul+dense_66/ActivityRegularizer/mul/x:output:0)dense_66/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_66/ActivityRegularizer/mul?
"dense_66/ActivityRegularizer/ShapeShapedense_66/Relu:activations:0*
T0*
_output_shapes
:2$
"dense_66/ActivityRegularizer/Shape?
0dense_66/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_66/ActivityRegularizer/strided_slice/stack?
2dense_66/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_66/ActivityRegularizer/strided_slice/stack_1?
2dense_66/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_66/ActivityRegularizer/strided_slice/stack_2?
*dense_66/ActivityRegularizer/strided_sliceStridedSlice+dense_66/ActivityRegularizer/Shape:output:09dense_66/ActivityRegularizer/strided_slice/stack:output:0;dense_66/ActivityRegularizer/strided_slice/stack_1:output:0;dense_66/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_66/ActivityRegularizer/strided_slice?
!dense_66/ActivityRegularizer/CastCast3dense_66/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_66/ActivityRegularizer/Cast?
$dense_66/ActivityRegularizer/truedivRealDiv$dense_66/ActivityRegularizer/mul:z:0%dense_66/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_66/ActivityRegularizer/truediv?
dense_67/MatMul/ReadVariableOpReadVariableOp'dense_67_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_67/MatMul/ReadVariableOp?
dense_67/MatMulMatMuldense_66/Relu:activations:0&dense_67/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_67/MatMul?
dense_67/BiasAdd/ReadVariableOpReadVariableOp(dense_67_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
dense_67/BiasAdd/ReadVariableOp?
dense_67/BiasAddBiasAdddense_67/MatMul:product:0'dense_67/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_67/BiasAdd?
#dense_67/ActivityRegularizer/SquareSquaredense_67/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2%
#dense_67/ActivityRegularizer/Square?
"dense_67/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_67/ActivityRegularizer/Const?
 dense_67/ActivityRegularizer/SumSum'dense_67/ActivityRegularizer/Square:y:0+dense_67/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_67/ActivityRegularizer/Sum?
"dense_67/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82$
"dense_67/ActivityRegularizer/mul/x?
 dense_67/ActivityRegularizer/mulMul+dense_67/ActivityRegularizer/mul/x:output:0)dense_67/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_67/ActivityRegularizer/mul?
"dense_67/ActivityRegularizer/ShapeShapedense_67/BiasAdd:output:0*
T0*
_output_shapes
:2$
"dense_67/ActivityRegularizer/Shape?
0dense_67/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_67/ActivityRegularizer/strided_slice/stack?
2dense_67/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_67/ActivityRegularizer/strided_slice/stack_1?
2dense_67/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_67/ActivityRegularizer/strided_slice/stack_2?
*dense_67/ActivityRegularizer/strided_sliceStridedSlice+dense_67/ActivityRegularizer/Shape:output:09dense_67/ActivityRegularizer/strided_slice/stack:output:0;dense_67/ActivityRegularizer/strided_slice/stack_1:output:0;dense_67/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_67/ActivityRegularizer/strided_slice?
!dense_67/ActivityRegularizer/CastCast3dense_67/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_67/ActivityRegularizer/Cast?
$dense_67/ActivityRegularizer/truedivRealDiv$dense_67/ActivityRegularizer/mul:z:0%dense_67/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_67/ActivityRegularizer/truediv~
softmax_8/SoftmaxSoftmaxdense_67/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
softmax_8/Softmax?
/dense_64/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_64_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_64/bias/Regularizer/Square/ReadVariableOp?
 dense_64/bias/Regularizer/SquareSquare7dense_64/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_64/bias/Regularizer/Square?
dense_64/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_64/bias/Regularizer/Const?
dense_64/bias/Regularizer/SumSum$dense_64/bias/Regularizer/Square:y:0(dense_64/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_64/bias/Regularizer/Sum?
dense_64/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_64/bias/Regularizer/mul/x?
dense_64/bias/Regularizer/mulMul(dense_64/bias/Regularizer/mul/x:output:0&dense_64/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_64/bias/Regularizer/mul?
/dense_65/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_65_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_65/bias/Regularizer/Square/ReadVariableOp?
 dense_65/bias/Regularizer/SquareSquare7dense_65/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_65/bias/Regularizer/Square?
dense_65/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_65/bias/Regularizer/Const?
dense_65/bias/Regularizer/SumSum$dense_65/bias/Regularizer/Square:y:0(dense_65/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_65/bias/Regularizer/Sum?
dense_65/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_65/bias/Regularizer/mul/x?
dense_65/bias/Regularizer/mulMul(dense_65/bias/Regularizer/mul/x:output:0&dense_65/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_65/bias/Regularizer/mul?
/dense_66/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_66_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_66/bias/Regularizer/Square/ReadVariableOp?
 dense_66/bias/Regularizer/SquareSquare7dense_66/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_66/bias/Regularizer/Square?
dense_66/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_66/bias/Regularizer/Const?
dense_66/bias/Regularizer/SumSum$dense_66/bias/Regularizer/Square:y:0(dense_66/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_66/bias/Regularizer/Sum?
dense_66/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_66/bias/Regularizer/mul/x?
dense_66/bias/Regularizer/mulMul(dense_66/bias/Regularizer/mul/x:output:0&dense_66/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_66/bias/Regularizer/mul?
/dense_67/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_67_biasadd_readvariableop_resource*
_output_shapes
:*
dtype021
/dense_67/bias/Regularizer/Square/ReadVariableOp?
 dense_67/bias/Regularizer/SquareSquare7dense_67/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_67/bias/Regularizer/Square?
dense_67/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_67/bias/Regularizer/Const?
dense_67/bias/Regularizer/SumSum$dense_67/bias/Regularizer/Square:y:0(dense_67/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_67/bias/Regularizer/Sum?
dense_67/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_67/bias/Regularizer/mul/x?
dense_67/bias/Regularizer/mulMul(dense_67/bias/Regularizer/mul/x:output:0&dense_67/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_67/bias/Regularizer/mul?
IdentityIdentitysoftmax_8/Softmax:softmax:0 ^dense_64/BiasAdd/ReadVariableOp^dense_64/MatMul/ReadVariableOp0^dense_64/bias/Regularizer/Square/ReadVariableOp ^dense_65/BiasAdd/ReadVariableOp^dense_65/MatMul/ReadVariableOp0^dense_65/bias/Regularizer/Square/ReadVariableOp ^dense_66/BiasAdd/ReadVariableOp^dense_66/MatMul/ReadVariableOp0^dense_66/bias/Regularizer/Square/ReadVariableOp ^dense_67/BiasAdd/ReadVariableOp^dense_67/MatMul/ReadVariableOp0^dense_67/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(dense_64/ActivityRegularizer/truediv:z:0 ^dense_64/BiasAdd/ReadVariableOp^dense_64/MatMul/ReadVariableOp0^dense_64/bias/Regularizer/Square/ReadVariableOp ^dense_65/BiasAdd/ReadVariableOp^dense_65/MatMul/ReadVariableOp0^dense_65/bias/Regularizer/Square/ReadVariableOp ^dense_66/BiasAdd/ReadVariableOp^dense_66/MatMul/ReadVariableOp0^dense_66/bias/Regularizer/Square/ReadVariableOp ^dense_67/BiasAdd/ReadVariableOp^dense_67/MatMul/ReadVariableOp0^dense_67/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_65/ActivityRegularizer/truediv:z:0 ^dense_64/BiasAdd/ReadVariableOp^dense_64/MatMul/ReadVariableOp0^dense_64/bias/Regularizer/Square/ReadVariableOp ^dense_65/BiasAdd/ReadVariableOp^dense_65/MatMul/ReadVariableOp0^dense_65/bias/Regularizer/Square/ReadVariableOp ^dense_66/BiasAdd/ReadVariableOp^dense_66/MatMul/ReadVariableOp0^dense_66/bias/Regularizer/Square/ReadVariableOp ^dense_67/BiasAdd/ReadVariableOp^dense_67/MatMul/ReadVariableOp0^dense_67/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_66/ActivityRegularizer/truediv:z:0 ^dense_64/BiasAdd/ReadVariableOp^dense_64/MatMul/ReadVariableOp0^dense_64/bias/Regularizer/Square/ReadVariableOp ^dense_65/BiasAdd/ReadVariableOp^dense_65/MatMul/ReadVariableOp0^dense_65/bias/Regularizer/Square/ReadVariableOp ^dense_66/BiasAdd/ReadVariableOp^dense_66/MatMul/ReadVariableOp0^dense_66/bias/Regularizer/Square/ReadVariableOp ^dense_67/BiasAdd/ReadVariableOp^dense_67/MatMul/ReadVariableOp0^dense_67/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3?

Identity_4Identity(dense_67/ActivityRegularizer/truediv:z:0 ^dense_64/BiasAdd/ReadVariableOp^dense_64/MatMul/ReadVariableOp0^dense_64/bias/Regularizer/Square/ReadVariableOp ^dense_65/BiasAdd/ReadVariableOp^dense_65/MatMul/ReadVariableOp0^dense_65/bias/Regularizer/Square/ReadVariableOp ^dense_66/BiasAdd/ReadVariableOp^dense_66/MatMul/ReadVariableOp0^dense_66/bias/Regularizer/Square/ReadVariableOp ^dense_67/BiasAdd/ReadVariableOp^dense_67/MatMul/ReadVariableOp0^dense_67/bias/Regularizer/Square/ReadVariableOp*
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
#:?????????: : : : : : : : 2B
dense_64/BiasAdd/ReadVariableOpdense_64/BiasAdd/ReadVariableOp2@
dense_64/MatMul/ReadVariableOpdense_64/MatMul/ReadVariableOp2b
/dense_64/bias/Regularizer/Square/ReadVariableOp/dense_64/bias/Regularizer/Square/ReadVariableOp2B
dense_65/BiasAdd/ReadVariableOpdense_65/BiasAdd/ReadVariableOp2@
dense_65/MatMul/ReadVariableOpdense_65/MatMul/ReadVariableOp2b
/dense_65/bias/Regularizer/Square/ReadVariableOp/dense_65/bias/Regularizer/Square/ReadVariableOp2B
dense_66/BiasAdd/ReadVariableOpdense_66/BiasAdd/ReadVariableOp2@
dense_66/MatMul/ReadVariableOpdense_66/MatMul/ReadVariableOp2b
/dense_66/bias/Regularizer/Square/ReadVariableOp/dense_66/bias/Regularizer/Square/ReadVariableOp2B
dense_67/BiasAdd/ReadVariableOpdense_67/BiasAdd/ReadVariableOp2@
dense_67/MatMul/ReadVariableOpdense_67/MatMul/ReadVariableOp2b
/dense_67/bias/Regularizer/Square/ReadVariableOp/dense_67/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
I__inference_sequential_16_layer_call_and_return_conditional_losses_815929
flatten_16_input!
dense_64_815846:d
dense_64_815848:d!
dense_65_815860:dd
dense_65_815862:d!
dense_66_815873:dd
dense_66_815875:d!
dense_67_815886:d
dense_67_815888:
identity

identity_1

identity_2

identity_3

identity_4?? dense_64/StatefulPartitionedCall?/dense_64/bias/Regularizer/Square/ReadVariableOp? dense_65/StatefulPartitionedCall?/dense_65/bias/Regularizer/Square/ReadVariableOp? dense_66/StatefulPartitionedCall?/dense_66/bias/Regularizer/Square/ReadVariableOp? dense_67/StatefulPartitionedCall?/dense_67/bias/Regularizer/Square/ReadVariableOp?
flatten_16/PartitionedCallPartitionedCallflatten_16_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_flatten_16_layer_call_and_return_conditional_losses_8153662
flatten_16/PartitionedCall?
 dense_64/StatefulPartitionedCallStatefulPartitionedCall#flatten_16/PartitionedCall:output:0dense_64_815846dense_64_815848*
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
D__inference_dense_64_layer_call_and_return_conditional_losses_8153852"
 dense_64/StatefulPartitionedCall?
,dense_64/ActivityRegularizer/PartitionedCallPartitionedCall)dense_64/StatefulPartitionedCall:output:0*
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
0__inference_dense_64_activity_regularizer_8153142.
,dense_64/ActivityRegularizer/PartitionedCall?
"dense_64/ActivityRegularizer/ShapeShape)dense_64/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_64/ActivityRegularizer/Shape?
0dense_64/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_64/ActivityRegularizer/strided_slice/stack?
2dense_64/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_64/ActivityRegularizer/strided_slice/stack_1?
2dense_64/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_64/ActivityRegularizer/strided_slice/stack_2?
*dense_64/ActivityRegularizer/strided_sliceStridedSlice+dense_64/ActivityRegularizer/Shape:output:09dense_64/ActivityRegularizer/strided_slice/stack:output:0;dense_64/ActivityRegularizer/strided_slice/stack_1:output:0;dense_64/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_64/ActivityRegularizer/strided_slice?
!dense_64/ActivityRegularizer/CastCast3dense_64/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_64/ActivityRegularizer/Cast?
$dense_64/ActivityRegularizer/truedivRealDiv5dense_64/ActivityRegularizer/PartitionedCall:output:0%dense_64/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_64/ActivityRegularizer/truediv?
dropout_14/PartitionedCallPartitionedCall)dense_64/StatefulPartitionedCall:output:0*
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
F__inference_dropout_14_layer_call_and_return_conditional_losses_8154042
dropout_14/PartitionedCall?
 dense_65/StatefulPartitionedCallStatefulPartitionedCall#dropout_14/PartitionedCall:output:0dense_65_815860dense_65_815862*
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
D__inference_dense_65_layer_call_and_return_conditional_losses_8154232"
 dense_65/StatefulPartitionedCall?
,dense_65/ActivityRegularizer/PartitionedCallPartitionedCall)dense_65/StatefulPartitionedCall:output:0*
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
0__inference_dense_65_activity_regularizer_8153272.
,dense_65/ActivityRegularizer/PartitionedCall?
"dense_65/ActivityRegularizer/ShapeShape)dense_65/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_65/ActivityRegularizer/Shape?
0dense_65/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_65/ActivityRegularizer/strided_slice/stack?
2dense_65/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_65/ActivityRegularizer/strided_slice/stack_1?
2dense_65/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_65/ActivityRegularizer/strided_slice/stack_2?
*dense_65/ActivityRegularizer/strided_sliceStridedSlice+dense_65/ActivityRegularizer/Shape:output:09dense_65/ActivityRegularizer/strided_slice/stack:output:0;dense_65/ActivityRegularizer/strided_slice/stack_1:output:0;dense_65/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_65/ActivityRegularizer/strided_slice?
!dense_65/ActivityRegularizer/CastCast3dense_65/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_65/ActivityRegularizer/Cast?
$dense_65/ActivityRegularizer/truedivRealDiv5dense_65/ActivityRegularizer/PartitionedCall:output:0%dense_65/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_65/ActivityRegularizer/truediv?
 dense_66/StatefulPartitionedCallStatefulPartitionedCall)dense_65/StatefulPartitionedCall:output:0dense_66_815873dense_66_815875*
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
D__inference_dense_66_layer_call_and_return_conditional_losses_8154542"
 dense_66/StatefulPartitionedCall?
,dense_66/ActivityRegularizer/PartitionedCallPartitionedCall)dense_66/StatefulPartitionedCall:output:0*
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
0__inference_dense_66_activity_regularizer_8153402.
,dense_66/ActivityRegularizer/PartitionedCall?
"dense_66/ActivityRegularizer/ShapeShape)dense_66/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_66/ActivityRegularizer/Shape?
0dense_66/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_66/ActivityRegularizer/strided_slice/stack?
2dense_66/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_66/ActivityRegularizer/strided_slice/stack_1?
2dense_66/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_66/ActivityRegularizer/strided_slice/stack_2?
*dense_66/ActivityRegularizer/strided_sliceStridedSlice+dense_66/ActivityRegularizer/Shape:output:09dense_66/ActivityRegularizer/strided_slice/stack:output:0;dense_66/ActivityRegularizer/strided_slice/stack_1:output:0;dense_66/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_66/ActivityRegularizer/strided_slice?
!dense_66/ActivityRegularizer/CastCast3dense_66/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_66/ActivityRegularizer/Cast?
$dense_66/ActivityRegularizer/truedivRealDiv5dense_66/ActivityRegularizer/PartitionedCall:output:0%dense_66/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_66/ActivityRegularizer/truediv?
 dense_67/StatefulPartitionedCallStatefulPartitionedCall)dense_66/StatefulPartitionedCall:output:0dense_67_815886dense_67_815888*
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
D__inference_dense_67_layer_call_and_return_conditional_losses_8154842"
 dense_67/StatefulPartitionedCall?
,dense_67/ActivityRegularizer/PartitionedCallPartitionedCall)dense_67/StatefulPartitionedCall:output:0*
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
0__inference_dense_67_activity_regularizer_8153532.
,dense_67/ActivityRegularizer/PartitionedCall?
"dense_67/ActivityRegularizer/ShapeShape)dense_67/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:2$
"dense_67/ActivityRegularizer/Shape?
0dense_67/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0dense_67/ActivityRegularizer/strided_slice/stack?
2dense_67/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_67/ActivityRegularizer/strided_slice/stack_1?
2dense_67/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2dense_67/ActivityRegularizer/strided_slice/stack_2?
*dense_67/ActivityRegularizer/strided_sliceStridedSlice+dense_67/ActivityRegularizer/Shape:output:09dense_67/ActivityRegularizer/strided_slice/stack:output:0;dense_67/ActivityRegularizer/strided_slice/stack_1:output:0;dense_67/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*dense_67/ActivityRegularizer/strided_slice?
!dense_67/ActivityRegularizer/CastCast3dense_67/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: 2#
!dense_67/ActivityRegularizer/Cast?
$dense_67/ActivityRegularizer/truedivRealDiv5dense_67/ActivityRegularizer/PartitionedCall:output:0%dense_67/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: 2&
$dense_67/ActivityRegularizer/truediv?
softmax_8/PartitionedCallPartitionedCall)dense_67/StatefulPartitionedCall:output:0*
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
E__inference_softmax_8_layer_call_and_return_conditional_losses_8155032
softmax_8/PartitionedCall?
/dense_64/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_64_815848*
_output_shapes
:d*
dtype021
/dense_64/bias/Regularizer/Square/ReadVariableOp?
 dense_64/bias/Regularizer/SquareSquare7dense_64/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_64/bias/Regularizer/Square?
dense_64/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_64/bias/Regularizer/Const?
dense_64/bias/Regularizer/SumSum$dense_64/bias/Regularizer/Square:y:0(dense_64/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_64/bias/Regularizer/Sum?
dense_64/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_64/bias/Regularizer/mul/x?
dense_64/bias/Regularizer/mulMul(dense_64/bias/Regularizer/mul/x:output:0&dense_64/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_64/bias/Regularizer/mul?
/dense_65/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_65_815862*
_output_shapes
:d*
dtype021
/dense_65/bias/Regularizer/Square/ReadVariableOp?
 dense_65/bias/Regularizer/SquareSquare7dense_65/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_65/bias/Regularizer/Square?
dense_65/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_65/bias/Regularizer/Const?
dense_65/bias/Regularizer/SumSum$dense_65/bias/Regularizer/Square:y:0(dense_65/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_65/bias/Regularizer/Sum?
dense_65/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_65/bias/Regularizer/mul/x?
dense_65/bias/Regularizer/mulMul(dense_65/bias/Regularizer/mul/x:output:0&dense_65/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_65/bias/Regularizer/mul?
/dense_66/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_66_815875*
_output_shapes
:d*
dtype021
/dense_66/bias/Regularizer/Square/ReadVariableOp?
 dense_66/bias/Regularizer/SquareSquare7dense_66/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_66/bias/Regularizer/Square?
dense_66/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_66/bias/Regularizer/Const?
dense_66/bias/Regularizer/SumSum$dense_66/bias/Regularizer/Square:y:0(dense_66/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_66/bias/Regularizer/Sum?
dense_66/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_66/bias/Regularizer/mul/x?
dense_66/bias/Regularizer/mulMul(dense_66/bias/Regularizer/mul/x:output:0&dense_66/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_66/bias/Regularizer/mul?
/dense_67/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_67_815888*
_output_shapes
:*
dtype021
/dense_67/bias/Regularizer/Square/ReadVariableOp?
 dense_67/bias/Regularizer/SquareSquare7dense_67/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2"
 dense_67/bias/Regularizer/Square?
dense_67/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_67/bias/Regularizer/Const?
dense_67/bias/Regularizer/SumSum$dense_67/bias/Regularizer/Square:y:0(dense_67/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_67/bias/Regularizer/Sum?
dense_67/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82!
dense_67/bias/Regularizer/mul/x?
dense_67/bias/Regularizer/mulMul(dense_67/bias/Regularizer/mul/x:output:0&dense_67/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_67/bias/Regularizer/mul?
IdentityIdentity"softmax_8/PartitionedCall:output:0!^dense_64/StatefulPartitionedCall0^dense_64/bias/Regularizer/Square/ReadVariableOp!^dense_65/StatefulPartitionedCall0^dense_65/bias/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall0^dense_66/bias/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall0^dense_67/bias/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(dense_64/ActivityRegularizer/truediv:z:0!^dense_64/StatefulPartitionedCall0^dense_64/bias/Regularizer/Square/ReadVariableOp!^dense_65/StatefulPartitionedCall0^dense_65/bias/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall0^dense_66/bias/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall0^dense_67/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_1?

Identity_2Identity(dense_65/ActivityRegularizer/truediv:z:0!^dense_64/StatefulPartitionedCall0^dense_64/bias/Regularizer/Square/ReadVariableOp!^dense_65/StatefulPartitionedCall0^dense_65/bias/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall0^dense_66/bias/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall0^dense_67/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_2?

Identity_3Identity(dense_66/ActivityRegularizer/truediv:z:0!^dense_64/StatefulPartitionedCall0^dense_64/bias/Regularizer/Square/ReadVariableOp!^dense_65/StatefulPartitionedCall0^dense_65/bias/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall0^dense_66/bias/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall0^dense_67/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity_3?

Identity_4Identity(dense_67/ActivityRegularizer/truediv:z:0!^dense_64/StatefulPartitionedCall0^dense_64/bias/Regularizer/Square/ReadVariableOp!^dense_65/StatefulPartitionedCall0^dense_65/bias/Regularizer/Square/ReadVariableOp!^dense_66/StatefulPartitionedCall0^dense_66/bias/Regularizer/Square/ReadVariableOp!^dense_67/StatefulPartitionedCall0^dense_67/bias/Regularizer/Square/ReadVariableOp*
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
#:?????????: : : : : : : : 2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall2b
/dense_64/bias/Regularizer/Square/ReadVariableOp/dense_64/bias/Regularizer/Square/ReadVariableOp2D
 dense_65/StatefulPartitionedCall dense_65/StatefulPartitionedCall2b
/dense_65/bias/Regularizer/Square/ReadVariableOp/dense_65/bias/Regularizer/Square/ReadVariableOp2D
 dense_66/StatefulPartitionedCall dense_66/StatefulPartitionedCall2b
/dense_66/bias/Regularizer/Square/ReadVariableOp/dense_66/bias/Regularizer/Square/ReadVariableOp2D
 dense_67/StatefulPartitionedCall dense_67/StatefulPartitionedCall2b
/dense_67/bias/Regularizer/Square/ReadVariableOp/dense_67/bias/Regularizer/Square/ReadVariableOp:Y U
'
_output_shapes
:?????????
*
_user_specified_nameflatten_16_input
?	
?
.__inference_sequential_16_layer_call_fn_815557
flatten_16_input
unknown:d
	unknown_0:d
	unknown_1:dd
	unknown_2:d
	unknown_3:dd
	unknown_4:d
	unknown_5:d
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallflatten_16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
I__inference_sequential_16_layer_call_and_return_conditional_losses_8155342
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:?????????
*
_user_specified_nameflatten_16_input
?
G
0__inference_dense_65_activity_regularizer_815327
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
_user_specified_namex"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
flatten_16_input9
"serving_default_flatten_16_input:0?????????=
	softmax_80
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
_tf_keras_sequential?;{"name": "sequential_16", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_16", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 19]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_16_input"}}, {"class_name": "Flatten", "config": {"name": "flatten_16", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 19]}, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_64", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_14", "trainable": true, "dtype": "float32", "rate": 0.02, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_65", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_66", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_67", "trainable": true, "dtype": "float32", "units": 7, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Softmax", "config": {"name": "softmax_8", "trainable": true, "dtype": "float32", "axis": -1}}]}, "shared_object_id": 24, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 19]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 19]}, "float32", "flatten_16_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_16", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 19]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_16_input"}, "shared_object_id": 0}, {"class_name": "Flatten", "config": {"name": "flatten_16", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 19]}, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 1}, {"class_name": "Dense", "config": {"name": "dense_64", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 4}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 5}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, {"class_name": "Dropout", "config": {"name": "dropout_14", "trainable": true, "dtype": "float32", "rate": 0.02, "noise_shape": null, "seed": null}, "shared_object_id": 7}, {"class_name": "Dense", "config": {"name": "dense_65", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 10}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 11}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}, {"class_name": "Dense", "config": {"name": "dense_66", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 15}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 16}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17}, {"class_name": "Dense", "config": {"name": "dense_67", "trainable": true, "dtype": "float32", "units": 7, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 20}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 21}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 22}, {"class_name": "Softmax", "config": {"name": "softmax_8", "trainable": true, "dtype": "float32", "axis": -1}, "shared_object_id": 23}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": false}, "shared_object_id": 26}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 27}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-06, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
trainable_variables
	variables
regularization_losses
	keras_api
}__call__
*~&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten_16", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 19]}, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_16", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 19]}, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 1, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 25}}
?


kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "dense_64", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_64", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 4}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 5}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 19}}, "shared_object_id": 28}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 5}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 19]}}
?
trainable_variables
	variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_14", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_14", "trainable": true, "dtype": "float32", "rate": 0.02, "noise_shape": null, "seed": null}, "shared_object_id": 7}
?


kernel
bias
trainable_variables
	variables
 regularization_losses
!	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "dense_65", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_65", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 10}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 11}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 29}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 11}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?


"kernel
#bias
$trainable_variables
%	variables
&regularization_losses
'	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "dense_66", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_66", "trainable": true, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 15}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 16}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 30}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 16}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?


(kernel
)bias
*trainable_variables
+	variables
,regularization_losses
-	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "dense_67", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_67", "trainable": true, "dtype": "float32", "units": 7, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 20}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 21}, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 31}, "activity_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?
.trainable_variables
/	variables
0regularization_losses
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "softmax_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Softmax", "config": {"name": "softmax_8", "trainable": true, "dtype": "float32", "axis": -1}, "shared_object_id": 23}
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
!:d2dense_64/kernel
:d2dense_64/bias
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
!:dd2dense_65/kernel
:d2dense_65/bias
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
!:dd2dense_66/kernel
:d2dense_66/bias
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
!:d2dense_67/kernel
:2dense_67/bias
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
&:$d2Adam/dense_64/kernel/m
 :d2Adam/dense_64/bias/m
&:$dd2Adam/dense_65/kernel/m
 :d2Adam/dense_65/bias/m
&:$dd2Adam/dense_66/kernel/m
 :d2Adam/dense_66/bias/m
&:$d2Adam/dense_67/kernel/m
 :2Adam/dense_67/bias/m
&:$d2Adam/dense_64/kernel/v
 :d2Adam/dense_64/bias/v
&:$dd2Adam/dense_65/kernel/v
 :d2Adam/dense_65/bias/v
&:$dd2Adam/dense_66/kernel/v
 :d2Adam/dense_66/bias/v
&:$d2Adam/dense_67/kernel/v
 :2Adam/dense_67/bias/v
?2?
.__inference_sequential_16_layer_call_fn_815557
.__inference_sequential_16_layer_call_fn_816094
.__inference_sequential_16_layer_call_fn_816119
.__inference_sequential_16_layer_call_fn_815842?
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
I__inference_sequential_16_layer_call_and_return_conditional_losses_816230
I__inference_sequential_16_layer_call_and_return_conditional_losses_816348
I__inference_sequential_16_layer_call_and_return_conditional_losses_815929
I__inference_sequential_16_layer_call_and_return_conditional_losses_816016?
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
!__inference__wrapped_model_815301?
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
flatten_16_input?????????
?2?
+__inference_flatten_16_layer_call_fn_816353?
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
F__inference_flatten_16_layer_call_and_return_conditional_losses_816359?
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
)__inference_dense_64_layer_call_fn_816374?
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
H__inference_dense_64_layer_call_and_return_all_conditional_losses_816385?
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
+__inference_dropout_14_layer_call_fn_816390
+__inference_dropout_14_layer_call_fn_816395?
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
F__inference_dropout_14_layer_call_and_return_conditional_losses_816400
F__inference_dropout_14_layer_call_and_return_conditional_losses_816412?
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
)__inference_dense_65_layer_call_fn_816427?
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
H__inference_dense_65_layer_call_and_return_all_conditional_losses_816438?
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
)__inference_dense_66_layer_call_fn_816453?
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
H__inference_dense_66_layer_call_and_return_all_conditional_losses_816464?
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
)__inference_dense_67_layer_call_fn_816479?
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
H__inference_dense_67_layer_call_and_return_all_conditional_losses_816490?
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
*__inference_softmax_8_layer_call_fn_816495?
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
E__inference_softmax_8_layer_call_and_return_conditional_losses_816500?
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
__inference_loss_fn_0_816511?
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
__inference_loss_fn_1_816522?
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
__inference_loss_fn_2_816533?
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
__inference_loss_fn_3_816544?
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
$__inference_signature_wrapper_816069flatten_16_input"?
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
0__inference_dense_64_activity_regularizer_815314?
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
D__inference_dense_64_layer_call_and_return_conditional_losses_816561?
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
0__inference_dense_65_activity_regularizer_815327?
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
D__inference_dense_65_layer_call_and_return_conditional_losses_816578?
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
0__inference_dense_66_activity_regularizer_815340?
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
D__inference_dense_66_layer_call_and_return_conditional_losses_816595?
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
0__inference_dense_67_activity_regularizer_815353?
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
D__inference_dense_67_layer_call_and_return_conditional_losses_816611?
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
!__inference__wrapped_model_815301|"#()9?6
/?,
*?'
flatten_16_input?????????
? "5?2
0
	softmax_8#? 
	softmax_8?????????Z
0__inference_dense_64_activity_regularizer_815314&?
?
?	
x
? "? ?
H__inference_dense_64_layer_call_and_return_all_conditional_losses_816385j/?,
%?"
 ?
inputs?????????
? "3?0
?
0?????????d
?
?	
1/0 ?
D__inference_dense_64_layer_call_and_return_conditional_losses_816561\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????d
? |
)__inference_dense_64_layer_call_fn_816374O/?,
%?"
 ?
inputs?????????
? "??????????dZ
0__inference_dense_65_activity_regularizer_815327&?
?
?	
x
? "? ?
H__inference_dense_65_layer_call_and_return_all_conditional_losses_816438j/?,
%?"
 ?
inputs?????????d
? "3?0
?
0?????????d
?
?	
1/0 ?
D__inference_dense_65_layer_call_and_return_conditional_losses_816578\/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????d
? |
)__inference_dense_65_layer_call_fn_816427O/?,
%?"
 ?
inputs?????????d
? "??????????dZ
0__inference_dense_66_activity_regularizer_815340&?
?
?	
x
? "? ?
H__inference_dense_66_layer_call_and_return_all_conditional_losses_816464j"#/?,
%?"
 ?
inputs?????????d
? "3?0
?
0?????????d
?
?	
1/0 ?
D__inference_dense_66_layer_call_and_return_conditional_losses_816595\"#/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????d
? |
)__inference_dense_66_layer_call_fn_816453O"#/?,
%?"
 ?
inputs?????????d
? "??????????dZ
0__inference_dense_67_activity_regularizer_815353&?
?
?	
x
? "? ?
H__inference_dense_67_layer_call_and_return_all_conditional_losses_816490j()/?,
%?"
 ?
inputs?????????d
? "3?0
?
0?????????
?
?	
1/0 ?
D__inference_dense_67_layer_call_and_return_conditional_losses_816611\()/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????
? |
)__inference_dense_67_layer_call_fn_816479O()/?,
%?"
 ?
inputs?????????d
? "???????????
F__inference_dropout_14_layer_call_and_return_conditional_losses_816400\3?0
)?&
 ?
inputs?????????d
p 
? "%?"
?
0?????????d
? ?
F__inference_dropout_14_layer_call_and_return_conditional_losses_816412\3?0
)?&
 ?
inputs?????????d
p
? "%?"
?
0?????????d
? ~
+__inference_dropout_14_layer_call_fn_816390O3?0
)?&
 ?
inputs?????????d
p 
? "??????????d~
+__inference_dropout_14_layer_call_fn_816395O3?0
)?&
 ?
inputs?????????d
p
? "??????????d?
F__inference_flatten_16_layer_call_and_return_conditional_losses_816359X/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? z
+__inference_flatten_16_layer_call_fn_816353K/?,
%?"
 ?
inputs?????????
? "??????????;
__inference_loss_fn_0_816511?

? 
? "? ;
__inference_loss_fn_1_816522?

? 
? "? ;
__inference_loss_fn_2_816533#?

? 
? "? ;
__inference_loss_fn_3_816544)?

? 
? "? ?
I__inference_sequential_16_layer_call_and_return_conditional_losses_815929?"#()A?>
7?4
*?'
flatten_16_input?????????
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
I__inference_sequential_16_layer_call_and_return_conditional_losses_816016?"#()A?>
7?4
*?'
flatten_16_input?????????
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
I__inference_sequential_16_layer_call_and_return_conditional_losses_816230?"#()7?4
-?*
 ?
inputs?????????
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
I__inference_sequential_16_layer_call_and_return_conditional_losses_816348?"#()7?4
-?*
 ?
inputs?????????
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
.__inference_sequential_16_layer_call_fn_815557g"#()A?>
7?4
*?'
flatten_16_input?????????
p 

 
? "???????????
.__inference_sequential_16_layer_call_fn_815842g"#()A?>
7?4
*?'
flatten_16_input?????????
p

 
? "???????????
.__inference_sequential_16_layer_call_fn_816094]"#()7?4
-?*
 ?
inputs?????????
p 

 
? "???????????
.__inference_sequential_16_layer_call_fn_816119]"#()7?4
-?*
 ?
inputs?????????
p

 
? "???????????
$__inference_signature_wrapper_816069?"#()M?J
? 
C?@
>
flatten_16_input*?'
flatten_16_input?????????"5?2
0
	softmax_8#? 
	softmax_8??????????
E__inference_softmax_8_layer_call_and_return_conditional_losses_816500\3?0
)?&
 ?
inputs?????????

 
? "%?"
?
0?????????
? }
*__inference_softmax_8_layer_call_fn_816495O3?0
)?&
 ?
inputs?????????

 
? "??????????