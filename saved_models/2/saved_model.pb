ԡ
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
�
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
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
�
ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.9.12unknown8�
�
Adam/dense_13/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*%
shared_nameAdam/dense_13/bias/v
y
(Adam/dense_13/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/v*
_output_shapes
:	*
dtype0
�
Adam/dense_13/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@	*'
shared_nameAdam/dense_13/kernel/v
�
*Adam/dense_13/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/v*
_output_shapes

:@	*
dtype0
�
Adam/dense_12/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_12/bias/v
y
(Adam/dense_12/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/v*
_output_shapes
:@*
dtype0
�
Adam/dense_12/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*'
shared_nameAdam/dense_12/kernel/v
�
*Adam/dense_12/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/v*
_output_shapes
:	�@*
dtype0
�
Adam/conv2d_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_25/bias/v
{
)Adam/conv2d_25/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_25/kernel/v
�
+Adam/conv2d_25/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/kernel/v*&
_output_shapes
:@@*
dtype0
�
Adam/conv2d_24/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_24/bias/v
{
)Adam/conv2d_24/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_24/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_24/kernel/v
�
+Adam/conv2d_24/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/kernel/v*&
_output_shapes
:@@*
dtype0
�
Adam/conv2d_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_23/bias/v
{
)Adam/conv2d_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_23/kernel/v
�
+Adam/conv2d_23/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/kernel/v*&
_output_shapes
:@@*
dtype0
�
Adam/conv2d_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_22/bias/v
{
)Adam/conv2d_22/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_22/kernel/v
�
+Adam/conv2d_22/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/kernel/v*&
_output_shapes
:@@*
dtype0
�
Adam/conv2d_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_21/bias/v
{
)Adam/conv2d_21/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv2d_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_21/kernel/v
�
+Adam/conv2d_21/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/kernel/v*&
_output_shapes
: @*
dtype0
�
Adam/conv2d_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_20/bias/v
{
)Adam/conv2d_20/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/bias/v*
_output_shapes
: *
dtype0
�
Adam/conv2d_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_20/kernel/v
�
+Adam/conv2d_20/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/kernel/v*&
_output_shapes
: *
dtype0
�
Adam/dense_13/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*%
shared_nameAdam/dense_13/bias/m
y
(Adam/dense_13/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/bias/m*
_output_shapes
:	*
dtype0
�
Adam/dense_13/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@	*'
shared_nameAdam/dense_13/kernel/m
�
*Adam/dense_13/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_13/kernel/m*
_output_shapes

:@	*
dtype0
�
Adam/dense_12/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_12/bias/m
y
(Adam/dense_12/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense_12/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*'
shared_nameAdam/dense_12/kernel/m
�
*Adam/dense_12/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_12/kernel/m*
_output_shapes
:	�@*
dtype0
�
Adam/conv2d_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_25/bias/m
{
)Adam/conv2d_25/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_25/kernel/m
�
+Adam/conv2d_25/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/kernel/m*&
_output_shapes
:@@*
dtype0
�
Adam/conv2d_24/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_24/bias/m
{
)Adam/conv2d_24/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_24/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_24/kernel/m
�
+Adam/conv2d_24/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_24/kernel/m*&
_output_shapes
:@@*
dtype0
�
Adam/conv2d_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_23/bias/m
{
)Adam/conv2d_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_23/kernel/m
�
+Adam/conv2d_23/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_23/kernel/m*&
_output_shapes
:@@*
dtype0
�
Adam/conv2d_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_22/bias/m
{
)Adam/conv2d_22/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameAdam/conv2d_22/kernel/m
�
+Adam/conv2d_22/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_22/kernel/m*&
_output_shapes
:@@*
dtype0
�
Adam/conv2d_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_21/bias/m
{
)Adam/conv2d_21/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv2d_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_21/kernel/m
�
+Adam/conv2d_21/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_21/kernel/m*&
_output_shapes
: @*
dtype0
�
Adam/conv2d_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_20/bias/m
{
)Adam/conv2d_20/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/bias/m*
_output_shapes
: *
dtype0
�
Adam/conv2d_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_20/kernel/m
�
+Adam/conv2d_20/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/kernel/m*&
_output_shapes
: *
dtype0
h
StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
StateVar
a
StateVar/Read/ReadVariableOpReadVariableOpStateVar*
_output_shapes
:*
dtype0	
l

StateVar_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
StateVar_1
e
StateVar_1/Read/ReadVariableOpReadVariableOp
StateVar_1*
_output_shapes
:*
dtype0	
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
r
dense_13/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense_13/bias
k
!dense_13/bias/Read/ReadVariableOpReadVariableOpdense_13/bias*
_output_shapes
:	*
dtype0
z
dense_13/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@	* 
shared_namedense_13/kernel
s
#dense_13/kernel/Read/ReadVariableOpReadVariableOpdense_13/kernel*
_output_shapes

:@	*
dtype0
r
dense_12/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_12/bias
k
!dense_12/bias/Read/ReadVariableOpReadVariableOpdense_12/bias*
_output_shapes
:@*
dtype0
{
dense_12/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@* 
shared_namedense_12/kernel
t
#dense_12/kernel/Read/ReadVariableOpReadVariableOpdense_12/kernel*
_output_shapes
:	�@*
dtype0
t
conv2d_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_25/bias
m
"conv2d_25/bias/Read/ReadVariableOpReadVariableOpconv2d_25/bias*
_output_shapes
:@*
dtype0
�
conv2d_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_25/kernel
}
$conv2d_25/kernel/Read/ReadVariableOpReadVariableOpconv2d_25/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_24/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_24/bias
m
"conv2d_24/bias/Read/ReadVariableOpReadVariableOpconv2d_24/bias*
_output_shapes
:@*
dtype0
�
conv2d_24/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_24/kernel
}
$conv2d_24/kernel/Read/ReadVariableOpReadVariableOpconv2d_24/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_23/bias
m
"conv2d_23/bias/Read/ReadVariableOpReadVariableOpconv2d_23/bias*
_output_shapes
:@*
dtype0
�
conv2d_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_23/kernel
}
$conv2d_23/kernel/Read/ReadVariableOpReadVariableOpconv2d_23/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_22/bias
m
"conv2d_22/bias/Read/ReadVariableOpReadVariableOpconv2d_22/bias*
_output_shapes
:@*
dtype0
�
conv2d_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*!
shared_nameconv2d_22/kernel
}
$conv2d_22/kernel/Read/ReadVariableOpReadVariableOpconv2d_22/kernel*&
_output_shapes
:@@*
dtype0
t
conv2d_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_21/bias
m
"conv2d_21/bias/Read/ReadVariableOpReadVariableOpconv2d_21/bias*
_output_shapes
:@*
dtype0
�
conv2d_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_21/kernel
}
$conv2d_21/kernel/Read/ReadVariableOpReadVariableOpconv2d_21/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_20/bias
m
"conv2d_20/bias/Read/ReadVariableOpReadVariableOpconv2d_20/bias*
_output_shapes
: *
dtype0
�
conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_20/kernel
}
$conv2d_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_20/kernel*&
_output_shapes
: *
dtype0

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ң
valueǢBâ B��
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer_with_weights-7
layer-16
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
�
layer-0
layer-1
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses* 
�
#layer-0
$layer-1
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses*
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias
 3_jit_compiled_convolution_op*
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses* 
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

@kernel
Abias
 B_jit_compiled_convolution_op*
�
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses* 
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

Okernel
Pbias
 Q_jit_compiled_convolution_op*
�
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses* 
�
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses

^kernel
_bias
 `_jit_compiled_convolution_op*
�
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses* 
�
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses

mkernel
nbias
 o_jit_compiled_convolution_op*
�
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses* 
�
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses

|kernel
}bias
 ~_jit_compiled_convolution_op*
�
	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
~
10
21
@2
A3
O4
P5
^6
_7
m8
n9
|10
}11
�12
�13
�14
�15*
~
10
21
@2
A3
O4
P5
^6
_7
m8
n9
|10
}11
�12
�13
�14
�15*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 
�
	�iter
�beta_1
�beta_2

�decay
�learning_rate1m�2m�@m�Am�Om�Pm�^m�_m�mm�nm�|m�}m�	�m�	�m�	�m�	�m�1v�2v�@v�Av�Ov�Pv�^v�_v�mv�nv�|v�}v�	�v�	�v�	�v�	�v�*

�serving_default* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 

10
21*

10
21*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_20/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_20/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

@0
A1*

@0
A1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_21/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_21/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

O0
P1*

O0
P1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_22/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_22/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

^0
_1*

^0
_1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_23/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_23/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

m0
n1*

m0
n1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_24/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_24/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

|0
}1*

|0
}1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEconv2d_25/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_25/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_12/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_12/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_13/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_13/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16*

�0
�1*
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
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 

0
1* 
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
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 

�
_generator*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 

�
_generator*
* 

#0
$1*
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
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
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
* 
* 
* 

�
_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 

�
_state_var*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
vp
VARIABLE_VALUE
StateVar_1Rlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEStateVarRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_20/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_20/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_21/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_21/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_22/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_22/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_23/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_23/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_24/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_24/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_25/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_25/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_12/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_12/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_13/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_13/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_20/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_20/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_21/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_21/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_22/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_22/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_23/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_23/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_24/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_24/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/conv2d_25/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_25/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_12/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_12/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_13/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_13/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
#serving_default_sequential_18_inputPlaceholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCall#serving_default_sequential_18_inputconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasconv2d_22/kernelconv2d_22/biasconv2d_23/kernelconv2d_23/biasconv2d_24/kernelconv2d_24/biasconv2d_25/kernelconv2d_25/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_165012
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_20/kernel/Read/ReadVariableOp"conv2d_20/bias/Read/ReadVariableOp$conv2d_21/kernel/Read/ReadVariableOp"conv2d_21/bias/Read/ReadVariableOp$conv2d_22/kernel/Read/ReadVariableOp"conv2d_22/bias/Read/ReadVariableOp$conv2d_23/kernel/Read/ReadVariableOp"conv2d_23/bias/Read/ReadVariableOp$conv2d_24/kernel/Read/ReadVariableOp"conv2d_24/bias/Read/ReadVariableOp$conv2d_25/kernel/Read/ReadVariableOp"conv2d_25/bias/Read/ReadVariableOp#dense_12/kernel/Read/ReadVariableOp!dense_12/bias/Read/ReadVariableOp#dense_13/kernel/Read/ReadVariableOp!dense_13/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpStateVar_1/Read/ReadVariableOpStateVar/Read/ReadVariableOp+Adam/conv2d_20/kernel/m/Read/ReadVariableOp)Adam/conv2d_20/bias/m/Read/ReadVariableOp+Adam/conv2d_21/kernel/m/Read/ReadVariableOp)Adam/conv2d_21/bias/m/Read/ReadVariableOp+Adam/conv2d_22/kernel/m/Read/ReadVariableOp)Adam/conv2d_22/bias/m/Read/ReadVariableOp+Adam/conv2d_23/kernel/m/Read/ReadVariableOp)Adam/conv2d_23/bias/m/Read/ReadVariableOp+Adam/conv2d_24/kernel/m/Read/ReadVariableOp)Adam/conv2d_24/bias/m/Read/ReadVariableOp+Adam/conv2d_25/kernel/m/Read/ReadVariableOp)Adam/conv2d_25/bias/m/Read/ReadVariableOp*Adam/dense_12/kernel/m/Read/ReadVariableOp(Adam/dense_12/bias/m/Read/ReadVariableOp*Adam/dense_13/kernel/m/Read/ReadVariableOp(Adam/dense_13/bias/m/Read/ReadVariableOp+Adam/conv2d_20/kernel/v/Read/ReadVariableOp)Adam/conv2d_20/bias/v/Read/ReadVariableOp+Adam/conv2d_21/kernel/v/Read/ReadVariableOp)Adam/conv2d_21/bias/v/Read/ReadVariableOp+Adam/conv2d_22/kernel/v/Read/ReadVariableOp)Adam/conv2d_22/bias/v/Read/ReadVariableOp+Adam/conv2d_23/kernel/v/Read/ReadVariableOp)Adam/conv2d_23/bias/v/Read/ReadVariableOp+Adam/conv2d_24/kernel/v/Read/ReadVariableOp)Adam/conv2d_24/bias/v/Read/ReadVariableOp+Adam/conv2d_25/kernel/v/Read/ReadVariableOp)Adam/conv2d_25/bias/v/Read/ReadVariableOp*Adam/dense_12/kernel/v/Read/ReadVariableOp(Adam/dense_12/bias/v/Read/ReadVariableOp*Adam/dense_13/kernel/v/Read/ReadVariableOp(Adam/dense_13/bias/v/Read/ReadVariableOpConst*H
TinA
?2=			*
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
GPU 2J 8� *(
f#R!
__inference__traced_save_166599
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_20/kernelconv2d_20/biasconv2d_21/kernelconv2d_21/biasconv2d_22/kernelconv2d_22/biasconv2d_23/kernelconv2d_23/biasconv2d_24/kernelconv2d_24/biasconv2d_25/kernelconv2d_25/biasdense_12/kerneldense_12/biasdense_13/kerneldense_13/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcount
StateVar_1StateVarAdam/conv2d_20/kernel/mAdam/conv2d_20/bias/mAdam/conv2d_21/kernel/mAdam/conv2d_21/bias/mAdam/conv2d_22/kernel/mAdam/conv2d_22/bias/mAdam/conv2d_23/kernel/mAdam/conv2d_23/bias/mAdam/conv2d_24/kernel/mAdam/conv2d_24/bias/mAdam/conv2d_25/kernel/mAdam/conv2d_25/bias/mAdam/dense_12/kernel/mAdam/dense_12/bias/mAdam/dense_13/kernel/mAdam/dense_13/bias/mAdam/conv2d_20/kernel/vAdam/conv2d_20/bias/vAdam/conv2d_21/kernel/vAdam/conv2d_21/bias/vAdam/conv2d_22/kernel/vAdam/conv2d_22/bias/vAdam/conv2d_23/kernel/vAdam/conv2d_23/bias/vAdam/conv2d_24/kernel/vAdam/conv2d_24/bias/vAdam/conv2d_25/kernel/vAdam/conv2d_25/bias/vAdam/dense_12/kernel/vAdam/dense_12/bias/vAdam/dense_13/kernel/vAdam/dense_13/bias/v*G
Tin@
>2<*
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
GPU 2J 8� *+
f&R$
"__inference__traced_restore_166786��
�	
�
Drandom_flip_6_map_while_stateless_random_flip_left_right_true_165629�
�random_flip_6_map_while_stateless_random_flip_left_right_reversev2_random_flip_6_map_while_stateless_random_flip_left_right_control_dependencyE
Arandom_flip_6_map_while_stateless_random_flip_left_right_identity�
Grandom_flip_6/map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
Brandom_flip_6/map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2�random_flip_6_map_while_stateless_random_flip_left_right_reversev2_random_flip_6_map_while_stateless_random_flip_left_right_control_dependencyPrandom_flip_6/map/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:���
Arandom_flip_6/map/while/stateless_random_flip_left_right/IdentityIdentityKrandom_flip_6/map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:��"�
Arandom_flip_6_map_while_stateless_random_flip_left_right_identityJrandom_flip_6/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
e
I__inference_random_flip_6_layer_call_and_return_conditional_losses_163965

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
*__inference_conv2d_25_layer_call_fn_165985

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_25_layer_call_and_return_conditional_losses_164510w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�

�
D__inference_dense_12_layer_call_and_return_conditional_losses_166037

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�r
�
!__inference__wrapped_model_163880
sequential_18_inputP
6sequential_20_conv2d_20_conv2d_readvariableop_resource: E
7sequential_20_conv2d_20_biasadd_readvariableop_resource: P
6sequential_20_conv2d_21_conv2d_readvariableop_resource: @E
7sequential_20_conv2d_21_biasadd_readvariableop_resource:@P
6sequential_20_conv2d_22_conv2d_readvariableop_resource:@@E
7sequential_20_conv2d_22_biasadd_readvariableop_resource:@P
6sequential_20_conv2d_23_conv2d_readvariableop_resource:@@E
7sequential_20_conv2d_23_biasadd_readvariableop_resource:@P
6sequential_20_conv2d_24_conv2d_readvariableop_resource:@@E
7sequential_20_conv2d_24_biasadd_readvariableop_resource:@P
6sequential_20_conv2d_25_conv2d_readvariableop_resource:@@E
7sequential_20_conv2d_25_biasadd_readvariableop_resource:@H
5sequential_20_dense_12_matmul_readvariableop_resource:	�@D
6sequential_20_dense_12_biasadd_readvariableop_resource:@G
5sequential_20_dense_13_matmul_readvariableop_resource:@	D
6sequential_20_dense_13_biasadd_readvariableop_resource:	
identity��.sequential_20/conv2d_20/BiasAdd/ReadVariableOp�-sequential_20/conv2d_20/Conv2D/ReadVariableOp�.sequential_20/conv2d_21/BiasAdd/ReadVariableOp�-sequential_20/conv2d_21/Conv2D/ReadVariableOp�.sequential_20/conv2d_22/BiasAdd/ReadVariableOp�-sequential_20/conv2d_22/Conv2D/ReadVariableOp�.sequential_20/conv2d_23/BiasAdd/ReadVariableOp�-sequential_20/conv2d_23/Conv2D/ReadVariableOp�.sequential_20/conv2d_24/BiasAdd/ReadVariableOp�-sequential_20/conv2d_24/Conv2D/ReadVariableOp�.sequential_20/conv2d_25/BiasAdd/ReadVariableOp�-sequential_20/conv2d_25/Conv2D/ReadVariableOp�-sequential_20/dense_12/BiasAdd/ReadVariableOp�,sequential_20/dense_12/MatMul/ReadVariableOp�-sequential_20/dense_13/BiasAdd/ReadVariableOp�,sequential_20/dense_13/MatMul/ReadVariableOp�
2sequential_20/sequential_18/resizing_6/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
<sequential_20/sequential_18/resizing_6/resize/ResizeBilinearResizeBilinearsequential_18_input;sequential_20/sequential_18/resizing_6/resize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(s
.sequential_20/sequential_18/rescaling_6/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;u
0sequential_20/sequential_18/rescaling_6/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
+sequential_20/sequential_18/rescaling_6/mulMulMsequential_20/sequential_18/resizing_6/resize/ResizeBilinear:resized_images:07sequential_20/sequential_18/rescaling_6/Cast/x:output:0*
T0*1
_output_shapes
:������������
+sequential_20/sequential_18/rescaling_6/addAddV2/sequential_20/sequential_18/rescaling_6/mul:z:09sequential_20/sequential_18/rescaling_6/Cast_1/x:output:0*
T0*1
_output_shapes
:������������
-sequential_20/conv2d_20/Conv2D/ReadVariableOpReadVariableOp6sequential_20_conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
sequential_20/conv2d_20/Conv2DConv2D/sequential_20/sequential_18/rescaling_6/add:z:05sequential_20/conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
�
.sequential_20/conv2d_20/BiasAdd/ReadVariableOpReadVariableOp7sequential_20_conv2d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
sequential_20/conv2d_20/BiasAddBiasAdd'sequential_20/conv2d_20/Conv2D:output:06sequential_20/conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� �
sequential_20/conv2d_20/ReluRelu(sequential_20/conv2d_20/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
&sequential_20/max_pooling2d_20/MaxPoolMaxPool*sequential_20/conv2d_20/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
-sequential_20/conv2d_21/Conv2D/ReadVariableOpReadVariableOp6sequential_20_conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
sequential_20/conv2d_21/Conv2DConv2D/sequential_20/max_pooling2d_20/MaxPool:output:05sequential_20/conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@*
paddingVALID*
strides
�
.sequential_20/conv2d_21/BiasAdd/ReadVariableOpReadVariableOp7sequential_20_conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_20/conv2d_21/BiasAddBiasAdd'sequential_20/conv2d_21/Conv2D:output:06sequential_20/conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@�
sequential_20/conv2d_21/ReluRelu(sequential_20/conv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:���������}}@�
&sequential_20/max_pooling2d_21/MaxPoolMaxPool*sequential_20/conv2d_21/Relu:activations:0*/
_output_shapes
:���������>>@*
ksize
*
paddingVALID*
strides
�
-sequential_20/conv2d_22/Conv2D/ReadVariableOpReadVariableOp6sequential_20_conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
sequential_20/conv2d_22/Conv2DConv2D/sequential_20/max_pooling2d_21/MaxPool:output:05sequential_20/conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@*
paddingVALID*
strides
�
.sequential_20/conv2d_22/BiasAdd/ReadVariableOpReadVariableOp7sequential_20_conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_20/conv2d_22/BiasAddBiasAdd'sequential_20/conv2d_22/Conv2D:output:06sequential_20/conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@�
sequential_20/conv2d_22/ReluRelu(sequential_20/conv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:���������<<@�
&sequential_20/max_pooling2d_22/MaxPoolMaxPool*sequential_20/conv2d_22/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
-sequential_20/conv2d_23/Conv2D/ReadVariableOpReadVariableOp6sequential_20_conv2d_23_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
sequential_20/conv2d_23/Conv2DConv2D/sequential_20/max_pooling2d_22/MaxPool:output:05sequential_20/conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
.sequential_20/conv2d_23/BiasAdd/ReadVariableOpReadVariableOp7sequential_20_conv2d_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_20/conv2d_23/BiasAddBiasAdd'sequential_20/conv2d_23/Conv2D:output:06sequential_20/conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
sequential_20/conv2d_23/ReluRelu(sequential_20/conv2d_23/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
&sequential_20/max_pooling2d_23/MaxPoolMaxPool*sequential_20/conv2d_23/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
-sequential_20/conv2d_24/Conv2D/ReadVariableOpReadVariableOp6sequential_20_conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
sequential_20/conv2d_24/Conv2DConv2D/sequential_20/max_pooling2d_23/MaxPool:output:05sequential_20/conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
.sequential_20/conv2d_24/BiasAdd/ReadVariableOpReadVariableOp7sequential_20_conv2d_24_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_20/conv2d_24/BiasAddBiasAdd'sequential_20/conv2d_24/Conv2D:output:06sequential_20/conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
sequential_20/conv2d_24/ReluRelu(sequential_20/conv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
&sequential_20/max_pooling2d_24/MaxPoolMaxPool*sequential_20/conv2d_24/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
-sequential_20/conv2d_25/Conv2D/ReadVariableOpReadVariableOp6sequential_20_conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
sequential_20/conv2d_25/Conv2DConv2D/sequential_20/max_pooling2d_24/MaxPool:output:05sequential_20/conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
.sequential_20/conv2d_25/BiasAdd/ReadVariableOpReadVariableOp7sequential_20_conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_20/conv2d_25/BiasAddBiasAdd'sequential_20/conv2d_25/Conv2D:output:06sequential_20/conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
sequential_20/conv2d_25/ReluRelu(sequential_20/conv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
&sequential_20/max_pooling2d_25/MaxPoolMaxPool*sequential_20/conv2d_25/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
n
sequential_20/flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
sequential_20/flatten_6/ReshapeReshape/sequential_20/max_pooling2d_25/MaxPool:output:0&sequential_20/flatten_6/Const:output:0*
T0*(
_output_shapes
:�����������
,sequential_20/dense_12/MatMul/ReadVariableOpReadVariableOp5sequential_20_dense_12_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
sequential_20/dense_12/MatMulMatMul(sequential_20/flatten_6/Reshape:output:04sequential_20/dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
-sequential_20/dense_12/BiasAdd/ReadVariableOpReadVariableOp6sequential_20_dense_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_20/dense_12/BiasAddBiasAdd'sequential_20/dense_12/MatMul:product:05sequential_20/dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@~
sequential_20/dense_12/ReluRelu'sequential_20/dense_12/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
,sequential_20/dense_13/MatMul/ReadVariableOpReadVariableOp5sequential_20_dense_13_matmul_readvariableop_resource*
_output_shapes

:@	*
dtype0�
sequential_20/dense_13/MatMulMatMul)sequential_20/dense_12/Relu:activations:04sequential_20/dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	�
-sequential_20/dense_13/BiasAdd/ReadVariableOpReadVariableOp6sequential_20_dense_13_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0�
sequential_20/dense_13/BiasAddBiasAdd'sequential_20/dense_13/MatMul:product:05sequential_20/dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	�
sequential_20/dense_13/SoftmaxSoftmax'sequential_20/dense_13/BiasAdd:output:0*
T0*'
_output_shapes
:���������	w
IdentityIdentity(sequential_20/dense_13/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������	�
NoOpNoOp/^sequential_20/conv2d_20/BiasAdd/ReadVariableOp.^sequential_20/conv2d_20/Conv2D/ReadVariableOp/^sequential_20/conv2d_21/BiasAdd/ReadVariableOp.^sequential_20/conv2d_21/Conv2D/ReadVariableOp/^sequential_20/conv2d_22/BiasAdd/ReadVariableOp.^sequential_20/conv2d_22/Conv2D/ReadVariableOp/^sequential_20/conv2d_23/BiasAdd/ReadVariableOp.^sequential_20/conv2d_23/Conv2D/ReadVariableOp/^sequential_20/conv2d_24/BiasAdd/ReadVariableOp.^sequential_20/conv2d_24/Conv2D/ReadVariableOp/^sequential_20/conv2d_25/BiasAdd/ReadVariableOp.^sequential_20/conv2d_25/Conv2D/ReadVariableOp.^sequential_20/dense_12/BiasAdd/ReadVariableOp-^sequential_20/dense_12/MatMul/ReadVariableOp.^sequential_20/dense_13/BiasAdd/ReadVariableOp-^sequential_20/dense_13/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:�����������: : : : : : : : : : : : : : : : 2`
.sequential_20/conv2d_20/BiasAdd/ReadVariableOp.sequential_20/conv2d_20/BiasAdd/ReadVariableOp2^
-sequential_20/conv2d_20/Conv2D/ReadVariableOp-sequential_20/conv2d_20/Conv2D/ReadVariableOp2`
.sequential_20/conv2d_21/BiasAdd/ReadVariableOp.sequential_20/conv2d_21/BiasAdd/ReadVariableOp2^
-sequential_20/conv2d_21/Conv2D/ReadVariableOp-sequential_20/conv2d_21/Conv2D/ReadVariableOp2`
.sequential_20/conv2d_22/BiasAdd/ReadVariableOp.sequential_20/conv2d_22/BiasAdd/ReadVariableOp2^
-sequential_20/conv2d_22/Conv2D/ReadVariableOp-sequential_20/conv2d_22/Conv2D/ReadVariableOp2`
.sequential_20/conv2d_23/BiasAdd/ReadVariableOp.sequential_20/conv2d_23/BiasAdd/ReadVariableOp2^
-sequential_20/conv2d_23/Conv2D/ReadVariableOp-sequential_20/conv2d_23/Conv2D/ReadVariableOp2`
.sequential_20/conv2d_24/BiasAdd/ReadVariableOp.sequential_20/conv2d_24/BiasAdd/ReadVariableOp2^
-sequential_20/conv2d_24/Conv2D/ReadVariableOp-sequential_20/conv2d_24/Conv2D/ReadVariableOp2`
.sequential_20/conv2d_25/BiasAdd/ReadVariableOp.sequential_20/conv2d_25/BiasAdd/ReadVariableOp2^
-sequential_20/conv2d_25/Conv2D/ReadVariableOp-sequential_20/conv2d_25/Conv2D/ReadVariableOp2^
-sequential_20/dense_12/BiasAdd/ReadVariableOp-sequential_20/dense_12/BiasAdd/ReadVariableOp2\
,sequential_20/dense_12/MatMul/ReadVariableOp,sequential_20/dense_12/MatMul/ReadVariableOp2^
-sequential_20/dense_13/BiasAdd/ReadVariableOp-sequential_20/dense_13/BiasAdd/ReadVariableOp2\
,sequential_20/dense_13/MatMul/ReadVariableOp,sequential_20/dense_13/MatMul/ReadVariableOp:f b
1
_output_shapes
:�����������
-
_user_specified_namesequential_18_input
��
�
1sequential_19_random_flip_6_map_while_body_165186\
Xsequential_19_random_flip_6_map_while_sequential_19_random_flip_6_map_while_loop_counterW
Ssequential_19_random_flip_6_map_while_sequential_19_random_flip_6_map_strided_slice5
1sequential_19_random_flip_6_map_while_placeholder7
3sequential_19_random_flip_6_map_while_placeholder_1[
Wsequential_19_random_flip_6_map_while_sequential_19_random_flip_6_map_strided_slice_1_0�
�sequential_19_random_flip_6_map_while_tensorarrayv2read_tensorlistgetitem_sequential_19_random_flip_6_map_tensorarrayunstack_tensorlistfromtensor_0g
Ysequential_19_random_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	2
.sequential_19_random_flip_6_map_while_identity4
0sequential_19_random_flip_6_map_while_identity_14
0sequential_19_random_flip_6_map_while_identity_24
0sequential_19_random_flip_6_map_while_identity_3Y
Usequential_19_random_flip_6_map_while_sequential_19_random_flip_6_map_strided_slice_1�
�sequential_19_random_flip_6_map_while_tensorarrayv2read_tensorlistgetitem_sequential_19_random_flip_6_map_tensorarrayunstack_tensorlistfromtensore
Wsequential_19_random_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resource:	��Nsequential_19/random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip�Psequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/RngReadAndSkip�
Wsequential_19/random_flip_6/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
Isequential_19/random_flip_6/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_19_random_flip_6_map_while_tensorarrayv2read_tensorlistgetitem_sequential_19_random_flip_6_map_tensorarrayunstack_tensorlistfromtensor_01sequential_19_random_flip_6_map_while_placeholder`sequential_19/random_flip_6/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:��*
element_dtype0�
Esequential_19/random_flip_6/map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
Esequential_19/random_flip_6/map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Dsequential_19/random_flip_6/map/while/stateful_uniform_full_int/ProdProdNsequential_19/random_flip_6/map/while/stateful_uniform_full_int/shape:output:0Nsequential_19/random_flip_6/map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: �
Fsequential_19/random_flip_6/map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
Fsequential_19/random_flip_6/map/while/stateful_uniform_full_int/Cast_1CastMsequential_19/random_flip_6/map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
Nsequential_19/random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipYsequential_19_random_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Osequential_19/random_flip_6/map/while/stateful_uniform_full_int/Cast/x:output:0Jsequential_19/random_flip_6/map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:�
Ssequential_19/random_flip_6/map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Usequential_19/random_flip_6/map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Usequential_19/random_flip_6/map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Msequential_19/random_flip_6/map/while/stateful_uniform_full_int/strided_sliceStridedSliceVsequential_19/random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0\sequential_19/random_flip_6/map/while/stateful_uniform_full_int/strided_slice/stack:output:0^sequential_19/random_flip_6/map/while/stateful_uniform_full_int/strided_slice/stack_1:output:0^sequential_19/random_flip_6/map/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
Gsequential_19/random_flip_6/map/while/stateful_uniform_full_int/BitcastBitcastVsequential_19/random_flip_6/map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Usequential_19/random_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Wsequential_19/random_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Wsequential_19/random_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Osequential_19/random_flip_6/map/while/stateful_uniform_full_int/strided_slice_1StridedSliceVsequential_19/random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0^sequential_19/random_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stack:output:0`sequential_19/random_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0`sequential_19/random_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
Isequential_19/random_flip_6/map/while/stateful_uniform_full_int/Bitcast_1BitcastXsequential_19/random_flip_6/map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
Csequential_19/random_flip_6/map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
?sequential_19/random_flip_6/map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV2Nsequential_19/random_flip_6/map/while/stateful_uniform_full_int/shape:output:0Rsequential_19/random_flip_6/map/while/stateful_uniform_full_int/Bitcast_1:output:0Psequential_19/random_flip_6/map/while/stateful_uniform_full_int/Bitcast:output:0Lsequential_19/random_flip_6/map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	z
0sequential_19/random_flip_6/map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R �
+sequential_19/random_flip_6/map/while/stackPackHsequential_19/random_flip_6/map/while/stateful_uniform_full_int:output:09sequential_19/random_flip_6/map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:�
9sequential_19/random_flip_6/map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
;sequential_19/random_flip_6/map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
;sequential_19/random_flip_6/map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
3sequential_19/random_flip_6/map/while/strided_sliceStridedSlice4sequential_19/random_flip_6/map/while/stack:output:0Bsequential_19/random_flip_6/map/while/strided_slice/stack:output:0Dsequential_19/random_flip_6/map/while/strided_slice/stack_1:output:0Dsequential_19/random_flip_6/map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Ysequential_19/random_flip_6/map/while/stateless_random_flip_left_right/control_dependencyIdentityPsequential_19/random_flip_6/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*\
_classR
PNloc:@sequential_19/random_flip_6/map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:���
esequential_19/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
csequential_19/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
csequential_19/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
|sequential_19/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter<sequential_19/random_flip_6/map/while/strided_slice:output:0* 
_output_shapes
::�
|sequential_19/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
xsequential_19/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2nsequential_19/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0�sequential_19/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0�sequential_19/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0�sequential_19/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
csequential_19/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/subSublsequential_19/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0lsequential_19/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
csequential_19/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/mulMul�sequential_19/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0gsequential_19/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
_sequential_19/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniformAddV2gsequential_19/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0lsequential_19/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Msequential_19/random_flip_6/map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
Ksequential_19/random_flip_6/map/while/stateless_random_flip_left_right/LessLesscsequential_19/random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform:z:0Vsequential_19/random_flip_6/map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: �
Fsequential_19/random_flip_6/map/while/stateless_random_flip_left_rightStatelessIfOsequential_19/random_flip_6/map/while/stateless_random_flip_left_right/Less:z:0bsequential_19/random_flip_6/map/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:��* 
_read_only_resource_inputs
 *f
else_branchWRU
Ssequential_19_random_flip_6_map_while_stateless_random_flip_left_right_false_165246*#
output_shapes
:��*e
then_branchVRT
Rsequential_19_random_flip_6_map_while_stateless_random_flip_left_right_true_165245�
Osequential_19/random_flip_6/map/while/stateless_random_flip_left_right/IdentityIdentityOsequential_19/random_flip_6/map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:���
Gsequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
Gsequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
Fsequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/ProdProdPsequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/shape:output:0Psequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: �
Hsequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
Hsequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/Cast_1CastOsequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
Psequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipYsequential_19_random_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Qsequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/Cast/x:output:0Lsequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/Cast_1:y:0O^sequential_19/random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:�
Usequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Wsequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Wsequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Osequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/strided_sliceStridedSliceXsequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0^sequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/strided_slice/stack:output:0`sequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0`sequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
Isequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/BitcastBitcastXsequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Wsequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Ysequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Ysequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Qsequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/strided_slice_1StridedSliceXsequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0`sequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0bsequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0bsequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
Ksequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/Bitcast_1BitcastZsequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
Esequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
Asequential_19/random_flip_6/map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2Psequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/shape:output:0Tsequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/Bitcast_1:output:0Rsequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/Bitcast:output:0Nsequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	|
2sequential_19/random_flip_6/map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R �
-sequential_19/random_flip_6/map/while/stack_1PackJsequential_19/random_flip_6/map/while/stateful_uniform_full_int_1:output:0;sequential_19/random_flip_6/map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:�
;sequential_19/random_flip_6/map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
=sequential_19/random_flip_6/map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
=sequential_19/random_flip_6/map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
5sequential_19/random_flip_6/map/while/strided_slice_1StridedSlice6sequential_19/random_flip_6/map/while/stack_1:output:0Dsequential_19/random_flip_6/map/while/strided_slice_1/stack:output:0Fsequential_19/random_flip_6/map/while/strided_slice_1/stack_1:output:0Fsequential_19/random_flip_6/map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Vsequential_19/random_flip_6/map/while/stateless_random_flip_up_down/control_dependencyIdentityXsequential_19/random_flip_6/map/while/stateless_random_flip_left_right/Identity:output:0*
T0*b
_classX
VTloc:@sequential_19/random_flip_6/map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:���
bsequential_19/random_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
`sequential_19/random_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
`sequential_19/random_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
ysequential_19/random_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter>sequential_19/random_flip_6/map/while/strided_slice_1:output:0* 
_output_shapes
::�
ysequential_19/random_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
usequential_19/random_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2ksequential_19/random_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0sequential_19/random_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0�sequential_19/random_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0�sequential_19/random_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
`sequential_19/random_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/subSubisequential_19/random_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0isequential_19/random_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
`sequential_19/random_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/mulMul~sequential_19/random_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0dsequential_19/random_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
\sequential_19/random_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2dsequential_19/random_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0isequential_19/random_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Jsequential_19/random_flip_6/map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
Hsequential_19/random_flip_6/map/while/stateless_random_flip_up_down/LessLess`sequential_19/random_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform:z:0Ssequential_19/random_flip_6/map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: �
Csequential_19/random_flip_6/map/while/stateless_random_flip_up_downStatelessIfLsequential_19/random_flip_6/map/while/stateless_random_flip_up_down/Less:z:0_sequential_19/random_flip_6/map/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:��* 
_read_only_resource_inputs
 *c
else_branchTRR
Psequential_19_random_flip_6_map_while_stateless_random_flip_up_down_false_165295*#
output_shapes
:��*b
then_branchSRQ
Osequential_19_random_flip_6_map_while_stateless_random_flip_up_down_true_165294�
Lsequential_19/random_flip_6/map/while/stateless_random_flip_up_down/IdentityIdentityLsequential_19/random_flip_6/map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:���
Jsequential_19/random_flip_6/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem3sequential_19_random_flip_6_map_while_placeholder_11sequential_19_random_flip_6_map_while_placeholderUsequential_19/random_flip_6/map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:���m
+sequential_19/random_flip_6/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
)sequential_19/random_flip_6/map/while/addAddV21sequential_19_random_flip_6_map_while_placeholder4sequential_19/random_flip_6/map/while/add/y:output:0*
T0*
_output_shapes
: o
-sequential_19/random_flip_6/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
+sequential_19/random_flip_6/map/while/add_1AddV2Xsequential_19_random_flip_6_map_while_sequential_19_random_flip_6_map_while_loop_counter6sequential_19/random_flip_6/map/while/add_1/y:output:0*
T0*
_output_shapes
: �
.sequential_19/random_flip_6/map/while/IdentityIdentity/sequential_19/random_flip_6/map/while/add_1:z:0+^sequential_19/random_flip_6/map/while/NoOp*
T0*
_output_shapes
: �
0sequential_19/random_flip_6/map/while/Identity_1IdentitySsequential_19_random_flip_6_map_while_sequential_19_random_flip_6_map_strided_slice+^sequential_19/random_flip_6/map/while/NoOp*
T0*
_output_shapes
: �
0sequential_19/random_flip_6/map/while/Identity_2Identity-sequential_19/random_flip_6/map/while/add:z:0+^sequential_19/random_flip_6/map/while/NoOp*
T0*
_output_shapes
: �
0sequential_19/random_flip_6/map/while/Identity_3IdentityZsequential_19/random_flip_6/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^sequential_19/random_flip_6/map/while/NoOp*
T0*
_output_shapes
: �
*sequential_19/random_flip_6/map/while/NoOpNoOpO^sequential_19/random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkipQ^sequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "i
.sequential_19_random_flip_6_map_while_identity7sequential_19/random_flip_6/map/while/Identity:output:0"m
0sequential_19_random_flip_6_map_while_identity_19sequential_19/random_flip_6/map/while/Identity_1:output:0"m
0sequential_19_random_flip_6_map_while_identity_29sequential_19/random_flip_6/map/while/Identity_2:output:0"m
0sequential_19_random_flip_6_map_while_identity_39sequential_19/random_flip_6/map/while/Identity_3:output:0"�
Usequential_19_random_flip_6_map_while_sequential_19_random_flip_6_map_strided_slice_1Wsequential_19_random_flip_6_map_while_sequential_19_random_flip_6_map_strided_slice_1_0"�
Wsequential_19_random_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resourceYsequential_19_random_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resource_0"�
�sequential_19_random_flip_6_map_while_tensorarrayv2read_tensorlistgetitem_sequential_19_random_flip_6_map_tensorarrayunstack_tensorlistfromtensor�sequential_19_random_flip_6_map_while_tensorarrayv2read_tensorlistgetitem_sequential_19_random_flip_6_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2�
Nsequential_19/random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkipNsequential_19/random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip2�
Psequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/RngReadAndSkipPsequential_19/random_flip_6/map/while/stateful_uniform_full_int_1/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
I__inference_sequential_19_layer_call_and_return_conditional_losses_164328
random_flip_6_input"
random_flip_6_164321:	&
random_rotation_6_164324:	
identity��%random_flip_6/StatefulPartitionedCall�)random_rotation_6/StatefulPartitionedCall�
%random_flip_6/StatefulPartitionedCallStatefulPartitionedCallrandom_flip_6_inputrandom_flip_6_164321*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_random_flip_6_layer_call_and_return_conditional_losses_164274�
)random_rotation_6/StatefulPartitionedCallStatefulPartitionedCall.random_flip_6/StatefulPartitionedCall:output:0random_rotation_6_164324*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_random_rotation_6_layer_call_and_return_conditional_losses_164103�
IdentityIdentity2random_rotation_6/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp&^random_flip_6/StatefulPartitionedCall*^random_rotation_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 2N
%random_flip_6/StatefulPartitionedCall%random_flip_6/StatefulPartitionedCall2V
)random_rotation_6/StatefulPartitionedCall)random_rotation_6/StatefulPartitionedCall:f b
1
_output_shapes
:�����������
-
_user_specified_namerandom_flip_6_input
�
�
1sequential_19_random_flip_6_map_while_cond_165185\
Xsequential_19_random_flip_6_map_while_sequential_19_random_flip_6_map_while_loop_counterW
Ssequential_19_random_flip_6_map_while_sequential_19_random_flip_6_map_strided_slice5
1sequential_19_random_flip_6_map_while_placeholder7
3sequential_19_random_flip_6_map_while_placeholder_1\
Xsequential_19_random_flip_6_map_while_less_sequential_19_random_flip_6_map_strided_slicet
psequential_19_random_flip_6_map_while_sequential_19_random_flip_6_map_while_cond_165185___redundant_placeholder0t
psequential_19_random_flip_6_map_while_sequential_19_random_flip_6_map_while_cond_165185___redundant_placeholder12
.sequential_19_random_flip_6_map_while_identity
�
*sequential_19/random_flip_6/map/while/LessLess1sequential_19_random_flip_6_map_while_placeholderXsequential_19_random_flip_6_map_while_less_sequential_19_random_flip_6_map_strided_slice*
T0*
_output_shapes
: �
,sequential_19/random_flip_6/map/while/Less_1LessXsequential_19_random_flip_6_map_while_sequential_19_random_flip_6_map_while_loop_counterSsequential_19_random_flip_6_map_while_sequential_19_random_flip_6_map_strided_slice*
T0*
_output_shapes
: �
0sequential_19/random_flip_6/map/while/LogicalAnd
LogicalAnd0sequential_19/random_flip_6/map/while/Less_1:z:0.sequential_19/random_flip_6/map/while/Less:z:0*
_output_shapes
: �
.sequential_19/random_flip_6/map/while/IdentityIdentity4sequential_19/random_flip_6/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "i
.sequential_19_random_flip_6_map_while_identity7sequential_19/random_flip_6/map/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
�
h
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_165886

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
I__inference_random_flip_6_layer_call_and_return_conditional_losses_164274

inputs
map_while_input_6:	
identity��	map/while?
	map/ShapeShapeinputs*
T0*
_output_shapes
:a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���K
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���X
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
	map/whileWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *!
bodyR
map_while_body_164132*!
condR
map_while_cond_164131*!
output_shapes
: : : : : : : �
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:�����������*
element_dtype0�
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0^NoOp*
T0*1
_output_shapes
:�����������R
NoOpNoOp
^map/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2
	map/while	map/while:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
7map_while_stateless_random_flip_left_right_false_164192u
qmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity�
3map/while/stateless_random_flip_left_right/IdentityIdentityqmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:��"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
�
.__inference_sequential_19_layer_call_fn_165550

inputs
unknown:	
	unknown_0:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_19_layer_call_and_return_conditional_losses_164296y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
I__inference_random_flip_6_layer_call_and_return_conditional_losses_166255

inputs
map_while_input_6:	
identity��	map/while?
	map/ShapeShapeinputs*
T0*
_output_shapes
:a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���K
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���X
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
	map/whileWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *!
bodyR
map_while_body_166113*!
condR
map_while_cond_166112*!
output_shapes
: : : : : : : �
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:�����������*
element_dtype0�
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0^NoOp*
T0*1
_output_shapes
:�����������R
NoOpNoOp
^map/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2
	map/while	map/while:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_22_layer_call_and_return_conditional_losses_165906

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������<<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������<<@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������>>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������>>@
 
_user_specified_nameinputs
�u
�
__inference__traced_save_166599
file_prefix/
+savev2_conv2d_20_kernel_read_readvariableop-
)savev2_conv2d_20_bias_read_readvariableop/
+savev2_conv2d_21_kernel_read_readvariableop-
)savev2_conv2d_21_bias_read_readvariableop/
+savev2_conv2d_22_kernel_read_readvariableop-
)savev2_conv2d_22_bias_read_readvariableop/
+savev2_conv2d_23_kernel_read_readvariableop-
)savev2_conv2d_23_bias_read_readvariableop/
+savev2_conv2d_24_kernel_read_readvariableop-
)savev2_conv2d_24_bias_read_readvariableop/
+savev2_conv2d_25_kernel_read_readvariableop-
)savev2_conv2d_25_bias_read_readvariableop.
*savev2_dense_12_kernel_read_readvariableop,
(savev2_dense_12_bias_read_readvariableop.
*savev2_dense_13_kernel_read_readvariableop,
(savev2_dense_13_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop)
%savev2_statevar_1_read_readvariableop	'
#savev2_statevar_read_readvariableop	6
2savev2_adam_conv2d_20_kernel_m_read_readvariableop4
0savev2_adam_conv2d_20_bias_m_read_readvariableop6
2savev2_adam_conv2d_21_kernel_m_read_readvariableop4
0savev2_adam_conv2d_21_bias_m_read_readvariableop6
2savev2_adam_conv2d_22_kernel_m_read_readvariableop4
0savev2_adam_conv2d_22_bias_m_read_readvariableop6
2savev2_adam_conv2d_23_kernel_m_read_readvariableop4
0savev2_adam_conv2d_23_bias_m_read_readvariableop6
2savev2_adam_conv2d_24_kernel_m_read_readvariableop4
0savev2_adam_conv2d_24_bias_m_read_readvariableop6
2savev2_adam_conv2d_25_kernel_m_read_readvariableop4
0savev2_adam_conv2d_25_bias_m_read_readvariableop5
1savev2_adam_dense_12_kernel_m_read_readvariableop3
/savev2_adam_dense_12_bias_m_read_readvariableop5
1savev2_adam_dense_13_kernel_m_read_readvariableop3
/savev2_adam_dense_13_bias_m_read_readvariableop6
2savev2_adam_conv2d_20_kernel_v_read_readvariableop4
0savev2_adam_conv2d_20_bias_v_read_readvariableop6
2savev2_adam_conv2d_21_kernel_v_read_readvariableop4
0savev2_adam_conv2d_21_bias_v_read_readvariableop6
2savev2_adam_conv2d_22_kernel_v_read_readvariableop4
0savev2_adam_conv2d_22_bias_v_read_readvariableop6
2savev2_adam_conv2d_23_kernel_v_read_readvariableop4
0savev2_adam_conv2d_23_bias_v_read_readvariableop6
2savev2_adam_conv2d_24_kernel_v_read_readvariableop4
0savev2_adam_conv2d_24_bias_v_read_readvariableop6
2savev2_adam_conv2d_25_kernel_v_read_readvariableop4
0savev2_adam_conv2d_25_bias_v_read_readvariableop5
1savev2_adam_dense_12_kernel_v_read_readvariableop3
/savev2_adam_dense_12_bias_v_read_readvariableop5
1savev2_adam_dense_13_kernel_v_read_readvariableop3
/savev2_adam_dense_13_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �!
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*� 
value� B� <B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*�
value�B�<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_20_kernel_read_readvariableop)savev2_conv2d_20_bias_read_readvariableop+savev2_conv2d_21_kernel_read_readvariableop)savev2_conv2d_21_bias_read_readvariableop+savev2_conv2d_22_kernel_read_readvariableop)savev2_conv2d_22_bias_read_readvariableop+savev2_conv2d_23_kernel_read_readvariableop)savev2_conv2d_23_bias_read_readvariableop+savev2_conv2d_24_kernel_read_readvariableop)savev2_conv2d_24_bias_read_readvariableop+savev2_conv2d_25_kernel_read_readvariableop)savev2_conv2d_25_bias_read_readvariableop*savev2_dense_12_kernel_read_readvariableop(savev2_dense_12_bias_read_readvariableop*savev2_dense_13_kernel_read_readvariableop(savev2_dense_13_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop%savev2_statevar_1_read_readvariableop#savev2_statevar_read_readvariableop2savev2_adam_conv2d_20_kernel_m_read_readvariableop0savev2_adam_conv2d_20_bias_m_read_readvariableop2savev2_adam_conv2d_21_kernel_m_read_readvariableop0savev2_adam_conv2d_21_bias_m_read_readvariableop2savev2_adam_conv2d_22_kernel_m_read_readvariableop0savev2_adam_conv2d_22_bias_m_read_readvariableop2savev2_adam_conv2d_23_kernel_m_read_readvariableop0savev2_adam_conv2d_23_bias_m_read_readvariableop2savev2_adam_conv2d_24_kernel_m_read_readvariableop0savev2_adam_conv2d_24_bias_m_read_readvariableop2savev2_adam_conv2d_25_kernel_m_read_readvariableop0savev2_adam_conv2d_25_bias_m_read_readvariableop1savev2_adam_dense_12_kernel_m_read_readvariableop/savev2_adam_dense_12_bias_m_read_readvariableop1savev2_adam_dense_13_kernel_m_read_readvariableop/savev2_adam_dense_13_bias_m_read_readvariableop2savev2_adam_conv2d_20_kernel_v_read_readvariableop0savev2_adam_conv2d_20_bias_v_read_readvariableop2savev2_adam_conv2d_21_kernel_v_read_readvariableop0savev2_adam_conv2d_21_bias_v_read_readvariableop2savev2_adam_conv2d_22_kernel_v_read_readvariableop0savev2_adam_conv2d_22_bias_v_read_readvariableop2savev2_adam_conv2d_23_kernel_v_read_readvariableop0savev2_adam_conv2d_23_bias_v_read_readvariableop2savev2_adam_conv2d_24_kernel_v_read_readvariableop0savev2_adam_conv2d_24_bias_v_read_readvariableop2savev2_adam_conv2d_25_kernel_v_read_readvariableop0savev2_adam_conv2d_25_bias_v_read_readvariableop1savev2_adam_dense_12_kernel_v_read_readvariableop/savev2_adam_dense_12_bias_v_read_readvariableop1savev2_adam_dense_13_kernel_v_read_readvariableop/savev2_adam_dense_13_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *J
dtypes@
>2<			�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
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

identity_1Identity_1:output:0*�
_input_shapes�
�: : : : @:@:@@:@:@@:@:@@:@:@@:@:	�@:@:@	:	: : : : : : : : : ::: : : @:@:@@:@:@@:@:@@:@:@@:@:	�@:@:@	:	: : : @:@:@@:@:@@:@:@@:@:@@:@:	�@:@:@	:	: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,	(
&
_output_shapes
:@@: 


_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:%!

_output_shapes
:	�@: 

_output_shapes
:@:$ 

_output_shapes

:@	: 

_output_shapes
:	:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:, (
&
_output_shapes
:@@: !

_output_shapes
:@:,"(
&
_output_shapes
:@@: #

_output_shapes
:@:,$(
&
_output_shapes
:@@: %

_output_shapes
:@:,&(
&
_output_shapes
:@@: '

_output_shapes
:@:%(!

_output_shapes
:	�@: )

_output_shapes
:@:$* 

_output_shapes

:@	: +

_output_shapes
:	:,,(
&
_output_shapes
: : -

_output_shapes
: :,.(
&
_output_shapes
: @: /

_output_shapes
:@:,0(
&
_output_shapes
:@@: 1

_output_shapes
:@:,2(
&
_output_shapes
:@@: 3

_output_shapes
:@:,4(
&
_output_shapes
:@@: 5

_output_shapes
:@:,6(
&
_output_shapes
:@@: 7

_output_shapes
:@:%8!

_output_shapes
:	�@: 9

_output_shapes
:@:$: 

_output_shapes

:@	: ;

_output_shapes
:	:<

_output_shapes
: 
�
i
M__inference_random_rotation_6_layer_call_and_return_conditional_losses_163971

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
D__inference_dense_13_layer_call_and_return_conditional_losses_166057

inputs0
matmul_readvariableop_resource:@	-
biasadd_readvariableop_resource:	
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������	`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������	w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
*__inference_conv2d_22_layer_call_fn_165895

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_22_layer_call_and_return_conditional_losses_164456w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<<@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������>>@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������>>@
 
_user_specified_nameinputs
�
T
.__inference_sequential_18_layer_call_fn_163909
resizing_6_input
identity�
PartitionedCallPartitionedCallresizing_6_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_18_layer_call_and_return_conditional_losses_163906j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:c _
1
_output_shapes
:�����������
*
_user_specified_nameresizing_6_input
�
�
E__inference_conv2d_20_layer_call_and_return_conditional_losses_164420

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_20_layer_call_fn_165851

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_164337�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_22_layer_call_fn_165911

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_164361�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
e
I__inference_sequential_18_layer_call_and_return_conditional_losses_163906

inputs
identity�
resizing_6/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_resizing_6_layer_call_and_return_conditional_losses_163893�
rescaling_6/PartitionedCallPartitionedCall#resizing_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_rescaling_6_layer_call_and_return_conditional_losses_163903v
IdentityIdentity$rescaling_6/PartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
c
G__inference_rescaling_6_layer_call_and_return_conditional_losses_163903

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:�����������d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_23_layer_call_fn_165941

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_164373�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
.__inference_sequential_19_layer_call_fn_164312
random_flip_6_input
unknown:	
	unknown_0:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_6_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_19_layer_call_and_return_conditional_losses_164296y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:�����������
-
_user_specified_namerandom_flip_6_input
�
h
L__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_166006

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_164397

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
D__inference_dense_12_layer_call_and_return_conditional_losses_164536

inputs1
matmul_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_dense_13_layer_call_fn_166046

inputs
unknown:@	
	unknown_0:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_164553o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
G
+__inference_resizing_6_layer_call_fn_166062

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_resizing_6_layer_call_and_return_conditional_losses_163893j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�G
�
I__inference_sequential_20_layer_call_and_return_conditional_losses_164777

inputs"
sequential_19_164724:	"
sequential_19_164726:	*
conv2d_20_164729: 
conv2d_20_164731: *
conv2d_21_164735: @
conv2d_21_164737:@*
conv2d_22_164741:@@
conv2d_22_164743:@*
conv2d_23_164747:@@
conv2d_23_164749:@*
conv2d_24_164753:@@
conv2d_24_164755:@*
conv2d_25_164759:@@
conv2d_25_164761:@"
dense_12_164766:	�@
dense_12_164768:@!
dense_13_164771:@	
dense_13_164773:	
identity��!conv2d_20/StatefulPartitionedCall�!conv2d_21/StatefulPartitionedCall�!conv2d_22/StatefulPartitionedCall�!conv2d_23/StatefulPartitionedCall�!conv2d_24/StatefulPartitionedCall�!conv2d_25/StatefulPartitionedCall� dense_12/StatefulPartitionedCall� dense_13/StatefulPartitionedCall�%sequential_19/StatefulPartitionedCall�
sequential_18/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_18_layer_call_and_return_conditional_losses_163934�
%sequential_19/StatefulPartitionedCallStatefulPartitionedCall&sequential_18/PartitionedCall:output:0sequential_19_164724sequential_19_164726*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_19_layer_call_and_return_conditional_losses_164296�
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall.sequential_19/StatefulPartitionedCall:output:0conv2d_20_164729conv2d_20_164731*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_164420�
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_164337�
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0conv2d_21_164735conv2d_21_164737*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_21_layer_call_and_return_conditional_losses_164438�
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_164349�
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_21/PartitionedCall:output:0conv2d_22_164741conv2d_22_164743*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_22_layer_call_and_return_conditional_losses_164456�
 max_pooling2d_22/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_164361�
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_22/PartitionedCall:output:0conv2d_23_164747conv2d_23_164749*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_23_layer_call_and_return_conditional_losses_164474�
 max_pooling2d_23/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_164373�
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_23/PartitionedCall:output:0conv2d_24_164753conv2d_24_164755*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_24_layer_call_and_return_conditional_losses_164492�
 max_pooling2d_24/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_164385�
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_24/PartitionedCall:output:0conv2d_25_164759conv2d_25_164761*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_25_layer_call_and_return_conditional_losses_164510�
 max_pooling2d_25/PartitionedCallPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_164397�
flatten_6/PartitionedCallPartitionedCall)max_pooling2d_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_6_layer_call_and_return_conditional_losses_164523�
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_12_164766dense_12_164768*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_164536�
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_164771dense_13_164773*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_164553x
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	�
NoOpNoOp"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall&^sequential_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2N
%sequential_19/StatefulPartitionedCall%sequential_19/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
J
.__inference_sequential_18_layer_call_fn_165511

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_18_layer_call_and_return_conditional_losses_163906j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
J
.__inference_sequential_18_layer_call_fn_165516

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_18_layer_call_and_return_conditional_losses_163934j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
*__inference_conv2d_24_layer_call_fn_165955

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_24_layer_call_and_return_conditional_losses_164492w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
E__inference_conv2d_25_layer_call_and_return_conditional_losses_164510

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
Osequential_19_random_flip_6_map_while_stateless_random_flip_up_down_true_165294�
�sequential_19_random_flip_6_map_while_stateless_random_flip_up_down_reversev2_sequential_19_random_flip_6_map_while_stateless_random_flip_up_down_control_dependencyP
Lsequential_19_random_flip_6_map_while_stateless_random_flip_up_down_identity�
Rsequential_19/random_flip_6/map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
Msequential_19/random_flip_6/map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2�sequential_19_random_flip_6_map_while_stateless_random_flip_up_down_reversev2_sequential_19_random_flip_6_map_while_stateless_random_flip_up_down_control_dependency[sequential_19/random_flip_6/map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:���
Lsequential_19/random_flip_6/map/while/stateless_random_flip_up_down/IdentityIdentityVsequential_19/random_flip_6/map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:��"�
Lsequential_19_random_flip_6_map_while_stateless_random_flip_up_down_identityUsequential_19/random_flip_6/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
�
*__inference_conv2d_21_layer_call_fn_165865

inputs!
unknown: @
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_21_layer_call_and_return_conditional_losses_164438w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������}}@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
ޯ
�
#random_flip_6_map_while_body_165570@
<random_flip_6_map_while_random_flip_6_map_while_loop_counter;
7random_flip_6_map_while_random_flip_6_map_strided_slice'
#random_flip_6_map_while_placeholder)
%random_flip_6_map_while_placeholder_1?
;random_flip_6_map_while_random_flip_6_map_strided_slice_1_0{
wrandom_flip_6_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_6_map_tensorarrayunstack_tensorlistfromtensor_0Y
Krandom_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	$
 random_flip_6_map_while_identity&
"random_flip_6_map_while_identity_1&
"random_flip_6_map_while_identity_2&
"random_flip_6_map_while_identity_3=
9random_flip_6_map_while_random_flip_6_map_strided_slice_1y
urandom_flip_6_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_6_map_tensorarrayunstack_tensorlistfromtensorW
Irandom_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resource:	��@random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip�Brandom_flip_6/map/while/stateful_uniform_full_int_1/RngReadAndSkip�
Irandom_flip_6/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
;random_flip_6/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemwrandom_flip_6_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_6_map_tensorarrayunstack_tensorlistfromtensor_0#random_flip_6_map_while_placeholderRrandom_flip_6/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:��*
element_dtype0�
7random_flip_6/map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
7random_flip_6/map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
6random_flip_6/map/while/stateful_uniform_full_int/ProdProd@random_flip_6/map/while/stateful_uniform_full_int/shape:output:0@random_flip_6/map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: z
8random_flip_6/map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
8random_flip_6/map/while/stateful_uniform_full_int/Cast_1Cast?random_flip_6/map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
@random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipKrandom_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Arandom_flip_6/map/while/stateful_uniform_full_int/Cast/x:output:0<random_flip_6/map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:�
Erandom_flip_6/map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Grandom_flip_6/map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Grandom_flip_6/map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
?random_flip_6/map/while/stateful_uniform_full_int/strided_sliceStridedSliceHrandom_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Nrandom_flip_6/map/while/stateful_uniform_full_int/strided_slice/stack:output:0Prandom_flip_6/map/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Prandom_flip_6/map/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
9random_flip_6/map/while/stateful_uniform_full_int/BitcastBitcastHrandom_flip_6/map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Grandom_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Irandom_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Irandom_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Arandom_flip_6/map/while/stateful_uniform_full_int/strided_slice_1StridedSliceHrandom_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Prandom_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Rrandom_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Rrandom_flip_6/map/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
;random_flip_6/map/while/stateful_uniform_full_int/Bitcast_1BitcastJrandom_flip_6/map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0w
5random_flip_6/map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
1random_flip_6/map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV2@random_flip_6/map/while/stateful_uniform_full_int/shape:output:0Drandom_flip_6/map/while/stateful_uniform_full_int/Bitcast_1:output:0Brandom_flip_6/map/while/stateful_uniform_full_int/Bitcast:output:0>random_flip_6/map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	l
"random_flip_6/map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R �
random_flip_6/map/while/stackPack:random_flip_6/map/while/stateful_uniform_full_int:output:0+random_flip_6/map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:|
+random_flip_6/map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ~
-random_flip_6/map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ~
-random_flip_6/map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
%random_flip_6/map/while/strided_sliceStridedSlice&random_flip_6/map/while/stack:output:04random_flip_6/map/while/strided_slice/stack:output:06random_flip_6/map/while/strided_slice/stack_1:output:06random_flip_6/map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Krandom_flip_6/map/while/stateless_random_flip_left_right/control_dependencyIdentityBrandom_flip_6/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*N
_classD
B@loc:@random_flip_6/map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:���
Wrandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Urandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Urandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
nrandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.random_flip_6/map/while/strided_slice:output:0* 
_output_shapes
::�
nrandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
jrandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2`random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0trandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0xrandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0wrandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
Urandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/subSub^random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0^random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Urandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulsrandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Yrandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
Qrandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Yrandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0^random_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
?random_flip_6/map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
=random_flip_6/map/while/stateless_random_flip_left_right/LessLessUrandom_flip_6/map/while/stateless_random_flip_left_right/stateless_random_uniform:z:0Hrandom_flip_6/map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: �
8random_flip_6/map/while/stateless_random_flip_left_rightStatelessIfArandom_flip_6/map/while/stateless_random_flip_left_right/Less:z:0Trandom_flip_6/map/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:��* 
_read_only_resource_inputs
 *X
else_branchIRG
Erandom_flip_6_map_while_stateless_random_flip_left_right_false_165630*#
output_shapes
:��*W
then_branchHRF
Drandom_flip_6_map_while_stateless_random_flip_left_right_true_165629�
Arandom_flip_6/map/while/stateless_random_flip_left_right/IdentityIdentityArandom_flip_6/map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:���
9random_flip_6/map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
9random_flip_6/map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
8random_flip_6/map/while/stateful_uniform_full_int_1/ProdProdBrandom_flip_6/map/while/stateful_uniform_full_int_1/shape:output:0Brandom_flip_6/map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: |
:random_flip_6/map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
:random_flip_6/map/while/stateful_uniform_full_int_1/Cast_1CastArandom_flip_6/map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
Brandom_flip_6/map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipKrandom_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Crandom_flip_6/map/while/stateful_uniform_full_int_1/Cast/x:output:0>random_flip_6/map/while/stateful_uniform_full_int_1/Cast_1:y:0A^random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:�
Grandom_flip_6/map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Irandom_flip_6/map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Irandom_flip_6/map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Arandom_flip_6/map/while/stateful_uniform_full_int_1/strided_sliceStridedSliceJrandom_flip_6/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Prandom_flip_6/map/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Rrandom_flip_6/map/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Rrandom_flip_6/map/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
;random_flip_6/map/while/stateful_uniform_full_int_1/BitcastBitcastJrandom_flip_6/map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Irandom_flip_6/map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Krandom_flip_6/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Krandom_flip_6/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Crandom_flip_6/map/while/stateful_uniform_full_int_1/strided_slice_1StridedSliceJrandom_flip_6/map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Rrandom_flip_6/map/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Trandom_flip_6/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Trandom_flip_6/map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
=random_flip_6/map/while/stateful_uniform_full_int_1/Bitcast_1BitcastLrandom_flip_6/map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0y
7random_flip_6/map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
3random_flip_6/map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2Brandom_flip_6/map/while/stateful_uniform_full_int_1/shape:output:0Frandom_flip_6/map/while/stateful_uniform_full_int_1/Bitcast_1:output:0Drandom_flip_6/map/while/stateful_uniform_full_int_1/Bitcast:output:0@random_flip_6/map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	n
$random_flip_6/map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R �
random_flip_6/map/while/stack_1Pack<random_flip_6/map/while/stateful_uniform_full_int_1:output:0-random_flip_6/map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:~
-random_flip_6/map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
/random_flip_6/map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
/random_flip_6/map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
'random_flip_6/map/while/strided_slice_1StridedSlice(random_flip_6/map/while/stack_1:output:06random_flip_6/map/while/strided_slice_1/stack:output:08random_flip_6/map/while/strided_slice_1/stack_1:output:08random_flip_6/map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
Hrandom_flip_6/map/while/stateless_random_flip_up_down/control_dependencyIdentityJrandom_flip_6/map/while/stateless_random_flip_left_right/Identity:output:0*
T0*T
_classJ
HFloc:@random_flip_6/map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:���
Trandom_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Rrandom_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Rrandom_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
krandom_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter0random_flip_6/map/while/strided_slice_1:output:0* 
_output_shapes
::�
krandom_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
grandom_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2]random_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0qrandom_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0urandom_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0trandom_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
Rrandom_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/subSub[random_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0[random_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Rrandom_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulprandom_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Vrandom_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
Nrandom_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Vrandom_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0[random_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
<random_flip_6/map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
:random_flip_6/map/while/stateless_random_flip_up_down/LessLessRrandom_flip_6/map/while/stateless_random_flip_up_down/stateless_random_uniform:z:0Erandom_flip_6/map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: �
5random_flip_6/map/while/stateless_random_flip_up_downStatelessIf>random_flip_6/map/while/stateless_random_flip_up_down/Less:z:0Qrandom_flip_6/map/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:��* 
_read_only_resource_inputs
 *U
else_branchFRD
Brandom_flip_6_map_while_stateless_random_flip_up_down_false_165679*#
output_shapes
:��*T
then_branchERC
Arandom_flip_6_map_while_stateless_random_flip_up_down_true_165678�
>random_flip_6/map/while/stateless_random_flip_up_down/IdentityIdentity>random_flip_6/map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:���
<random_flip_6/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem%random_flip_6_map_while_placeholder_1#random_flip_6_map_while_placeholderGrandom_flip_6/map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:���_
random_flip_6/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
random_flip_6/map/while/addAddV2#random_flip_6_map_while_placeholder&random_flip_6/map/while/add/y:output:0*
T0*
_output_shapes
: a
random_flip_6/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
random_flip_6/map/while/add_1AddV2<random_flip_6_map_while_random_flip_6_map_while_loop_counter(random_flip_6/map/while/add_1/y:output:0*
T0*
_output_shapes
: �
 random_flip_6/map/while/IdentityIdentity!random_flip_6/map/while/add_1:z:0^random_flip_6/map/while/NoOp*
T0*
_output_shapes
: �
"random_flip_6/map/while/Identity_1Identity7random_flip_6_map_while_random_flip_6_map_strided_slice^random_flip_6/map/while/NoOp*
T0*
_output_shapes
: �
"random_flip_6/map/while/Identity_2Identityrandom_flip_6/map/while/add:z:0^random_flip_6/map/while/NoOp*
T0*
_output_shapes
: �
"random_flip_6/map/while/Identity_3IdentityLrandom_flip_6/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^random_flip_6/map/while/NoOp*
T0*
_output_shapes
: �
random_flip_6/map/while/NoOpNoOpA^random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkipC^random_flip_6/map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "M
 random_flip_6_map_while_identity)random_flip_6/map/while/Identity:output:0"Q
"random_flip_6_map_while_identity_1+random_flip_6/map/while/Identity_1:output:0"Q
"random_flip_6_map_while_identity_2+random_flip_6/map/while/Identity_2:output:0"Q
"random_flip_6_map_while_identity_3+random_flip_6/map/while/Identity_3:output:0"x
9random_flip_6_map_while_random_flip_6_map_strided_slice_1;random_flip_6_map_while_random_flip_6_map_strided_slice_1_0"�
Irandom_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resourceKrandom_flip_6_map_while_stateful_uniform_full_int_rngreadandskip_resource_0"�
urandom_flip_6_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_6_map_tensorarrayunstack_tensorlistfromtensorwrandom_flip_6_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_6_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2�
@random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip@random_flip_6/map/while/stateful_uniform_full_int/RngReadAndSkip2�
Brandom_flip_6/map/while/stateful_uniform_full_int_1/RngReadAndSkipBrandom_flip_6/map/while/stateful_uniform_full_int_1/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�E
�
I__inference_sequential_20_layer_call_and_return_conditional_losses_164910
sequential_18_input*
conv2d_20_164862: 
conv2d_20_164864: *
conv2d_21_164868: @
conv2d_21_164870:@*
conv2d_22_164874:@@
conv2d_22_164876:@*
conv2d_23_164880:@@
conv2d_23_164882:@*
conv2d_24_164886:@@
conv2d_24_164888:@*
conv2d_25_164892:@@
conv2d_25_164894:@"
dense_12_164899:	�@
dense_12_164901:@!
dense_13_164904:@	
dense_13_164906:	
identity��!conv2d_20/StatefulPartitionedCall�!conv2d_21/StatefulPartitionedCall�!conv2d_22/StatefulPartitionedCall�!conv2d_23/StatefulPartitionedCall�!conv2d_24/StatefulPartitionedCall�!conv2d_25/StatefulPartitionedCall� dense_12/StatefulPartitionedCall� dense_13/StatefulPartitionedCall�
sequential_18/PartitionedCallPartitionedCallsequential_18_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_18_layer_call_and_return_conditional_losses_163906�
sequential_19/PartitionedCallPartitionedCall&sequential_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_19_layer_call_and_return_conditional_losses_163974�
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall&sequential_19/PartitionedCall:output:0conv2d_20_164862conv2d_20_164864*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_164420�
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_164337�
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0conv2d_21_164868conv2d_21_164870*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_21_layer_call_and_return_conditional_losses_164438�
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_164349�
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_21/PartitionedCall:output:0conv2d_22_164874conv2d_22_164876*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_22_layer_call_and_return_conditional_losses_164456�
 max_pooling2d_22/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_164361�
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_22/PartitionedCall:output:0conv2d_23_164880conv2d_23_164882*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_23_layer_call_and_return_conditional_losses_164474�
 max_pooling2d_23/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_164373�
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_23/PartitionedCall:output:0conv2d_24_164886conv2d_24_164888*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_24_layer_call_and_return_conditional_losses_164492�
 max_pooling2d_24/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_164385�
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_24/PartitionedCall:output:0conv2d_25_164892conv2d_25_164894*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_25_layer_call_and_return_conditional_losses_164510�
 max_pooling2d_25/PartitionedCallPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_164397�
flatten_6/PartitionedCallPartitionedCall)max_pooling2d_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_6_layer_call_and_return_conditional_losses_164523�
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_12_164899dense_12_164901*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_164536�
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_164904dense_13_164906*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_164553x
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	�
NoOpNoOp"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:�����������: : : : : : : : : : : : : : : : 2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall:f b
1
_output_shapes
:�����������
-
_user_specified_namesequential_18_input
�	
o
I__inference_sequential_18_layer_call_and_return_conditional_losses_163954
resizing_6_input
identity�
resizing_6/PartitionedCallPartitionedCallresizing_6_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_resizing_6_layer_call_and_return_conditional_losses_163893�
rescaling_6/PartitionedCallPartitionedCall#resizing_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_rescaling_6_layer_call_and_return_conditional_losses_163903v
IdentityIdentity$rescaling_6/PartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:c _
1
_output_shapes
:�����������
*
_user_specified_nameresizing_6_input
�
�
3map_while_stateless_random_flip_up_down_true_166221p
lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identity�
6map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
1map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency?map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:���
0map/while/stateless_random_flip_up_down/IdentityIdentity:map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:��"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
�
.__inference_sequential_20_layer_call_fn_165090

inputs
unknown:	
	unknown_0:	#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:	�@

unknown_14:@

unknown_15:@	

unknown_16:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_20_layer_call_and_return_conditional_losses_164777o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_21_layer_call_fn_165881

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_164349�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
Psequential_19_random_flip_6_map_while_stateless_random_flip_up_down_false_165295�
�sequential_19_random_flip_6_map_while_stateless_random_flip_up_down_identity_sequential_19_random_flip_6_map_while_stateless_random_flip_up_down_control_dependencyP
Lsequential_19_random_flip_6_map_while_stateless_random_flip_up_down_identity�
Lsequential_19/random_flip_6/map/while/stateless_random_flip_up_down/IdentityIdentity�sequential_19_random_flip_6_map_while_stateless_random_flip_up_down_identity_sequential_19_random_flip_6_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:��"�
Lsequential_19_random_flip_6_map_while_stateless_random_flip_up_down_identityUsequential_19/random_flip_6/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
�
6map_while_stateless_random_flip_left_right_true_166172v
rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity�
9map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
4map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependencyBmap/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:���
3map/while/stateless_random_flip_left_right/IdentityIdentity=map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:��"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�	
e
I__inference_sequential_18_layer_call_and_return_conditional_losses_165526

inputs
identityg
resizing_6/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
 resizing_6/resize/ResizeBilinearResizeBilinearinputsresizing_6/resize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(W
rescaling_6/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;Y
rescaling_6/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
rescaling_6/mulMul1resizing_6/resize/ResizeBilinear:resized_images:0rescaling_6/Cast/x:output:0*
T0*1
_output_shapes
:������������
rescaling_6/addAddV2rescaling_6/mul:z:0rescaling_6/Cast_1/x:output:0*
T0*1
_output_shapes
:�����������e
IdentityIdentityrescaling_6/add:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�E
�
I__inference_sequential_20_layer_call_and_return_conditional_losses_164560

inputs*
conv2d_20_164421: 
conv2d_20_164423: *
conv2d_21_164439: @
conv2d_21_164441:@*
conv2d_22_164457:@@
conv2d_22_164459:@*
conv2d_23_164475:@@
conv2d_23_164477:@*
conv2d_24_164493:@@
conv2d_24_164495:@*
conv2d_25_164511:@@
conv2d_25_164513:@"
dense_12_164537:	�@
dense_12_164539:@!
dense_13_164554:@	
dense_13_164556:	
identity��!conv2d_20/StatefulPartitionedCall�!conv2d_21/StatefulPartitionedCall�!conv2d_22/StatefulPartitionedCall�!conv2d_23/StatefulPartitionedCall�!conv2d_24/StatefulPartitionedCall�!conv2d_25/StatefulPartitionedCall� dense_12/StatefulPartitionedCall� dense_13/StatefulPartitionedCall�
sequential_18/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_18_layer_call_and_return_conditional_losses_163906�
sequential_19/PartitionedCallPartitionedCall&sequential_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_19_layer_call_and_return_conditional_losses_163974�
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall&sequential_19/PartitionedCall:output:0conv2d_20_164421conv2d_20_164423*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_164420�
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_164337�
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0conv2d_21_164439conv2d_21_164441*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_21_layer_call_and_return_conditional_losses_164438�
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_164349�
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_21/PartitionedCall:output:0conv2d_22_164457conv2d_22_164459*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_22_layer_call_and_return_conditional_losses_164456�
 max_pooling2d_22/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_164361�
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_22/PartitionedCall:output:0conv2d_23_164475conv2d_23_164477*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_23_layer_call_and_return_conditional_losses_164474�
 max_pooling2d_23/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_164373�
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_23/PartitionedCall:output:0conv2d_24_164493conv2d_24_164495*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_24_layer_call_and_return_conditional_losses_164492�
 max_pooling2d_24/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_164385�
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_24/PartitionedCall:output:0conv2d_25_164511conv2d_25_164513*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_25_layer_call_and_return_conditional_losses_164510�
 max_pooling2d_25/PartitionedCallPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_164397�
flatten_6/PartitionedCallPartitionedCall)max_pooling2d_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_6_layer_call_and_return_conditional_losses_164523�
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_12_164537dense_12_164539*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_164536�
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_164554dense_13_164556*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_164553x
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	�
NoOpNoOp"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:�����������: : : : : : : : : : : : : : : : 2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
I__inference_sequential_19_layer_call_and_return_conditional_losses_164296

inputs"
random_flip_6_164289:	&
random_rotation_6_164292:	
identity��%random_flip_6/StatefulPartitionedCall�)random_rotation_6/StatefulPartitionedCall�
%random_flip_6/StatefulPartitionedCallStatefulPartitionedCallinputsrandom_flip_6_164289*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_random_flip_6_layer_call_and_return_conditional_losses_164274�
)random_rotation_6/StatefulPartitionedCallStatefulPartitionedCall.random_flip_6/StatefulPartitionedCall:output:0random_rotation_6_164292*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_random_rotation_6_layer_call_and_return_conditional_losses_164103�
IdentityIdentity2random_rotation_6/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp&^random_flip_6/StatefulPartitionedCall*^random_rotation_6/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 2N
%random_flip_6/StatefulPartitionedCall%random_flip_6/StatefulPartitionedCall2V
)random_rotation_6/StatefulPartitionedCall)random_rotation_6/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
J
.__inference_sequential_19_layer_call_fn_165541

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_19_layer_call_and_return_conditional_losses_163974j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
e
I__inference_random_flip_6_layer_call_and_return_conditional_losses_166097

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
Rsequential_19_random_flip_6_map_while_stateless_random_flip_left_right_true_165245�
�sequential_19_random_flip_6_map_while_stateless_random_flip_left_right_reversev2_sequential_19_random_flip_6_map_while_stateless_random_flip_left_right_control_dependencyS
Osequential_19_random_flip_6_map_while_stateless_random_flip_left_right_identity�
Usequential_19/random_flip_6/map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
Psequential_19/random_flip_6/map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2�sequential_19_random_flip_6_map_while_stateless_random_flip_left_right_reversev2_sequential_19_random_flip_6_map_while_stateless_random_flip_left_right_control_dependency^sequential_19/random_flip_6/map/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:���
Osequential_19/random_flip_6/map/while/stateless_random_flip_left_right/IdentityIdentityYsequential_19/random_flip_6/map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:��"�
Osequential_19_random_flip_6_map_while_stateless_random_flip_left_right_identityXsequential_19/random_flip_6/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
�
E__inference_conv2d_23_layer_call_and_return_conditional_losses_165936

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
)__inference_dense_12_layer_call_fn_166026

inputs
unknown:	�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_164536o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
a
E__inference_flatten_6_layer_call_and_return_conditional_losses_164523

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
~
.__inference_random_flip_6_layer_call_fn_166093

inputs
unknown:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_random_flip_6_layer_call_and_return_conditional_losses_164274y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
H
,__inference_rescaling_6_layer_call_fn_166073

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_rescaling_6_layer_call_and_return_conditional_losses_163903j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
2__inference_random_rotation_6_layer_call_fn_166267

inputs
unknown:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_random_rotation_6_layer_call_and_return_conditional_losses_164103y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
a
E__inference_flatten_6_layer_call_and_return_conditional_losses_166017

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
��
�
map_while_body_166113$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0K
=map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensorI
;map_while_stateful_uniform_full_int_rngreadandskip_resource:	��2map/while/stateful_uniform_full_int/RngReadAndSkip�4map/while/stateful_uniform_full_int_1/RngReadAndSkip�
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:��*
element_dtype0s
)map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:s
)map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
(map/while/stateful_uniform_full_int/ProdProd2map/while/stateful_uniform_full_int/shape:output:02map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: l
*map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
*map/while/stateful_uniform_full_int/Cast_1Cast1map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
2map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_03map/while/stateful_uniform_full_int/Cast/x:output:0.map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:�
7map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1map/while/stateful_uniform_full_int/strided_sliceStridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0@map/while/stateful_uniform_full_int/strided_slice/stack:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
+map/while/stateful_uniform_full_int/BitcastBitcast:map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
9map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
;map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
;map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3map/while/stateful_uniform_full_int/strided_slice_1StridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
-map/while/stateful_uniform_full_int/Bitcast_1Bitcast<map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0i
'map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
#map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV22map/while/stateful_uniform_full_int/shape:output:06map/while/stateful_uniform_full_int/Bitcast_1:output:04map/while/stateful_uniform_full_int/Bitcast:output:00map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	^
map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R �
map/while/stackPack,map/while/stateful_uniform_full_int:output:0map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:n
map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       p
map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
map/while/strided_sliceStridedSlicemap/while/stack:output:0&map/while/strided_slice/stack:output:0(map/while/strided_slice/stack_1:output:0(map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
=map/while/stateless_random_flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:���
Imap/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter map/while/strided_slice:output:0* 
_output_shapes
::�
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
\map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Rmap/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0fmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0jmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0imap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/subSubPmap/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulemap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
Cmap/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: v
1map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
/map/while/stateless_random_flip_left_right/LessLessGmap/while/stateless_random_flip_left_right/stateless_random_uniform:z:0:map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: �
*map/while/stateless_random_flip_left_rightStatelessIf3map/while/stateless_random_flip_left_right/Less:z:0Fmap/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:��* 
_read_only_resource_inputs
 *J
else_branch;R9
7map_while_stateless_random_flip_left_right_false_166173*#
output_shapes
:��*I
then_branch:R8
6map_while_stateless_random_flip_left_right_true_166172�
3map/while/stateless_random_flip_left_right/IdentityIdentity3map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:��u
+map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
*map/while/stateful_uniform_full_int_1/ProdProd4map/while/stateful_uniform_full_int_1/shape:output:04map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: n
,map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
,map/while/stateful_uniform_full_int_1/Cast_1Cast3map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
4map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_05map/while/stateful_uniform_full_int_1/Cast/x:output:00map/while/stateful_uniform_full_int_1/Cast_1:y:03^map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:�
9map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
;map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
;map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3map/while/stateful_uniform_full_int_1/strided_sliceStridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
-map/while/stateful_uniform_full_int_1/BitcastBitcast<map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
;map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
5map/while/stateful_uniform_full_int_1/strided_slice_1StridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Dmap/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
/map/while/stateful_uniform_full_int_1/Bitcast_1Bitcast>map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
%map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV24map/while/stateful_uniform_full_int_1/shape:output:08map/while/stateful_uniform_full_int_1/Bitcast_1:output:06map/while/stateful_uniform_full_int_1/Bitcast:output:02map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	`
map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R �
map/while/stack_1Pack.map/while/stateful_uniform_full_int_1:output:0map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:p
map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
map/while/strided_slice_1StridedSlicemap/while/stack_1:output:0(map/while/strided_slice_1/stack:output:0*map/while/strided_slice_1/stack_1:output:0*map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
:map/while/stateless_random_flip_up_down/control_dependencyIdentity<map/while/stateless_random_flip_left_right/Identity:output:0*
T0*F
_class<
:8loc:@map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:���
Fmap/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"map/while/strided_slice_1:output:0* 
_output_shapes
::�
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Ymap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Omap/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0cmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0gmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0fmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/subSubMmap/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulbmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
@map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: s
.map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
,map/while/stateless_random_flip_up_down/LessLessDmap/while/stateless_random_flip_up_down/stateless_random_uniform:z:07map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: �
'map/while/stateless_random_flip_up_downStatelessIf0map/while/stateless_random_flip_up_down/Less:z:0Cmap/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:��* 
_read_only_resource_inputs
 *G
else_branch8R6
4map_while_stateless_random_flip_up_down_false_166222*#
output_shapes
:��*F
then_branch7R5
3map_while_stateless_random_flip_up_down_true_166221�
0map/while/stateless_random_flip_up_down/IdentityIdentity0map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:���
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder9map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:���Q
map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0*
T0*
_output_shapes
: S
map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0*
T0*
_output_shapes
: e
map/while/IdentityIdentitymap/while/add_1:z:0^map/while/NoOp*
T0*
_output_shapes
: o
map/while/Identity_1Identitymap_while_map_strided_slice^map/while/NoOp*
T0*
_output_shapes
: e
map/while/Identity_2Identitymap/while/add:z:0^map/while/NoOp*
T0*
_output_shapes
: �
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^map/while/NoOp*
T0*
_output_shapes
: �
map/while/NoOpNoOp3^map/while/stateful_uniform_full_int/RngReadAndSkip5^map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"|
;map_while_stateful_uniform_full_int_rngreadandskip_resource=map_while_stateful_uniform_full_int_rngreadandskip_resource_0"�
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2h
2map/while/stateful_uniform_full_int/RngReadAndSkip2map/while/stateful_uniform_full_int/RngReadAndSkip2l
4map/while/stateful_uniform_full_int_1/RngReadAndSkip4map/while/stateful_uniform_full_int_1/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�	
o
I__inference_sequential_18_layer_call_and_return_conditional_losses_163948
resizing_6_input
identity�
resizing_6/PartitionedCallPartitionedCallresizing_6_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_resizing_6_layer_call_and_return_conditional_losses_163893�
rescaling_6/PartitionedCallPartitionedCall#resizing_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_rescaling_6_layer_call_and_return_conditional_losses_163903v
IdentityIdentity$rescaling_6/PartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:c _
1
_output_shapes
:�����������
*
_user_specified_nameresizing_6_input
�
�
4map_while_stateless_random_flip_up_down_false_164241o
kmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identity�
0map/while/stateless_random_flip_up_down/IdentityIdentitykmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:��"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
��
�
I__inference_sequential_20_layer_call_and_return_conditional_losses_165506

inputs;
-sequential_19_random_flip_6_map_while_input_6:	V
Hsequential_19_random_rotation_6_stateful_uniform_rngreadandskip_resource:	B
(conv2d_20_conv2d_readvariableop_resource: 7
)conv2d_20_biasadd_readvariableop_resource: B
(conv2d_21_conv2d_readvariableop_resource: @7
)conv2d_21_biasadd_readvariableop_resource:@B
(conv2d_22_conv2d_readvariableop_resource:@@7
)conv2d_22_biasadd_readvariableop_resource:@B
(conv2d_23_conv2d_readvariableop_resource:@@7
)conv2d_23_biasadd_readvariableop_resource:@B
(conv2d_24_conv2d_readvariableop_resource:@@7
)conv2d_24_biasadd_readvariableop_resource:@B
(conv2d_25_conv2d_readvariableop_resource:@@7
)conv2d_25_biasadd_readvariableop_resource:@:
'dense_12_matmul_readvariableop_resource:	�@6
(dense_12_biasadd_readvariableop_resource:@9
'dense_13_matmul_readvariableop_resource:@	6
(dense_13_biasadd_readvariableop_resource:	
identity�� conv2d_20/BiasAdd/ReadVariableOp�conv2d_20/Conv2D/ReadVariableOp� conv2d_21/BiasAdd/ReadVariableOp�conv2d_21/Conv2D/ReadVariableOp� conv2d_22/BiasAdd/ReadVariableOp�conv2d_22/Conv2D/ReadVariableOp� conv2d_23/BiasAdd/ReadVariableOp�conv2d_23/Conv2D/ReadVariableOp� conv2d_24/BiasAdd/ReadVariableOp�conv2d_24/Conv2D/ReadVariableOp� conv2d_25/BiasAdd/ReadVariableOp�conv2d_25/Conv2D/ReadVariableOp�dense_12/BiasAdd/ReadVariableOp�dense_12/MatMul/ReadVariableOp�dense_13/BiasAdd/ReadVariableOp�dense_13/MatMul/ReadVariableOp�%sequential_19/random_flip_6/map/while�?sequential_19/random_rotation_6/stateful_uniform/RngReadAndSkipu
$sequential_18/resizing_6/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
.sequential_18/resizing_6/resize/ResizeBilinearResizeBilinearinputs-sequential_18/resizing_6/resize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(e
 sequential_18/rescaling_6/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;g
"sequential_18/rescaling_6/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_18/rescaling_6/mulMul?sequential_18/resizing_6/resize/ResizeBilinear:resized_images:0)sequential_18/rescaling_6/Cast/x:output:0*
T0*1
_output_shapes
:������������
sequential_18/rescaling_6/addAddV2!sequential_18/rescaling_6/mul:z:0+sequential_18/rescaling_6/Cast_1/x:output:0*
T0*1
_output_shapes
:�����������v
%sequential_19/random_flip_6/map/ShapeShape!sequential_18/rescaling_6/add:z:0*
T0*
_output_shapes
:}
3sequential_19/random_flip_6/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_19/random_flip_6/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_19/random_flip_6/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-sequential_19/random_flip_6/map/strided_sliceStridedSlice.sequential_19/random_flip_6/map/Shape:output:0<sequential_19/random_flip_6/map/strided_slice/stack:output:0>sequential_19/random_flip_6/map/strided_slice/stack_1:output:0>sequential_19/random_flip_6/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
;sequential_19/random_flip_6/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
-sequential_19/random_flip_6/map/TensorArrayV2TensorListReserveDsequential_19/random_flip_6/map/TensorArrayV2/element_shape:output:06sequential_19/random_flip_6/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Usequential_19/random_flip_6/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
Gsequential_19/random_flip_6/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_18/rescaling_6/add:z:0^sequential_19/random_flip_6/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���g
%sequential_19/random_flip_6/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : �
=sequential_19/random_flip_6/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
/sequential_19/random_flip_6/map/TensorArrayV2_1TensorListReserveFsequential_19/random_flip_6/map/TensorArrayV2_1/element_shape:output:06sequential_19/random_flip_6/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���t
2sequential_19/random_flip_6/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
%sequential_19/random_flip_6/map/whileWhile;sequential_19/random_flip_6/map/while/loop_counter:output:06sequential_19/random_flip_6/map/strided_slice:output:0.sequential_19/random_flip_6/map/Const:output:08sequential_19/random_flip_6/map/TensorArrayV2_1:handle:06sequential_19/random_flip_6/map/strided_slice:output:0Wsequential_19/random_flip_6/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0-sequential_19_random_flip_6_map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *=
body5R3
1sequential_19_random_flip_6_map_while_body_165186*=
cond5R3
1sequential_19_random_flip_6_map_while_cond_165185*!
output_shapes
: : : : : : : �
Psequential_19/random_flip_6/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
Bsequential_19/random_flip_6/map/TensorArrayV2Stack/TensorListStackTensorListStack.sequential_19/random_flip_6/map/while:output:3Ysequential_19/random_flip_6/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:�����������*
element_dtype0�
%sequential_19/random_rotation_6/ShapeShapeKsequential_19/random_flip_6/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:}
3sequential_19/random_rotation_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential_19/random_rotation_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential_19/random_rotation_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-sequential_19/random_rotation_6/strided_sliceStridedSlice.sequential_19/random_rotation_6/Shape:output:0<sequential_19/random_rotation_6/strided_slice/stack:output:0>sequential_19/random_rotation_6/strided_slice/stack_1:output:0>sequential_19/random_rotation_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
5sequential_19/random_rotation_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
7sequential_19/random_rotation_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
7sequential_19/random_rotation_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/sequential_19/random_rotation_6/strided_slice_1StridedSlice.sequential_19/random_rotation_6/Shape:output:0>sequential_19/random_rotation_6/strided_slice_1/stack:output:0@sequential_19/random_rotation_6/strided_slice_1/stack_1:output:0@sequential_19/random_rotation_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
$sequential_19/random_rotation_6/CastCast8sequential_19/random_rotation_6/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: �
5sequential_19/random_rotation_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
7sequential_19/random_rotation_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
����������
7sequential_19/random_rotation_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/sequential_19/random_rotation_6/strided_slice_2StridedSlice.sequential_19/random_rotation_6/Shape:output:0>sequential_19/random_rotation_6/strided_slice_2/stack:output:0@sequential_19/random_rotation_6/strided_slice_2/stack_1:output:0@sequential_19/random_rotation_6/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
&sequential_19/random_rotation_6/Cast_1Cast8sequential_19/random_rotation_6/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: �
6sequential_19/random_rotation_6/stateful_uniform/shapePack6sequential_19/random_rotation_6/strided_slice:output:0*
N*
T0*
_output_shapes
:y
4sequential_19/random_rotation_6/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�y
4sequential_19/random_rotation_6/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?�
6sequential_19/random_rotation_6/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
5sequential_19/random_rotation_6/stateful_uniform/ProdProd?sequential_19/random_rotation_6/stateful_uniform/shape:output:0?sequential_19/random_rotation_6/stateful_uniform/Const:output:0*
T0*
_output_shapes
: y
7sequential_19/random_rotation_6/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
7sequential_19/random_rotation_6/stateful_uniform/Cast_1Cast>sequential_19/random_rotation_6/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
?sequential_19/random_rotation_6/stateful_uniform/RngReadAndSkipRngReadAndSkipHsequential_19_random_rotation_6_stateful_uniform_rngreadandskip_resource@sequential_19/random_rotation_6/stateful_uniform/Cast/x:output:0;sequential_19/random_rotation_6/stateful_uniform/Cast_1:y:0*
_output_shapes
:�
Dsequential_19/random_rotation_6/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Fsequential_19/random_rotation_6/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Fsequential_19/random_rotation_6/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
>sequential_19/random_rotation_6/stateful_uniform/strided_sliceStridedSliceGsequential_19/random_rotation_6/stateful_uniform/RngReadAndSkip:value:0Msequential_19/random_rotation_6/stateful_uniform/strided_slice/stack:output:0Osequential_19/random_rotation_6/stateful_uniform/strided_slice/stack_1:output:0Osequential_19/random_rotation_6/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
8sequential_19/random_rotation_6/stateful_uniform/BitcastBitcastGsequential_19/random_rotation_6/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
Fsequential_19/random_rotation_6/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
Hsequential_19/random_rotation_6/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Hsequential_19/random_rotation_6/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
@sequential_19/random_rotation_6/stateful_uniform/strided_slice_1StridedSliceGsequential_19/random_rotation_6/stateful_uniform/RngReadAndSkip:value:0Osequential_19/random_rotation_6/stateful_uniform/strided_slice_1/stack:output:0Qsequential_19/random_rotation_6/stateful_uniform/strided_slice_1/stack_1:output:0Qsequential_19/random_rotation_6/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
:sequential_19/random_rotation_6/stateful_uniform/Bitcast_1BitcastIsequential_19/random_rotation_6/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
Msequential_19/random_rotation_6/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Isequential_19/random_rotation_6/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2?sequential_19/random_rotation_6/stateful_uniform/shape:output:0Csequential_19/random_rotation_6/stateful_uniform/Bitcast_1:output:0Asequential_19/random_rotation_6/stateful_uniform/Bitcast:output:0Vsequential_19/random_rotation_6/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
4sequential_19/random_rotation_6/stateful_uniform/subSub=sequential_19/random_rotation_6/stateful_uniform/max:output:0=sequential_19/random_rotation_6/stateful_uniform/min:output:0*
T0*
_output_shapes
: �
4sequential_19/random_rotation_6/stateful_uniform/mulMulRsequential_19/random_rotation_6/stateful_uniform/StatelessRandomUniformV2:output:08sequential_19/random_rotation_6/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
0sequential_19/random_rotation_6/stateful_uniformAddV28sequential_19/random_rotation_6/stateful_uniform/mul:z:0=sequential_19/random_rotation_6/stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������z
5sequential_19/random_rotation_6/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
3sequential_19/random_rotation_6/rotation_matrix/subSub*sequential_19/random_rotation_6/Cast_1:y:0>sequential_19/random_rotation_6/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: �
3sequential_19/random_rotation_6/rotation_matrix/CosCos4sequential_19/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:���������|
7sequential_19/random_rotation_6/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
5sequential_19/random_rotation_6/rotation_matrix/sub_1Sub*sequential_19/random_rotation_6/Cast_1:y:0@sequential_19/random_rotation_6/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: �
3sequential_19/random_rotation_6/rotation_matrix/mulMul7sequential_19/random_rotation_6/rotation_matrix/Cos:y:09sequential_19/random_rotation_6/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:����������
3sequential_19/random_rotation_6/rotation_matrix/SinSin4sequential_19/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:���������|
7sequential_19/random_rotation_6/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
5sequential_19/random_rotation_6/rotation_matrix/sub_2Sub(sequential_19/random_rotation_6/Cast:y:0@sequential_19/random_rotation_6/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: �
5sequential_19/random_rotation_6/rotation_matrix/mul_1Mul7sequential_19/random_rotation_6/rotation_matrix/Sin:y:09sequential_19/random_rotation_6/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:����������
5sequential_19/random_rotation_6/rotation_matrix/sub_3Sub7sequential_19/random_rotation_6/rotation_matrix/mul:z:09sequential_19/random_rotation_6/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:����������
5sequential_19/random_rotation_6/rotation_matrix/sub_4Sub7sequential_19/random_rotation_6/rotation_matrix/sub:z:09sequential_19/random_rotation_6/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������~
9sequential_19/random_rotation_6/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
7sequential_19/random_rotation_6/rotation_matrix/truedivRealDiv9sequential_19/random_rotation_6/rotation_matrix/sub_4:z:0Bsequential_19/random_rotation_6/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������|
7sequential_19/random_rotation_6/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
5sequential_19/random_rotation_6/rotation_matrix/sub_5Sub(sequential_19/random_rotation_6/Cast:y:0@sequential_19/random_rotation_6/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: �
5sequential_19/random_rotation_6/rotation_matrix/Sin_1Sin4sequential_19/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:���������|
7sequential_19/random_rotation_6/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
5sequential_19/random_rotation_6/rotation_matrix/sub_6Sub*sequential_19/random_rotation_6/Cast_1:y:0@sequential_19/random_rotation_6/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
5sequential_19/random_rotation_6/rotation_matrix/mul_2Mul9sequential_19/random_rotation_6/rotation_matrix/Sin_1:y:09sequential_19/random_rotation_6/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:����������
5sequential_19/random_rotation_6/rotation_matrix/Cos_1Cos4sequential_19/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:���������|
7sequential_19/random_rotation_6/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
5sequential_19/random_rotation_6/rotation_matrix/sub_7Sub(sequential_19/random_rotation_6/Cast:y:0@sequential_19/random_rotation_6/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
5sequential_19/random_rotation_6/rotation_matrix/mul_3Mul9sequential_19/random_rotation_6/rotation_matrix/Cos_1:y:09sequential_19/random_rotation_6/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
3sequential_19/random_rotation_6/rotation_matrix/addAddV29sequential_19/random_rotation_6/rotation_matrix/mul_2:z:09sequential_19/random_rotation_6/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:����������
5sequential_19/random_rotation_6/rotation_matrix/sub_8Sub9sequential_19/random_rotation_6/rotation_matrix/sub_5:z:07sequential_19/random_rotation_6/rotation_matrix/add:z:0*
T0*#
_output_shapes
:����������
;sequential_19/random_rotation_6/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
9sequential_19/random_rotation_6/rotation_matrix/truediv_1RealDiv9sequential_19/random_rotation_6/rotation_matrix/sub_8:z:0Dsequential_19/random_rotation_6/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:����������
5sequential_19/random_rotation_6/rotation_matrix/ShapeShape4sequential_19/random_rotation_6/stateful_uniform:z:0*
T0*
_output_shapes
:�
Csequential_19/random_rotation_6/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
Esequential_19/random_rotation_6/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
Esequential_19/random_rotation_6/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
=sequential_19/random_rotation_6/rotation_matrix/strided_sliceStridedSlice>sequential_19/random_rotation_6/rotation_matrix/Shape:output:0Lsequential_19/random_rotation_6/rotation_matrix/strided_slice/stack:output:0Nsequential_19/random_rotation_6/rotation_matrix/strided_slice/stack_1:output:0Nsequential_19/random_rotation_6/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
5sequential_19/random_rotation_6/rotation_matrix/Cos_2Cos4sequential_19/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
Esequential_19/random_rotation_6/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Gsequential_19/random_rotation_6/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Gsequential_19/random_rotation_6/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
?sequential_19/random_rotation_6/rotation_matrix/strided_slice_1StridedSlice9sequential_19/random_rotation_6/rotation_matrix/Cos_2:y:0Nsequential_19/random_rotation_6/rotation_matrix/strided_slice_1/stack:output:0Psequential_19/random_rotation_6/rotation_matrix/strided_slice_1/stack_1:output:0Psequential_19/random_rotation_6/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
5sequential_19/random_rotation_6/rotation_matrix/Sin_2Sin4sequential_19/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
Esequential_19/random_rotation_6/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Gsequential_19/random_rotation_6/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Gsequential_19/random_rotation_6/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
?sequential_19/random_rotation_6/rotation_matrix/strided_slice_2StridedSlice9sequential_19/random_rotation_6/rotation_matrix/Sin_2:y:0Nsequential_19/random_rotation_6/rotation_matrix/strided_slice_2/stack:output:0Psequential_19/random_rotation_6/rotation_matrix/strided_slice_2/stack_1:output:0Psequential_19/random_rotation_6/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
3sequential_19/random_rotation_6/rotation_matrix/NegNegHsequential_19/random_rotation_6/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:����������
Esequential_19/random_rotation_6/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Gsequential_19/random_rotation_6/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Gsequential_19/random_rotation_6/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
?sequential_19/random_rotation_6/rotation_matrix/strided_slice_3StridedSlice;sequential_19/random_rotation_6/rotation_matrix/truediv:z:0Nsequential_19/random_rotation_6/rotation_matrix/strided_slice_3/stack:output:0Psequential_19/random_rotation_6/rotation_matrix/strided_slice_3/stack_1:output:0Psequential_19/random_rotation_6/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
5sequential_19/random_rotation_6/rotation_matrix/Sin_3Sin4sequential_19/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
Esequential_19/random_rotation_6/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Gsequential_19/random_rotation_6/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Gsequential_19/random_rotation_6/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
?sequential_19/random_rotation_6/rotation_matrix/strided_slice_4StridedSlice9sequential_19/random_rotation_6/rotation_matrix/Sin_3:y:0Nsequential_19/random_rotation_6/rotation_matrix/strided_slice_4/stack:output:0Psequential_19/random_rotation_6/rotation_matrix/strided_slice_4/stack_1:output:0Psequential_19/random_rotation_6/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
5sequential_19/random_rotation_6/rotation_matrix/Cos_3Cos4sequential_19/random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
Esequential_19/random_rotation_6/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Gsequential_19/random_rotation_6/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Gsequential_19/random_rotation_6/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
?sequential_19/random_rotation_6/rotation_matrix/strided_slice_5StridedSlice9sequential_19/random_rotation_6/rotation_matrix/Cos_3:y:0Nsequential_19/random_rotation_6/rotation_matrix/strided_slice_5/stack:output:0Psequential_19/random_rotation_6/rotation_matrix/strided_slice_5/stack_1:output:0Psequential_19/random_rotation_6/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
Esequential_19/random_rotation_6/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Gsequential_19/random_rotation_6/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
Gsequential_19/random_rotation_6/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
?sequential_19/random_rotation_6/rotation_matrix/strided_slice_6StridedSlice=sequential_19/random_rotation_6/rotation_matrix/truediv_1:z:0Nsequential_19/random_rotation_6/rotation_matrix/strided_slice_6/stack:output:0Psequential_19/random_rotation_6/rotation_matrix/strided_slice_6/stack_1:output:0Psequential_19/random_rotation_6/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
>sequential_19/random_rotation_6/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
<sequential_19/random_rotation_6/rotation_matrix/zeros/packedPackFsequential_19/random_rotation_6/rotation_matrix/strided_slice:output:0Gsequential_19/random_rotation_6/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:�
;sequential_19/random_rotation_6/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
5sequential_19/random_rotation_6/rotation_matrix/zerosFillEsequential_19/random_rotation_6/rotation_matrix/zeros/packed:output:0Dsequential_19/random_rotation_6/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������}
;sequential_19/random_rotation_6/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
6sequential_19/random_rotation_6/rotation_matrix/concatConcatV2Hsequential_19/random_rotation_6/rotation_matrix/strided_slice_1:output:07sequential_19/random_rotation_6/rotation_matrix/Neg:y:0Hsequential_19/random_rotation_6/rotation_matrix/strided_slice_3:output:0Hsequential_19/random_rotation_6/rotation_matrix/strided_slice_4:output:0Hsequential_19/random_rotation_6/rotation_matrix/strided_slice_5:output:0Hsequential_19/random_rotation_6/rotation_matrix/strided_slice_6:output:0>sequential_19/random_rotation_6/rotation_matrix/zeros:output:0Dsequential_19/random_rotation_6/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
/sequential_19/random_rotation_6/transform/ShapeShapeKsequential_19/random_flip_6/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:�
=sequential_19/random_rotation_6/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
?sequential_19/random_rotation_6/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
?sequential_19/random_rotation_6/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
7sequential_19/random_rotation_6/transform/strided_sliceStridedSlice8sequential_19/random_rotation_6/transform/Shape:output:0Fsequential_19/random_rotation_6/transform/strided_slice/stack:output:0Hsequential_19/random_rotation_6/transform/strided_slice/stack_1:output:0Hsequential_19/random_rotation_6/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:y
4sequential_19/random_rotation_6/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Dsequential_19/random_rotation_6/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Ksequential_19/random_flip_6/map/TensorArrayV2Stack/TensorListStack:tensor:0?sequential_19/random_rotation_6/rotation_matrix/concat:output:0@sequential_19/random_rotation_6/transform/strided_slice:output:0=sequential_19/random_rotation_6/transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_20/Conv2DConv2DYsequential_19/random_rotation_6/transform/ImageProjectiveTransformV3:transformed_images:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
�
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� n
conv2d_20/ReluReluconv2d_20/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
max_pooling2d_20/MaxPoolMaxPoolconv2d_20/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_21/Conv2DConv2D!max_pooling2d_20/MaxPool:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@*
paddingVALID*
strides
�
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@l
conv2d_21/ReluReluconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:���������}}@�
max_pooling2d_21/MaxPoolMaxPoolconv2d_21/Relu:activations:0*/
_output_shapes
:���������>>@*
ksize
*
paddingVALID*
strides
�
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_22/Conv2DConv2D!max_pooling2d_21/MaxPool:output:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@*
paddingVALID*
strides
�
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@l
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:���������<<@�
max_pooling2d_22/MaxPoolMaxPoolconv2d_22/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_23/Conv2DConv2D!max_pooling2d_22/MaxPool:output:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp)conv2d_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_23/BiasAddBiasAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l
conv2d_23/ReluReluconv2d_23/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
max_pooling2d_23/MaxPoolMaxPoolconv2d_23/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_24/Conv2DConv2D!max_pooling2d_23/MaxPool:output:0'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp)conv2d_24_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_24/BiasAddBiasAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l
conv2d_24/ReluReluconv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
max_pooling2d_24/MaxPoolMaxPoolconv2d_24/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
conv2d_25/Conv2D/ReadVariableOpReadVariableOp(conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_25/Conv2DConv2D!max_pooling2d_24/MaxPool:output:0'conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
 conv2d_25/BiasAdd/ReadVariableOpReadVariableOp)conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_25/BiasAddBiasAddconv2d_25/Conv2D:output:0(conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l
conv2d_25/ReluReluconv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
max_pooling2d_25/MaxPoolMaxPoolconv2d_25/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
`
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
flatten_6/ReshapeReshape!max_pooling2d_25/MaxPool:output:0flatten_6/Const:output:0*
T0*(
_output_shapes
:�����������
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_12/MatMulMatMulflatten_6/Reshape:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@b
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:@	*
dtype0�
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	�
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0�
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	h
dense_13/SoftmaxSoftmaxdense_13/BiasAdd:output:0*
T0*'
_output_shapes
:���������	i
IdentityIdentitydense_13/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������	�
NoOpNoOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp!^conv2d_25/BiasAdd/ReadVariableOp ^conv2d_25/Conv2D/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp&^sequential_19/random_flip_6/map/while@^sequential_19/random_rotation_6/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2D
 conv2d_23/BiasAdd/ReadVariableOp conv2d_23/BiasAdd/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2D
 conv2d_25/BiasAdd/ReadVariableOp conv2d_25/BiasAdd/ReadVariableOp2B
conv2d_25/Conv2D/ReadVariableOpconv2d_25/Conv2D/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp2N
%sequential_19/random_flip_6/map/while%sequential_19/random_flip_6/map/while2�
?sequential_19/random_rotation_6/stateful_uniform/RngReadAndSkip?sequential_19/random_rotation_6/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
b
F__inference_resizing_6_layer_call_and_return_conditional_losses_166068

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
N
2__inference_random_rotation_6_layer_call_fn_166260

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_random_rotation_6_layer_call_and_return_conditional_losses_163971j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_165916

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�\
�
I__inference_sequential_20_layer_call_and_return_conditional_losses_165164

inputsB
(conv2d_20_conv2d_readvariableop_resource: 7
)conv2d_20_biasadd_readvariableop_resource: B
(conv2d_21_conv2d_readvariableop_resource: @7
)conv2d_21_biasadd_readvariableop_resource:@B
(conv2d_22_conv2d_readvariableop_resource:@@7
)conv2d_22_biasadd_readvariableop_resource:@B
(conv2d_23_conv2d_readvariableop_resource:@@7
)conv2d_23_biasadd_readvariableop_resource:@B
(conv2d_24_conv2d_readvariableop_resource:@@7
)conv2d_24_biasadd_readvariableop_resource:@B
(conv2d_25_conv2d_readvariableop_resource:@@7
)conv2d_25_biasadd_readvariableop_resource:@:
'dense_12_matmul_readvariableop_resource:	�@6
(dense_12_biasadd_readvariableop_resource:@9
'dense_13_matmul_readvariableop_resource:@	6
(dense_13_biasadd_readvariableop_resource:	
identity�� conv2d_20/BiasAdd/ReadVariableOp�conv2d_20/Conv2D/ReadVariableOp� conv2d_21/BiasAdd/ReadVariableOp�conv2d_21/Conv2D/ReadVariableOp� conv2d_22/BiasAdd/ReadVariableOp�conv2d_22/Conv2D/ReadVariableOp� conv2d_23/BiasAdd/ReadVariableOp�conv2d_23/Conv2D/ReadVariableOp� conv2d_24/BiasAdd/ReadVariableOp�conv2d_24/Conv2D/ReadVariableOp� conv2d_25/BiasAdd/ReadVariableOp�conv2d_25/Conv2D/ReadVariableOp�dense_12/BiasAdd/ReadVariableOp�dense_12/MatMul/ReadVariableOp�dense_13/BiasAdd/ReadVariableOp�dense_13/MatMul/ReadVariableOpu
$sequential_18/resizing_6/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
.sequential_18/resizing_6/resize/ResizeBilinearResizeBilinearinputs-sequential_18/resizing_6/resize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(e
 sequential_18/rescaling_6/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;g
"sequential_18/rescaling_6/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
sequential_18/rescaling_6/mulMul?sequential_18/resizing_6/resize/ResizeBilinear:resized_images:0)sequential_18/rescaling_6/Cast/x:output:0*
T0*1
_output_shapes
:������������
sequential_18/rescaling_6/addAddV2!sequential_18/rescaling_6/mul:z:0+sequential_18/rescaling_6/Cast_1/x:output:0*
T0*1
_output_shapes
:������������
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_20/Conv2DConv2D!sequential_18/rescaling_6/add:z:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
�
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� n
conv2d_20/ReluReluconv2d_20/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
max_pooling2d_20/MaxPoolMaxPoolconv2d_20/Relu:activations:0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
conv2d_21/Conv2D/ReadVariableOpReadVariableOp(conv2d_21_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
conv2d_21/Conv2DConv2D!max_pooling2d_20/MaxPool:output:0'conv2d_21/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@*
paddingVALID*
strides
�
 conv2d_21/BiasAdd/ReadVariableOpReadVariableOp)conv2d_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_21/BiasAddBiasAddconv2d_21/Conv2D:output:0(conv2d_21/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@l
conv2d_21/ReluReluconv2d_21/BiasAdd:output:0*
T0*/
_output_shapes
:���������}}@�
max_pooling2d_21/MaxPoolMaxPoolconv2d_21/Relu:activations:0*/
_output_shapes
:���������>>@*
ksize
*
paddingVALID*
strides
�
conv2d_22/Conv2D/ReadVariableOpReadVariableOp(conv2d_22_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_22/Conv2DConv2D!max_pooling2d_21/MaxPool:output:0'conv2d_22/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@*
paddingVALID*
strides
�
 conv2d_22/BiasAdd/ReadVariableOpReadVariableOp)conv2d_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_22/BiasAddBiasAddconv2d_22/Conv2D:output:0(conv2d_22/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@l
conv2d_22/ReluReluconv2d_22/BiasAdd:output:0*
T0*/
_output_shapes
:���������<<@�
max_pooling2d_22/MaxPoolMaxPoolconv2d_22/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
conv2d_23/Conv2D/ReadVariableOpReadVariableOp(conv2d_23_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_23/Conv2DConv2D!max_pooling2d_22/MaxPool:output:0'conv2d_23/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
 conv2d_23/BiasAdd/ReadVariableOpReadVariableOp)conv2d_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_23/BiasAddBiasAddconv2d_23/Conv2D:output:0(conv2d_23/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l
conv2d_23/ReluReluconv2d_23/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
max_pooling2d_23/MaxPoolMaxPoolconv2d_23/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
conv2d_24/Conv2D/ReadVariableOpReadVariableOp(conv2d_24_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_24/Conv2DConv2D!max_pooling2d_23/MaxPool:output:0'conv2d_24/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
 conv2d_24/BiasAdd/ReadVariableOpReadVariableOp)conv2d_24_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_24/BiasAddBiasAddconv2d_24/Conv2D:output:0(conv2d_24/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l
conv2d_24/ReluReluconv2d_24/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
max_pooling2d_24/MaxPoolMaxPoolconv2d_24/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
conv2d_25/Conv2D/ReadVariableOpReadVariableOp(conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
conv2d_25/Conv2DConv2D!max_pooling2d_24/MaxPool:output:0'conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
 conv2d_25/BiasAdd/ReadVariableOpReadVariableOp)conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv2d_25/BiasAddBiasAddconv2d_25/Conv2D:output:0(conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@l
conv2d_25/ReluReluconv2d_25/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
max_pooling2d_25/MaxPoolMaxPoolconv2d_25/Relu:activations:0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
`
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
flatten_6/ReshapeReshape!max_pooling2d_25/MaxPool:output:0flatten_6/Const:output:0*
T0*(
_output_shapes
:�����������
dense_12/MatMul/ReadVariableOpReadVariableOp'dense_12_matmul_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
dense_12/MatMulMatMulflatten_6/Reshape:output:0&dense_12/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
dense_12/BiasAdd/ReadVariableOpReadVariableOp(dense_12_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
dense_12/BiasAddBiasAdddense_12/MatMul:product:0'dense_12/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@b
dense_12/ReluReludense_12/BiasAdd:output:0*
T0*'
_output_shapes
:���������@�
dense_13/MatMul/ReadVariableOpReadVariableOp'dense_13_matmul_readvariableop_resource*
_output_shapes

:@	*
dtype0�
dense_13/MatMulMatMuldense_12/Relu:activations:0&dense_13/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	�
dense_13/BiasAdd/ReadVariableOpReadVariableOp(dense_13_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0�
dense_13/BiasAddBiasAdddense_13/MatMul:product:0'dense_13/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	h
dense_13/SoftmaxSoftmaxdense_13/BiasAdd:output:0*
T0*'
_output_shapes
:���������	i
IdentityIdentitydense_13/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������	�
NoOpNoOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp!^conv2d_21/BiasAdd/ReadVariableOp ^conv2d_21/Conv2D/ReadVariableOp!^conv2d_22/BiasAdd/ReadVariableOp ^conv2d_22/Conv2D/ReadVariableOp!^conv2d_23/BiasAdd/ReadVariableOp ^conv2d_23/Conv2D/ReadVariableOp!^conv2d_24/BiasAdd/ReadVariableOp ^conv2d_24/Conv2D/ReadVariableOp!^conv2d_25/BiasAdd/ReadVariableOp ^conv2d_25/Conv2D/ReadVariableOp ^dense_12/BiasAdd/ReadVariableOp^dense_12/MatMul/ReadVariableOp ^dense_13/BiasAdd/ReadVariableOp^dense_13/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:�����������: : : : : : : : : : : : : : : : 2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2D
 conv2d_21/BiasAdd/ReadVariableOp conv2d_21/BiasAdd/ReadVariableOp2B
conv2d_21/Conv2D/ReadVariableOpconv2d_21/Conv2D/ReadVariableOp2D
 conv2d_22/BiasAdd/ReadVariableOp conv2d_22/BiasAdd/ReadVariableOp2B
conv2d_22/Conv2D/ReadVariableOpconv2d_22/Conv2D/ReadVariableOp2D
 conv2d_23/BiasAdd/ReadVariableOp conv2d_23/BiasAdd/ReadVariableOp2B
conv2d_23/Conv2D/ReadVariableOpconv2d_23/Conv2D/ReadVariableOp2D
 conv2d_24/BiasAdd/ReadVariableOp conv2d_24/BiasAdd/ReadVariableOp2B
conv2d_24/Conv2D/ReadVariableOpconv2d_24/Conv2D/ReadVariableOp2D
 conv2d_25/BiasAdd/ReadVariableOp conv2d_25/BiasAdd/ReadVariableOp2B
conv2d_25/Conv2D/ReadVariableOpconv2d_25/Conv2D/ReadVariableOp2B
dense_12/BiasAdd/ReadVariableOpdense_12/BiasAdd/ReadVariableOp2@
dense_12/MatMul/ReadVariableOpdense_12/MatMul/ReadVariableOp2B
dense_13/BiasAdd/ReadVariableOpdense_13/BiasAdd/ReadVariableOp2@
dense_13/MatMul/ReadVariableOpdense_13/MatMul/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
r
I__inference_sequential_19_layer_call_and_return_conditional_losses_164318
random_flip_6_input
identity�
random_flip_6/PartitionedCallPartitionedCallrandom_flip_6_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_random_flip_6_layer_call_and_return_conditional_losses_163965�
!random_rotation_6/PartitionedCallPartitionedCall&random_flip_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_random_rotation_6_layer_call_and_return_conditional_losses_163971|
IdentityIdentity*random_rotation_6/PartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:f b
1
_output_shapes
:�����������
-
_user_specified_namerandom_flip_6_input
�
�
Brandom_flip_6_map_while_stateless_random_flip_up_down_false_165679�
�random_flip_6_map_while_stateless_random_flip_up_down_identity_random_flip_6_map_while_stateless_random_flip_up_down_control_dependencyB
>random_flip_6_map_while_stateless_random_flip_up_down_identity�
>random_flip_6/map/while/stateless_random_flip_up_down/IdentityIdentity�random_flip_6_map_while_stateless_random_flip_up_down_identity_random_flip_6_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:��"�
>random_flip_6_map_while_stateless_random_flip_up_down_identityGrandom_flip_6/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
�
$__inference_signature_wrapper_165012
sequential_18_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	�@

unknown_12:@

unknown_13:@	

unknown_14:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsequential_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_163880o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:�����������
-
_user_specified_namesequential_18_input
��
�
map_while_body_164132$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0K
=map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensorI
;map_while_stateful_uniform_full_int_rngreadandskip_resource:	��2map/while/stateful_uniform_full_int/RngReadAndSkip�4map/while/stateful_uniform_full_int_1/RngReadAndSkip�
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:��*
element_dtype0s
)map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:s
)map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
(map/while/stateful_uniform_full_int/ProdProd2map/while/stateful_uniform_full_int/shape:output:02map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: l
*map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
*map/while/stateful_uniform_full_int/Cast_1Cast1map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
2map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_03map/while/stateful_uniform_full_int/Cast/x:output:0.map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:�
7map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1map/while/stateful_uniform_full_int/strided_sliceStridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0@map/while/stateful_uniform_full_int/strided_slice/stack:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
+map/while/stateful_uniform_full_int/BitcastBitcast:map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
9map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
;map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
;map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3map/while/stateful_uniform_full_int/strided_slice_1StridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
-map/while/stateful_uniform_full_int/Bitcast_1Bitcast<map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0i
'map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :�
#map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV22map/while/stateful_uniform_full_int/shape:output:06map/while/stateful_uniform_full_int/Bitcast_1:output:04map/while/stateful_uniform_full_int/Bitcast:output:00map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	^
map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R �
map/while/stackPack,map/while/stateful_uniform_full_int:output:0map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:n
map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       p
map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
map/while/strided_sliceStridedSlicemap/while/stack:output:0&map/while/strided_slice/stack:output:0(map/while/strided_slice/stack_1:output:0(map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
=map/while/stateless_random_flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:���
Imap/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter map/while/strided_slice:output:0* 
_output_shapes
::�
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
\map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Rmap/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0fmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0jmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0imap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/subSubPmap/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulemap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
Cmap/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: v
1map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
/map/while/stateless_random_flip_left_right/LessLessGmap/while/stateless_random_flip_left_right/stateless_random_uniform:z:0:map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: �
*map/while/stateless_random_flip_left_rightStatelessIf3map/while/stateless_random_flip_left_right/Less:z:0Fmap/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:��* 
_read_only_resource_inputs
 *J
else_branch;R9
7map_while_stateless_random_flip_left_right_false_164192*#
output_shapes
:��*I
then_branch:R8
6map_while_stateless_random_flip_left_right_true_164191�
3map/while/stateless_random_flip_left_right/IdentityIdentity3map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:��u
+map/while/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:u
+map/while/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
*map/while/stateful_uniform_full_int_1/ProdProd4map/while/stateful_uniform_full_int_1/shape:output:04map/while/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: n
,map/while/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
,map/while/stateful_uniform_full_int_1/Cast_1Cast3map/while/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
4map/while/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_05map/while/stateful_uniform_full_int_1/Cast/x:output:00map/while/stateful_uniform_full_int_1/Cast_1:y:03^map/while/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:�
9map/while/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
;map/while/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
;map/while/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
3map/while/stateful_uniform_full_int_1/strided_sliceStridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int_1/strided_slice/stack:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Dmap/while/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
-map/while/stateful_uniform_full_int_1/BitcastBitcast<map/while/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
;map/while/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
=map/while/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
5map/while/stateful_uniform_full_int_1/strided_slice_1StridedSlice<map/while/stateful_uniform_full_int_1/RngReadAndSkip:value:0Dmap/while/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Fmap/while/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
/map/while/stateful_uniform_full_int_1/Bitcast_1Bitcast>map/while/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0k
)map/while/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :�
%map/while/stateful_uniform_full_int_1StatelessRandomUniformFullIntV24map/while/stateful_uniform_full_int_1/shape:output:08map/while/stateful_uniform_full_int_1/Bitcast_1:output:06map/while/stateful_uniform_full_int_1/Bitcast:output:02map/while/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	`
map/while/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R �
map/while/stack_1Pack.map/while/stateful_uniform_full_int_1:output:0map/while/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:p
map/while/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!map/while/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!map/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
map/while/strided_slice_1StridedSlicemap/while/stack_1:output:0(map/while/strided_slice_1/stack:output:0*map/while/strided_slice_1/stack_1:output:0*map/while/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask�
:map/while/stateless_random_flip_up_down/control_dependencyIdentity<map/while/stateless_random_flip_left_right/Identity:output:0*
T0*F
_class<
:8loc:@map/while/stateless_random_flip_left_right/Identity*$
_output_shapes
:���
Fmap/while/stateless_random_flip_up_down/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter"map/while/strided_slice_1:output:0* 
_output_shapes
::�
]map/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
Ymap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Omap/while/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0cmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0gmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0fmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/subSubMmap/while/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: �
Dmap/while/stateless_random_flip_up_down/stateless_random_uniform/mulMulbmap/while/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: �
@map/while/stateless_random_flip_up_down/stateless_random_uniformAddV2Hmap/while/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Mmap/while/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: s
.map/while/stateless_random_flip_up_down/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
,map/while/stateless_random_flip_up_down/LessLessDmap/while/stateless_random_flip_up_down/stateless_random_uniform:z:07map/while/stateless_random_flip_up_down/Less/y:output:0*
T0*
_output_shapes
: �
'map/while/stateless_random_flip_up_downStatelessIf0map/while/stateless_random_flip_up_down/Less:z:0Cmap/while/stateless_random_flip_up_down/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:��* 
_read_only_resource_inputs
 *G
else_branch8R6
4map_while_stateless_random_flip_up_down_false_164241*#
output_shapes
:��*F
then_branch7R5
3map_while_stateless_random_flip_up_down_true_164240�
0map/while/stateless_random_flip_up_down/IdentityIdentity0map/while/stateless_random_flip_up_down:output:0*
T0*$
_output_shapes
:���
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder9map/while/stateless_random_flip_up_down/Identity:output:0*
_output_shapes
: *
element_dtype0:���Q
map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0*
T0*
_output_shapes
: S
map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0*
T0*
_output_shapes
: e
map/while/IdentityIdentitymap/while/add_1:z:0^map/while/NoOp*
T0*
_output_shapes
: o
map/while/Identity_1Identitymap_while_map_strided_slice^map/while/NoOp*
T0*
_output_shapes
: e
map/while/Identity_2Identitymap/while/add:z:0^map/while/NoOp*
T0*
_output_shapes
: �
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^map/while/NoOp*
T0*
_output_shapes
: �
map/while/NoOpNoOp3^map/while/stateful_uniform_full_int/RngReadAndSkip5^map/while/stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"|
;map_while_stateful_uniform_full_int_rngreadandskip_resource=map_while_stateful_uniform_full_int_rngreadandskip_resource_0"�
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2h
2map/while/stateful_uniform_full_int/RngReadAndSkip2map/while/stateful_uniform_full_int/RngReadAndSkip2l
4map/while/stateful_uniform_full_int_1/RngReadAndSkip4map/while/stateful_uniform_full_int_1/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
h
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_164349

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_165856

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_25_layer_call_fn_166001

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_164397�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_25_layer_call_and_return_conditional_losses_165996

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
3map_while_stateless_random_flip_up_down_true_164240p
lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identity�
6map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
1map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2lmap_while_stateless_random_flip_up_down_reversev2_map_while_stateless_random_flip_up_down_control_dependency?map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:���
0map/while/stateless_random_flip_up_down/IdentityIdentity:map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:��"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�H
�
I__inference_sequential_20_layer_call_and_return_conditional_losses_164967
sequential_18_input"
sequential_19_164914:	"
sequential_19_164916:	*
conv2d_20_164919: 
conv2d_20_164921: *
conv2d_21_164925: @
conv2d_21_164927:@*
conv2d_22_164931:@@
conv2d_22_164933:@*
conv2d_23_164937:@@
conv2d_23_164939:@*
conv2d_24_164943:@@
conv2d_24_164945:@*
conv2d_25_164949:@@
conv2d_25_164951:@"
dense_12_164956:	�@
dense_12_164958:@!
dense_13_164961:@	
dense_13_164963:	
identity��!conv2d_20/StatefulPartitionedCall�!conv2d_21/StatefulPartitionedCall�!conv2d_22/StatefulPartitionedCall�!conv2d_23/StatefulPartitionedCall�!conv2d_24/StatefulPartitionedCall�!conv2d_25/StatefulPartitionedCall� dense_12/StatefulPartitionedCall� dense_13/StatefulPartitionedCall�%sequential_19/StatefulPartitionedCall�
sequential_18/PartitionedCallPartitionedCallsequential_18_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_18_layer_call_and_return_conditional_losses_163934�
%sequential_19/StatefulPartitionedCallStatefulPartitionedCall&sequential_18/PartitionedCall:output:0sequential_19_164914sequential_19_164916*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_19_layer_call_and_return_conditional_losses_164296�
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall.sequential_19/StatefulPartitionedCall:output:0conv2d_20_164919conv2d_20_164921*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_164420�
 max_pooling2d_20/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_164337�
!conv2d_21/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0conv2d_21_164925conv2d_21_164927*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������}}@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_21_layer_call_and_return_conditional_losses_164438�
 max_pooling2d_21/PartitionedCallPartitionedCall*conv2d_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������>>@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_164349�
!conv2d_22/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_21/PartitionedCall:output:0conv2d_22_164931conv2d_22_164933*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������<<@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_22_layer_call_and_return_conditional_losses_164456�
 max_pooling2d_22/PartitionedCallPartitionedCall*conv2d_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_164361�
!conv2d_23/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_22/PartitionedCall:output:0conv2d_23_164937conv2d_23_164939*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_23_layer_call_and_return_conditional_losses_164474�
 max_pooling2d_23/PartitionedCallPartitionedCall*conv2d_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_164373�
!conv2d_24/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_23/PartitionedCall:output:0conv2d_24_164943conv2d_24_164945*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_24_layer_call_and_return_conditional_losses_164492�
 max_pooling2d_24/PartitionedCallPartitionedCall*conv2d_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_164385�
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_24/PartitionedCall:output:0conv2d_25_164949conv2d_25_164951*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_25_layer_call_and_return_conditional_losses_164510�
 max_pooling2d_25/PartitionedCallPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_164397�
flatten_6/PartitionedCallPartitionedCall)max_pooling2d_25/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_6_layer_call_and_return_conditional_losses_164523�
 dense_12/StatefulPartitionedCallStatefulPartitionedCall"flatten_6/PartitionedCall:output:0dense_12_164956dense_12_164958*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_12_layer_call_and_return_conditional_losses_164536�
 dense_13/StatefulPartitionedCallStatefulPartitionedCall)dense_12/StatefulPartitionedCall:output:0dense_13_164961dense_13_164963*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_13_layer_call_and_return_conditional_losses_164553x
IdentityIdentity)dense_13/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	�
NoOpNoOp"^conv2d_20/StatefulPartitionedCall"^conv2d_21/StatefulPartitionedCall"^conv2d_22/StatefulPartitionedCall"^conv2d_23/StatefulPartitionedCall"^conv2d_24/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall!^dense_12/StatefulPartitionedCall!^dense_13/StatefulPartitionedCall&^sequential_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2F
!conv2d_21/StatefulPartitionedCall!conv2d_21/StatefulPartitionedCall2F
!conv2d_22/StatefulPartitionedCall!conv2d_22/StatefulPartitionedCall2F
!conv2d_23/StatefulPartitionedCall!conv2d_23/StatefulPartitionedCall2F
!conv2d_24/StatefulPartitionedCall!conv2d_24/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2D
 dense_12/StatefulPartitionedCall dense_12/StatefulPartitionedCall2D
 dense_13/StatefulPartitionedCall dense_13/StatefulPartitionedCall2N
%sequential_19/StatefulPartitionedCall%sequential_19/StatefulPartitionedCall:f b
1
_output_shapes
:�����������
-
_user_specified_namesequential_18_input
�
T
.__inference_sequential_18_layer_call_fn_163942
resizing_6_input
identity�
PartitionedCallPartitionedCallresizing_6_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_18_layer_call_and_return_conditional_losses_163934j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:c _
1
_output_shapes
:�����������
*
_user_specified_nameresizing_6_input
�
h
L__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_165976

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
6map_while_stateless_random_flip_left_right_true_164191v
rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity�
9map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:�
4map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependencyBmap/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:���
3map/while/stateless_random_flip_left_right/IdentityIdentity=map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:��"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
�
E__inference_conv2d_20_layer_call_and_return_conditional_losses_165846

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_23_layer_call_and_return_conditional_losses_164474

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
J
.__inference_random_flip_6_layer_call_fn_166086

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_random_flip_6_layer_call_and_return_conditional_losses_163965j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
map_while_cond_166112$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice<
8map_while_map_while_cond_166112___redundant_placeholder0<
8map_while_map_while_cond_166112___redundant_placeholder1
map_while_identity
p
map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice*
T0*
_output_shapes
: x
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice*
T0*
_output_shapes
: d
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0*
_output_shapes
: Y
map/while/IdentityIdentitymap/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
�
�
.__inference_sequential_20_layer_call_fn_164595
sequential_18_input!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	�@

unknown_12:@

unknown_13:@	

unknown_14:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsequential_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_20_layer_call_and_return_conditional_losses_164560o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:�����������
-
_user_specified_namesequential_18_input
�
�
E__inference_conv2d_24_layer_call_and_return_conditional_losses_165966

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
��
�
M__inference_random_rotation_6_layer_call_and_return_conditional_losses_166389

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity��stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:���������z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: �
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:���������Y
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:�����������h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
*__inference_conv2d_20_layer_call_fn_165835

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_164420y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:����������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�	
e
I__inference_sequential_19_layer_call_and_return_conditional_losses_163974

inputs
identity�
random_flip_6/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_random_flip_6_layer_call_and_return_conditional_losses_163965�
!random_rotation_6/PartitionedCallPartitionedCall&random_flip_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_random_rotation_6_layer_call_and_return_conditional_losses_163971|
IdentityIdentity*random_rotation_6/PartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_22_layer_call_and_return_conditional_losses_164456

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������<<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������<<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������<<@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������>>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������>>@
 
_user_specified_nameinputs
�

�
D__inference_dense_13_layer_call_and_return_conditional_losses_164553

inputs0
matmul_readvariableop_resource:@	-
biasadd_readvariableop_resource:	
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������	V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������	`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������	w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_164337

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�	
�
Arandom_flip_6_map_while_stateless_random_flip_up_down_true_165678�
�random_flip_6_map_while_stateless_random_flip_up_down_reversev2_random_flip_6_map_while_stateless_random_flip_up_down_control_dependencyB
>random_flip_6_map_while_stateless_random_flip_up_down_identity�
Drandom_flip_6/map/while/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
?random_flip_6/map/while/stateless_random_flip_up_down/ReverseV2	ReverseV2�random_flip_6_map_while_stateless_random_flip_up_down_reversev2_random_flip_6_map_while_stateless_random_flip_up_down_control_dependencyMrandom_flip_6/map/while/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*$
_output_shapes
:���
>random_flip_6/map/while/stateless_random_flip_up_down/IdentityIdentityHrandom_flip_6/map/while/stateless_random_flip_up_down/ReverseV2:output:0*
T0*$
_output_shapes
:��"�
>random_flip_6_map_while_stateless_random_flip_up_down_identityGrandom_flip_6/map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
�
E__inference_conv2d_21_layer_call_and_return_conditional_losses_164438

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������}}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������}}@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
þ
�
I__inference_sequential_19_layer_call_and_return_conditional_losses_165826

inputs-
random_flip_6_map_while_input_6:	H
:random_rotation_6_stateful_uniform_rngreadandskip_resource:	
identity��random_flip_6/map/while�1random_rotation_6/stateful_uniform/RngReadAndSkipM
random_flip_6/map/ShapeShapeinputs*
T0*
_output_shapes
:o
%random_flip_6/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'random_flip_6/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'random_flip_6/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
random_flip_6/map/strided_sliceStridedSlice random_flip_6/map/Shape:output:0.random_flip_6/map/strided_slice/stack:output:00random_flip_6/map/strided_slice/stack_1:output:00random_flip_6/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
-random_flip_6/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
random_flip_6/map/TensorArrayV2TensorListReserve6random_flip_6/map/TensorArrayV2/element_shape:output:0(random_flip_6/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Grandom_flip_6/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
9random_flip_6/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsPrandom_flip_6/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���Y
random_flip_6/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : z
/random_flip_6/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
!random_flip_6/map/TensorArrayV2_1TensorListReserve8random_flip_6/map/TensorArrayV2_1/element_shape:output:0(random_flip_6/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���f
$random_flip_6/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
random_flip_6/map/whileWhile-random_flip_6/map/while/loop_counter:output:0(random_flip_6/map/strided_slice:output:0 random_flip_6/map/Const:output:0*random_flip_6/map/TensorArrayV2_1:handle:0(random_flip_6/map/strided_slice:output:0Irandom_flip_6/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0random_flip_6_map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( */
body'R%
#random_flip_6_map_while_body_165570*/
cond'R%
#random_flip_6_map_while_cond_165569*!
output_shapes
: : : : : : : �
Brandom_flip_6/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         �
4random_flip_6/map/TensorArrayV2Stack/TensorListStackTensorListStack random_flip_6/map/while:output:3Krandom_flip_6/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:�����������*
element_dtype0�
random_rotation_6/ShapeShape=random_flip_6/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:o
%random_rotation_6/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'random_rotation_6/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'random_rotation_6/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
random_rotation_6/strided_sliceStridedSlice random_rotation_6/Shape:output:0.random_rotation_6/strided_slice/stack:output:00random_rotation_6/strided_slice/stack_1:output:00random_rotation_6/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
'random_rotation_6/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������|
)random_rotation_6/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������s
)random_rotation_6/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!random_rotation_6/strided_slice_1StridedSlice random_rotation_6/Shape:output:00random_rotation_6/strided_slice_1/stack:output:02random_rotation_6/strided_slice_1/stack_1:output:02random_rotation_6/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
random_rotation_6/CastCast*random_rotation_6/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: z
'random_rotation_6/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������|
)random_rotation_6/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������s
)random_rotation_6/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!random_rotation_6/strided_slice_2StridedSlice random_rotation_6/Shape:output:00random_rotation_6/strided_slice_2/stack:output:02random_rotation_6/strided_slice_2/stack_1:output:02random_rotation_6/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
random_rotation_6/Cast_1Cast*random_rotation_6/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: �
(random_rotation_6/stateful_uniform/shapePack(random_rotation_6/strided_slice:output:0*
N*
T0*
_output_shapes
:k
&random_rotation_6/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�k
&random_rotation_6/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?r
(random_rotation_6/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
'random_rotation_6/stateful_uniform/ProdProd1random_rotation_6/stateful_uniform/shape:output:01random_rotation_6/stateful_uniform/Const:output:0*
T0*
_output_shapes
: k
)random_rotation_6/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :�
)random_rotation_6/stateful_uniform/Cast_1Cast0random_rotation_6/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
1random_rotation_6/stateful_uniform/RngReadAndSkipRngReadAndSkip:random_rotation_6_stateful_uniform_rngreadandskip_resource2random_rotation_6/stateful_uniform/Cast/x:output:0-random_rotation_6/stateful_uniform/Cast_1:y:0*
_output_shapes
:�
6random_rotation_6/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
8random_rotation_6/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8random_rotation_6/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0random_rotation_6/stateful_uniform/strided_sliceStridedSlice9random_rotation_6/stateful_uniform/RngReadAndSkip:value:0?random_rotation_6/stateful_uniform/strided_slice/stack:output:0Arandom_rotation_6/stateful_uniform/strided_slice/stack_1:output:0Arandom_rotation_6/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask�
*random_rotation_6/stateful_uniform/BitcastBitcast9random_rotation_6/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0�
8random_rotation_6/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:�
:random_rotation_6/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
:random_rotation_6/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
2random_rotation_6/stateful_uniform/strided_slice_1StridedSlice9random_rotation_6/stateful_uniform/RngReadAndSkip:value:0Arandom_rotation_6/stateful_uniform/strided_slice_1/stack:output:0Crandom_rotation_6/stateful_uniform/strided_slice_1/stack_1:output:0Crandom_rotation_6/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
,random_rotation_6/stateful_uniform/Bitcast_1Bitcast;random_rotation_6/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0�
?random_rotation_6/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
;random_rotation_6/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV21random_rotation_6/stateful_uniform/shape:output:05random_rotation_6/stateful_uniform/Bitcast_1:output:03random_rotation_6/stateful_uniform/Bitcast:output:0Hrandom_rotation_6/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:����������
&random_rotation_6/stateful_uniform/subSub/random_rotation_6/stateful_uniform/max:output:0/random_rotation_6/stateful_uniform/min:output:0*
T0*
_output_shapes
: �
&random_rotation_6/stateful_uniform/mulMulDrandom_rotation_6/stateful_uniform/StatelessRandomUniformV2:output:0*random_rotation_6/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
"random_rotation_6/stateful_uniformAddV2*random_rotation_6/stateful_uniform/mul:z:0/random_rotation_6/stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������l
'random_rotation_6/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
%random_rotation_6/rotation_matrix/subSubrandom_rotation_6/Cast_1:y:00random_rotation_6/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: �
%random_rotation_6/rotation_matrix/CosCos&random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:���������n
)random_rotation_6/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'random_rotation_6/rotation_matrix/sub_1Subrandom_rotation_6/Cast_1:y:02random_rotation_6/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: �
%random_rotation_6/rotation_matrix/mulMul)random_rotation_6/rotation_matrix/Cos:y:0+random_rotation_6/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:����������
%random_rotation_6/rotation_matrix/SinSin&random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:���������n
)random_rotation_6/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'random_rotation_6/rotation_matrix/sub_2Subrandom_rotation_6/Cast:y:02random_rotation_6/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: �
'random_rotation_6/rotation_matrix/mul_1Mul)random_rotation_6/rotation_matrix/Sin:y:0+random_rotation_6/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:����������
'random_rotation_6/rotation_matrix/sub_3Sub)random_rotation_6/rotation_matrix/mul:z:0+random_rotation_6/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:����������
'random_rotation_6/rotation_matrix/sub_4Sub)random_rotation_6/rotation_matrix/sub:z:0+random_rotation_6/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������p
+random_rotation_6/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
)random_rotation_6/rotation_matrix/truedivRealDiv+random_rotation_6/rotation_matrix/sub_4:z:04random_rotation_6/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������n
)random_rotation_6/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'random_rotation_6/rotation_matrix/sub_5Subrandom_rotation_6/Cast:y:02random_rotation_6/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: �
'random_rotation_6/rotation_matrix/Sin_1Sin&random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:���������n
)random_rotation_6/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'random_rotation_6/rotation_matrix/sub_6Subrandom_rotation_6/Cast_1:y:02random_rotation_6/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
'random_rotation_6/rotation_matrix/mul_2Mul+random_rotation_6/rotation_matrix/Sin_1:y:0+random_rotation_6/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:����������
'random_rotation_6/rotation_matrix/Cos_1Cos&random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:���������n
)random_rotation_6/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
'random_rotation_6/rotation_matrix/sub_7Subrandom_rotation_6/Cast:y:02random_rotation_6/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
'random_rotation_6/rotation_matrix/mul_3Mul+random_rotation_6/rotation_matrix/Cos_1:y:0+random_rotation_6/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
%random_rotation_6/rotation_matrix/addAddV2+random_rotation_6/rotation_matrix/mul_2:z:0+random_rotation_6/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:����������
'random_rotation_6/rotation_matrix/sub_8Sub+random_rotation_6/rotation_matrix/sub_5:z:0)random_rotation_6/rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������r
-random_rotation_6/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
+random_rotation_6/rotation_matrix/truediv_1RealDiv+random_rotation_6/rotation_matrix/sub_8:z:06random_rotation_6/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:���������}
'random_rotation_6/rotation_matrix/ShapeShape&random_rotation_6/stateful_uniform:z:0*
T0*
_output_shapes
:
5random_rotation_6/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7random_rotation_6/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7random_rotation_6/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/random_rotation_6/rotation_matrix/strided_sliceStridedSlice0random_rotation_6/rotation_matrix/Shape:output:0>random_rotation_6/rotation_matrix/strided_slice/stack:output:0@random_rotation_6/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_6/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
'random_rotation_6/rotation_matrix/Cos_2Cos&random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
7random_rotation_6/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_6/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_6/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1random_rotation_6/rotation_matrix/strided_slice_1StridedSlice+random_rotation_6/rotation_matrix/Cos_2:y:0@random_rotation_6/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_6/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_6/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
'random_rotation_6/rotation_matrix/Sin_2Sin&random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
7random_rotation_6/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_6/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_6/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1random_rotation_6/rotation_matrix/strided_slice_2StridedSlice+random_rotation_6/rotation_matrix/Sin_2:y:0@random_rotation_6/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_6/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_6/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
%random_rotation_6/rotation_matrix/NegNeg:random_rotation_6/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:����������
7random_rotation_6/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_6/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_6/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1random_rotation_6/rotation_matrix/strided_slice_3StridedSlice-random_rotation_6/rotation_matrix/truediv:z:0@random_rotation_6/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_6/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_6/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
'random_rotation_6/rotation_matrix/Sin_3Sin&random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
7random_rotation_6/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_6/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_6/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1random_rotation_6/rotation_matrix/strided_slice_4StridedSlice+random_rotation_6/rotation_matrix/Sin_3:y:0@random_rotation_6/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_6/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_6/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
'random_rotation_6/rotation_matrix/Cos_3Cos&random_rotation_6/stateful_uniform:z:0*
T0*#
_output_shapes
:����������
7random_rotation_6/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_6/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_6/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1random_rotation_6/rotation_matrix/strided_slice_5StridedSlice+random_rotation_6/rotation_matrix/Cos_3:y:0@random_rotation_6/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_6/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_6/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask�
7random_rotation_6/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_6/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        �
9random_rotation_6/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1random_rotation_6/rotation_matrix/strided_slice_6StridedSlice/random_rotation_6/rotation_matrix/truediv_1:z:0@random_rotation_6/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_6/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_6/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskr
0random_rotation_6/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
.random_rotation_6/rotation_matrix/zeros/packedPack8random_rotation_6/rotation_matrix/strided_slice:output:09random_rotation_6/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:r
-random_rotation_6/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
'random_rotation_6/rotation_matrix/zerosFill7random_rotation_6/rotation_matrix/zeros/packed:output:06random_rotation_6/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������o
-random_rotation_6/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
(random_rotation_6/rotation_matrix/concatConcatV2:random_rotation_6/rotation_matrix/strided_slice_1:output:0)random_rotation_6/rotation_matrix/Neg:y:0:random_rotation_6/rotation_matrix/strided_slice_3:output:0:random_rotation_6/rotation_matrix/strided_slice_4:output:0:random_rotation_6/rotation_matrix/strided_slice_5:output:0:random_rotation_6/rotation_matrix/strided_slice_6:output:00random_rotation_6/rotation_matrix/zeros:output:06random_rotation_6/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:����������
!random_rotation_6/transform/ShapeShape=random_flip_6/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:y
/random_rotation_6/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1random_rotation_6/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1random_rotation_6/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
)random_rotation_6/transform/strided_sliceStridedSlice*random_rotation_6/transform/Shape:output:08random_rotation_6/transform/strided_slice/stack:output:0:random_rotation_6/transform/strided_slice/stack_1:output:0:random_rotation_6/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:k
&random_rotation_6/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
6random_rotation_6/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3=random_flip_6/map/TensorArrayV2Stack/TensorListStack:tensor:01random_rotation_6/rotation_matrix/concat:output:02random_rotation_6/transform/strided_slice:output:0/random_rotation_6/transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentityKrandom_rotation_6/transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp^random_flip_6/map/while2^random_rotation_6/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
random_flip_6/map/whilerandom_flip_6/map/while2f
1random_rotation_6/stateful_uniform/RngReadAndSkip1random_rotation_6/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
Erandom_flip_6_map_while_stateless_random_flip_left_right_false_165630�
�random_flip_6_map_while_stateless_random_flip_left_right_identity_random_flip_6_map_while_stateless_random_flip_left_right_control_dependencyE
Arandom_flip_6_map_while_stateless_random_flip_left_right_identity�
Arandom_flip_6/map/while/stateless_random_flip_left_right/IdentityIdentity�random_flip_6_map_while_stateless_random_flip_left_right_identity_random_flip_6_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:��"�
Arandom_flip_6_map_while_stateless_random_flip_left_right_identityJrandom_flip_6/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
h
L__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_164385

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
b
F__inference_resizing_6_layer_call_and_return_conditional_losses_163893

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
7map_while_stateless_random_flip_left_right_false_166173u
qmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identity�
3map/while/stateless_random_flip_left_right/IdentityIdentityqmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:��"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
c
G__inference_rescaling_6_layer_call_and_return_conditional_losses_166081

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:�����������d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:�����������Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
M
1__inference_max_pooling2d_24_layer_call_fn_165971

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_164385�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_165946

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_164373

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
.__inference_sequential_20_layer_call_fn_165049

inputs!
unknown: 
	unknown_0: #
	unknown_1: @
	unknown_2:@#
	unknown_3:@@
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@

unknown_11:	�@

unknown_12:@

unknown_13:@	

unknown_14:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_20_layer_call_and_return_conditional_losses_164560o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:�����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
i
M__inference_random_rotation_6_layer_call_and_return_conditional_losses_166271

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
*__inference_conv2d_23_layer_call_fn_165925

inputs!
unknown:@@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_23_layer_call_and_return_conditional_losses_164474w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�	
e
I__inference_sequential_18_layer_call_and_return_conditional_losses_165536

inputs
identityg
resizing_6/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      �
 resizing_6/resize/ResizeBilinearResizeBilinearinputsresizing_6/resize/size:output:0*
T0*1
_output_shapes
:�����������*
half_pixel_centers(W
rescaling_6/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *���;Y
rescaling_6/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    �
rescaling_6/mulMul1resizing_6/resize/ResizeBilinear:resized_images:0rescaling_6/Cast/x:output:0*
T0*1
_output_shapes
:������������
rescaling_6/addAddV2rescaling_6/mul:z:0rescaling_6/Cast_1/x:output:0*
T0*1
_output_shapes
:�����������e
IdentityIdentityrescaling_6/add:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
h
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_164361

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_21_layer_call_and_return_conditional_losses_165876

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������}}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������}}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������}}@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:��������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:��������� 
 
_user_specified_nameinputs
��
�
M__inference_random_rotation_6_layer_call_and_return_conditional_losses_164103

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity��stateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|٠�Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|٠?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: �
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:�
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :�
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:���������z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: �
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:����������
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:���������Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:���������^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  �?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: �
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:����������
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:���������~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:���������`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @�
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:���������Y
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:���������v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:���������v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:���������]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:���������E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:�����������*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR�
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:�����������h
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:�����������: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
Ssequential_19_random_flip_6_map_while_stateless_random_flip_left_right_false_165246�
�sequential_19_random_flip_6_map_while_stateless_random_flip_left_right_identity_sequential_19_random_flip_6_map_while_stateless_random_flip_left_right_control_dependencyS
Osequential_19_random_flip_6_map_while_stateless_random_flip_left_right_identity�
Osequential_19/random_flip_6/map/while/stateless_random_flip_left_right/IdentityIdentity�sequential_19_random_flip_6_map_while_stateless_random_flip_left_right_identity_sequential_19_random_flip_6_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:��"�
Osequential_19_random_flip_6_map_while_stateless_random_flip_left_right_identityXsequential_19/random_flip_6/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
�
map_while_cond_164131$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice<
8map_while_map_while_cond_164131___redundant_placeholder0<
8map_while_map_while_cond_164131___redundant_placeholder1
map_while_identity
p
map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice*
T0*
_output_shapes
: x
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice*
T0*
_output_shapes
: d
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0*
_output_shapes
: Y
map/while/IdentityIdentitymap/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
�
W
.__inference_sequential_19_layer_call_fn_163977
random_flip_6_input
identity�
PartitionedCallPartitionedCallrandom_flip_6_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_19_layer_call_and_return_conditional_losses_163974j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:f b
1
_output_shapes
:�����������
-
_user_specified_namerandom_flip_6_input
�
e
I__inference_sequential_19_layer_call_and_return_conditional_losses_165554

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
4map_while_stateless_random_flip_up_down_false_166222o
kmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency4
0map_while_stateless_random_flip_up_down_identity�
0map/while/stateless_random_flip_up_down/IdentityIdentitykmap_while_stateless_random_flip_up_down_identity_map_while_stateless_random_flip_up_down_control_dependency*
T0*$
_output_shapes
:��"m
0map_while_stateless_random_flip_up_down_identity9map/while/stateless_random_flip_up_down/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:��:* &
$
_output_shapes
:��
�
e
I__inference_sequential_18_layer_call_and_return_conditional_losses_163934

inputs
identity�
resizing_6/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_resizing_6_layer_call_and_return_conditional_losses_163893�
rescaling_6/PartitionedCallPartitionedCall#resizing_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_rescaling_6_layer_call_and_return_conditional_losses_163903v
IdentityIdentity$rescaling_6/PartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�$
"__inference__traced_restore_166786
file_prefix;
!assignvariableop_conv2d_20_kernel: /
!assignvariableop_1_conv2d_20_bias: =
#assignvariableop_2_conv2d_21_kernel: @/
!assignvariableop_3_conv2d_21_bias:@=
#assignvariableop_4_conv2d_22_kernel:@@/
!assignvariableop_5_conv2d_22_bias:@=
#assignvariableop_6_conv2d_23_kernel:@@/
!assignvariableop_7_conv2d_23_bias:@=
#assignvariableop_8_conv2d_24_kernel:@@/
!assignvariableop_9_conv2d_24_bias:@>
$assignvariableop_10_conv2d_25_kernel:@@0
"assignvariableop_11_conv2d_25_bias:@6
#assignvariableop_12_dense_12_kernel:	�@/
!assignvariableop_13_dense_12_bias:@5
#assignvariableop_14_dense_13_kernel:@	/
!assignvariableop_15_dense_13_bias:	'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: 0
&assignvariableop_20_adam_learning_rate: %
assignvariableop_21_total_1: %
assignvariableop_22_count_1: #
assignvariableop_23_total: #
assignvariableop_24_count: ,
assignvariableop_25_statevar_1:	*
assignvariableop_26_statevar:	E
+assignvariableop_27_adam_conv2d_20_kernel_m: 7
)assignvariableop_28_adam_conv2d_20_bias_m: E
+assignvariableop_29_adam_conv2d_21_kernel_m: @7
)assignvariableop_30_adam_conv2d_21_bias_m:@E
+assignvariableop_31_adam_conv2d_22_kernel_m:@@7
)assignvariableop_32_adam_conv2d_22_bias_m:@E
+assignvariableop_33_adam_conv2d_23_kernel_m:@@7
)assignvariableop_34_adam_conv2d_23_bias_m:@E
+assignvariableop_35_adam_conv2d_24_kernel_m:@@7
)assignvariableop_36_adam_conv2d_24_bias_m:@E
+assignvariableop_37_adam_conv2d_25_kernel_m:@@7
)assignvariableop_38_adam_conv2d_25_bias_m:@=
*assignvariableop_39_adam_dense_12_kernel_m:	�@6
(assignvariableop_40_adam_dense_12_bias_m:@<
*assignvariableop_41_adam_dense_13_kernel_m:@	6
(assignvariableop_42_adam_dense_13_bias_m:	E
+assignvariableop_43_adam_conv2d_20_kernel_v: 7
)assignvariableop_44_adam_conv2d_20_bias_v: E
+assignvariableop_45_adam_conv2d_21_kernel_v: @7
)assignvariableop_46_adam_conv2d_21_bias_v:@E
+assignvariableop_47_adam_conv2d_22_kernel_v:@@7
)assignvariableop_48_adam_conv2d_22_bias_v:@E
+assignvariableop_49_adam_conv2d_23_kernel_v:@@7
)assignvariableop_50_adam_conv2d_23_bias_v:@E
+assignvariableop_51_adam_conv2d_24_kernel_v:@@7
)assignvariableop_52_adam_conv2d_24_bias_v:@E
+assignvariableop_53_adam_conv2d_25_kernel_v:@@7
)assignvariableop_54_adam_conv2d_25_bias_v:@=
*assignvariableop_55_adam_dense_12_kernel_v:	�@6
(assignvariableop_56_adam_dense_12_bias_v:@<
*assignvariableop_57_adam_dense_13_kernel_v:@	6
(assignvariableop_58_adam_dense_13_bias_v:	
identity_60��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�!
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*� 
value� B� <B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*�
value�B�<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*J
dtypes@
>2<			[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_20_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_20_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_21_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_21_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_22_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_22_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_23_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_23_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_24_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_24_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_25_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_25_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_12_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_12_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp#assignvariableop_14_dense_13_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp!assignvariableop_15_dense_13_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_learning_rateIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_statevar_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_statevarIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_conv2d_20_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_conv2d_20_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_conv2d_21_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_conv2d_21_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_22_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_conv2d_22_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_conv2d_23_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_conv2d_23_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_conv2d_24_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_conv2d_24_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_conv2d_25_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_conv2d_25_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_12_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_12_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_dense_13_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_dense_13_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv2d_20_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv2d_20_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp+assignvariableop_45_adam_conv2d_21_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_conv2d_21_bias_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_22_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv2d_22_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_conv2d_23_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_conv2d_23_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp+assignvariableop_51_adam_conv2d_24_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp)assignvariableop_52_adam_conv2d_24_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp+assignvariableop_53_adam_conv2d_25_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp)assignvariableop_54_adam_conv2d_25_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_12_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_12_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_dense_13_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_dense_13_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �

Identity_59Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_60IdentityIdentity_59:output:0^NoOp_1*
T0*
_output_shapes
: �

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_60Identity_60:output:0*�
_input_shapesz
x: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
.__inference_sequential_20_layer_call_fn_164857
sequential_18_input
unknown:	
	unknown_0:	#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@#
	unknown_5:@@
	unknown_6:@#
	unknown_7:@@
	unknown_8:@#
	unknown_9:@@

unknown_10:@$

unknown_11:@@

unknown_12:@

unknown_13:	�@

unknown_14:@

unknown_15:@	

unknown_16:	
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallsequential_18_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������	*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_sequential_20_layer_call_and_return_conditional_losses_164777o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:�����������: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:�����������
-
_user_specified_namesequential_18_input
�
�
E__inference_conv2d_24_layer_call_and_return_conditional_losses_164492

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:���������@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:���������@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
#random_flip_6_map_while_cond_165569@
<random_flip_6_map_while_random_flip_6_map_while_loop_counter;
7random_flip_6_map_while_random_flip_6_map_strided_slice'
#random_flip_6_map_while_placeholder)
%random_flip_6_map_while_placeholder_1@
<random_flip_6_map_while_less_random_flip_6_map_strided_sliceX
Trandom_flip_6_map_while_random_flip_6_map_while_cond_165569___redundant_placeholder0X
Trandom_flip_6_map_while_random_flip_6_map_while_cond_165569___redundant_placeholder1$
 random_flip_6_map_while_identity
�
random_flip_6/map/while/LessLess#random_flip_6_map_while_placeholder<random_flip_6_map_while_less_random_flip_6_map_strided_slice*
T0*
_output_shapes
: �
random_flip_6/map/while/Less_1Less<random_flip_6_map_while_random_flip_6_map_while_loop_counter7random_flip_6_map_while_random_flip_6_map_strided_slice*
T0*
_output_shapes
: �
"random_flip_6/map/while/LogicalAnd
LogicalAnd"random_flip_6/map/while/Less_1:z:0 random_flip_6/map/while/Less:z:0*
_output_shapes
: u
 random_flip_6/map/while/IdentityIdentity&random_flip_6/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "M
 random_flip_6_map_while_identity)random_flip_6/map/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
�
F
*__inference_flatten_6_layer_call_fn_166011

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_6_layer_call_and_return_conditional_losses_164523a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������@:W S
/
_output_shapes
:���������@
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
]
sequential_18_inputF
%serving_default_sequential_18_input:0�����������<
dense_130
StatefulPartitionedCall:0���������	tensorflow/serving/predict:ф
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer-14
layer_with_weights-6
layer-15
layer_with_weights-7
layer-16
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
layer-0
layer-1
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
#layer-0
$layer-1
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias
 3_jit_compiled_convolution_op"
_tf_keras_layer
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses"
_tf_keras_layer
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

@kernel
Abias
 B_jit_compiled_convolution_op"
_tf_keras_layer
�
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_layer
�
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

Okernel
Pbias
 Q_jit_compiled_convolution_op"
_tf_keras_layer
�
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses"
_tf_keras_layer
�
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses

^kernel
_bias
 `_jit_compiled_convolution_op"
_tf_keras_layer
�
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layer
�
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses

mkernel
nbias
 o_jit_compiled_convolution_op"
_tf_keras_layer
�
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses"
_tf_keras_layer
�
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses

|kernel
}bias
 ~_jit_compiled_convolution_op"
_tf_keras_layer
�
	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
10
21
@2
A3
O4
P5
^6
_7
m8
n9
|10
}11
�12
�13
�14
�15"
trackable_list_wrapper
�
10
21
@2
A3
O4
P5
^6
_7
m8
n9
|10
}11
�12
�13
�14
�15"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
.__inference_sequential_20_layer_call_fn_164595
.__inference_sequential_20_layer_call_fn_165049
.__inference_sequential_20_layer_call_fn_165090
.__inference_sequential_20_layer_call_fn_164857�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
I__inference_sequential_20_layer_call_and_return_conditional_losses_165164
I__inference_sequential_20_layer_call_and_return_conditional_losses_165506
I__inference_sequential_20_layer_call_and_return_conditional_losses_164910
I__inference_sequential_20_layer_call_and_return_conditional_losses_164967�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�B�
!__inference__wrapped_model_163880sequential_18_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
	�iter
�beta_1
�beta_2

�decay
�learning_rate1m�2m�@m�Am�Om�Pm�^m�_m�mm�nm�|m�}m�	�m�	�m�	�m�	�m�1v�2v�@v�Av�Ov�Pv�^v�_v�mv�nv�|v�}v�	�v�	�v�	�v�	�v�"
	optimizer
-
�serving_default"
signature_map
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
.__inference_sequential_18_layer_call_fn_163909
.__inference_sequential_18_layer_call_fn_165511
.__inference_sequential_18_layer_call_fn_165516
.__inference_sequential_18_layer_call_fn_163942�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
I__inference_sequential_18_layer_call_and_return_conditional_losses_165526
I__inference_sequential_18_layer_call_and_return_conditional_losses_165536
I__inference_sequential_18_layer_call_and_return_conditional_losses_163948
I__inference_sequential_18_layer_call_and_return_conditional_losses_163954�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
.__inference_sequential_19_layer_call_fn_163977
.__inference_sequential_19_layer_call_fn_165541
.__inference_sequential_19_layer_call_fn_165550
.__inference_sequential_19_layer_call_fn_164312�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
I__inference_sequential_19_layer_call_and_return_conditional_losses_165554
I__inference_sequential_19_layer_call_and_return_conditional_losses_165826
I__inference_sequential_19_layer_call_and_return_conditional_losses_164318
I__inference_sequential_19_layer_call_and_return_conditional_losses_164328�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_20_layer_call_fn_165835�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_20_layer_call_and_return_conditional_losses_165846�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:( 2conv2d_20/kernel
: 2conv2d_20/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_20_layer_call_fn_165851�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_165856�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_21_layer_call_fn_165865�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_21_layer_call_and_return_conditional_losses_165876�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:( @2conv2d_21/kernel
:@2conv2d_21/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_21_layer_call_fn_165881�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_165886�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_22_layer_call_fn_165895�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_22_layer_call_and_return_conditional_losses_165906�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(@@2conv2d_22/kernel
:@2conv2d_22/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_22_layer_call_fn_165911�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_165916�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_23_layer_call_fn_165925�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_23_layer_call_and_return_conditional_losses_165936�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(@@2conv2d_23/kernel
:@2conv2d_23/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_23_layer_call_fn_165941�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_165946�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
m0
n1"
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_24_layer_call_fn_165955�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_24_layer_call_and_return_conditional_losses_165966�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(@@2conv2d_24/kernel
:@2conv2d_24/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_24_layer_call_fn_165971�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_165976�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
|0
}1"
trackable_list_wrapper
.
|0
}1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_25_layer_call_fn_165985�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_25_layer_call_and_return_conditional_losses_165996�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
*:(@@2conv2d_25/kernel
:@2conv2d_25/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_max_pooling2d_25_layer_call_fn_166001�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_166006�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_flatten_6_layer_call_fn_166011�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_flatten_6_layer_call_and_return_conditional_losses_166017�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_12_layer_call_fn_166026�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_12_layer_call_and_return_conditional_losses_166037�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
": 	�@2dense_12/kernel
:@2dense_12/bias
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_13_layer_call_fn_166046�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_dense_13_layer_call_and_return_conditional_losses_166057�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!:@	2dense_13/kernel
:	2dense_13/bias
 "
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_sequential_20_layer_call_fn_164595sequential_18_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
.__inference_sequential_20_layer_call_fn_165049inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
.__inference_sequential_20_layer_call_fn_165090inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
.__inference_sequential_20_layer_call_fn_164857sequential_18_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
I__inference_sequential_20_layer_call_and_return_conditional_losses_165164inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
I__inference_sequential_20_layer_call_and_return_conditional_losses_165506inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
I__inference_sequential_20_layer_call_and_return_conditional_losses_164910sequential_18_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
I__inference_sequential_20_layer_call_and_return_conditional_losses_164967sequential_18_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
$__inference_signature_wrapper_165012sequential_18_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
+__inference_resizing_6_layer_call_fn_166062�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
F__inference_resizing_6_layer_call_and_return_conditional_losses_166068�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
,__inference_rescaling_6_layer_call_fn_166073�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
G__inference_rescaling_6_layer_call_and_return_conditional_losses_166081�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_sequential_18_layer_call_fn_163909resizing_6_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
.__inference_sequential_18_layer_call_fn_165511inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
.__inference_sequential_18_layer_call_fn_165516inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
.__inference_sequential_18_layer_call_fn_163942resizing_6_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
I__inference_sequential_18_layer_call_and_return_conditional_losses_165526inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
I__inference_sequential_18_layer_call_and_return_conditional_losses_165536inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
I__inference_sequential_18_layer_call_and_return_conditional_losses_163948resizing_6_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
I__inference_sequential_18_layer_call_and_return_conditional_losses_163954resizing_6_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
.__inference_random_flip_6_layer_call_fn_166086
.__inference_random_flip_6_layer_call_fn_166093�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
I__inference_random_flip_6_layer_call_and_return_conditional_losses_166097
I__inference_random_flip_6_layer_call_and_return_conditional_losses_166255�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
/
�
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
2__inference_random_rotation_6_layer_call_fn_166260
2__inference_random_rotation_6_layer_call_fn_166267�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
M__inference_random_rotation_6_layer_call_and_return_conditional_losses_166271
M__inference_random_rotation_6_layer_call_and_return_conditional_losses_166389�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
/
�
_generator"
_generic_user_object
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_sequential_19_layer_call_fn_163977random_flip_6_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
.__inference_sequential_19_layer_call_fn_165541inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
.__inference_sequential_19_layer_call_fn_165550inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
.__inference_sequential_19_layer_call_fn_164312random_flip_6_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
I__inference_sequential_19_layer_call_and_return_conditional_losses_165554inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
I__inference_sequential_19_layer_call_and_return_conditional_losses_165826inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
I__inference_sequential_19_layer_call_and_return_conditional_losses_164318random_flip_6_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
I__inference_sequential_19_layer_call_and_return_conditional_losses_164328random_flip_6_input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
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
�B�
*__inference_conv2d_20_layer_call_fn_165835inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_20_layer_call_and_return_conditional_losses_165846inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
1__inference_max_pooling2d_20_layer_call_fn_165851inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_165856inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
*__inference_conv2d_21_layer_call_fn_165865inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_21_layer_call_and_return_conditional_losses_165876inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
1__inference_max_pooling2d_21_layer_call_fn_165881inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_165886inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
*__inference_conv2d_22_layer_call_fn_165895inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_22_layer_call_and_return_conditional_losses_165906inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
1__inference_max_pooling2d_22_layer_call_fn_165911inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_165916inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
*__inference_conv2d_23_layer_call_fn_165925inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_23_layer_call_and_return_conditional_losses_165936inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
1__inference_max_pooling2d_23_layer_call_fn_165941inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_165946inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
*__inference_conv2d_24_layer_call_fn_165955inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_24_layer_call_and_return_conditional_losses_165966inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
1__inference_max_pooling2d_24_layer_call_fn_165971inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_165976inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
*__inference_conv2d_25_layer_call_fn_165985inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_25_layer_call_and_return_conditional_losses_165996inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
1__inference_max_pooling2d_25_layer_call_fn_166001inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_166006inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
*__inference_flatten_6_layer_call_fn_166011inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_flatten_6_layer_call_and_return_conditional_losses_166017inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_dense_12_layer_call_fn_166026inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_12_layer_call_and_return_conditional_losses_166037inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
)__inference_dense_13_layer_call_fn_166046inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_dense_13_layer_call_and_return_conditional_losses_166057inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
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
�B�
+__inference_resizing_6_layer_call_fn_166062inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_resizing_6_layer_call_and_return_conditional_losses_166068inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
,__inference_rescaling_6_layer_call_fn_166073inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_rescaling_6_layer_call_and_return_conditional_losses_166081inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
�B�
.__inference_random_flip_6_layer_call_fn_166086inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
.__inference_random_flip_6_layer_call_fn_166093inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
I__inference_random_flip_6_layer_call_and_return_conditional_losses_166097inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
I__inference_random_flip_6_layer_call_and_return_conditional_losses_166255inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
/
�
_state_var"
_generic_user_object
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
�B�
2__inference_random_rotation_6_layer_call_fn_166260inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
2__inference_random_rotation_6_layer_call_fn_166267inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
M__inference_random_rotation_6_layer_call_and_return_conditional_losses_166271inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
M__inference_random_rotation_6_layer_call_and_return_conditional_losses_166389inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
/
�
_state_var"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
:	2StateVar
:	2StateVar
/:- 2Adam/conv2d_20/kernel/m
!: 2Adam/conv2d_20/bias/m
/:- @2Adam/conv2d_21/kernel/m
!:@2Adam/conv2d_21/bias/m
/:-@@2Adam/conv2d_22/kernel/m
!:@2Adam/conv2d_22/bias/m
/:-@@2Adam/conv2d_23/kernel/m
!:@2Adam/conv2d_23/bias/m
/:-@@2Adam/conv2d_24/kernel/m
!:@2Adam/conv2d_24/bias/m
/:-@@2Adam/conv2d_25/kernel/m
!:@2Adam/conv2d_25/bias/m
':%	�@2Adam/dense_12/kernel/m
 :@2Adam/dense_12/bias/m
&:$@	2Adam/dense_13/kernel/m
 :	2Adam/dense_13/bias/m
/:- 2Adam/conv2d_20/kernel/v
!: 2Adam/conv2d_20/bias/v
/:- @2Adam/conv2d_21/kernel/v
!:@2Adam/conv2d_21/bias/v
/:-@@2Adam/conv2d_22/kernel/v
!:@2Adam/conv2d_22/bias/v
/:-@@2Adam/conv2d_23/kernel/v
!:@2Adam/conv2d_23/bias/v
/:-@@2Adam/conv2d_24/kernel/v
!:@2Adam/conv2d_24/bias/v
/:-@@2Adam/conv2d_25/kernel/v
!:@2Adam/conv2d_25/bias/v
':%	�@2Adam/dense_12/kernel/v
 :@2Adam/dense_12/bias/v
&:$@	2Adam/dense_13/kernel/v
 :	2Adam/dense_13/bias/v�
!__inference__wrapped_model_163880�12@AOP^_mn|}����F�C
<�9
7�4
sequential_18_input�����������
� "3�0
.
dense_13"�
dense_13���������	�
E__inference_conv2d_20_layer_call_and_return_conditional_losses_165846p129�6
/�,
*�'
inputs�����������
� "/�,
%�"
0����������� 
� �
*__inference_conv2d_20_layer_call_fn_165835c129�6
/�,
*�'
inputs�����������
� ""������������ �
E__inference_conv2d_21_layer_call_and_return_conditional_losses_165876l@A7�4
-�*
(�%
inputs��������� 
� "-�*
#� 
0���������}}@
� �
*__inference_conv2d_21_layer_call_fn_165865_@A7�4
-�*
(�%
inputs��������� 
� " ����������}}@�
E__inference_conv2d_22_layer_call_and_return_conditional_losses_165906lOP7�4
-�*
(�%
inputs���������>>@
� "-�*
#� 
0���������<<@
� �
*__inference_conv2d_22_layer_call_fn_165895_OP7�4
-�*
(�%
inputs���������>>@
� " ����������<<@�
E__inference_conv2d_23_layer_call_and_return_conditional_losses_165936l^_7�4
-�*
(�%
inputs���������@
� "-�*
#� 
0���������@
� �
*__inference_conv2d_23_layer_call_fn_165925_^_7�4
-�*
(�%
inputs���������@
� " ����������@�
E__inference_conv2d_24_layer_call_and_return_conditional_losses_165966lmn7�4
-�*
(�%
inputs���������@
� "-�*
#� 
0���������@
� �
*__inference_conv2d_24_layer_call_fn_165955_mn7�4
-�*
(�%
inputs���������@
� " ����������@�
E__inference_conv2d_25_layer_call_and_return_conditional_losses_165996l|}7�4
-�*
(�%
inputs���������@
� "-�*
#� 
0���������@
� �
*__inference_conv2d_25_layer_call_fn_165985_|}7�4
-�*
(�%
inputs���������@
� " ����������@�
D__inference_dense_12_layer_call_and_return_conditional_losses_166037_��0�-
&�#
!�
inputs����������
� "%�"
�
0���������@
� 
)__inference_dense_12_layer_call_fn_166026R��0�-
&�#
!�
inputs����������
� "����������@�
D__inference_dense_13_layer_call_and_return_conditional_losses_166057^��/�,
%�"
 �
inputs���������@
� "%�"
�
0���������	
� ~
)__inference_dense_13_layer_call_fn_166046Q��/�,
%�"
 �
inputs���������@
� "����������	�
E__inference_flatten_6_layer_call_and_return_conditional_losses_166017a7�4
-�*
(�%
inputs���������@
� "&�#
�
0����������
� �
*__inference_flatten_6_layer_call_fn_166011T7�4
-�*
(�%
inputs���������@
� "������������
L__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_165856�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
1__inference_max_pooling2d_20_layer_call_fn_165851�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
L__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_165886�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
1__inference_max_pooling2d_21_layer_call_fn_165881�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
L__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_165916�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
1__inference_max_pooling2d_22_layer_call_fn_165911�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
L__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_165946�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
1__inference_max_pooling2d_23_layer_call_fn_165941�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
L__inference_max_pooling2d_24_layer_call_and_return_conditional_losses_165976�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
1__inference_max_pooling2d_24_layer_call_fn_165971�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
L__inference_max_pooling2d_25_layer_call_and_return_conditional_losses_166006�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
1__inference_max_pooling2d_25_layer_call_fn_166001�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
I__inference_random_flip_6_layer_call_and_return_conditional_losses_166097p=�:
3�0
*�'
inputs�����������
p 
� "/�,
%�"
0�����������
� �
I__inference_random_flip_6_layer_call_and_return_conditional_losses_166255t�=�:
3�0
*�'
inputs�����������
p
� "/�,
%�"
0�����������
� �
.__inference_random_flip_6_layer_call_fn_166086c=�:
3�0
*�'
inputs�����������
p 
� ""�������������
.__inference_random_flip_6_layer_call_fn_166093g�=�:
3�0
*�'
inputs�����������
p
� ""�������������
M__inference_random_rotation_6_layer_call_and_return_conditional_losses_166271p=�:
3�0
*�'
inputs�����������
p 
� "/�,
%�"
0�����������
� �
M__inference_random_rotation_6_layer_call_and_return_conditional_losses_166389t�=�:
3�0
*�'
inputs�����������
p
� "/�,
%�"
0�����������
� �
2__inference_random_rotation_6_layer_call_fn_166260c=�:
3�0
*�'
inputs�����������
p 
� ""�������������
2__inference_random_rotation_6_layer_call_fn_166267g�=�:
3�0
*�'
inputs�����������
p
� ""�������������
G__inference_rescaling_6_layer_call_and_return_conditional_losses_166081l9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
,__inference_rescaling_6_layer_call_fn_166073_9�6
/�,
*�'
inputs�����������
� ""�������������
F__inference_resizing_6_layer_call_and_return_conditional_losses_166068l9�6
/�,
*�'
inputs�����������
� "/�,
%�"
0�����������
� �
+__inference_resizing_6_layer_call_fn_166062_9�6
/�,
*�'
inputs�����������
� ""�������������
I__inference_sequential_18_layer_call_and_return_conditional_losses_163948~K�H
A�>
4�1
resizing_6_input�����������
p 

 
� "/�,
%�"
0�����������
� �
I__inference_sequential_18_layer_call_and_return_conditional_losses_163954~K�H
A�>
4�1
resizing_6_input�����������
p

 
� "/�,
%�"
0�����������
� �
I__inference_sequential_18_layer_call_and_return_conditional_losses_165526tA�>
7�4
*�'
inputs�����������
p 

 
� "/�,
%�"
0�����������
� �
I__inference_sequential_18_layer_call_and_return_conditional_losses_165536tA�>
7�4
*�'
inputs�����������
p

 
� "/�,
%�"
0�����������
� �
.__inference_sequential_18_layer_call_fn_163909qK�H
A�>
4�1
resizing_6_input�����������
p 

 
� ""�������������
.__inference_sequential_18_layer_call_fn_163942qK�H
A�>
4�1
resizing_6_input�����������
p

 
� ""�������������
.__inference_sequential_18_layer_call_fn_165511gA�>
7�4
*�'
inputs�����������
p 

 
� ""�������������
.__inference_sequential_18_layer_call_fn_165516gA�>
7�4
*�'
inputs�����������
p

 
� ""�������������
I__inference_sequential_19_layer_call_and_return_conditional_losses_164318�N�K
D�A
7�4
random_flip_6_input�����������
p 

 
� "/�,
%�"
0�����������
� �
I__inference_sequential_19_layer_call_and_return_conditional_losses_164328���N�K
D�A
7�4
random_flip_6_input�����������
p

 
� "/�,
%�"
0�����������
� �
I__inference_sequential_19_layer_call_and_return_conditional_losses_165554tA�>
7�4
*�'
inputs�����������
p 

 
� "/�,
%�"
0�����������
� �
I__inference_sequential_19_layer_call_and_return_conditional_losses_165826z��A�>
7�4
*�'
inputs�����������
p

 
� "/�,
%�"
0�����������
� �
.__inference_sequential_19_layer_call_fn_163977tN�K
D�A
7�4
random_flip_6_input�����������
p 

 
� ""�������������
.__inference_sequential_19_layer_call_fn_164312z��N�K
D�A
7�4
random_flip_6_input�����������
p

 
� ""�������������
.__inference_sequential_19_layer_call_fn_165541gA�>
7�4
*�'
inputs�����������
p 

 
� ""�������������
.__inference_sequential_19_layer_call_fn_165550m��A�>
7�4
*�'
inputs�����������
p

 
� ""�������������
I__inference_sequential_20_layer_call_and_return_conditional_losses_164910�12@AOP^_mn|}����N�K
D�A
7�4
sequential_18_input�����������
p 

 
� "%�"
�
0���������	
� �
I__inference_sequential_20_layer_call_and_return_conditional_losses_164967���12@AOP^_mn|}����N�K
D�A
7�4
sequential_18_input�����������
p

 
� "%�"
�
0���������	
� �
I__inference_sequential_20_layer_call_and_return_conditional_losses_165164�12@AOP^_mn|}����A�>
7�4
*�'
inputs�����������
p 

 
� "%�"
�
0���������	
� �
I__inference_sequential_20_layer_call_and_return_conditional_losses_165506���12@AOP^_mn|}����A�>
7�4
*�'
inputs�����������
p

 
� "%�"
�
0���������	
� �
.__inference_sequential_20_layer_call_fn_164595�12@AOP^_mn|}����N�K
D�A
7�4
sequential_18_input�����������
p 

 
� "����������	�
.__inference_sequential_20_layer_call_fn_164857���12@AOP^_mn|}����N�K
D�A
7�4
sequential_18_input�����������
p

 
� "����������	�
.__inference_sequential_20_layer_call_fn_165049s12@AOP^_mn|}����A�>
7�4
*�'
inputs�����������
p 

 
� "����������	�
.__inference_sequential_20_layer_call_fn_165090w��12@AOP^_mn|}����A�>
7�4
*�'
inputs�����������
p

 
� "����������	�
$__inference_signature_wrapper_165012�12@AOP^_mn|}����]�Z
� 
S�P
N
sequential_18_input7�4
sequential_18_input�����������"3�0
.
dense_13"�
dense_13���������	