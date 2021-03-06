??
??
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
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??
~
conv1d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.* 
shared_nameconv1d_1/kernel
w
#conv1d_1/kernel/Read/ReadVariableOpReadVariableOpconv1d_1/kernel*"
_output_shapes
:	.*
dtype0
r
conv1d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*
shared_nameconv1d_1/bias
k
!conv1d_1/bias/Read/ReadVariableOpReadVariableOpconv1d_1/bias*
_output_shapes
:.*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	\?*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	\?*
dtype0
q
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_3/bias
j
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes	
:?*
dtype0
y
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?2*
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	?2*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:2*
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2	*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:2	*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
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
Adam/conv1d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.*'
shared_nameAdam/conv1d_1/kernel/m
?
*Adam/conv1d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/kernel/m*"
_output_shapes
:	.*
dtype0
?
Adam/conv1d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*%
shared_nameAdam/conv1d_1/bias/m
y
(Adam/conv1d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/bias/m*
_output_shapes
:.*
dtype0
?
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	\?*&
shared_nameAdam/dense_3/kernel/m
?
)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes
:	\?*
dtype0

Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_3/bias/m
x
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?2*&
shared_nameAdam/dense_4/kernel/m
?
)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes
:	?2*
dtype0
~
Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/dense_4/bias/m
w
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes
:2*
dtype0
?
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2	*&
shared_nameAdam/dense_5/kernel/m

)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes

:2	*
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:	*
dtype0
?
Adam/conv1d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	.*'
shared_nameAdam/conv1d_1/kernel/v
?
*Adam/conv1d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/kernel/v*"
_output_shapes
:	.*
dtype0
?
Adam/conv1d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:.*%
shared_nameAdam/conv1d_1/bias/v
y
(Adam/conv1d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_1/bias/v*
_output_shapes
:.*
dtype0
?
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	\?*&
shared_nameAdam/dense_3/kernel/v
?
)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes
:	\?*
dtype0

Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_3/bias/v
x
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?2*&
shared_nameAdam/dense_4/kernel/v
?
)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes
:	?2*
dtype0
~
Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/dense_4/bias/v
w
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes
:2*
dtype0
?
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2	*&
shared_nameAdam/dense_5/kernel/v

)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes

:2	*
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:	*
dtype0

NoOpNoOp
?4
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?4
value?4B?4 B?4
?
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
		variables

trainable_variables
regularization_losses
	keras_api

signatures
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
 regularization_losses
!	keras_api
h

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
h

(kernel
)bias
*	variables
+trainable_variables
,regularization_losses
-	keras_api
R
.	variables
/trainable_variables
0regularization_losses
1	keras_api
?
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
?
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
		variables

trainable_variables
regularization_losses
 
[Y
VARIABLE_VALUEconv1d_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
 regularization_losses
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

"0
#1

"0
#1
 
?
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
$	variables
%trainable_variables
&regularization_losses
ZX
VARIABLE_VALUEdense_5/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_5/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

(0
)1

(0
)1
 
?
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
*	variables
+trainable_variables
,regularization_losses
 
 
 
?
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
.	variables
/trainable_variables
0regularization_losses
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
1
0
1
2
3
4
5
6

_0
`1
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
VARIABLE_VALUEAdam/conv1d_1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_4/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_4/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_conv1d_1_inputPlaceholder*+
_output_shapes
:?????????	*
dtype0* 
shape:?????????	
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv1d_1_inputconv1d_1/kernelconv1d_1/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_144437
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv1d_1/kernel/Read/ReadVariableOp!conv1d_1/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/conv1d_1/kernel/m/Read/ReadVariableOp(Adam/conv1d_1/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOp*Adam/conv1d_1/kernel/v/Read/ReadVariableOp(Adam/conv1d_1/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
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
GPU 2J 8? *(
f#R!
__inference__traced_save_145151
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_1/kernelconv1d_1/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv1d_1/kernel/mAdam/conv1d_1/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/mAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/dense_5/kernel/mAdam/dense_5/bias/mAdam/conv1d_1/kernel/vAdam/conv1d_1/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/vAdam/dense_4/kernel/vAdam/dense_4/bias/vAdam/dense_5/kernel/vAdam/dense_5/bias/v*-
Tin&
$2"*
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
GPU 2J 8? *+
f&R$
"__inference__traced_restore_145260??
??
?	
H__inference_sequential_1_layer_call_and_return_conditional_losses_144609

inputsJ
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:	.6
(conv1d_1_biasadd_readvariableop_resource:.9
&dense_3_matmul_readvariableop_resource:	\?6
'dense_3_biasadd_readvariableop_resource:	?9
&dense_4_matmul_readvariableop_resource:	?25
'dense_4_biasadd_readvariableop_resource:28
&dense_5_matmul_readvariableop_resource:2	5
'dense_5_biasadd_readvariableop_resource:	
identity

identity_1

identity_2

identity_3

identity_4??conv1d_1/BiasAdd/ReadVariableOp?+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp?/conv1d_1/bias/Regularizer/Square/ReadVariableOp?1conv1d_1/kernel/Regularizer/Square/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?.dense_3/bias/Regularizer/Square/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?.dense_4/bias/Regularizer/Square/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOp?.dense_5/bias/Regularizer/Square/ReadVariableOpi
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_1/Conv1D/ExpandDims
ExpandDimsinputs'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????	?
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	.*
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	.?
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????.*
paddingVALID*
strides
?
conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*+
_output_shapes
:?????????.*
squeeze_dims

??????????
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0?
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????.d
conv1d_1/EluEluconv1d_1/BiasAdd:output:0*
T0*+
_output_shapes
:?????????.
#conv1d_1/ActivityRegularizer/SquareSquareconv1d_1/Elu:activations:0*
T0*+
_output_shapes
:?????????.w
"conv1d_1/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 conv1d_1/ActivityRegularizer/SumSum'conv1d_1/ActivityRegularizer/Square:y:0+conv1d_1/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: g
"conv1d_1/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
 conv1d_1/ActivityRegularizer/mulMul+conv1d_1/ActivityRegularizer/mul/x:output:0)conv1d_1/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: l
"conv1d_1/ActivityRegularizer/ShapeShapeconv1d_1/Elu:activations:0*
T0*
_output_shapes
:z
0conv1d_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2conv1d_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2conv1d_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*conv1d_1/ActivityRegularizer/strided_sliceStridedSlice+conv1d_1/ActivityRegularizer/Shape:output:09conv1d_1/ActivityRegularizer/strided_slice/stack:output:0;conv1d_1/ActivityRegularizer/strided_slice/stack_1:output:0;conv1d_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!conv1d_1/ActivityRegularizer/CastCast3conv1d_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$conv1d_1/ActivityRegularizer/truedivRealDiv$conv1d_1/ActivityRegularizer/mul:z:0%conv1d_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: `
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????\   ?
flatten_1/ReshapeReshapeconv1d_1/Elu:activations:0flatten_1/Const:output:0*
T0*'
_output_shapes
:?????????\?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	\?*
dtype0?
dense_3/MatMulMatMulflatten_1/Reshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*(
_output_shapes
:??????????{
"dense_3/ActivityRegularizer/SquareSquaredense_3/Relu:activations:0*
T0*(
_output_shapes
:??????????r
!dense_3/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_3/ActivityRegularizer/SumSum&dense_3/ActivityRegularizer/Square:y:0*dense_3/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_3/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_3/ActivityRegularizer/mulMul*dense_3/ActivityRegularizer/mul/x:output:0(dense_3/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: k
!dense_3/ActivityRegularizer/ShapeShapedense_3/Relu:activations:0*
T0*
_output_shapes
:y
/dense_3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_3/ActivityRegularizer/strided_sliceStridedSlice*dense_3/ActivityRegularizer/Shape:output:08dense_3/ActivityRegularizer/strided_slice/stack:output:0:dense_3/ActivityRegularizer/strided_slice/stack_1:output:0:dense_3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
 dense_3/ActivityRegularizer/CastCast2dense_3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
#dense_3/ActivityRegularizer/truedivRealDiv#dense_3/ActivityRegularizer/mul:z:0$dense_3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: m
dropout_1/IdentityIdentitydense_3/Relu:activations:0*
T0*(
_output_shapes
:???????????
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	?2*
dtype0?
dense_4/MatMulMatMuldropout_1/Identity:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2`
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2z
"dense_4/ActivityRegularizer/SquareSquaredense_4/Relu:activations:0*
T0*'
_output_shapes
:?????????2r
!dense_4/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_4/ActivityRegularizer/SumSum&dense_4/ActivityRegularizer/Square:y:0*dense_4/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_4/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_4/ActivityRegularizer/mulMul*dense_4/ActivityRegularizer/mul/x:output:0(dense_4/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: k
!dense_4/ActivityRegularizer/ShapeShapedense_4/Relu:activations:0*
T0*
_output_shapes
:y
/dense_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_4/ActivityRegularizer/strided_sliceStridedSlice*dense_4/ActivityRegularizer/Shape:output:08dense_4/ActivityRegularizer/strided_slice/stack:output:0:dense_4/ActivityRegularizer/strided_slice/stack_1:output:0:dense_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
 dense_4/ActivityRegularizer/CastCast2dense_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
#dense_4/ActivityRegularizer/truedivRealDiv#dense_4/ActivityRegularizer/mul:z:0$dense_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:2	*
dtype0?
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	x
"dense_5/ActivityRegularizer/SquareSquaredense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	r
!dense_5/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_5/ActivityRegularizer/SumSum&dense_5/ActivityRegularizer/Square:y:0*dense_5/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_5/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_5/ActivityRegularizer/mulMul*dense_5/ActivityRegularizer/mul/x:output:0(dense_5/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: i
!dense_5/ActivityRegularizer/ShapeShapedense_5/BiasAdd:output:0*
T0*
_output_shapes
:y
/dense_5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_5/ActivityRegularizer/strided_sliceStridedSlice*dense_5/ActivityRegularizer/Shape:output:08dense_5/ActivityRegularizer/strided_slice/stack:output:0:dense_5/ActivityRegularizer/strided_slice/stack_1:output:0:dense_5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
 dense_5/ActivityRegularizer/CastCast2dense_5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
#dense_5/ActivityRegularizer/truedivRealDiv#dense_5/ActivityRegularizer/mul:z:0$dense_5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: h
softmax_1/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	?
1conv1d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	.*
dtype0?
"conv1d_1/kernel/Regularizer/SquareSquare9conv1d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	.v
!conv1d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_1/kernel/Regularizer/SumSum&conv1d_1/kernel/Regularizer/Square:y:0*conv1d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
conv1d_1/kernel/Regularizer/mulMul*conv1d_1/kernel/Regularizer/mul/x:output:0(conv1d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
/conv1d_1/bias/Regularizer/Square/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0?
 conv1d_1/bias/Regularizer/SquareSquare7conv1d_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:.i
conv1d_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
conv1d_1/bias/Regularizer/SumSum$conv1d_1/bias/Regularizer/Square:y:0(conv1d_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv1d_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
conv1d_1/bias/Regularizer/mulMul(conv1d_1/bias/Regularizer/mul/x:output:0&conv1d_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
.dense_3/bias/Regularizer/Square/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_3/bias/Regularizer/SquareSquare6dense_3/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?h
dense_3/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_3/bias/Regularizer/SumSum#dense_3/bias/Regularizer/Square:y:0'dense_3/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_3/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_3/bias/Regularizer/mulMul'dense_3/bias/Regularizer/mul/x:output:0%dense_3/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
.dense_4/bias/Regularizer/Square/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
dense_4/bias/Regularizer/SquareSquare6dense_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2h
dense_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_4/bias/Regularizer/SumSum#dense_4/bias/Regularizer/Square:y:0'dense_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_4/bias/Regularizer/mulMul'dense_4/bias/Regularizer/mul/x:output:0%dense_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
.dense_5/bias/Regularizer/Square/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0?
dense_5/bias/Regularizer/SquareSquare6dense_5/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	h
dense_5/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_5/bias/Regularizer/SumSum#dense_5/bias/Regularizer/Square:y:0'dense_5/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_5/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_5/bias/Regularizer/mulMul'dense_5/bias/Regularizer/mul/x:output:0%dense_5/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentitysoftmax_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????	h

Identity_1Identity(conv1d_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_2Identity'dense_3/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_3Identity'dense_4/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_4Identity'dense_5/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp0^conv1d_1/bias/Regularizer/Square/ReadVariableOp2^conv1d_1/kernel/Regularizer/Square/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp/^dense_3/bias/Regularizer/Square/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp/^dense_4/bias/Regularizer/Square/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp/^dense_5/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????	: : : : : : : : 2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2b
/conv1d_1/bias/Regularizer/Square/ReadVariableOp/conv1d_1/bias/Regularizer/Square/ReadVariableOp2f
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp1conv1d_1/kernel/Regularizer/Square/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2`
.dense_3/bias/Regularizer/Square/ReadVariableOp.dense_3/bias/Regularizer/Square/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2`
.dense_4/bias/Regularizer/Square/ReadVariableOp.dense_4/bias/Regularizer/Square/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2`
.dense_5/bias/Regularizer/Square/ReadVariableOp.dense_5/bias/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
C__inference_dense_5_layer_call_and_return_conditional_losses_145029

inputs0
matmul_readvariableop_resource:2	-
biasadd_readvariableop_resource:	
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?.dense_5/bias/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	?
.dense_5/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0?
dense_5/bias/Regularizer/SquareSquare6dense_5/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	h
dense_5/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_5/bias/Regularizer/SumSum#dense_5/bias/Regularizer/Square:y:0'dense_5/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_5/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_5/bias/Regularizer/mulMul'dense_5/bias/Regularizer/mul/x:output:0%dense_5/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????	?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense_5/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_5/bias/Regularizer/Square/ReadVariableOp.dense_5/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
G__inference_dense_4_layer_call_and_return_all_conditional_losses_144860

inputs
unknown:	?2
	unknown_0:2
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
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_143792?
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
GPU 2J 8? *8
f3R1
/__inference_dense_4_activity_regularizer_143667o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2X

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
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
C__inference_dense_3_layer_call_and_return_conditional_losses_143754

inputs1
matmul_readvariableop_resource:	\?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?.dense_3/bias/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	\?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:???????????
.dense_3/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_3/bias/Regularizer/SquareSquare6dense_3/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?h
dense_3/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_3/bias/Regularizer/SumSum#dense_3/bias/Regularizer/Square:y:0'dense_3/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_3/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_3/bias/Regularizer/mulMul'dense_3/bias/Regularizer/mul/x:output:0%dense_3/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense_3/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????\: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_3/bias/Regularizer/Square/ReadVariableOp.dense_3/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????\
 
_user_specified_nameinputs
?

?
__inference_loss_fn_2_144929F
7dense_3_bias_regularizer_square_readvariableop_resource:	?
identity??.dense_3/bias/Regularizer/Square/ReadVariableOp?
.dense_3/bias/Regularizer/Square/ReadVariableOpReadVariableOp7dense_3_bias_regularizer_square_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_3/bias/Regularizer/SquareSquare6dense_3/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?h
dense_3/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_3/bias/Regularizer/SumSum#dense_3/bias/Regularizer/Square:y:0'dense_3/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_3/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_3/bias/Regularizer/mulMul'dense_3/bias/Regularizer/mul/x:output:0%dense_3/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: ^
IdentityIdentity dense_3/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: w
NoOpNoOp/^dense_3/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.dense_3/bias/Regularizer/Square/ReadVariableOp.dense_3/bias/Regularizer/Square/ReadVariableOp
?
?
)__inference_conv1d_1_layer_call_fn_144759

inputs
unknown:	.
	unknown_0:.
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_143715s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????.`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????	: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
?
H__inference_conv1d_1_layer_call_and_return_all_conditional_losses_144770

inputs
unknown:	.
	unknown_0:.
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
:?????????.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_143715?
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
GPU 2J 8? *9
f4R2
0__inference_conv1d_1_activity_regularizer_143641s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????.X

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
_construction_contextkEagerRuntime*.
_input_shapes
:?????????	: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?x
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_143878

inputs%
conv1d_1_143716:	.
conv1d_1_143718:.!
dense_3_143755:	\?
dense_3_143757:	?!
dense_4_143793:	?2
dense_4_143795:2 
dense_5_143823:2	
dense_5_143825:	
identity

identity_1

identity_2

identity_3

identity_4?? conv1d_1/StatefulPartitionedCall?/conv1d_1/bias/Regularizer/Square/ReadVariableOp?1conv1d_1/kernel/Regularizer/Square/ReadVariableOp?dense_3/StatefulPartitionedCall?.dense_3/bias/Regularizer/Square/ReadVariableOp?dense_4/StatefulPartitionedCall?.dense_4/bias/Regularizer/Square/ReadVariableOp?dense_5/StatefulPartitionedCall?.dense_5/bias/Regularizer/Square/ReadVariableOp?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_1_143716conv1d_1_143718*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_143715?
,conv1d_1/ActivityRegularizer/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *9
f4R2
0__inference_conv1d_1_activity_regularizer_143641{
"conv1d_1/ActivityRegularizer/ShapeShape)conv1d_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0conv1d_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2conv1d_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2conv1d_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*conv1d_1/ActivityRegularizer/strided_sliceStridedSlice+conv1d_1/ActivityRegularizer/Shape:output:09conv1d_1/ActivityRegularizer/strided_slice/stack:output:0;conv1d_1/ActivityRegularizer/strided_slice/stack_1:output:0;conv1d_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!conv1d_1/ActivityRegularizer/CastCast3conv1d_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$conv1d_1/ActivityRegularizer/truedivRealDiv5conv1d_1/ActivityRegularizer/PartitionedCall:output:0%conv1d_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
flatten_1/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????\* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_143735?
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_3_143755dense_3_143757*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_143754?
+dense_3/ActivityRegularizer/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *8
f3R1
/__inference_dense_3_activity_regularizer_143654y
!dense_3/ActivityRegularizer/ShapeShape(dense_3/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_3/ActivityRegularizer/strided_sliceStridedSlice*dense_3/ActivityRegularizer/Shape:output:08dense_3/ActivityRegularizer/strided_slice/stack:output:0:dense_3/ActivityRegularizer/strided_slice/stack_1:output:0:dense_3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
 dense_3/ActivityRegularizer/CastCast2dense_3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
#dense_3/ActivityRegularizer/truedivRealDiv4dense_3/ActivityRegularizer/PartitionedCall:output:0$dense_3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
dropout_1/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_143773?
dense_4/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_4_143793dense_4_143795*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_143792?
+dense_4/ActivityRegularizer/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *8
f3R1
/__inference_dense_4_activity_regularizer_143667y
!dense_4/ActivityRegularizer/ShapeShape(dense_4/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_4/ActivityRegularizer/strided_sliceStridedSlice*dense_4/ActivityRegularizer/Shape:output:08dense_4/ActivityRegularizer/strided_slice/stack:output:0:dense_4/ActivityRegularizer/strided_slice/stack_1:output:0:dense_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
 dense_4/ActivityRegularizer/CastCast2dense_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
#dense_4/ActivityRegularizer/truedivRealDiv4dense_4/ActivityRegularizer/PartitionedCall:output:0$dense_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_143823dense_5_143825*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_143822?
+dense_5/ActivityRegularizer/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *8
f3R1
/__inference_dense_5_activity_regularizer_143680y
!dense_5/ActivityRegularizer/ShapeShape(dense_5/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_5/ActivityRegularizer/strided_sliceStridedSlice*dense_5/ActivityRegularizer/Shape:output:08dense_5/ActivityRegularizer/strided_slice/stack:output:0:dense_5/ActivityRegularizer/strided_slice/stack_1:output:0:dense_5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
 dense_5/ActivityRegularizer/CastCast2dense_5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
#dense_5/ActivityRegularizer/truedivRealDiv4dense_5/ActivityRegularizer/PartitionedCall:output:0$dense_5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
softmax_1/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_softmax_1_layer_call_and_return_conditional_losses_143841?
1conv1d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_1_143716*"
_output_shapes
:	.*
dtype0?
"conv1d_1/kernel/Regularizer/SquareSquare9conv1d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	.v
!conv1d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_1/kernel/Regularizer/SumSum&conv1d_1/kernel/Regularizer/Square:y:0*conv1d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
conv1d_1/kernel/Regularizer/mulMul*conv1d_1/kernel/Regularizer/mul/x:output:0(conv1d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: {
/conv1d_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_1_143718*
_output_shapes
:.*
dtype0?
 conv1d_1/bias/Regularizer/SquareSquare7conv1d_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:.i
conv1d_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
conv1d_1/bias/Regularizer/SumSum$conv1d_1/bias/Regularizer/Square:y:0(conv1d_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv1d_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
conv1d_1/bias/Regularizer/mulMul(conv1d_1/bias/Regularizer/mul/x:output:0&conv1d_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: z
.dense_3/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_3_143757*
_output_shapes	
:?*
dtype0?
dense_3/bias/Regularizer/SquareSquare6dense_3/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?h
dense_3/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_3/bias/Regularizer/SumSum#dense_3/bias/Regularizer/Square:y:0'dense_3/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_3/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_3/bias/Regularizer/mulMul'dense_3/bias/Regularizer/mul/x:output:0%dense_3/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
.dense_4/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_4_143795*
_output_shapes
:2*
dtype0?
dense_4/bias/Regularizer/SquareSquare6dense_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2h
dense_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_4/bias/Regularizer/SumSum#dense_4/bias/Regularizer/Square:y:0'dense_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_4/bias/Regularizer/mulMul'dense_4/bias/Regularizer/mul/x:output:0%dense_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
.dense_5/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_5_143825*
_output_shapes
:	*
dtype0?
dense_5/bias/Regularizer/SquareSquare6dense_5/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	h
dense_5/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_5/bias/Regularizer/SumSum#dense_5/bias/Regularizer/Square:y:0'dense_5/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_5/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_5/bias/Regularizer/mulMul'dense_5/bias/Regularizer/mul/x:output:0%dense_5/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: q
IdentityIdentity"softmax_1/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	h

Identity_1Identity(conv1d_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_2Identity'dense_3/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_3Identity'dense_4/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_4Identity'dense_5/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp!^conv1d_1/StatefulPartitionedCall0^conv1d_1/bias/Regularizer/Square/ReadVariableOp2^conv1d_1/kernel/Regularizer/Square/ReadVariableOp ^dense_3/StatefulPartitionedCall/^dense_3/bias/Regularizer/Square/ReadVariableOp ^dense_4/StatefulPartitionedCall/^dense_4/bias/Regularizer/Square/ReadVariableOp ^dense_5/StatefulPartitionedCall/^dense_5/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????	: : : : : : : : 2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2b
/conv1d_1/bias/Regularizer/Square/ReadVariableOp/conv1d_1/bias/Regularizer/Square/ReadVariableOp2f
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp1conv1d_1/kernel/Regularizer/Square/ReadVariableOp2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2`
.dense_3/bias/Regularizer/Square/ReadVariableOp.dense_3/bias/Regularizer/Square/ReadVariableOp2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2`
.dense_4/bias/Regularizer/Square/ReadVariableOp.dense_4/bias/Regularizer/Square/ReadVariableOp2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2`
.dense_5/bias/Regularizer/Square/ReadVariableOp.dense_5/bias/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
F
*__inference_dropout_1_layer_call_fn_144812

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
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_143773a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
__inference_loss_fn_3_144940E
7dense_4_bias_regularizer_square_readvariableop_resource:2
identity??.dense_4/bias/Regularizer/Square/ReadVariableOp?
.dense_4/bias/Regularizer/Square/ReadVariableOpReadVariableOp7dense_4_bias_regularizer_square_readvariableop_resource*
_output_shapes
:2*
dtype0?
dense_4/bias/Regularizer/SquareSquare6dense_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2h
dense_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_4/bias/Regularizer/SumSum#dense_4/bias/Regularizer/Square:y:0'dense_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_4/bias/Regularizer/mulMul'dense_4/bias/Regularizer/mul/x:output:0%dense_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: ^
IdentityIdentity dense_4/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: w
NoOpNoOp/^dense_4/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.dense_4/bias/Regularizer/Square/ReadVariableOp.dense_4/bias/Regularizer/Square/ReadVariableOp
?y
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_144285
conv1d_1_input%
conv1d_1_144195:	.
conv1d_1_144197:.!
dense_3_144209:	\?
dense_3_144211:	?!
dense_4_144223:	?2
dense_4_144225:2 
dense_5_144236:2	
dense_5_144238:	
identity

identity_1

identity_2

identity_3

identity_4?? conv1d_1/StatefulPartitionedCall?/conv1d_1/bias/Regularizer/Square/ReadVariableOp?1conv1d_1/kernel/Regularizer/Square/ReadVariableOp?dense_3/StatefulPartitionedCall?.dense_3/bias/Regularizer/Square/ReadVariableOp?dense_4/StatefulPartitionedCall?.dense_4/bias/Regularizer/Square/ReadVariableOp?dense_5/StatefulPartitionedCall?.dense_5/bias/Regularizer/Square/ReadVariableOp?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCallconv1d_1_inputconv1d_1_144195conv1d_1_144197*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_143715?
,conv1d_1/ActivityRegularizer/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *9
f4R2
0__inference_conv1d_1_activity_regularizer_143641{
"conv1d_1/ActivityRegularizer/ShapeShape)conv1d_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0conv1d_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2conv1d_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2conv1d_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*conv1d_1/ActivityRegularizer/strided_sliceStridedSlice+conv1d_1/ActivityRegularizer/Shape:output:09conv1d_1/ActivityRegularizer/strided_slice/stack:output:0;conv1d_1/ActivityRegularizer/strided_slice/stack_1:output:0;conv1d_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!conv1d_1/ActivityRegularizer/CastCast3conv1d_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$conv1d_1/ActivityRegularizer/truedivRealDiv5conv1d_1/ActivityRegularizer/PartitionedCall:output:0%conv1d_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
flatten_1/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????\* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_143735?
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_3_144209dense_3_144211*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_143754?
+dense_3/ActivityRegularizer/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *8
f3R1
/__inference_dense_3_activity_regularizer_143654y
!dense_3/ActivityRegularizer/ShapeShape(dense_3/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_3/ActivityRegularizer/strided_sliceStridedSlice*dense_3/ActivityRegularizer/Shape:output:08dense_3/ActivityRegularizer/strided_slice/stack:output:0:dense_3/ActivityRegularizer/strided_slice/stack_1:output:0:dense_3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
 dense_3/ActivityRegularizer/CastCast2dense_3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
#dense_3/ActivityRegularizer/truedivRealDiv4dense_3/ActivityRegularizer/PartitionedCall:output:0$dense_3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
dropout_1/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_143773?
dense_4/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_4_144223dense_4_144225*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_143792?
+dense_4/ActivityRegularizer/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *8
f3R1
/__inference_dense_4_activity_regularizer_143667y
!dense_4/ActivityRegularizer/ShapeShape(dense_4/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_4/ActivityRegularizer/strided_sliceStridedSlice*dense_4/ActivityRegularizer/Shape:output:08dense_4/ActivityRegularizer/strided_slice/stack:output:0:dense_4/ActivityRegularizer/strided_slice/stack_1:output:0:dense_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
 dense_4/ActivityRegularizer/CastCast2dense_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
#dense_4/ActivityRegularizer/truedivRealDiv4dense_4/ActivityRegularizer/PartitionedCall:output:0$dense_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_144236dense_5_144238*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_143822?
+dense_5/ActivityRegularizer/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *8
f3R1
/__inference_dense_5_activity_regularizer_143680y
!dense_5/ActivityRegularizer/ShapeShape(dense_5/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_5/ActivityRegularizer/strided_sliceStridedSlice*dense_5/ActivityRegularizer/Shape:output:08dense_5/ActivityRegularizer/strided_slice/stack:output:0:dense_5/ActivityRegularizer/strided_slice/stack_1:output:0:dense_5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
 dense_5/ActivityRegularizer/CastCast2dense_5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
#dense_5/ActivityRegularizer/truedivRealDiv4dense_5/ActivityRegularizer/PartitionedCall:output:0$dense_5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
softmax_1/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_softmax_1_layer_call_and_return_conditional_losses_143841?
1conv1d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_1_144195*"
_output_shapes
:	.*
dtype0?
"conv1d_1/kernel/Regularizer/SquareSquare9conv1d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	.v
!conv1d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_1/kernel/Regularizer/SumSum&conv1d_1/kernel/Regularizer/Square:y:0*conv1d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
conv1d_1/kernel/Regularizer/mulMul*conv1d_1/kernel/Regularizer/mul/x:output:0(conv1d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: {
/conv1d_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_1_144197*
_output_shapes
:.*
dtype0?
 conv1d_1/bias/Regularizer/SquareSquare7conv1d_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:.i
conv1d_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
conv1d_1/bias/Regularizer/SumSum$conv1d_1/bias/Regularizer/Square:y:0(conv1d_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv1d_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
conv1d_1/bias/Regularizer/mulMul(conv1d_1/bias/Regularizer/mul/x:output:0&conv1d_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: z
.dense_3/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_3_144211*
_output_shapes	
:?*
dtype0?
dense_3/bias/Regularizer/SquareSquare6dense_3/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?h
dense_3/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_3/bias/Regularizer/SumSum#dense_3/bias/Regularizer/Square:y:0'dense_3/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_3/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_3/bias/Regularizer/mulMul'dense_3/bias/Regularizer/mul/x:output:0%dense_3/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
.dense_4/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_4_144225*
_output_shapes
:2*
dtype0?
dense_4/bias/Regularizer/SquareSquare6dense_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2h
dense_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_4/bias/Regularizer/SumSum#dense_4/bias/Regularizer/Square:y:0'dense_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_4/bias/Regularizer/mulMul'dense_4/bias/Regularizer/mul/x:output:0%dense_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
.dense_5/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_5_144238*
_output_shapes
:	*
dtype0?
dense_5/bias/Regularizer/SquareSquare6dense_5/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	h
dense_5/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_5/bias/Regularizer/SumSum#dense_5/bias/Regularizer/Square:y:0'dense_5/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_5/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_5/bias/Regularizer/mulMul'dense_5/bias/Regularizer/mul/x:output:0%dense_5/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: q
IdentityIdentity"softmax_1/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	h

Identity_1Identity(conv1d_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_2Identity'dense_3/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_3Identity'dense_4/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_4Identity'dense_5/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp!^conv1d_1/StatefulPartitionedCall0^conv1d_1/bias/Regularizer/Square/ReadVariableOp2^conv1d_1/kernel/Regularizer/Square/ReadVariableOp ^dense_3/StatefulPartitionedCall/^dense_3/bias/Regularizer/Square/ReadVariableOp ^dense_4/StatefulPartitionedCall/^dense_4/bias/Regularizer/Square/ReadVariableOp ^dense_5/StatefulPartitionedCall/^dense_5/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????	: : : : : : : : 2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2b
/conv1d_1/bias/Regularizer/Square/ReadVariableOp/conv1d_1/bias/Regularizer/Square/ReadVariableOp2f
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp1conv1d_1/kernel/Regularizer/Square/ReadVariableOp2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2`
.dense_3/bias/Regularizer/Square/ReadVariableOp.dense_3/bias/Regularizer/Square/ReadVariableOp2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2`
.dense_4/bias/Regularizer/Square/ReadVariableOp.dense_4/bias/Regularizer/Square/ReadVariableOp2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2`
.dense_5/bias/Regularizer/Square/ReadVariableOp.dense_5/bias/Regularizer/Square/ReadVariableOp:[ W
+
_output_shapes
:?????????	
(
_user_specified_nameconv1d_1_input
?z
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_144378
conv1d_1_input%
conv1d_1_144288:	.
conv1d_1_144290:.!
dense_3_144302:	\?
dense_3_144304:	?!
dense_4_144316:	?2
dense_4_144318:2 
dense_5_144329:2	
dense_5_144331:	
identity

identity_1

identity_2

identity_3

identity_4?? conv1d_1/StatefulPartitionedCall?/conv1d_1/bias/Regularizer/Square/ReadVariableOp?1conv1d_1/kernel/Regularizer/Square/ReadVariableOp?dense_3/StatefulPartitionedCall?.dense_3/bias/Regularizer/Square/ReadVariableOp?dense_4/StatefulPartitionedCall?.dense_4/bias/Regularizer/Square/ReadVariableOp?dense_5/StatefulPartitionedCall?.dense_5/bias/Regularizer/Square/ReadVariableOp?!dropout_1/StatefulPartitionedCall?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCallconv1d_1_inputconv1d_1_144288conv1d_1_144290*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_143715?
,conv1d_1/ActivityRegularizer/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *9
f4R2
0__inference_conv1d_1_activity_regularizer_143641{
"conv1d_1/ActivityRegularizer/ShapeShape)conv1d_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0conv1d_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2conv1d_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2conv1d_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*conv1d_1/ActivityRegularizer/strided_sliceStridedSlice+conv1d_1/ActivityRegularizer/Shape:output:09conv1d_1/ActivityRegularizer/strided_slice/stack:output:0;conv1d_1/ActivityRegularizer/strided_slice/stack_1:output:0;conv1d_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!conv1d_1/ActivityRegularizer/CastCast3conv1d_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$conv1d_1/ActivityRegularizer/truedivRealDiv5conv1d_1/ActivityRegularizer/PartitionedCall:output:0%conv1d_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
flatten_1/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????\* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_143735?
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_3_144302dense_3_144304*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_143754?
+dense_3/ActivityRegularizer/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *8
f3R1
/__inference_dense_3_activity_regularizer_143654y
!dense_3/ActivityRegularizer/ShapeShape(dense_3/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_3/ActivityRegularizer/strided_sliceStridedSlice*dense_3/ActivityRegularizer/Shape:output:08dense_3/ActivityRegularizer/strided_slice/stack:output:0:dense_3/ActivityRegularizer/strided_slice/stack_1:output:0:dense_3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
 dense_3/ActivityRegularizer/CastCast2dense_3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
#dense_3/ActivityRegularizer/truedivRealDiv4dense_3/ActivityRegularizer/PartitionedCall:output:0$dense_3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_143971?
dense_4/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_4_144316dense_4_144318*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_143792?
+dense_4/ActivityRegularizer/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *8
f3R1
/__inference_dense_4_activity_regularizer_143667y
!dense_4/ActivityRegularizer/ShapeShape(dense_4/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_4/ActivityRegularizer/strided_sliceStridedSlice*dense_4/ActivityRegularizer/Shape:output:08dense_4/ActivityRegularizer/strided_slice/stack:output:0:dense_4/ActivityRegularizer/strided_slice/stack_1:output:0:dense_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
 dense_4/ActivityRegularizer/CastCast2dense_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
#dense_4/ActivityRegularizer/truedivRealDiv4dense_4/ActivityRegularizer/PartitionedCall:output:0$dense_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_144329dense_5_144331*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_143822?
+dense_5/ActivityRegularizer/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *8
f3R1
/__inference_dense_5_activity_regularizer_143680y
!dense_5/ActivityRegularizer/ShapeShape(dense_5/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_5/ActivityRegularizer/strided_sliceStridedSlice*dense_5/ActivityRegularizer/Shape:output:08dense_5/ActivityRegularizer/strided_slice/stack:output:0:dense_5/ActivityRegularizer/strided_slice/stack_1:output:0:dense_5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
 dense_5/ActivityRegularizer/CastCast2dense_5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
#dense_5/ActivityRegularizer/truedivRealDiv4dense_5/ActivityRegularizer/PartitionedCall:output:0$dense_5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
softmax_1/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_softmax_1_layer_call_and_return_conditional_losses_143841?
1conv1d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_1_144288*"
_output_shapes
:	.*
dtype0?
"conv1d_1/kernel/Regularizer/SquareSquare9conv1d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	.v
!conv1d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_1/kernel/Regularizer/SumSum&conv1d_1/kernel/Regularizer/Square:y:0*conv1d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
conv1d_1/kernel/Regularizer/mulMul*conv1d_1/kernel/Regularizer/mul/x:output:0(conv1d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: {
/conv1d_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_1_144290*
_output_shapes
:.*
dtype0?
 conv1d_1/bias/Regularizer/SquareSquare7conv1d_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:.i
conv1d_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
conv1d_1/bias/Regularizer/SumSum$conv1d_1/bias/Regularizer/Square:y:0(conv1d_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv1d_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
conv1d_1/bias/Regularizer/mulMul(conv1d_1/bias/Regularizer/mul/x:output:0&conv1d_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: z
.dense_3/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_3_144304*
_output_shapes	
:?*
dtype0?
dense_3/bias/Regularizer/SquareSquare6dense_3/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?h
dense_3/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_3/bias/Regularizer/SumSum#dense_3/bias/Regularizer/Square:y:0'dense_3/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_3/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_3/bias/Regularizer/mulMul'dense_3/bias/Regularizer/mul/x:output:0%dense_3/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
.dense_4/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_4_144318*
_output_shapes
:2*
dtype0?
dense_4/bias/Regularizer/SquareSquare6dense_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2h
dense_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_4/bias/Regularizer/SumSum#dense_4/bias/Regularizer/Square:y:0'dense_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_4/bias/Regularizer/mulMul'dense_4/bias/Regularizer/mul/x:output:0%dense_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
.dense_5/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_5_144331*
_output_shapes
:	*
dtype0?
dense_5/bias/Regularizer/SquareSquare6dense_5/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	h
dense_5/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_5/bias/Regularizer/SumSum#dense_5/bias/Regularizer/Square:y:0'dense_5/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_5/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_5/bias/Regularizer/mulMul'dense_5/bias/Regularizer/mul/x:output:0%dense_5/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: q
IdentityIdentity"softmax_1/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	h

Identity_1Identity(conv1d_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_2Identity'dense_3/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_3Identity'dense_4/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_4Identity'dense_5/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp!^conv1d_1/StatefulPartitionedCall0^conv1d_1/bias/Regularizer/Square/ReadVariableOp2^conv1d_1/kernel/Regularizer/Square/ReadVariableOp ^dense_3/StatefulPartitionedCall/^dense_3/bias/Regularizer/Square/ReadVariableOp ^dense_4/StatefulPartitionedCall/^dense_4/bias/Regularizer/Square/ReadVariableOp ^dense_5/StatefulPartitionedCall/^dense_5/bias/Regularizer/Square/ReadVariableOp"^dropout_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????	: : : : : : : : 2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2b
/conv1d_1/bias/Regularizer/Square/ReadVariableOp/conv1d_1/bias/Regularizer/Square/ReadVariableOp2f
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp1conv1d_1/kernel/Regularizer/Square/ReadVariableOp2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2`
.dense_3/bias/Regularizer/Square/ReadVariableOp.dense_3/bias/Regularizer/Square/ReadVariableOp2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2`
.dense_4/bias/Regularizer/Square/ReadVariableOp.dense_4/bias/Regularizer/Square/ReadVariableOp2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2`
.dense_5/bias/Regularizer/Square/ReadVariableOp.dense_5/bias/Regularizer/Square/ReadVariableOp2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:[ W
+
_output_shapes
:?????????	
(
_user_specified_nameconv1d_1_input
?
?
(__inference_dense_5_layer_call_fn_144875

inputs
unknown:2	
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
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_143822o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
?
$__inference_signature_wrapper_144437
conv1d_1_input
unknown:	.
	unknown_0:.
	unknown_1:	\?
	unknown_2:	?
	unknown_3:	?2
	unknown_4:2
	unknown_5:2	
	unknown_6:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv1d_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_143628o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????	
(
_user_specified_nameconv1d_1_input
?
?
G__inference_dense_5_layer_call_and_return_all_conditional_losses_144886

inputs
unknown:2	
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
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_143822?
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
GPU 2J 8? *8
f3R1
/__inference_dense_5_activity_regularizer_143680o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	X

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
:?????????2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
(__inference_dense_3_layer_call_fn_144796

inputs
unknown:	\?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_143754p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????\: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????\
 
_user_specified_nameinputs
?F
?
__inference__traced_save_145151
file_prefix.
*savev2_conv1d_1_kernel_read_readvariableop,
(savev2_conv1d_1_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_conv1d_1_kernel_m_read_readvariableop3
/savev2_adam_conv1d_1_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableop5
1savev2_adam_conv1d_1_kernel_v_read_readvariableop3
/savev2_adam_conv1d_1_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableop
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
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv1d_1_kernel_read_readvariableop(savev2_conv1d_1_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_conv1d_1_kernel_m_read_readvariableop/savev2_adam_conv1d_1_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableop1savev2_adam_conv1d_1_kernel_v_read_readvariableop/savev2_adam_conv1d_1_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :	.:.:	\?:?:	?2:2:2	:	: : : : : : : : : :	.:.:	\?:?:	?2:2:2	:	:	.:.:	\?:?:	?2:2:2	:	: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:	.: 

_output_shapes
:.:%!

_output_shapes
:	\?:!

_output_shapes	
:?:%!

_output_shapes
:	?2: 
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
:	.: 

_output_shapes
:.:%!

_output_shapes
:	\?:!

_output_shapes	
:?:%!

_output_shapes
:	?2: 
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
:	.: 

_output_shapes
:.:%!

_output_shapes
:	\?:!

_output_shapes	
:?:%!

_output_shapes
:	?2: 
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
?
F
/__inference_dense_3_activity_regularizer_143654
x
identity6
SquareSquarex*
T0*
_output_shapes
:9
RankRank
Square:y:0*
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
:?????????G
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    I
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
? 
?
D__inference_conv1d_1_layer_call_and_return_conditional_losses_143715

inputsA
+conv1d_expanddims_1_readvariableop_resource:	.-
biasadd_readvariableop_resource:.
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp?/conv1d_1/bias/Regularizer/Square/ReadVariableOp?1conv1d_1/kernel/Regularizer/Square/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????	?
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	.*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	.?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????.*
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:?????????.*
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:.*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????.R
EluEluBiasAdd:output:0*
T0*+
_output_shapes
:?????????.?
1conv1d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	.*
dtype0?
"conv1d_1/kernel/Regularizer/SquareSquare9conv1d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	.v
!conv1d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_1/kernel/Regularizer/SumSum&conv1d_1/kernel/Regularizer/Square:y:0*conv1d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
conv1d_1/kernel/Regularizer/mulMul*conv1d_1/kernel/Regularizer/mul/x:output:0(conv1d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
/conv1d_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:.*
dtype0?
 conv1d_1/bias/Regularizer/SquareSquare7conv1d_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:.i
conv1d_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
conv1d_1/bias/Regularizer/SumSum$conv1d_1/bias/Regularizer/Square:y:0(conv1d_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv1d_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
conv1d_1/bias/Regularizer/mulMul(conv1d_1/bias/Regularizer/mul/x:output:0&conv1d_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: d
IdentityIdentityElu:activations:0^NoOp*
T0*+
_output_shapes
:?????????.?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp0^conv1d_1/bias/Regularizer/Square/ReadVariableOp2^conv1d_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp2b
/conv1d_1/bias/Regularizer/Square/ReadVariableOp/conv1d_1/bias/Regularizer/Square/ReadVariableOp2f
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp1conv1d_1/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_143773

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_dense_3_layer_call_and_return_all_conditional_losses_144807

inputs
unknown:	\?
	unknown_0:	?
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
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_143754?
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
GPU 2J 8? *8
f3R1
/__inference_dense_3_activity_regularizer_143654p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????X

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
:?????????\: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????\
 
_user_specified_nameinputs
?
F
/__inference_dense_4_activity_regularizer_143667
x
identity6
SquareSquarex*
T0*
_output_shapes
:9
RankRank
Square:y:0*
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
:?????????G
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    I
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
?
a
E__inference_softmax_1_layer_call_and_return_conditional_losses_144896

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????	Y
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????	:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_144781

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????\   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????\X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????\"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????.:S O
+
_output_shapes
:?????????.
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_144918F
8conv1d_1_bias_regularizer_square_readvariableop_resource:.
identity??/conv1d_1/bias/Regularizer/Square/ReadVariableOp?
/conv1d_1/bias/Regularizer/Square/ReadVariableOpReadVariableOp8conv1d_1_bias_regularizer_square_readvariableop_resource*
_output_shapes
:.*
dtype0?
 conv1d_1/bias/Regularizer/SquareSquare7conv1d_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:.i
conv1d_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
conv1d_1/bias/Regularizer/SumSum$conv1d_1/bias/Regularizer/Square:y:0(conv1d_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv1d_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
conv1d_1/bias/Regularizer/mulMul(conv1d_1/bias/Regularizer/mul/x:output:0&conv1d_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentity!conv1d_1/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: x
NoOpNoOp0^conv1d_1/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/conv1d_1/bias/Regularizer/Square/ReadVariableOp/conv1d_1/bias/Regularizer/Square/ReadVariableOp
?
F
*__inference_flatten_1_layer_call_fn_144775

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
:?????????\* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_143735`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????\"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????.:S O
+
_output_shapes
:?????????.
 
_user_specified_nameinputs
?	
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_143971

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?J??e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_144822

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
F
*__inference_softmax_1_layer_call_fn_144891

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
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_softmax_1_layer_call_and_return_conditional_losses_143841`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????	:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?z
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_144144

inputs%
conv1d_1_144054:	.
conv1d_1_144056:.!
dense_3_144068:	\?
dense_3_144070:	?!
dense_4_144082:	?2
dense_4_144084:2 
dense_5_144095:2	
dense_5_144097:	
identity

identity_1

identity_2

identity_3

identity_4?? conv1d_1/StatefulPartitionedCall?/conv1d_1/bias/Regularizer/Square/ReadVariableOp?1conv1d_1/kernel/Regularizer/Square/ReadVariableOp?dense_3/StatefulPartitionedCall?.dense_3/bias/Regularizer/Square/ReadVariableOp?dense_4/StatefulPartitionedCall?.dense_4/bias/Regularizer/Square/ReadVariableOp?dense_5/StatefulPartitionedCall?.dense_5/bias/Regularizer/Square/ReadVariableOp?!dropout_1/StatefulPartitionedCall?
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_1_144054conv1d_1_144056*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????.*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_conv1d_1_layer_call_and_return_conditional_losses_143715?
,conv1d_1/ActivityRegularizer/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *9
f4R2
0__inference_conv1d_1_activity_regularizer_143641{
"conv1d_1/ActivityRegularizer/ShapeShape)conv1d_1/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:z
0conv1d_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2conv1d_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2conv1d_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*conv1d_1/ActivityRegularizer/strided_sliceStridedSlice+conv1d_1/ActivityRegularizer/Shape:output:09conv1d_1/ActivityRegularizer/strided_slice/stack:output:0;conv1d_1/ActivityRegularizer/strided_slice/stack_1:output:0;conv1d_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!conv1d_1/ActivityRegularizer/CastCast3conv1d_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$conv1d_1/ActivityRegularizer/truedivRealDiv5conv1d_1/ActivityRegularizer/PartitionedCall:output:0%conv1d_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
flatten_1/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????\* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_143735?
dense_3/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_3_144068dense_3_144070*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_143754?
+dense_3/ActivityRegularizer/PartitionedCallPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *8
f3R1
/__inference_dense_3_activity_regularizer_143654y
!dense_3/ActivityRegularizer/ShapeShape(dense_3/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_3/ActivityRegularizer/strided_sliceStridedSlice*dense_3/ActivityRegularizer/Shape:output:08dense_3/ActivityRegularizer/strided_slice/stack:output:0:dense_3/ActivityRegularizer/strided_slice/stack_1:output:0:dense_3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
 dense_3/ActivityRegularizer/CastCast2dense_3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
#dense_3/ActivityRegularizer/truedivRealDiv4dense_3/ActivityRegularizer/PartitionedCall:output:0$dense_3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_143971?
dense_4/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_4_144082dense_4_144084*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_143792?
+dense_4/ActivityRegularizer/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *8
f3R1
/__inference_dense_4_activity_regularizer_143667y
!dense_4/ActivityRegularizer/ShapeShape(dense_4/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_4/ActivityRegularizer/strided_sliceStridedSlice*dense_4/ActivityRegularizer/Shape:output:08dense_4/ActivityRegularizer/strided_slice/stack:output:0:dense_4/ActivityRegularizer/strided_slice/stack_1:output:0:dense_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
 dense_4/ActivityRegularizer/CastCast2dense_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
#dense_4/ActivityRegularizer/truedivRealDiv4dense_4/ActivityRegularizer/PartitionedCall:output:0$dense_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_144095dense_5_144097*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_143822?
+dense_5/ActivityRegularizer/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *8
f3R1
/__inference_dense_5_activity_regularizer_143680y
!dense_5/ActivityRegularizer/ShapeShape(dense_5/StatefulPartitionedCall:output:0*
T0*
_output_shapes
:y
/dense_5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_5/ActivityRegularizer/strided_sliceStridedSlice*dense_5/ActivityRegularizer/Shape:output:08dense_5/ActivityRegularizer/strided_slice/stack:output:0:dense_5/ActivityRegularizer/strided_slice/stack_1:output:0:dense_5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
 dense_5/ActivityRegularizer/CastCast2dense_5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
#dense_5/ActivityRegularizer/truedivRealDiv4dense_5/ActivityRegularizer/PartitionedCall:output:0$dense_5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
softmax_1/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_softmax_1_layer_call_and_return_conditional_losses_143841?
1conv1d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_1_144054*"
_output_shapes
:	.*
dtype0?
"conv1d_1/kernel/Regularizer/SquareSquare9conv1d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	.v
!conv1d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_1/kernel/Regularizer/SumSum&conv1d_1/kernel/Regularizer/Square:y:0*conv1d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
conv1d_1/kernel/Regularizer/mulMul*conv1d_1/kernel/Regularizer/mul/x:output:0(conv1d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: {
/conv1d_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_1_144056*
_output_shapes
:.*
dtype0?
 conv1d_1/bias/Regularizer/SquareSquare7conv1d_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:.i
conv1d_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
conv1d_1/bias/Regularizer/SumSum$conv1d_1/bias/Regularizer/Square:y:0(conv1d_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv1d_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
conv1d_1/bias/Regularizer/mulMul(conv1d_1/bias/Regularizer/mul/x:output:0&conv1d_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: z
.dense_3/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_3_144070*
_output_shapes	
:?*
dtype0?
dense_3/bias/Regularizer/SquareSquare6dense_3/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?h
dense_3/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_3/bias/Regularizer/SumSum#dense_3/bias/Regularizer/Square:y:0'dense_3/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_3/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_3/bias/Regularizer/mulMul'dense_3/bias/Regularizer/mul/x:output:0%dense_3/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
.dense_4/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_4_144084*
_output_shapes
:2*
dtype0?
dense_4/bias/Regularizer/SquareSquare6dense_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2h
dense_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_4/bias/Regularizer/SumSum#dense_4/bias/Regularizer/Square:y:0'dense_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_4/bias/Regularizer/mulMul'dense_4/bias/Regularizer/mul/x:output:0%dense_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: y
.dense_5/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_5_144097*
_output_shapes
:	*
dtype0?
dense_5/bias/Regularizer/SquareSquare6dense_5/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	h
dense_5/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_5/bias/Regularizer/SumSum#dense_5/bias/Regularizer/Square:y:0'dense_5/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_5/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_5/bias/Regularizer/mulMul'dense_5/bias/Regularizer/mul/x:output:0%dense_5/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: q
IdentityIdentity"softmax_1/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	h

Identity_1Identity(conv1d_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_2Identity'dense_3/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_3Identity'dense_4/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_4Identity'dense_5/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp!^conv1d_1/StatefulPartitionedCall0^conv1d_1/bias/Regularizer/Square/ReadVariableOp2^conv1d_1/kernel/Regularizer/Square/ReadVariableOp ^dense_3/StatefulPartitionedCall/^dense_3/bias/Regularizer/Square/ReadVariableOp ^dense_4/StatefulPartitionedCall/^dense_4/bias/Regularizer/Square/ReadVariableOp ^dense_5/StatefulPartitionedCall/^dense_5/bias/Regularizer/Square/ReadVariableOp"^dropout_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????	: : : : : : : : 2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2b
/conv1d_1/bias/Regularizer/Square/ReadVariableOp/conv1d_1/bias/Regularizer/Square/ReadVariableOp2f
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp1conv1d_1/kernel/Regularizer/Square/ReadVariableOp2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2`
.dense_3/bias/Regularizer/Square/ReadVariableOp.dense_3/bias/Regularizer/Square/ReadVariableOp2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2`
.dense_4/bias/Regularizer/Square/ReadVariableOp.dense_4/bias/Regularizer/Square/ReadVariableOp2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2`
.dense_5/bias/Regularizer/Square/ReadVariableOp.dense_5/bias/Regularizer/Square/ReadVariableOp2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_143735

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????\   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????\X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????\"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????.:S O
+
_output_shapes
:?????????.
 
_user_specified_nameinputs
?
c
*__inference_dropout_1_layer_call_fn_144817

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
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_143971p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
C__inference_dense_4_layer_call_and_return_conditional_losses_143792

inputs1
matmul_readvariableop_resource:	?2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?.dense_4/bias/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
.dense_4/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
dense_4/bias/Regularizer/SquareSquare6dense_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2h
dense_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_4/bias/Regularizer/SumSum#dense_4/bias/Regularizer/Square:y:0'dense_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_4/bias/Regularizer/mulMul'dense_4/bias/Regularizer/mul/x:output:0%dense_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense_4/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_4/bias/Regularizer/Square/ReadVariableOp.dense_4/bias/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
C__inference_dense_4_layer_call_and_return_conditional_losses_145013

inputs1
matmul_readvariableop_resource:	?2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?.dense_4/bias/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
.dense_4/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
dense_4/bias/Regularizer/SquareSquare6dense_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2h
dense_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_4/bias/Regularizer/SumSum#dense_4/bias/Regularizer/Square:y:0'dense_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_4/bias/Regularizer/mulMul'dense_4/bias/Regularizer/mul/x:output:0%dense_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????2?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense_4/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_4/bias/Regularizer/Square/ReadVariableOp.dense_4/bias/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
C__inference_dense_3_layer_call_and_return_conditional_losses_144996

inputs1
matmul_readvariableop_resource:	\?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?.dense_3/bias/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	\?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:???????????
.dense_3/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_3/bias/Regularizer/SquareSquare6dense_3/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?h
dense_3/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_3/bias/Regularizer/SumSum#dense_3/bias/Regularizer/Square:y:0'dense_3/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_3/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_3/bias/Regularizer/mulMul'dense_3/bias/Regularizer/mul/x:output:0%dense_3/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:???????????
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense_3/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????\: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_3/bias/Regularizer/Square/ReadVariableOp.dense_3/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????\
 
_user_specified_nameinputs
?z
?
!__inference__wrapped_model_143628
conv1d_1_inputW
Asequential_1_conv1d_1_conv1d_expanddims_1_readvariableop_resource:	.C
5sequential_1_conv1d_1_biasadd_readvariableop_resource:.F
3sequential_1_dense_3_matmul_readvariableop_resource:	\?C
4sequential_1_dense_3_biasadd_readvariableop_resource:	?F
3sequential_1_dense_4_matmul_readvariableop_resource:	?2B
4sequential_1_dense_4_biasadd_readvariableop_resource:2E
3sequential_1_dense_5_matmul_readvariableop_resource:2	B
4sequential_1_dense_5_biasadd_readvariableop_resource:	
identity??,sequential_1/conv1d_1/BiasAdd/ReadVariableOp?8sequential_1/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp?+sequential_1/dense_3/BiasAdd/ReadVariableOp?*sequential_1/dense_3/MatMul/ReadVariableOp?+sequential_1/dense_4/BiasAdd/ReadVariableOp?*sequential_1/dense_4/MatMul/ReadVariableOp?+sequential_1/dense_5/BiasAdd/ReadVariableOp?*sequential_1/dense_5/MatMul/ReadVariableOpv
+sequential_1/conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
'sequential_1/conv1d_1/Conv1D/ExpandDims
ExpandDimsconv1d_1_input4sequential_1/conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????	?
8sequential_1/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpAsequential_1_conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	.*
dtype0o
-sequential_1/conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/conv1d_1/Conv1D/ExpandDims_1
ExpandDims@sequential_1/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:06sequential_1/conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	.?
sequential_1/conv1d_1/Conv1DConv2D0sequential_1/conv1d_1/Conv1D/ExpandDims:output:02sequential_1/conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????.*
paddingVALID*
strides
?
$sequential_1/conv1d_1/Conv1D/SqueezeSqueeze%sequential_1/conv1d_1/Conv1D:output:0*
T0*+
_output_shapes
:?????????.*
squeeze_dims

??????????
,sequential_1/conv1d_1/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv1d_1_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0?
sequential_1/conv1d_1/BiasAddBiasAdd-sequential_1/conv1d_1/Conv1D/Squeeze:output:04sequential_1/conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????.~
sequential_1/conv1d_1/EluElu&sequential_1/conv1d_1/BiasAdd:output:0*
T0*+
_output_shapes
:?????????.?
0sequential_1/conv1d_1/ActivityRegularizer/SquareSquare'sequential_1/conv1d_1/Elu:activations:0*
T0*+
_output_shapes
:?????????.?
/sequential_1/conv1d_1/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
-sequential_1/conv1d_1/ActivityRegularizer/SumSum4sequential_1/conv1d_1/ActivityRegularizer/Square:y:08sequential_1/conv1d_1/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: t
/sequential_1/conv1d_1/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
-sequential_1/conv1d_1/ActivityRegularizer/mulMul8sequential_1/conv1d_1/ActivityRegularizer/mul/x:output:06sequential_1/conv1d_1/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: ?
/sequential_1/conv1d_1/ActivityRegularizer/ShapeShape'sequential_1/conv1d_1/Elu:activations:0*
T0*
_output_shapes
:?
=sequential_1/conv1d_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
?sequential_1/conv1d_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?sequential_1/conv1d_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7sequential_1/conv1d_1/ActivityRegularizer/strided_sliceStridedSlice8sequential_1/conv1d_1/ActivityRegularizer/Shape:output:0Fsequential_1/conv1d_1/ActivityRegularizer/strided_slice/stack:output:0Hsequential_1/conv1d_1/ActivityRegularizer/strided_slice/stack_1:output:0Hsequential_1/conv1d_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
.sequential_1/conv1d_1/ActivityRegularizer/CastCast@sequential_1/conv1d_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
1sequential_1/conv1d_1/ActivityRegularizer/truedivRealDiv1sequential_1/conv1d_1/ActivityRegularizer/mul:z:02sequential_1/conv1d_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: m
sequential_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????\   ?
sequential_1/flatten_1/ReshapeReshape'sequential_1/conv1d_1/Elu:activations:0%sequential_1/flatten_1/Const:output:0*
T0*'
_output_shapes
:?????????\?
*sequential_1/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_3_matmul_readvariableop_resource*
_output_shapes
:	\?*
dtype0?
sequential_1/dense_3/MatMulMatMul'sequential_1/flatten_1/Reshape:output:02sequential_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_3/BiasAddBiasAdd%sequential_1/dense_3/MatMul:product:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????{
sequential_1/dense_3/ReluRelu%sequential_1/dense_3/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
/sequential_1/dense_3/ActivityRegularizer/SquareSquare'sequential_1/dense_3/Relu:activations:0*
T0*(
_output_shapes
:??????????
.sequential_1/dense_3/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
,sequential_1/dense_3/ActivityRegularizer/SumSum3sequential_1/dense_3/ActivityRegularizer/Square:y:07sequential_1/dense_3/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_1/dense_3/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_1/dense_3/ActivityRegularizer/mulMul7sequential_1/dense_3/ActivityRegularizer/mul/x:output:05sequential_1/dense_3/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: ?
.sequential_1/dense_3/ActivityRegularizer/ShapeShape'sequential_1/dense_3/Relu:activations:0*
T0*
_output_shapes
:?
<sequential_1/dense_3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
>sequential_1/dense_3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>sequential_1/dense_3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6sequential_1/dense_3/ActivityRegularizer/strided_sliceStridedSlice7sequential_1/dense_3/ActivityRegularizer/Shape:output:0Esequential_1/dense_3/ActivityRegularizer/strided_slice/stack:output:0Gsequential_1/dense_3/ActivityRegularizer/strided_slice/stack_1:output:0Gsequential_1/dense_3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
-sequential_1/dense_3/ActivityRegularizer/CastCast?sequential_1/dense_3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
0sequential_1/dense_3/ActivityRegularizer/truedivRealDiv0sequential_1/dense_3/ActivityRegularizer/mul:z:01sequential_1/dense_3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
sequential_1/dropout_1/IdentityIdentity'sequential_1/dense_3/Relu:activations:0*
T0*(
_output_shapes
:???????????
*sequential_1/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_4_matmul_readvariableop_resource*
_output_shapes
:	?2*
dtype0?
sequential_1/dense_4/MatMulMatMul(sequential_1/dropout_1/Identity:output:02sequential_1/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
+sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
sequential_1/dense_4/BiasAddBiasAdd%sequential_1/dense_4/MatMul:product:03sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2z
sequential_1/dense_4/ReluRelu%sequential_1/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2?
/sequential_1/dense_4/ActivityRegularizer/SquareSquare'sequential_1/dense_4/Relu:activations:0*
T0*'
_output_shapes
:?????????2
.sequential_1/dense_4/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
,sequential_1/dense_4/ActivityRegularizer/SumSum3sequential_1/dense_4/ActivityRegularizer/Square:y:07sequential_1/dense_4/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_1/dense_4/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_1/dense_4/ActivityRegularizer/mulMul7sequential_1/dense_4/ActivityRegularizer/mul/x:output:05sequential_1/dense_4/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: ?
.sequential_1/dense_4/ActivityRegularizer/ShapeShape'sequential_1/dense_4/Relu:activations:0*
T0*
_output_shapes
:?
<sequential_1/dense_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
>sequential_1/dense_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>sequential_1/dense_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6sequential_1/dense_4/ActivityRegularizer/strided_sliceStridedSlice7sequential_1/dense_4/ActivityRegularizer/Shape:output:0Esequential_1/dense_4/ActivityRegularizer/strided_slice/stack:output:0Gsequential_1/dense_4/ActivityRegularizer/strided_slice/stack_1:output:0Gsequential_1/dense_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
-sequential_1/dense_4/ActivityRegularizer/CastCast?sequential_1/dense_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
0sequential_1/dense_4/ActivityRegularizer/truedivRealDiv0sequential_1/dense_4/ActivityRegularizer/mul:z:01sequential_1/dense_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
*sequential_1/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_5_matmul_readvariableop_resource*
_output_shapes

:2	*
dtype0?
sequential_1/dense_5/MatMulMatMul'sequential_1/dense_4/Relu:activations:02sequential_1/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	?
+sequential_1/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_5_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0?
sequential_1/dense_5/BiasAddBiasAdd%sequential_1/dense_5/MatMul:product:03sequential_1/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	?
/sequential_1/dense_5/ActivityRegularizer/SquareSquare%sequential_1/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	
.sequential_1/dense_5/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
,sequential_1/dense_5/ActivityRegularizer/SumSum3sequential_1/dense_5/ActivityRegularizer/Square:y:07sequential_1/dense_5/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: s
.sequential_1/dense_5/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
,sequential_1/dense_5/ActivityRegularizer/mulMul7sequential_1/dense_5/ActivityRegularizer/mul/x:output:05sequential_1/dense_5/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: ?
.sequential_1/dense_5/ActivityRegularizer/ShapeShape%sequential_1/dense_5/BiasAdd:output:0*
T0*
_output_shapes
:?
<sequential_1/dense_5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
>sequential_1/dense_5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>sequential_1/dense_5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6sequential_1/dense_5/ActivityRegularizer/strided_sliceStridedSlice7sequential_1/dense_5/ActivityRegularizer/Shape:output:0Esequential_1/dense_5/ActivityRegularizer/strided_slice/stack:output:0Gsequential_1/dense_5/ActivityRegularizer/strided_slice/stack_1:output:0Gsequential_1/dense_5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
-sequential_1/dense_5/ActivityRegularizer/CastCast?sequential_1/dense_5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
0sequential_1/dense_5/ActivityRegularizer/truedivRealDiv0sequential_1/dense_5/ActivityRegularizer/mul:z:01sequential_1/dense_5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
sequential_1/softmax_1/SoftmaxSoftmax%sequential_1/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	w
IdentityIdentity(sequential_1/softmax_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????	?
NoOpNoOp-^sequential_1/conv1d_1/BiasAdd/ReadVariableOp9^sequential_1/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp+^sequential_1/dense_3/MatMul/ReadVariableOp,^sequential_1/dense_4/BiasAdd/ReadVariableOp+^sequential_1/dense_4/MatMul/ReadVariableOp,^sequential_1/dense_5/BiasAdd/ReadVariableOp+^sequential_1/dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????	: : : : : : : : 2\
,sequential_1/conv1d_1/BiasAdd/ReadVariableOp,sequential_1/conv1d_1/BiasAdd/ReadVariableOp2t
8sequential_1/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp8sequential_1/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2X
*sequential_1/dense_3/MatMul/ReadVariableOp*sequential_1/dense_3/MatMul/ReadVariableOp2Z
+sequential_1/dense_4/BiasAdd/ReadVariableOp+sequential_1/dense_4/BiasAdd/ReadVariableOp2X
*sequential_1/dense_4/MatMul/ReadVariableOp*sequential_1/dense_4/MatMul/ReadVariableOp2Z
+sequential_1/dense_5/BiasAdd/ReadVariableOp+sequential_1/dense_5/BiasAdd/ReadVariableOp2X
*sequential_1/dense_5/MatMul/ReadVariableOp*sequential_1/dense_5/MatMul/ReadVariableOp:[ W
+
_output_shapes
:?????????	
(
_user_specified_nameconv1d_1_input
??
?
"__inference__traced_restore_145260
file_prefix6
 assignvariableop_conv1d_1_kernel:	..
 assignvariableop_1_conv1d_1_bias:.4
!assignvariableop_2_dense_3_kernel:	\?.
assignvariableop_3_dense_3_bias:	?4
!assignvariableop_4_dense_4_kernel:	?2-
assignvariableop_5_dense_4_bias:23
!assignvariableop_6_dense_5_kernel:2	-
assignvariableop_7_dense_5_bias:	&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: @
*assignvariableop_17_adam_conv1d_1_kernel_m:	.6
(assignvariableop_18_adam_conv1d_1_bias_m:.<
)assignvariableop_19_adam_dense_3_kernel_m:	\?6
'assignvariableop_20_adam_dense_3_bias_m:	?<
)assignvariableop_21_adam_dense_4_kernel_m:	?25
'assignvariableop_22_adam_dense_4_bias_m:2;
)assignvariableop_23_adam_dense_5_kernel_m:2	5
'assignvariableop_24_adam_dense_5_bias_m:	@
*assignvariableop_25_adam_conv1d_1_kernel_v:	.6
(assignvariableop_26_adam_conv1d_1_bias_v:.<
)assignvariableop_27_adam_dense_3_kernel_v:	\?6
'assignvariableop_28_adam_dense_3_bias_v:	?<
)assignvariableop_29_adam_dense_4_kernel_v:	?25
'assignvariableop_30_adam_dense_4_bias_v:2;
)assignvariableop_31_adam_dense_5_kernel_v:2	5
'assignvariableop_32_adam_dense_5_bias_v:	
identity_34??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp assignvariableop_conv1d_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_3_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_3_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_4_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_4_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_5_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_5_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_conv1d_1_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_conv1d_1_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_3_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_3_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_dense_4_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_dense_4_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_5_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_5_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_conv1d_1_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_conv1d_1_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_3_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_3_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_dense_4_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp'assignvariableop_30_adam_dense_4_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp)assignvariableop_31_adam_dense_5_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp'assignvariableop_32_adam_dense_5_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
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
__inference_loss_fn_4_144951E
7dense_5_bias_regularizer_square_readvariableop_resource:	
identity??.dense_5/bias/Regularizer/Square/ReadVariableOp?
.dense_5/bias/Regularizer/Square/ReadVariableOpReadVariableOp7dense_5_bias_regularizer_square_readvariableop_resource*
_output_shapes
:	*
dtype0?
dense_5/bias/Regularizer/SquareSquare6dense_5/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	h
dense_5/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_5/bias/Regularizer/SumSum#dense_5/bias/Regularizer/Square:y:0'dense_5/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_5/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_5/bias/Regularizer/mulMul'dense_5/bias/Regularizer/mul/x:output:0%dense_5/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: ^
IdentityIdentity dense_5/bias/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: w
NoOpNoOp/^dense_5/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2`
.dense_5/bias/Regularizer/Square/ReadVariableOp.dense_5/bias/Regularizer/Square/ReadVariableOp
?	
?
-__inference_sequential_1_layer_call_fn_143901
conv1d_1_input
unknown:	.
	unknown_0:.
	unknown_1:	\?
	unknown_2:	?
	unknown_3:	?2
	unknown_4:2
	unknown_5:2	
	unknown_6:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv1d_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout	
2*
_collective_manager_ids
 */
_output_shapes
:?????????	: : : : **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_143878o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????	
(
_user_specified_nameconv1d_1_input
?	
?
-__inference_sequential_1_layer_call_fn_144487

inputs
unknown:	.
	unknown_0:.
	unknown_1:	\?
	unknown_2:	?
	unknown_3:	?2
	unknown_4:2
	unknown_5:2	
	unknown_6:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout	
2*
_collective_manager_ids
 */
_output_shapes
:?????????	: : : : **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_144144o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?	
d
E__inference_dropout_1_layer_call_and_return_conditional_losses_144834

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?J??e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_dense_4_layer_call_fn_144849

inputs
unknown:	?2
	unknown_0:2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_143792o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_144907P
:conv1d_1_kernel_regularizer_square_readvariableop_resource:	.
identity??1conv1d_1/kernel/Regularizer/Square/ReadVariableOp?
1conv1d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:conv1d_1_kernel_regularizer_square_readvariableop_resource*"
_output_shapes
:	.*
dtype0?
"conv1d_1/kernel/Regularizer/SquareSquare9conv1d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	.v
!conv1d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_1/kernel/Regularizer/SumSum&conv1d_1/kernel/Regularizer/Square:y:0*conv1d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
conv1d_1/kernel/Regularizer/mulMul*conv1d_1/kernel/Regularizer/mul/x:output:0(conv1d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv1d_1/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^conv1d_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp1conv1d_1/kernel/Regularizer/Square/ReadVariableOp
?
?
C__inference_dense_5_layer_call_and_return_conditional_losses_143822

inputs0
matmul_readvariableop_resource:2	-
biasadd_readvariableop_resource:	
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?.dense_5/bias/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	?
.dense_5/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0?
dense_5/bias/Regularizer/SquareSquare6dense_5/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	h
dense_5/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_5/bias/Regularizer/SumSum#dense_5/bias/Regularizer/Square:y:0'dense_5/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_5/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_5/bias/Regularizer/mulMul'dense_5/bias/Regularizer/mul/x:output:0%dense_5/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????	?
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp/^dense_5/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2`
.dense_5/bias/Regularizer/Square/ReadVariableOp.dense_5/bias/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
F
/__inference_dense_5_activity_regularizer_143680
x
identity6
SquareSquarex*
T0*
_output_shapes
:9
RankRank
Square:y:0*
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
:?????????G
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    I
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
?	
?
-__inference_sequential_1_layer_call_fn_144192
conv1d_1_input
unknown:	.
	unknown_0:.
	unknown_1:	\?
	unknown_2:	?
	unknown_3:	?2
	unknown_4:2
	unknown_5:2	
	unknown_6:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv1d_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout	
2*
_collective_manager_ids
 */
_output_shapes
:?????????	: : : : **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_144144o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:?????????	
(
_user_specified_nameconv1d_1_input
? 
?
D__inference_conv1d_1_layer_call_and_return_conditional_losses_144979

inputsA
+conv1d_expanddims_1_readvariableop_resource:	.-
biasadd_readvariableop_resource:.
identity??BiasAdd/ReadVariableOp?"Conv1D/ExpandDims_1/ReadVariableOp?/conv1d_1/bias/Regularizer/Square/ReadVariableOp?1conv1d_1/kernel/Regularizer/Square/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????	?
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	.*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	.?
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????.*
paddingVALID*
strides
?
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:?????????.*
squeeze_dims

?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:.*
dtype0?
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????.R
EluEluBiasAdd:output:0*
T0*+
_output_shapes
:?????????.?
1conv1d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	.*
dtype0?
"conv1d_1/kernel/Regularizer/SquareSquare9conv1d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	.v
!conv1d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_1/kernel/Regularizer/SumSum&conv1d_1/kernel/Regularizer/Square:y:0*conv1d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
conv1d_1/kernel/Regularizer/mulMul*conv1d_1/kernel/Regularizer/mul/x:output:0(conv1d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
/conv1d_1/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:.*
dtype0?
 conv1d_1/bias/Regularizer/SquareSquare7conv1d_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:.i
conv1d_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
conv1d_1/bias/Regularizer/SumSum$conv1d_1/bias/Regularizer/Square:y:0(conv1d_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv1d_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
conv1d_1/bias/Regularizer/mulMul(conv1d_1/bias/Regularizer/mul/x:output:0&conv1d_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: d
IdentityIdentityElu:activations:0^NoOp*
T0*+
_output_shapes
:?????????.?
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp0^conv1d_1/bias/Regularizer/Square/ReadVariableOp2^conv1d_1/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp2b
/conv1d_1/bias/Regularizer/Square/ReadVariableOp/conv1d_1/bias/Regularizer/Square/ReadVariableOp2f
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp1conv1d_1/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
G
0__inference_conv1d_1_activity_regularizer_143641
x
identity6
SquareSquarex*
T0*
_output_shapes
:9
RankRank
Square:y:0*
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
:?????????G
SumSum
Square:y:0range:output:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    I
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
?	
?
-__inference_sequential_1_layer_call_fn_144462

inputs
unknown:	.
	unknown_0:.
	unknown_1:	\?
	unknown_2:	?
	unknown_3:	?2
	unknown_4:2
	unknown_5:2	
	unknown_6:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout	
2*
_collective_manager_ids
 */
_output_shapes
:?????????	: : : : **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_143878o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
??
?	
H__inference_sequential_1_layer_call_and_return_conditional_losses_144738

inputsJ
4conv1d_1_conv1d_expanddims_1_readvariableop_resource:	.6
(conv1d_1_biasadd_readvariableop_resource:.9
&dense_3_matmul_readvariableop_resource:	\?6
'dense_3_biasadd_readvariableop_resource:	?9
&dense_4_matmul_readvariableop_resource:	?25
'dense_4_biasadd_readvariableop_resource:28
&dense_5_matmul_readvariableop_resource:2	5
'dense_5_biasadd_readvariableop_resource:	
identity

identity_1

identity_2

identity_3

identity_4??conv1d_1/BiasAdd/ReadVariableOp?+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp?/conv1d_1/bias/Regularizer/Square/ReadVariableOp?1conv1d_1/kernel/Regularizer/Square/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?.dense_3/bias/Regularizer/Square/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?.dense_4/bias/Regularizer/Square/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOp?.dense_5/bias/Regularizer/Square/ReadVariableOpi
conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
conv1d_1/Conv1D/ExpandDims
ExpandDimsinputs'conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:?????????	?
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	.*
dtype0b
 conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : ?
conv1d_1/Conv1D/ExpandDims_1
ExpandDims3conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	.?
conv1d_1/Conv1DConv2D#conv1d_1/Conv1D/ExpandDims:output:0%conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:?????????.*
paddingVALID*
strides
?
conv1d_1/Conv1D/SqueezeSqueezeconv1d_1/Conv1D:output:0*
T0*+
_output_shapes
:?????????.*
squeeze_dims

??????????
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0?
conv1d_1/BiasAddBiasAdd conv1d_1/Conv1D/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????.d
conv1d_1/EluEluconv1d_1/BiasAdd:output:0*
T0*+
_output_shapes
:?????????.
#conv1d_1/ActivityRegularizer/SquareSquareconv1d_1/Elu:activations:0*
T0*+
_output_shapes
:?????????.w
"conv1d_1/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
 conv1d_1/ActivityRegularizer/SumSum'conv1d_1/ActivityRegularizer/Square:y:0+conv1d_1/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: g
"conv1d_1/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
 conv1d_1/ActivityRegularizer/mulMul+conv1d_1/ActivityRegularizer/mul/x:output:0)conv1d_1/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: l
"conv1d_1/ActivityRegularizer/ShapeShapeconv1d_1/Elu:activations:0*
T0*
_output_shapes
:z
0conv1d_1/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2conv1d_1/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2conv1d_1/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*conv1d_1/ActivityRegularizer/strided_sliceStridedSlice+conv1d_1/ActivityRegularizer/Shape:output:09conv1d_1/ActivityRegularizer/strided_slice/stack:output:0;conv1d_1/ActivityRegularizer/strided_slice/stack_1:output:0;conv1d_1/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
!conv1d_1/ActivityRegularizer/CastCast3conv1d_1/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
$conv1d_1/ActivityRegularizer/truedivRealDiv$conv1d_1/ActivityRegularizer/mul:z:0%conv1d_1/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: `
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????\   ?
flatten_1/ReshapeReshapeconv1d_1/Elu:activations:0flatten_1/Const:output:0*
T0*'
_output_shapes
:?????????\?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	\?*
dtype0?
dense_3/MatMulMatMulflatten_1/Reshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????a
dense_3/ReluReludense_3/BiasAdd:output:0*
T0*(
_output_shapes
:??????????{
"dense_3/ActivityRegularizer/SquareSquaredense_3/Relu:activations:0*
T0*(
_output_shapes
:??????????r
!dense_3/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_3/ActivityRegularizer/SumSum&dense_3/ActivityRegularizer/Square:y:0*dense_3/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_3/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_3/ActivityRegularizer/mulMul*dense_3/ActivityRegularizer/mul/x:output:0(dense_3/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: k
!dense_3/ActivityRegularizer/ShapeShapedense_3/Relu:activations:0*
T0*
_output_shapes
:y
/dense_3/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_3/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_3/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_3/ActivityRegularizer/strided_sliceStridedSlice*dense_3/ActivityRegularizer/Shape:output:08dense_3/ActivityRegularizer/strided_slice/stack:output:0:dense_3/ActivityRegularizer/strided_slice/stack_1:output:0:dense_3/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
 dense_3/ActivityRegularizer/CastCast2dense_3/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
#dense_3/ActivityRegularizer/truedivRealDiv#dense_3/ActivityRegularizer/mul:z:0$dense_3/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: \
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?J???
dropout_1/dropout/MulMuldense_3/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*(
_output_shapes
:??????????a
dropout_1/dropout/ShapeShapedense_3/Relu:activations:0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	?2*
dtype0?
dense_4/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2`
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2z
"dense_4/ActivityRegularizer/SquareSquaredense_4/Relu:activations:0*
T0*'
_output_shapes
:?????????2r
!dense_4/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_4/ActivityRegularizer/SumSum&dense_4/ActivityRegularizer/Square:y:0*dense_4/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_4/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_4/ActivityRegularizer/mulMul*dense_4/ActivityRegularizer/mul/x:output:0(dense_4/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: k
!dense_4/ActivityRegularizer/ShapeShapedense_4/Relu:activations:0*
T0*
_output_shapes
:y
/dense_4/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_4/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_4/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_4/ActivityRegularizer/strided_sliceStridedSlice*dense_4/ActivityRegularizer/Shape:output:08dense_4/ActivityRegularizer/strided_slice/stack:output:0:dense_4/ActivityRegularizer/strided_slice/stack_1:output:0:dense_4/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
 dense_4/ActivityRegularizer/CastCast2dense_4/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
#dense_4/ActivityRegularizer/truedivRealDiv#dense_4/ActivityRegularizer/mul:z:0$dense_4/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: ?
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:2	*
dtype0?
dense_5/MatMulMatMuldense_4/Relu:activations:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	?
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	x
"dense_5/ActivityRegularizer/SquareSquaredense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	r
!dense_5/ActivityRegularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ?
dense_5/ActivityRegularizer/SumSum&dense_5/ActivityRegularizer/Square:y:0*dense_5/ActivityRegularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_5/ActivityRegularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_5/ActivityRegularizer/mulMul*dense_5/ActivityRegularizer/mul/x:output:0(dense_5/ActivityRegularizer/Sum:output:0*
T0*
_output_shapes
: i
!dense_5/ActivityRegularizer/ShapeShapedense_5/BiasAdd:output:0*
T0*
_output_shapes
:y
/dense_5/ActivityRegularizer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_5/ActivityRegularizer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_5/ActivityRegularizer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_5/ActivityRegularizer/strided_sliceStridedSlice*dense_5/ActivityRegularizer/Shape:output:08dense_5/ActivityRegularizer/strided_slice/stack:output:0:dense_5/ActivityRegularizer/strided_slice/stack_1:output:0:dense_5/ActivityRegularizer/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
 dense_5/ActivityRegularizer/CastCast2dense_5/ActivityRegularizer/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
#dense_5/ActivityRegularizer/truedivRealDiv#dense_5/ActivityRegularizer/mul:z:0$dense_5/ActivityRegularizer/Cast:y:0*
T0*
_output_shapes
: h
softmax_1/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	?
1conv1d_1/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	.*
dtype0?
"conv1d_1/kernel/Regularizer/SquareSquare9conv1d_1/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	.v
!conv1d_1/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          ?
conv1d_1/kernel/Regularizer/SumSum&conv1d_1/kernel/Regularizer/Square:y:0*conv1d_1/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv1d_1/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
conv1d_1/kernel/Regularizer/mulMul*conv1d_1/kernel/Regularizer/mul/x:output:0(conv1d_1/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
/conv1d_1/bias/Regularizer/Square/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes
:.*
dtype0?
 conv1d_1/bias/Regularizer/SquareSquare7conv1d_1/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:.i
conv1d_1/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
conv1d_1/bias/Regularizer/SumSum$conv1d_1/bias/Regularizer/Square:y:0(conv1d_1/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: d
conv1d_1/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
conv1d_1/bias/Regularizer/mulMul(conv1d_1/bias/Regularizer/mul/x:output:0&conv1d_1/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
.dense_3/bias/Regularizer/Square/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_3/bias/Regularizer/SquareSquare6dense_3/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:?h
dense_3/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_3/bias/Regularizer/SumSum#dense_3/bias/Regularizer/Square:y:0'dense_3/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_3/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_3/bias/Regularizer/mulMul'dense_3/bias/Regularizer/mul/x:output:0%dense_3/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
.dense_4/bias/Regularizer/Square/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0?
dense_4/bias/Regularizer/SquareSquare6dense_4/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2h
dense_4/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_4/bias/Regularizer/SumSum#dense_4/bias/Regularizer/Square:y:0'dense_4/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_4/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_4/bias/Regularizer/mulMul'dense_4/bias/Regularizer/mul/x:output:0%dense_4/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
.dense_5/bias/Regularizer/Square/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0?
dense_5/bias/Regularizer/SquareSquare6dense_5/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	h
dense_5/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_5/bias/Regularizer/SumSum#dense_5/bias/Regularizer/Square:y:0'dense_5/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: c
dense_5/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
dense_5/bias/Regularizer/mulMul'dense_5/bias/Regularizer/mul/x:output:0%dense_5/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentitysoftmax_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????	h

Identity_1Identity(conv1d_1/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_2Identity'dense_3/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_3Identity'dense_4/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: g

Identity_4Identity'dense_5/ActivityRegularizer/truediv:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp0^conv1d_1/bias/Regularizer/Square/ReadVariableOp2^conv1d_1/kernel/Regularizer/Square/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp/^dense_3/bias/Regularizer/Square/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp/^dense_4/bias/Regularizer/Square/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp/^dense_5/bias/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????	: : : : : : : : 2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp+conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2b
/conv1d_1/bias/Regularizer/Square/ReadVariableOp/conv1d_1/bias/Regularizer/Square/ReadVariableOp2f
1conv1d_1/kernel/Regularizer/Square/ReadVariableOp1conv1d_1/kernel/Regularizer/Square/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2`
.dense_3/bias/Regularizer/Square/ReadVariableOp.dense_3/bias/Regularizer/Square/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2`
.dense_4/bias/Regularizer/Square/ReadVariableOp.dense_4/bias/Regularizer/Square/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2`
.dense_5/bias/Regularizer/Square/ReadVariableOp.dense_5/bias/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
a
E__inference_softmax_1_layer_call_and_return_conditional_losses_143841

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:?????????	Y
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????	:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
M
conv1d_1_input;
 serving_default_conv1d_1_input:0?????????	=
	softmax_10
StatefulPartitionedCall:0?????????	tensorflow/serving/predict:ͪ
?
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
		variables

trainable_variables
regularization_losses
	keras_api

signatures
z__call__
*{&call_and_return_all_conditional_losses
|_default_save_signature"
_tf_keras_sequential
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
}__call__
*~&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
 regularization_losses
!	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

(kernel
)bias
*	variables
+trainable_variables
,regularization_losses
-	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
.	variables
/trainable_variables
0regularization_losses
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
2iter

3beta_1

4beta_2
	5decay
6learning_ratemjmkmlmm"mn#mo(mp)mqvrvsvtvu"vv#vw(vx)vy"
	optimizer
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
?0
?1
?2
?3
?4"
trackable_list_wrapper
?
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
		variables

trainable_variables
regularization_losses
z__call__
|_default_save_signature
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
%:#	.2conv1d_1/kernel
:.2conv1d_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
}__call__
?activity_regularizer_fn
*~&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	\?2dense_3/kernel
:?2dense_3/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
?
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
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
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
	variables
trainable_variables
 regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?22dense_4/kernel
:22dense_4/bias
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
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
$	variables
%trainable_variables
&regularization_losses
?__call__
?activity_regularizer_fn
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :2	2dense_5/kernel
:	2dense_5/bias
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
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
*	variables
+trainable_variables
,regularization_losses
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
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
.	variables
/trainable_variables
0regularization_losses
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
 "
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
.
_0
`1"
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
0
?0
?1"
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
 "
trackable_list_wrapper
(
?0"
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
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
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
N
	atotal
	bcount
c	variables
d	keras_api"
_tf_keras_metric
^
	etotal
	fcount
g
_fn_kwargs
h	variables
i	keras_api"
_tf_keras_metric
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
*:(	.2Adam/conv1d_1/kernel/m
 :.2Adam/conv1d_1/bias/m
&:$	\?2Adam/dense_3/kernel/m
 :?2Adam/dense_3/bias/m
&:$	?22Adam/dense_4/kernel/m
:22Adam/dense_4/bias/m
%:#2	2Adam/dense_5/kernel/m
:	2Adam/dense_5/bias/m
*:(	.2Adam/conv1d_1/kernel/v
 :.2Adam/conv1d_1/bias/v
&:$	\?2Adam/dense_3/kernel/v
 :?2Adam/dense_3/bias/v
&:$	?22Adam/dense_4/kernel/v
:22Adam/dense_4/bias/v
%:#2	2Adam/dense_5/kernel/v
:	2Adam/dense_5/bias/v
?2?
-__inference_sequential_1_layer_call_fn_143901
-__inference_sequential_1_layer_call_fn_144462
-__inference_sequential_1_layer_call_fn_144487
-__inference_sequential_1_layer_call_fn_144192?
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
H__inference_sequential_1_layer_call_and_return_conditional_losses_144609
H__inference_sequential_1_layer_call_and_return_conditional_losses_144738
H__inference_sequential_1_layer_call_and_return_conditional_losses_144285
H__inference_sequential_1_layer_call_and_return_conditional_losses_144378?
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
?B?
!__inference__wrapped_model_143628conv1d_1_input"?
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
?2?
)__inference_conv1d_1_layer_call_fn_144759?
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
H__inference_conv1d_1_layer_call_and_return_all_conditional_losses_144770?
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
*__inference_flatten_1_layer_call_fn_144775?
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
E__inference_flatten_1_layer_call_and_return_conditional_losses_144781?
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
(__inference_dense_3_layer_call_fn_144796?
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
G__inference_dense_3_layer_call_and_return_all_conditional_losses_144807?
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
*__inference_dropout_1_layer_call_fn_144812
*__inference_dropout_1_layer_call_fn_144817?
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
E__inference_dropout_1_layer_call_and_return_conditional_losses_144822
E__inference_dropout_1_layer_call_and_return_conditional_losses_144834?
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
(__inference_dense_4_layer_call_fn_144849?
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
G__inference_dense_4_layer_call_and_return_all_conditional_losses_144860?
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
(__inference_dense_5_layer_call_fn_144875?
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
G__inference_dense_5_layer_call_and_return_all_conditional_losses_144886?
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
*__inference_softmax_1_layer_call_fn_144891?
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
E__inference_softmax_1_layer_call_and_return_conditional_losses_144896?
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
__inference_loss_fn_0_144907?
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
__inference_loss_fn_1_144918?
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
__inference_loss_fn_2_144929?
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
__inference_loss_fn_3_144940?
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
__inference_loss_fn_4_144951?
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
$__inference_signature_wrapper_144437conv1d_1_input"?
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
0__inference_conv1d_1_activity_regularizer_143641?
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
D__inference_conv1d_1_layer_call_and_return_conditional_losses_144979?
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
/__inference_dense_3_activity_regularizer_143654?
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
C__inference_dense_3_layer_call_and_return_conditional_losses_144996?
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
/__inference_dense_4_activity_regularizer_143667?
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
C__inference_dense_4_layer_call_and_return_conditional_losses_145013?
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
/__inference_dense_5_activity_regularizer_143680?
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
C__inference_dense_5_layer_call_and_return_conditional_losses_145029?
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
!__inference__wrapped_model_143628~"#();?8
1?.
,?)
conv1d_1_input?????????	
? "5?2
0
	softmax_1#? 
	softmax_1?????????	Z
0__inference_conv1d_1_activity_regularizer_143641&?
?
?	
x
? "? ?
H__inference_conv1d_1_layer_call_and_return_all_conditional_losses_144770r3?0
)?&
$?!
inputs?????????	
? "7?4
?
0?????????.
?
?	
1/0 ?
D__inference_conv1d_1_layer_call_and_return_conditional_losses_144979d3?0
)?&
$?!
inputs?????????	
? ")?&
?
0?????????.
? ?
)__inference_conv1d_1_layer_call_fn_144759W3?0
)?&
$?!
inputs?????????	
? "??????????.Y
/__inference_dense_3_activity_regularizer_143654&?
?
?	
x
? "? ?
G__inference_dense_3_layer_call_and_return_all_conditional_losses_144807k/?,
%?"
 ?
inputs?????????\
? "4?1
?
0??????????
?
?	
1/0 ?
C__inference_dense_3_layer_call_and_return_conditional_losses_144996]/?,
%?"
 ?
inputs?????????\
? "&?#
?
0??????????
? |
(__inference_dense_3_layer_call_fn_144796P/?,
%?"
 ?
inputs?????????\
? "???????????Y
/__inference_dense_4_activity_regularizer_143667&?
?
?	
x
? "? ?
G__inference_dense_4_layer_call_and_return_all_conditional_losses_144860k"#0?-
&?#
!?
inputs??????????
? "3?0
?
0?????????2
?
?	
1/0 ?
C__inference_dense_4_layer_call_and_return_conditional_losses_145013]"#0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????2
? |
(__inference_dense_4_layer_call_fn_144849P"#0?-
&?#
!?
inputs??????????
? "??????????2Y
/__inference_dense_5_activity_regularizer_143680&?
?
?	
x
? "? ?
G__inference_dense_5_layer_call_and_return_all_conditional_losses_144886j()/?,
%?"
 ?
inputs?????????2
? "3?0
?
0?????????	
?
?	
1/0 ?
C__inference_dense_5_layer_call_and_return_conditional_losses_145029\()/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????	
? {
(__inference_dense_5_layer_call_fn_144875O()/?,
%?"
 ?
inputs?????????2
? "??????????	?
E__inference_dropout_1_layer_call_and_return_conditional_losses_144822^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
E__inference_dropout_1_layer_call_and_return_conditional_losses_144834^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? 
*__inference_dropout_1_layer_call_fn_144812Q4?1
*?'
!?
inputs??????????
p 
? "???????????
*__inference_dropout_1_layer_call_fn_144817Q4?1
*?'
!?
inputs??????????
p
? "????????????
E__inference_flatten_1_layer_call_and_return_conditional_losses_144781\3?0
)?&
$?!
inputs?????????.
? "%?"
?
0?????????\
? }
*__inference_flatten_1_layer_call_fn_144775O3?0
)?&
$?!
inputs?????????.
? "??????????\;
__inference_loss_fn_0_144907?

? 
? "? ;
__inference_loss_fn_1_144918?

? 
? "? ;
__inference_loss_fn_2_144929?

? 
? "? ;
__inference_loss_fn_3_144940#?

? 
? "? ;
__inference_loss_fn_4_144951)?

? 
? "? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_144285?"#()C?@
9?6
,?)
conv1d_1_input?????????	
p 

 
? "]?Z
?
0?????????	
;?8
?	
1/0 
?	
1/1 
?	
1/2 
?	
1/3 ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_144378?"#()C?@
9?6
,?)
conv1d_1_input?????????	
p

 
? "]?Z
?
0?????????	
;?8
?	
1/0 
?	
1/1 
?	
1/2 
?	
1/3 ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_144609?"#();?8
1?.
$?!
inputs?????????	
p 

 
? "]?Z
?
0?????????	
;?8
?	
1/0 
?	
1/1 
?	
1/2 
?	
1/3 ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_144738?"#();?8
1?.
$?!
inputs?????????	
p

 
? "]?Z
?
0?????????	
;?8
?	
1/0 
?	
1/1 
?	
1/2 
?	
1/3 ?
-__inference_sequential_1_layer_call_fn_143901i"#()C?@
9?6
,?)
conv1d_1_input?????????	
p 

 
? "??????????	?
-__inference_sequential_1_layer_call_fn_144192i"#()C?@
9?6
,?)
conv1d_1_input?????????	
p

 
? "??????????	?
-__inference_sequential_1_layer_call_fn_144462a"#();?8
1?.
$?!
inputs?????????	
p 

 
? "??????????	?
-__inference_sequential_1_layer_call_fn_144487a"#();?8
1?.
$?!
inputs?????????	
p

 
? "??????????	?
$__inference_signature_wrapper_144437?"#()M?J
? 
C?@
>
conv1d_1_input,?)
conv1d_1_input?????????	"5?2
0
	softmax_1#? 
	softmax_1?????????	?
E__inference_softmax_1_layer_call_and_return_conditional_losses_144896\3?0
)?&
 ?
inputs?????????	

 
? "%?"
?
0?????????	
? }
*__inference_softmax_1_layer_call_fn_144891O3?0
)?&
 ?
inputs?????????	

 
? "??????????	