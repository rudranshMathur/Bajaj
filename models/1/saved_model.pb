ЗЦ
Мр
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
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
$
DisableCopyOnRead
resourceИ
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
В
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
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
Т
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
┴
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
░
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.15.02v2.15.0-0-g6887368d6d48пї
╣
random_rotation_1/StateVarVarHandleOp*
_output_shapes
: *+

debug_namerandom_rotation_1/StateVar/*
dtype0	*
shape:*+
shared_namerandom_rotation_1/StateVar
Е
.random_rotation_1/StateVar/Read/ReadVariableOpReadVariableOprandom_rotation_1/StateVar*
_output_shapes
:*
dtype0	
н
random_flip_1/StateVarVarHandleOp*
_output_shapes
: *'

debug_namerandom_flip_1/StateVar/*
dtype0	*
shape:*'
shared_namerandom_flip_1/StateVar
}
*random_flip_1/StateVar/Read/ReadVariableOpReadVariableOprandom_flip_1/StateVar*
_output_shapes
:*
dtype0	
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
д
Adam/v/dense_5/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/v/dense_5/bias/*
dtype0*
shape:*$
shared_nameAdam/v/dense_5/bias
w
'Adam/v/dense_5/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_5/bias*
_output_shapes
:*
dtype0
д
Adam/m/dense_5/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/m/dense_5/bias/*
dtype0*
shape:*$
shared_nameAdam/m/dense_5/bias
w
'Adam/m/dense_5/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_5/bias*
_output_shapes
:*
dtype0
о
Adam/v/dense_5/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/dense_5/kernel/*
dtype0*
shape
:@*&
shared_nameAdam/v/dense_5/kernel

)Adam/v/dense_5/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_5/kernel*
_output_shapes

:@*
dtype0
о
Adam/m/dense_5/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/dense_5/kernel/*
dtype0*
shape
:@*&
shared_nameAdam/m/dense_5/kernel

)Adam/m/dense_5/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_5/kernel*
_output_shapes

:@*
dtype0
д
Adam/v/dense_4/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/v/dense_4/bias/*
dtype0*
shape:@*$
shared_nameAdam/v/dense_4/bias
w
'Adam/v/dense_4/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_4/bias*
_output_shapes
:@*
dtype0
д
Adam/m/dense_4/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/m/dense_4/bias/*
dtype0*
shape:@*$
shared_nameAdam/m/dense_4/bias
w
'Adam/m/dense_4/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_4/bias*
_output_shapes
:@*
dtype0
п
Adam/v/dense_4/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/dense_4/kernel/*
dtype0*
shape:	А@*&
shared_nameAdam/v/dense_4/kernel
А
)Adam/v/dense_4/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_4/kernel*
_output_shapes
:	А@*
dtype0
п
Adam/m/dense_4/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/dense_4/kernel/*
dtype0*
shape:	А@*&
shared_nameAdam/m/dense_4/kernel
А
)Adam/m/dense_4/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_4/kernel*
_output_shapes
:	А@*
dtype0
к
Adam/v/conv2d_17/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_17/bias/*
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_17/bias
{
)Adam/v/conv2d_17/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_17/bias*
_output_shapes
:@*
dtype0
к
Adam/m/conv2d_17/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_17/bias/*
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_17/bias
{
)Adam/m/conv2d_17/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_17/bias*
_output_shapes
:@*
dtype0
╝
Adam/v/conv2d_17/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_17/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/v/conv2d_17/kernel
Л
+Adam/v/conv2d_17/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_17/kernel*&
_output_shapes
:@@*
dtype0
╝
Adam/m/conv2d_17/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_17/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/m/conv2d_17/kernel
Л
+Adam/m/conv2d_17/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_17/kernel*&
_output_shapes
:@@*
dtype0
к
Adam/v/conv2d_16/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_16/bias/*
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_16/bias
{
)Adam/v/conv2d_16/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_16/bias*
_output_shapes
:@*
dtype0
к
Adam/m/conv2d_16/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_16/bias/*
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_16/bias
{
)Adam/m/conv2d_16/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_16/bias*
_output_shapes
:@*
dtype0
╝
Adam/v/conv2d_16/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_16/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/v/conv2d_16/kernel
Л
+Adam/v/conv2d_16/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_16/kernel*&
_output_shapes
:@@*
dtype0
╝
Adam/m/conv2d_16/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_16/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/m/conv2d_16/kernel
Л
+Adam/m/conv2d_16/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_16/kernel*&
_output_shapes
:@@*
dtype0
к
Adam/v/conv2d_15/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_15/bias/*
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_15/bias
{
)Adam/v/conv2d_15/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_15/bias*
_output_shapes
:@*
dtype0
к
Adam/m/conv2d_15/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_15/bias/*
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_15/bias
{
)Adam/m/conv2d_15/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_15/bias*
_output_shapes
:@*
dtype0
╝
Adam/v/conv2d_15/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_15/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/v/conv2d_15/kernel
Л
+Adam/v/conv2d_15/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_15/kernel*&
_output_shapes
:@@*
dtype0
╝
Adam/m/conv2d_15/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_15/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/m/conv2d_15/kernel
Л
+Adam/m/conv2d_15/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_15/kernel*&
_output_shapes
:@@*
dtype0
к
Adam/v/conv2d_14/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_14/bias/*
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_14/bias
{
)Adam/v/conv2d_14/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_14/bias*
_output_shapes
:@*
dtype0
к
Adam/m/conv2d_14/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_14/bias/*
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_14/bias
{
)Adam/m/conv2d_14/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_14/bias*
_output_shapes
:@*
dtype0
╝
Adam/v/conv2d_14/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_14/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/v/conv2d_14/kernel
Л
+Adam/v/conv2d_14/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_14/kernel*&
_output_shapes
:@@*
dtype0
╝
Adam/m/conv2d_14/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_14/kernel/*
dtype0*
shape:@@*(
shared_nameAdam/m/conv2d_14/kernel
Л
+Adam/m/conv2d_14/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_14/kernel*&
_output_shapes
:@@*
dtype0
к
Adam/v/conv2d_13/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_13/bias/*
dtype0*
shape:@*&
shared_nameAdam/v/conv2d_13/bias
{
)Adam/v/conv2d_13/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_13/bias*
_output_shapes
:@*
dtype0
к
Adam/m/conv2d_13/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_13/bias/*
dtype0*
shape:@*&
shared_nameAdam/m/conv2d_13/bias
{
)Adam/m/conv2d_13/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_13/bias*
_output_shapes
:@*
dtype0
╝
Adam/v/conv2d_13/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_13/kernel/*
dtype0*
shape: @*(
shared_nameAdam/v/conv2d_13/kernel
Л
+Adam/v/conv2d_13/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_13/kernel*&
_output_shapes
: @*
dtype0
╝
Adam/m/conv2d_13/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_13/kernel/*
dtype0*
shape: @*(
shared_nameAdam/m/conv2d_13/kernel
Л
+Adam/m/conv2d_13/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_13/kernel*&
_output_shapes
: @*
dtype0
к
Adam/v/conv2d_12/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/conv2d_12/bias/*
dtype0*
shape: *&
shared_nameAdam/v/conv2d_12/bias
{
)Adam/v/conv2d_12/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_12/bias*
_output_shapes
: *
dtype0
к
Adam/m/conv2d_12/biasVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/conv2d_12/bias/*
dtype0*
shape: *&
shared_nameAdam/m/conv2d_12/bias
{
)Adam/m/conv2d_12/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_12/bias*
_output_shapes
: *
dtype0
╝
Adam/v/conv2d_12/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/v/conv2d_12/kernel/*
dtype0*
shape: *(
shared_nameAdam/v/conv2d_12/kernel
Л
+Adam/v/conv2d_12/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_12/kernel*&
_output_shapes
: *
dtype0
╝
Adam/m/conv2d_12/kernelVarHandleOp*
_output_shapes
: *(

debug_nameAdam/m/conv2d_12/kernel/*
dtype0*
shape: *(
shared_nameAdam/m/conv2d_12/kernel
Л
+Adam/m/conv2d_12/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_12/kernel*&
_output_shapes
: *
dtype0
О
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
В
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
П
dense_5/biasVarHandleOp*
_output_shapes
: *

debug_namedense_5/bias/*
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
Щ
dense_5/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_5/kernel/*
dtype0*
shape
:@*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:@*
dtype0
П
dense_4/biasVarHandleOp*
_output_shapes
: *

debug_namedense_4/bias/*
dtype0*
shape:@*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:@*
dtype0
Ъ
dense_4/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_4/kernel/*
dtype0*
shape:	А@*
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	А@*
dtype0
Х
conv2d_17/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_17/bias/*
dtype0*
shape:@*
shared_nameconv2d_17/bias
m
"conv2d_17/bias/Read/ReadVariableOpReadVariableOpconv2d_17/bias*
_output_shapes
:@*
dtype0
з
conv2d_17/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_17/kernel/*
dtype0*
shape:@@*!
shared_nameconv2d_17/kernel
}
$conv2d_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_17/kernel*&
_output_shapes
:@@*
dtype0
Х
conv2d_16/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_16/bias/*
dtype0*
shape:@*
shared_nameconv2d_16/bias
m
"conv2d_16/bias/Read/ReadVariableOpReadVariableOpconv2d_16/bias*
_output_shapes
:@*
dtype0
з
conv2d_16/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_16/kernel/*
dtype0*
shape:@@*!
shared_nameconv2d_16/kernel
}
$conv2d_16/kernel/Read/ReadVariableOpReadVariableOpconv2d_16/kernel*&
_output_shapes
:@@*
dtype0
Х
conv2d_15/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_15/bias/*
dtype0*
shape:@*
shared_nameconv2d_15/bias
m
"conv2d_15/bias/Read/ReadVariableOpReadVariableOpconv2d_15/bias*
_output_shapes
:@*
dtype0
з
conv2d_15/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_15/kernel/*
dtype0*
shape:@@*!
shared_nameconv2d_15/kernel
}
$conv2d_15/kernel/Read/ReadVariableOpReadVariableOpconv2d_15/kernel*&
_output_shapes
:@@*
dtype0
Х
conv2d_14/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_14/bias/*
dtype0*
shape:@*
shared_nameconv2d_14/bias
m
"conv2d_14/bias/Read/ReadVariableOpReadVariableOpconv2d_14/bias*
_output_shapes
:@*
dtype0
з
conv2d_14/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_14/kernel/*
dtype0*
shape:@@*!
shared_nameconv2d_14/kernel
}
$conv2d_14/kernel/Read/ReadVariableOpReadVariableOpconv2d_14/kernel*&
_output_shapes
:@@*
dtype0
Х
conv2d_13/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_13/bias/*
dtype0*
shape:@*
shared_nameconv2d_13/bias
m
"conv2d_13/bias/Read/ReadVariableOpReadVariableOpconv2d_13/bias*
_output_shapes
:@*
dtype0
з
conv2d_13/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_13/kernel/*
dtype0*
shape: @*!
shared_nameconv2d_13/kernel
}
$conv2d_13/kernel/Read/ReadVariableOpReadVariableOpconv2d_13/kernel*&
_output_shapes
: @*
dtype0
Х
conv2d_12/biasVarHandleOp*
_output_shapes
: *

debug_nameconv2d_12/bias/*
dtype0*
shape: *
shared_nameconv2d_12/bias
m
"conv2d_12/bias/Read/ReadVariableOpReadVariableOpconv2d_12/bias*
_output_shapes
: *
dtype0
з
conv2d_12/kernelVarHandleOp*
_output_shapes
: *!

debug_nameconv2d_12/kernel/*
dtype0*
shape: *!
shared_nameconv2d_12/kernel
}
$conv2d_12/kernel/Read/ReadVariableOpReadVariableOpconv2d_12/kernel*&
_output_shapes
: *
dtype0
Щ
"serving_default_sequential_3_inputPlaceholder*1
_output_shapes
:         АА*
dtype0*&
shape:         АА
ч
StatefulPartitionedCallStatefulPartitionedCall"serving_default_sequential_3_inputconv2d_12/kernelconv2d_12/biasconv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasconv2d_15/kernelconv2d_15/biasconv2d_16/kernelconv2d_16/biasconv2d_17/kernelconv2d_17/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference_signature_wrapper_58240

NoOpNoOp
╤Ь
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ЛЬ
valueАЬB№Ы BЇЫ
А
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
и
layer-0
layer-1
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses* 
к
#layer-0
$layer-1
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses*
╚
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses

1kernel
2bias
 3_jit_compiled_convolution_op*
О
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses* 
╚
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

@kernel
Abias
 B_jit_compiled_convolution_op*
О
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses* 
╚
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses

Okernel
Pbias
 Q_jit_compiled_convolution_op*
О
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses* 
╚
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses

^kernel
_bias
 `_jit_compiled_convolution_op*
О
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses* 
╚
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses

mkernel
nbias
 o_jit_compiled_convolution_op*
О
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses* 
╚
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses

|kernel
}bias
 ~_jit_compiled_convolution_op*
У
	variables
Аtrainable_variables
Бregularization_losses
В	keras_api
Г__call__
+Д&call_and_return_all_conditional_losses* 
Ф
Е	variables
Жtrainable_variables
Зregularization_losses
И	keras_api
Й__call__
+К&call_and_return_all_conditional_losses* 
о
Л	variables
Мtrainable_variables
Нregularization_losses
О	keras_api
П__call__
+Р&call_and_return_all_conditional_losses
Сkernel
	Тbias*
о
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses
Щkernel
	Ъbias*
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
С12
Т13
Щ14
Ъ15*
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
С12
Т13
Щ14
Ъ15*
* 
╡
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

аtrace_0
бtrace_1* 

вtrace_0
гtrace_1* 
* 
И
д
_variables
е_iterations
ж_learning_rate
з_index_dict
и
_momentums
й_velocities
к_update_step_xla*

лserving_default* 
Ф
м	variables
нtrainable_variables
оregularization_losses
п	keras_api
░__call__
+▒&call_and_return_all_conditional_losses* 
Ф
▓	variables
│trainable_variables
┤regularization_losses
╡	keras_api
╢__call__
+╖&call_and_return_all_conditional_losses* 
* 
* 
* 
Ц
╕non_trainable_variables
╣layers
║metrics
 ╗layer_regularization_losses
╝layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses* 

╜trace_0
╛trace_1* 

┐trace_0
└trace_1* 
о
┴	variables
┬trainable_variables
├regularization_losses
─	keras_api
┼__call__
+╞&call_and_return_all_conditional_losses
╟_random_generator*
о
╚	variables
╔trainable_variables
╩regularization_losses
╦	keras_api
╠__call__
+═&call_and_return_all_conditional_losses
╬_random_generator*
* 
* 
* 
Ш
╧non_trainable_variables
╨layers
╤metrics
 ╥layer_regularization_losses
╙layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses*

╘trace_0
╒trace_1* 

╓trace_0
╫trace_1* 

10
21*

10
21*
* 
Ш
╪non_trainable_variables
┘layers
┌metrics
 █layer_regularization_losses
▄layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*

▌trace_0* 

▐trace_0* 
`Z
VARIABLE_VALUEconv2d_12/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_12/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
▀non_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses* 

фtrace_0* 

хtrace_0* 

@0
A1*

@0
A1*
* 
Ш
цnon_trainable_variables
чlayers
шmetrics
 щlayer_regularization_losses
ъlayer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*

ыtrace_0* 

ьtrace_0* 
`Z
VARIABLE_VALUEconv2d_13/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_13/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
эnon_trainable_variables
юlayers
яmetrics
 Ёlayer_regularization_losses
ёlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses* 

Єtrace_0* 

єtrace_0* 

O0
P1*

O0
P1*
* 
Ш
Їnon_trainable_variables
їlayers
Ўmetrics
 ўlayer_regularization_losses
°layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses*

∙trace_0* 

·trace_0* 
`Z
VARIABLE_VALUEconv2d_14/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_14/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
√non_trainable_variables
№layers
¤metrics
 ■layer_regularization_losses
 layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses* 

Аtrace_0* 

Бtrace_0* 

^0
_1*

^0
_1*
* 
Ш
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses*

Зtrace_0* 

Иtrace_0* 
`Z
VARIABLE_VALUEconv2d_15/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_15/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses* 

Оtrace_0* 

Пtrace_0* 

m0
n1*

m0
n1*
* 
Ш
Рnon_trainable_variables
Сlayers
Тmetrics
 Уlayer_regularization_losses
Фlayer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses*

Хtrace_0* 

Цtrace_0* 
`Z
VARIABLE_VALUEconv2d_16/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_16/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses* 

Ьtrace_0* 

Эtrace_0* 

|0
}1*

|0
}1*
* 
Ш
Юnon_trainable_variables
Яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses*

гtrace_0* 

дtrace_0* 
`Z
VARIABLE_VALUEconv2d_17/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_17/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ы
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
	variables
Аtrainable_variables
Бregularization_losses
Г__call__
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses* 

кtrace_0* 

лtrace_0* 
* 
* 
* 
Ь
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
░layer_metrics
Е	variables
Жtrainable_variables
Зregularization_losses
Й__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses* 

▒trace_0* 

▓trace_0* 

С0
Т1*

С0
Т1*
* 
Ю
│non_trainable_variables
┤layers
╡metrics
 ╢layer_regularization_losses
╖layer_metrics
Л	variables
Мtrainable_variables
Нregularization_losses
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses*

╕trace_0* 

╣trace_0* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

Щ0
Ъ1*

Щ0
Ъ1*
* 
Ю
║non_trainable_variables
╗layers
╝metrics
 ╜layer_regularization_losses
╛layer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses*

┐trace_0* 

└trace_0* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
В
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
┴0
┬1*
* 
* 
* 
* 
* 
* 
г
е0
├1
─2
┼3
╞4
╟5
╚6
╔7
╩8
╦9
╠10
═11
╬12
╧13
╨14
╤15
╥16
╙17
╘18
╒19
╓20
╫21
╪22
┘23
┌24
█25
▄26
▌27
▐28
▀29
р30
с31
т32*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
К
├0
┼1
╟2
╔3
╦4
═5
╧6
╤7
╙8
╒9
╫10
┘11
█12
▌13
▀14
с15*
К
─0
╞1
╚2
╩3
╠4
╬5
╨6
╥7
╘8
╓9
╪10
┌11
▄12
▐13
р14
т15*
ш
уtrace_0
фtrace_1
хtrace_2
цtrace_3
чtrace_4
шtrace_5
щtrace_6
ъtrace_7
ыtrace_8
ьtrace_9
эtrace_10
юtrace_11
яtrace_12
Ёtrace_13
ёtrace_14
Єtrace_15* 
* 
* 
* 
* 
Ь
єnon_trainable_variables
Їlayers
їmetrics
 Ўlayer_regularization_losses
ўlayer_metrics
м	variables
нtrainable_variables
оregularization_losses
░__call__
+▒&call_and_return_all_conditional_losses
'▒"call_and_return_conditional_losses* 

°trace_0* 

∙trace_0* 
* 
* 
* 
Ь
·non_trainable_variables
√layers
№metrics
 ¤layer_regularization_losses
■layer_metrics
▓	variables
│trainable_variables
┤regularization_losses
╢__call__
+╖&call_and_return_all_conditional_losses
'╖"call_and_return_conditional_losses* 

 trace_0* 

Аtrace_0* 
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
Ь
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
┴	variables
┬trainable_variables
├regularization_losses
┼__call__
+╞&call_and_return_all_conditional_losses
'╞"call_and_return_conditional_losses* 

Жtrace_0
Зtrace_1* 

Иtrace_0
Йtrace_1* 

К
_generator*
* 
* 
* 
Ь
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
╚	variables
╔trainable_variables
╩regularization_losses
╠__call__
+═&call_and_return_all_conditional_losses
'═"call_and_return_conditional_losses* 

Рtrace_0
Сtrace_1* 

Тtrace_0
Уtrace_1* 

Ф
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
<
Х	variables
Ц	keras_api

Чtotal

Шcount*
M
Щ	variables
Ъ	keras_api

Ыtotal

Ьcount
Э
_fn_kwargs*
b\
VARIABLE_VALUEAdam/m/conv2d_12/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_12/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_12/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_12/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_13/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_13/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_13/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_13/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_14/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_14/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_14/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_14/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_15/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_15/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_15/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_15/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_16/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_16/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_16/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_16/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_17/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_17/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_17/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_17/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_4/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_4/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_4/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_4/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_5/kernel2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_5/kernel2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_5/bias2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_5/bias2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
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

Ю
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
Я
_state_var*

Ч0
Ш1*

Х	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Ы0
Ь1*

Щ	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
В|
VARIABLE_VALUErandom_flip_1/StateVarRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUErandom_rotation_1/StateVarRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
╗
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_12/kernelconv2d_12/biasconv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasconv2d_15/kernelconv2d_15/biasconv2d_16/kernelconv2d_16/biasconv2d_17/kernelconv2d_17/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias	iterationlearning_rateAdam/m/conv2d_12/kernelAdam/v/conv2d_12/kernelAdam/m/conv2d_12/biasAdam/v/conv2d_12/biasAdam/m/conv2d_13/kernelAdam/v/conv2d_13/kernelAdam/m/conv2d_13/biasAdam/v/conv2d_13/biasAdam/m/conv2d_14/kernelAdam/v/conv2d_14/kernelAdam/m/conv2d_14/biasAdam/v/conv2d_14/biasAdam/m/conv2d_15/kernelAdam/v/conv2d_15/kernelAdam/m/conv2d_15/biasAdam/v/conv2d_15/biasAdam/m/conv2d_16/kernelAdam/v/conv2d_16/kernelAdam/m/conv2d_16/biasAdam/v/conv2d_16/biasAdam/m/conv2d_17/kernelAdam/v/conv2d_17/kernelAdam/m/conv2d_17/biasAdam/v/conv2d_17/biasAdam/m/dense_4/kernelAdam/v/dense_4/kernelAdam/m/dense_4/biasAdam/v/dense_4/biasAdam/m/dense_5/kernelAdam/v/dense_5/kernelAdam/m/dense_5/biasAdam/v/dense_5/biastotal_1count_1totalcountrandom_flip_1/StateVarrandom_rotation_1/StateVarConst*E
Tin>
<2:*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *'
f"R 
__inference__traced_save_59124
╢
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_12/kernelconv2d_12/biasconv2d_13/kernelconv2d_13/biasconv2d_14/kernelconv2d_14/biasconv2d_15/kernelconv2d_15/biasconv2d_16/kernelconv2d_16/biasconv2d_17/kernelconv2d_17/biasdense_4/kerneldense_4/biasdense_5/kerneldense_5/bias	iterationlearning_rateAdam/m/conv2d_12/kernelAdam/v/conv2d_12/kernelAdam/m/conv2d_12/biasAdam/v/conv2d_12/biasAdam/m/conv2d_13/kernelAdam/v/conv2d_13/kernelAdam/m/conv2d_13/biasAdam/v/conv2d_13/biasAdam/m/conv2d_14/kernelAdam/v/conv2d_14/kernelAdam/m/conv2d_14/biasAdam/v/conv2d_14/biasAdam/m/conv2d_15/kernelAdam/v/conv2d_15/kernelAdam/m/conv2d_15/biasAdam/v/conv2d_15/biasAdam/m/conv2d_16/kernelAdam/v/conv2d_16/kernelAdam/m/conv2d_16/biasAdam/v/conv2d_16/biasAdam/m/conv2d_17/kernelAdam/v/conv2d_17/kernelAdam/m/conv2d_17/biasAdam/v/conv2d_17/biasAdam/m/dense_4/kernelAdam/v/dense_4/kernelAdam/m/dense_4/biasAdam/v/dense_4/biasAdam/m/dense_5/kernelAdam/v/dense_5/kernelAdam/m/dense_5/biasAdam/v/dense_5/biastotal_1count_1totalcountrandom_flip_1/StateVarrandom_rotation_1/StateVar*D
Tin=
;29*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__traced_restore_59301м╗
КM
▓
G__inference_sequential_6_layer_call_and_return_conditional_losses_57992
sequential_3_input 
sequential_4_57845:	 
sequential_4_57847:	)
conv2d_12_57861: 
conv2d_12_57863: )
conv2d_13_57878: @
conv2d_13_57880:@)
conv2d_14_57895:@@
conv2d_14_57897:@)
conv2d_15_57912:@@
conv2d_15_57914:@)
conv2d_16_57929:@@
conv2d_16_57931:@)
conv2d_17_57946:@@
conv2d_17_57948:@ 
dense_4_57970:	А@
dense_4_57972:@
dense_5_57986:@
dense_5_57988:
identityИв!conv2d_12/StatefulPartitionedCallв!conv2d_13/StatefulPartitionedCallв!conv2d_14/StatefulPartitionedCallв!conv2d_15/StatefulPartitionedCallв!conv2d_16/StatefulPartitionedCallв!conv2d_17/StatefulPartitionedCallвdense_4/StatefulPartitionedCallвdense_5/StatefulPartitionedCallв$sequential_4/StatefulPartitionedCall╪
sequential_3/PartitionedCallPartitionedCallsequential_3_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_57464е
$sequential_4/StatefulPartitionedCallStatefulPartitionedCall%sequential_3/PartitionedCall:output:0sequential_4_57845sequential_4_57847*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_57729е
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall-sequential_4/StatefulPartitionedCall:output:0conv2d_12_57861conv2d_12_57863*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ■■ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_57860Ў
 max_pooling2d_12/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_57786Я
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0conv2d_13_57878conv2d_13_57880*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         }}@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_57877Ў
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_57796Я
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_14_57895conv2d_14_57897*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_57894Ў
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_57806Я
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_15_57912conv2d_15_57914*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_57911Ў
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_57816Я
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_16_57929conv2d_16_57931*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_57928Ў
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_57826Я
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_17_57946conv2d_17_57948*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_57945Ў
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_57836р
flatten_2/PartitionedCallPartitionedCall)max_pooling2d_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_57957И
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_57970dense_4_57972*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_57969О
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_57986dense_5_57988*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_57985w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         х
NoOpNoOp"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall%^sequential_4/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:         АА: : : : : : : : : : : : : : : : : : 2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2L
$sequential_4/StatefulPartitionedCall$sequential_4/StatefulPartitionedCall:e a
1
_output_shapes
:         АА
,
_user_specified_namesequential_3_input:%!

_user_specified_name57845:%!

_user_specified_name57847:%!

_user_specified_name57861:%!

_user_specified_name57863:%!

_user_specified_name57878:%!

_user_specified_name57880:%!

_user_specified_name57895:%!

_user_specified_name57897:%	!

_user_specified_name57912:%
!

_user_specified_name57914:%!

_user_specified_name57929:%!

_user_specified_name57931:%!

_user_specified_name57946:%!

_user_specified_name57948:%!

_user_specified_name57970:%!

_user_specified_name57972:%!

_user_specified_name57986:%!

_user_specified_name57988
Ж	
m
G__inference_sequential_3_layer_call_and_return_conditional_losses_57470
resizing_1_input
identity╥
resizing_1/PartitionedCallPartitionedCallresizing_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_resizing_1_layer_call_and_return_conditional_losses_57452ч
rescaling_1/PartitionedCallPartitionedCall#resizing_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_rescaling_1_layer_call_and_return_conditional_losses_57461v
IdentityIdentity$rescaling_1/PartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:c _
1
_output_shapes
:         АА
*
_user_specified_nameresizing_1_input
┤
¤
D__inference_conv2d_13_layer_call_and_return_conditional_losses_57877

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }}@*
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
:         }}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         }}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         }}@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ч
Ю
)__inference_conv2d_16_layer_call_fn_58369

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_57928w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs:%!

_user_specified_name58363:%!

_user_specified_name58365
╗
L
0__inference_max_pooling2d_12_layer_call_fn_58265

inputs
identity▄
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_57786Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╬

є
B__inference_dense_5_layer_call_and_return_conditional_losses_57985

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
┤
¤
D__inference_conv2d_16_layer_call_and_return_conditional_losses_57928

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
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
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
┤
¤
D__inference_conv2d_14_layer_call_and_return_conditional_losses_58320

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@*
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
:         <<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         <<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         <<@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         >>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         >>@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╗
L
0__inference_max_pooling2d_14_layer_call_fn_58325

inputs
identity▄
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_57806Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_58270

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ж
С
G__inference_sequential_4_layer_call_and_return_conditional_losses_57729
random_flip_1_input!
random_flip_1_57604:	%
random_rotation_1_57725:	
identityИв%random_flip_1/StatefulPartitionedCallв)random_rotation_1/StatefulPartitionedCallБ
%random_flip_1/StatefulPartitionedCallStatefulPartitionedCallrandom_flip_1_inputrandom_flip_1_57604*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_random_flip_1_layer_call_and_return_conditional_losses_57603и
)random_rotation_1/StatefulPartitionedCallStatefulPartitionedCall.random_flip_1/StatefulPartitionedCall:output:0random_rotation_1_57725*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_57724Л
IdentityIdentity2random_rotation_1/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ААv
NoOpNoOp&^random_flip_1/StatefulPartitionedCall*^random_rotation_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 2N
%random_flip_1/StatefulPartitionedCall%random_flip_1/StatefulPartitionedCall2V
)random_rotation_1/StatefulPartitionedCall)random_rotation_1/StatefulPartitionedCall:f b
1
_output_shapes
:         АА
-
_user_specified_namerandom_flip_1_input:%!

_user_specified_name57604:%!

_user_specified_name57725
л
J
"__inference__update_step_xla_56048
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
У
g
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_57796

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╓
╒
,__inference_sequential_6_layer_call_fn_58123
sequential_3_input!
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

unknown_11:	А@

unknown_12:@

unknown_13:@

unknown_14:
identityИвStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallsequential_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:         *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_58045o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:         АА
,
_user_specified_namesequential_3_input:%!

_user_specified_name58089:%!

_user_specified_name58091:%!

_user_specified_name58093:%!

_user_specified_name58095:%!

_user_specified_name58097:%!

_user_specified_name58099:%!

_user_specified_name58101:%!

_user_specified_name58103:%	!

_user_specified_name58105:%
!

_user_specified_name58107:%!

_user_specified_name58109:%!

_user_specified_name58111:%!

_user_specified_name58113:%!

_user_specified_name58115:%!

_user_specified_name58117:%!

_user_specified_name58119
л
J
"__inference__update_step_xla_55998
gradient
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

: : *
	_noinline(:D @

_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ў
Й
,__inference_sequential_6_layer_call_fn_58086
sequential_3_input
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

unknown_13:	А@

unknown_14:@

unknown_15:@

unknown_16:
identityИвStatefulPartitionedCall└
StatefulPartitionedCallStatefulPartitionedCallsequential_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:         *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_6_layer_call_and_return_conditional_losses_57992o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:         АА: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:         АА
,
_user_specified_namesequential_3_input:%!

_user_specified_name58048:%!

_user_specified_name58050:%!

_user_specified_name58052:%!

_user_specified_name58054:%!

_user_specified_name58056:%!

_user_specified_name58058:%!

_user_specified_name58060:%!

_user_specified_name58062:%	!

_user_specified_name58064:%
!

_user_specified_name58066:%!

_user_specified_name58068:%!

_user_specified_name58070:%!

_user_specified_name58072:%!

_user_specified_name58074:%!

_user_specified_name58076:%!

_user_specified_name58078:%!

_user_specified_name58080:%!

_user_specified_name58082
┤
¤
D__inference_conv2d_15_layer_call_and_return_conditional_losses_57911

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
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
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
°Б
▒#
!__inference__traced_restore_59301
file_prefix;
!assignvariableop_conv2d_12_kernel: /
!assignvariableop_1_conv2d_12_bias: =
#assignvariableop_2_conv2d_13_kernel: @/
!assignvariableop_3_conv2d_13_bias:@=
#assignvariableop_4_conv2d_14_kernel:@@/
!assignvariableop_5_conv2d_14_bias:@=
#assignvariableop_6_conv2d_15_kernel:@@/
!assignvariableop_7_conv2d_15_bias:@=
#assignvariableop_8_conv2d_16_kernel:@@/
!assignvariableop_9_conv2d_16_bias:@>
$assignvariableop_10_conv2d_17_kernel:@@0
"assignvariableop_11_conv2d_17_bias:@5
"assignvariableop_12_dense_4_kernel:	А@.
 assignvariableop_13_dense_4_bias:@4
"assignvariableop_14_dense_5_kernel:@.
 assignvariableop_15_dense_5_bias:'
assignvariableop_16_iteration:	 +
!assignvariableop_17_learning_rate: E
+assignvariableop_18_adam_m_conv2d_12_kernel: E
+assignvariableop_19_adam_v_conv2d_12_kernel: 7
)assignvariableop_20_adam_m_conv2d_12_bias: 7
)assignvariableop_21_adam_v_conv2d_12_bias: E
+assignvariableop_22_adam_m_conv2d_13_kernel: @E
+assignvariableop_23_adam_v_conv2d_13_kernel: @7
)assignvariableop_24_adam_m_conv2d_13_bias:@7
)assignvariableop_25_adam_v_conv2d_13_bias:@E
+assignvariableop_26_adam_m_conv2d_14_kernel:@@E
+assignvariableop_27_adam_v_conv2d_14_kernel:@@7
)assignvariableop_28_adam_m_conv2d_14_bias:@7
)assignvariableop_29_adam_v_conv2d_14_bias:@E
+assignvariableop_30_adam_m_conv2d_15_kernel:@@E
+assignvariableop_31_adam_v_conv2d_15_kernel:@@7
)assignvariableop_32_adam_m_conv2d_15_bias:@7
)assignvariableop_33_adam_v_conv2d_15_bias:@E
+assignvariableop_34_adam_m_conv2d_16_kernel:@@E
+assignvariableop_35_adam_v_conv2d_16_kernel:@@7
)assignvariableop_36_adam_m_conv2d_16_bias:@7
)assignvariableop_37_adam_v_conv2d_16_bias:@E
+assignvariableop_38_adam_m_conv2d_17_kernel:@@E
+assignvariableop_39_adam_v_conv2d_17_kernel:@@7
)assignvariableop_40_adam_m_conv2d_17_bias:@7
)assignvariableop_41_adam_v_conv2d_17_bias:@<
)assignvariableop_42_adam_m_dense_4_kernel:	А@<
)assignvariableop_43_adam_v_dense_4_kernel:	А@5
'assignvariableop_44_adam_m_dense_4_bias:@5
'assignvariableop_45_adam_v_dense_4_bias:@;
)assignvariableop_46_adam_m_dense_5_kernel:@;
)assignvariableop_47_adam_v_dense_5_kernel:@5
'assignvariableop_48_adam_m_dense_5_bias:5
'assignvariableop_49_adam_v_dense_5_bias:%
assignvariableop_50_total_1: %
assignvariableop_51_count_1: #
assignvariableop_52_total: #
assignvariableop_53_count: 8
*assignvariableop_54_random_flip_1_statevar:	<
.assignvariableop_55_random_rotation_1_statevar:	
identity_57ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9█
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*Б
valueўBЇ9B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHу
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*Е
value|Bz9B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ╛
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*·
_output_shapesч
ф:::::::::::::::::::::::::::::::::::::::::::::::::::::::::*G
dtypes=
;29			[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_12_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_12_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_13_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_13_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_14_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_14_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_15_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_15_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_16_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_16_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╜
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_17_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_17_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_4_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_4_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_14AssignVariableOp"assignvariableop_14_dense_5_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_5_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:╢
AssignVariableOp_16AssignVariableOpassignvariableop_16_iterationIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_17AssignVariableOp!assignvariableop_17_learning_rateIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_m_conv2d_12_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_v_conv2d_12_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_m_conv2d_12_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_v_conv2d_12_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_m_conv2d_13_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_v_conv2d_13_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_m_conv2d_13_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_v_conv2d_13_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_m_conv2d_14_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_v_conv2d_14_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_m_conv2d_14_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_29AssignVariableOp)assignvariableop_29_adam_v_conv2d_14_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adam_m_conv2d_15_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_v_conv2d_15_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_m_conv2d_15_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_v_conv2d_15_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_m_conv2d_16_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_v_conv2d_16_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_m_conv2d_16_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_v_conv2d_16_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adam_m_conv2d_17_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_v_conv2d_17_kernelIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_m_conv2d_17_biasIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_v_conv2d_17_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_m_dense_4_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_v_dense_4_kernelIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_44AssignVariableOp'assignvariableop_44_adam_m_dense_4_biasIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_45AssignVariableOp'assignvariableop_45_adam_v_dense_4_biasIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_m_dense_5_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_v_dense_5_kernelIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_m_dense_5_biasIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_49AssignVariableOp'assignvariableop_49_adam_v_dense_5_biasIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_50AssignVariableOpassignvariableop_50_total_1Identity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_51AssignVariableOpassignvariableop_51_count_1Identity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_52AssignVariableOpassignvariableop_52_totalIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_53AssignVariableOpassignvariableop_53_countIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0	*
_output_shapes
:├
AssignVariableOp_54AssignVariableOp*assignvariableop_54_random_flip_1_statevarIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0	*
_output_shapes
:╟
AssignVariableOp_55AssignVariableOp.assignvariableop_55_random_rotation_1_statevarIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Я

Identity_56Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_57IdentityIdentity_56:output:0^NoOp_1*
T0*
_output_shapes
: ш	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_57Identity_57:output:0*(
_construction_contextkEagerRuntime*Е
_input_shapest
r: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_55AssignVariableOp_552(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_user_specified_nameconv2d_12/kernel:.*
(
_user_specified_nameconv2d_12/bias:0,
*
_user_specified_nameconv2d_13/kernel:.*
(
_user_specified_nameconv2d_13/bias:0,
*
_user_specified_nameconv2d_14/kernel:.*
(
_user_specified_nameconv2d_14/bias:0,
*
_user_specified_nameconv2d_15/kernel:.*
(
_user_specified_nameconv2d_15/bias:0	,
*
_user_specified_nameconv2d_16/kernel:.
*
(
_user_specified_nameconv2d_16/bias:0,
*
_user_specified_nameconv2d_17/kernel:.*
(
_user_specified_nameconv2d_17/bias:.*
(
_user_specified_namedense_4/kernel:,(
&
_user_specified_namedense_4/bias:.*
(
_user_specified_namedense_5/kernel:,(
&
_user_specified_namedense_5/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:73
1
_user_specified_nameAdam/m/conv2d_12/kernel:73
1
_user_specified_nameAdam/v/conv2d_12/kernel:51
/
_user_specified_nameAdam/m/conv2d_12/bias:51
/
_user_specified_nameAdam/v/conv2d_12/bias:73
1
_user_specified_nameAdam/m/conv2d_13/kernel:73
1
_user_specified_nameAdam/v/conv2d_13/kernel:51
/
_user_specified_nameAdam/m/conv2d_13/bias:51
/
_user_specified_nameAdam/v/conv2d_13/bias:73
1
_user_specified_nameAdam/m/conv2d_14/kernel:73
1
_user_specified_nameAdam/v/conv2d_14/kernel:51
/
_user_specified_nameAdam/m/conv2d_14/bias:51
/
_user_specified_nameAdam/v/conv2d_14/bias:73
1
_user_specified_nameAdam/m/conv2d_15/kernel:7 3
1
_user_specified_nameAdam/v/conv2d_15/kernel:5!1
/
_user_specified_nameAdam/m/conv2d_15/bias:5"1
/
_user_specified_nameAdam/v/conv2d_15/bias:7#3
1
_user_specified_nameAdam/m/conv2d_16/kernel:7$3
1
_user_specified_nameAdam/v/conv2d_16/kernel:5%1
/
_user_specified_nameAdam/m/conv2d_16/bias:5&1
/
_user_specified_nameAdam/v/conv2d_16/bias:7'3
1
_user_specified_nameAdam/m/conv2d_17/kernel:7(3
1
_user_specified_nameAdam/v/conv2d_17/kernel:5)1
/
_user_specified_nameAdam/m/conv2d_17/bias:5*1
/
_user_specified_nameAdam/v/conv2d_17/bias:5+1
/
_user_specified_nameAdam/m/dense_4/kernel:5,1
/
_user_specified_nameAdam/v/dense_4/kernel:3-/
-
_user_specified_nameAdam/m/dense_4/bias:3./
-
_user_specified_nameAdam/v/dense_4/bias:5/1
/
_user_specified_nameAdam/m/dense_5/kernel:501
/
_user_specified_nameAdam/v/dense_5/kernel:31/
-
_user_specified_nameAdam/m/dense_5/bias:32/
-
_user_specified_nameAdam/v/dense_5/bias:'3#
!
_user_specified_name	total_1:'4#
!
_user_specified_name	count_1:%5!

_user_specified_nametotal:%6!

_user_specified_namecount:672
0
_user_specified_namerandom_flip_1/StateVar::86
4
_user_specified_namerandom_rotation_1/StateVar
╖
N
"__inference__update_step_xla_56063
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes
:@: *
	_noinline(:H D

_output_shapes

:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
┤
¤
D__inference_conv2d_13_layer_call_and_return_conditional_losses_58290

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }}@*
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
:         }}@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         }}@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         }}@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
┤
¤
D__inference_conv2d_15_layer_call_and_return_conditional_losses_58350

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
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
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
└
¤
D__inference_conv2d_12_layer_call_and_return_conditional_losses_58260

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ■■ *
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
:         ■■ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ■■ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         ■■ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
У
g
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_58390

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╧
V
"__inference__update_step_xla_56023
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
╗
L
0__inference_max_pooling2d_17_layer_call_fn_58415

inputs
identity▄
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_57836Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_58330

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╟А
┼
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_57724

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИвstateful_uniform/RngReadAndSkipI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
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
valueB:╤
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
¤        j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
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
■        j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
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
 *|┘а┐Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|┘а?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ╢
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
valueB:м
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
valueB:в
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Л
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ч
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:         А
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:         Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:         ^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:         ~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:         ~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:         ^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @П
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: А
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:         `
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: А
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:         А
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:         ~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:         `
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @У
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:         g
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
::э╧m
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
valueB:б
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:         v
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
valueB"      ╘
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:         v
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
valueB"      ╘
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         v
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
valueB"      ╓
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:         v
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
valueB"      ╘
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:         v
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
valueB"      ╘
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

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
valueB"      ╪
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :г
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
 *    Ь
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         ]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :О
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         S
transform/ShapeShapeinputs*
T0*
_output_shapes
::э╧g
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
valueB:я
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
 *    б
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:         АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:         ААD
NoOpNoOp ^stateful_uniform/RngReadAndSkip*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         АА: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs:($
"
_user_specified_name
resource
п
a
E__inference_resizing_1_layer_call_and_return_conditional_losses_58482

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      Ы
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:         АА*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╧
V
"__inference__update_step_xla_56043
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
╞
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_58431

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_57786

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┤
¤
D__inference_conv2d_17_layer_call_and_return_conditional_losses_57945

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
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
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ъ
h
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_58756

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
ь
R
,__inference_sequential_3_layer_call_fn_57480
resizing_1_input
identity╔
PartitionedCallPartitionedCallresizing_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_57470j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:c _
1
_output_shapes
:         АА
*
_user_specified_nameresizing_1_input
Ч
Ю
)__inference_conv2d_17_layer_call_fn_58399

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_57945w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs:%!

_user_specified_name58393:%!

_user_specified_name58395
У
g
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_57836

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ч
Ю
)__inference_conv2d_15_layer_call_fn_58339

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_57911w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs:%!

_user_specified_name58333:%!

_user_specified_name58335
╗
L
0__inference_max_pooling2d_13_layer_call_fn_58295

inputs
identity▄
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_57796Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ц
d
H__inference_random_flip_1_layer_call_and_return_conditional_losses_58622

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╧
V
"__inference__update_step_xla_55993
gradient"
variable: *
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: : *
	_noinline(:P L
&
_output_shapes
: 
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
╔u
▄
 __inference__wrapped_model_57444
sequential_3_inputO
5sequential_6_conv2d_12_conv2d_readvariableop_resource: D
6sequential_6_conv2d_12_biasadd_readvariableop_resource: O
5sequential_6_conv2d_13_conv2d_readvariableop_resource: @D
6sequential_6_conv2d_13_biasadd_readvariableop_resource:@O
5sequential_6_conv2d_14_conv2d_readvariableop_resource:@@D
6sequential_6_conv2d_14_biasadd_readvariableop_resource:@O
5sequential_6_conv2d_15_conv2d_readvariableop_resource:@@D
6sequential_6_conv2d_15_biasadd_readvariableop_resource:@O
5sequential_6_conv2d_16_conv2d_readvariableop_resource:@@D
6sequential_6_conv2d_16_biasadd_readvariableop_resource:@O
5sequential_6_conv2d_17_conv2d_readvariableop_resource:@@D
6sequential_6_conv2d_17_biasadd_readvariableop_resource:@F
3sequential_6_dense_4_matmul_readvariableop_resource:	А@B
4sequential_6_dense_4_biasadd_readvariableop_resource:@E
3sequential_6_dense_5_matmul_readvariableop_resource:@B
4sequential_6_dense_5_biasadd_readvariableop_resource:
identityИв-sequential_6/conv2d_12/BiasAdd/ReadVariableOpв,sequential_6/conv2d_12/Conv2D/ReadVariableOpв-sequential_6/conv2d_13/BiasAdd/ReadVariableOpв,sequential_6/conv2d_13/Conv2D/ReadVariableOpв-sequential_6/conv2d_14/BiasAdd/ReadVariableOpв,sequential_6/conv2d_14/Conv2D/ReadVariableOpв-sequential_6/conv2d_15/BiasAdd/ReadVariableOpв,sequential_6/conv2d_15/Conv2D/ReadVariableOpв-sequential_6/conv2d_16/BiasAdd/ReadVariableOpв,sequential_6/conv2d_16/Conv2D/ReadVariableOpв-sequential_6/conv2d_17/BiasAdd/ReadVariableOpв,sequential_6/conv2d_17/Conv2D/ReadVariableOpв+sequential_6/dense_4/BiasAdd/ReadVariableOpв*sequential_6/dense_4/MatMul/ReadVariableOpв+sequential_6/dense_5/BiasAdd/ReadVariableOpв*sequential_6/dense_5/MatMul/ReadVariableOpБ
0sequential_6/sequential_3/resizing_1/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      ё
:sequential_6/sequential_3/resizing_1/resize/ResizeBilinearResizeBilinearsequential_3_input9sequential_6/sequential_3/resizing_1/resize/size:output:0*
T0*1
_output_shapes
:         АА*
half_pixel_centers(q
,sequential_6/sequential_3/rescaling_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;s
.sequential_6/sequential_3/rescaling_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Ё
)sequential_6/sequential_3/rescaling_1/mulMulKsequential_6/sequential_3/resizing_1/resize/ResizeBilinear:resized_images:05sequential_6/sequential_3/rescaling_1/Cast/x:output:0*
T0*1
_output_shapes
:         АА╓
)sequential_6/sequential_3/rescaling_1/addAddV2-sequential_6/sequential_3/rescaling_1/mul:z:07sequential_6/sequential_3/rescaling_1/Cast_1/x:output:0*
T0*1
_output_shapes
:         ААк
,sequential_6/conv2d_12/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_12_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ё
sequential_6/conv2d_12/Conv2DConv2D-sequential_6/sequential_3/rescaling_1/add:z:04sequential_6/conv2d_12/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ■■ *
paddingVALID*
strides
а
-sequential_6/conv2d_12/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_12_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0─
sequential_6/conv2d_12/BiasAddBiasAdd&sequential_6/conv2d_12/Conv2D:output:05sequential_6/conv2d_12/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ■■ И
sequential_6/conv2d_12/ReluRelu'sequential_6/conv2d_12/BiasAdd:output:0*
T0*1
_output_shapes
:         ■■ ╚
%sequential_6/max_pooling2d_12/MaxPoolMaxPool)sequential_6/conv2d_12/Relu:activations:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
к
,sequential_6/conv2d_13/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_13_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ё
sequential_6/conv2d_13/Conv2DConv2D.sequential_6/max_pooling2d_12/MaxPool:output:04sequential_6/conv2d_13/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }}@*
paddingVALID*
strides
а
-sequential_6/conv2d_13/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_13_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┬
sequential_6/conv2d_13/BiasAddBiasAdd&sequential_6/conv2d_13/Conv2D:output:05sequential_6/conv2d_13/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         }}@Ж
sequential_6/conv2d_13/ReluRelu'sequential_6/conv2d_13/BiasAdd:output:0*
T0*/
_output_shapes
:         }}@╚
%sequential_6/max_pooling2d_13/MaxPoolMaxPool)sequential_6/conv2d_13/Relu:activations:0*/
_output_shapes
:         >>@*
ksize
*
paddingVALID*
strides
к
,sequential_6/conv2d_14/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_14_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ё
sequential_6/conv2d_14/Conv2DConv2D.sequential_6/max_pooling2d_13/MaxPool:output:04sequential_6/conv2d_14/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@*
paddingVALID*
strides
а
-sequential_6/conv2d_14/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_14_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┬
sequential_6/conv2d_14/BiasAddBiasAdd&sequential_6/conv2d_14/Conv2D:output:05sequential_6/conv2d_14/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@Ж
sequential_6/conv2d_14/ReluRelu'sequential_6/conv2d_14/BiasAdd:output:0*
T0*/
_output_shapes
:         <<@╚
%sequential_6/max_pooling2d_14/MaxPoolMaxPool)sequential_6/conv2d_14/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
к
,sequential_6/conv2d_15/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ё
sequential_6/conv2d_15/Conv2DConv2D.sequential_6/max_pooling2d_14/MaxPool:output:04sequential_6/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
а
-sequential_6/conv2d_15/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_15_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┬
sequential_6/conv2d_15/BiasAddBiasAdd&sequential_6/conv2d_15/Conv2D:output:05sequential_6/conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @Ж
sequential_6/conv2d_15/ReluRelu'sequential_6/conv2d_15/BiasAdd:output:0*
T0*/
_output_shapes
:         @╚
%sequential_6/max_pooling2d_15/MaxPoolMaxPool)sequential_6/conv2d_15/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
к
,sequential_6/conv2d_16/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ё
sequential_6/conv2d_16/Conv2DConv2D.sequential_6/max_pooling2d_15/MaxPool:output:04sequential_6/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
а
-sequential_6/conv2d_16/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┬
sequential_6/conv2d_16/BiasAddBiasAdd&sequential_6/conv2d_16/Conv2D:output:05sequential_6/conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @Ж
sequential_6/conv2d_16/ReluRelu'sequential_6/conv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:         @╚
%sequential_6/max_pooling2d_16/MaxPoolMaxPool)sequential_6/conv2d_16/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
к
,sequential_6/conv2d_17/Conv2D/ReadVariableOpReadVariableOp5sequential_6_conv2d_17_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ё
sequential_6/conv2d_17/Conv2DConv2D.sequential_6/max_pooling2d_16/MaxPool:output:04sequential_6/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingVALID*
strides
а
-sequential_6/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp6sequential_6_conv2d_17_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┬
sequential_6/conv2d_17/BiasAddBiasAdd&sequential_6/conv2d_17/Conv2D:output:05sequential_6/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @Ж
sequential_6/conv2d_17/ReluRelu'sequential_6/conv2d_17/BiasAdd:output:0*
T0*/
_output_shapes
:         @╚
%sequential_6/max_pooling2d_17/MaxPoolMaxPool)sequential_6/conv2d_17/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
m
sequential_6/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"       │
sequential_6/flatten_2/ReshapeReshape.sequential_6/max_pooling2d_17/MaxPool:output:0%sequential_6/flatten_2/Const:output:0*
T0*(
_output_shapes
:         АЯ
*sequential_6/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_6_dense_4_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0┤
sequential_6/dense_4/MatMulMatMul'sequential_6/flatten_2/Reshape:output:02sequential_6/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Ь
+sequential_6/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_6_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╡
sequential_6/dense_4/BiasAddBiasAdd%sequential_6/dense_4/MatMul:product:03sequential_6/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @z
sequential_6/dense_4/ReluRelu%sequential_6/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:         @Ю
*sequential_6/dense_5/MatMul/ReadVariableOpReadVariableOp3sequential_6_dense_5_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0┤
sequential_6/dense_5/MatMulMatMul'sequential_6/dense_4/Relu:activations:02sequential_6/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ь
+sequential_6/dense_5/BiasAdd/ReadVariableOpReadVariableOp4sequential_6_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╡
sequential_6/dense_5/BiasAddBiasAdd%sequential_6/dense_5/MatMul:product:03sequential_6/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         А
sequential_6/dense_5/SoftmaxSoftmax%sequential_6/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:         u
IdentityIdentity&sequential_6/dense_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         Т
NoOpNoOp.^sequential_6/conv2d_12/BiasAdd/ReadVariableOp-^sequential_6/conv2d_12/Conv2D/ReadVariableOp.^sequential_6/conv2d_13/BiasAdd/ReadVariableOp-^sequential_6/conv2d_13/Conv2D/ReadVariableOp.^sequential_6/conv2d_14/BiasAdd/ReadVariableOp-^sequential_6/conv2d_14/Conv2D/ReadVariableOp.^sequential_6/conv2d_15/BiasAdd/ReadVariableOp-^sequential_6/conv2d_15/Conv2D/ReadVariableOp.^sequential_6/conv2d_16/BiasAdd/ReadVariableOp-^sequential_6/conv2d_16/Conv2D/ReadVariableOp.^sequential_6/conv2d_17/BiasAdd/ReadVariableOp-^sequential_6/conv2d_17/Conv2D/ReadVariableOp,^sequential_6/dense_4/BiasAdd/ReadVariableOp+^sequential_6/dense_4/MatMul/ReadVariableOp,^sequential_6/dense_5/BiasAdd/ReadVariableOp+^sequential_6/dense_5/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 2^
-sequential_6/conv2d_12/BiasAdd/ReadVariableOp-sequential_6/conv2d_12/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_12/Conv2D/ReadVariableOp,sequential_6/conv2d_12/Conv2D/ReadVariableOp2^
-sequential_6/conv2d_13/BiasAdd/ReadVariableOp-sequential_6/conv2d_13/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_13/Conv2D/ReadVariableOp,sequential_6/conv2d_13/Conv2D/ReadVariableOp2^
-sequential_6/conv2d_14/BiasAdd/ReadVariableOp-sequential_6/conv2d_14/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_14/Conv2D/ReadVariableOp,sequential_6/conv2d_14/Conv2D/ReadVariableOp2^
-sequential_6/conv2d_15/BiasAdd/ReadVariableOp-sequential_6/conv2d_15/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_15/Conv2D/ReadVariableOp,sequential_6/conv2d_15/Conv2D/ReadVariableOp2^
-sequential_6/conv2d_16/BiasAdd/ReadVariableOp-sequential_6/conv2d_16/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_16/Conv2D/ReadVariableOp,sequential_6/conv2d_16/Conv2D/ReadVariableOp2^
-sequential_6/conv2d_17/BiasAdd/ReadVariableOp-sequential_6/conv2d_17/BiasAdd/ReadVariableOp2\
,sequential_6/conv2d_17/Conv2D/ReadVariableOp,sequential_6/conv2d_17/Conv2D/ReadVariableOp2Z
+sequential_6/dense_4/BiasAdd/ReadVariableOp+sequential_6/dense_4/BiasAdd/ReadVariableOp2X
*sequential_6/dense_4/MatMul/ReadVariableOp*sequential_6/dense_4/MatMul/ReadVariableOp2Z
+sequential_6/dense_5/BiasAdd/ReadVariableOp+sequential_6/dense_5/BiasAdd/ReadVariableOp2X
*sequential_6/dense_5/MatMul/ReadVariableOp*sequential_6/dense_5/MatMul/ReadVariableOp:e a
1
_output_shapes
:         АА
,
_user_specified_namesequential_3_input:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
дй
т3
__inference__traced_save_59124
file_prefixA
'read_disablecopyonread_conv2d_12_kernel: 5
'read_1_disablecopyonread_conv2d_12_bias: C
)read_2_disablecopyonread_conv2d_13_kernel: @5
'read_3_disablecopyonread_conv2d_13_bias:@C
)read_4_disablecopyonread_conv2d_14_kernel:@@5
'read_5_disablecopyonread_conv2d_14_bias:@C
)read_6_disablecopyonread_conv2d_15_kernel:@@5
'read_7_disablecopyonread_conv2d_15_bias:@C
)read_8_disablecopyonread_conv2d_16_kernel:@@5
'read_9_disablecopyonread_conv2d_16_bias:@D
*read_10_disablecopyonread_conv2d_17_kernel:@@6
(read_11_disablecopyonread_conv2d_17_bias:@;
(read_12_disablecopyonread_dense_4_kernel:	А@4
&read_13_disablecopyonread_dense_4_bias:@:
(read_14_disablecopyonread_dense_5_kernel:@4
&read_15_disablecopyonread_dense_5_bias:-
#read_16_disablecopyonread_iteration:	 1
'read_17_disablecopyonread_learning_rate: K
1read_18_disablecopyonread_adam_m_conv2d_12_kernel: K
1read_19_disablecopyonread_adam_v_conv2d_12_kernel: =
/read_20_disablecopyonread_adam_m_conv2d_12_bias: =
/read_21_disablecopyonread_adam_v_conv2d_12_bias: K
1read_22_disablecopyonread_adam_m_conv2d_13_kernel: @K
1read_23_disablecopyonread_adam_v_conv2d_13_kernel: @=
/read_24_disablecopyonread_adam_m_conv2d_13_bias:@=
/read_25_disablecopyonread_adam_v_conv2d_13_bias:@K
1read_26_disablecopyonread_adam_m_conv2d_14_kernel:@@K
1read_27_disablecopyonread_adam_v_conv2d_14_kernel:@@=
/read_28_disablecopyonread_adam_m_conv2d_14_bias:@=
/read_29_disablecopyonread_adam_v_conv2d_14_bias:@K
1read_30_disablecopyonread_adam_m_conv2d_15_kernel:@@K
1read_31_disablecopyonread_adam_v_conv2d_15_kernel:@@=
/read_32_disablecopyonread_adam_m_conv2d_15_bias:@=
/read_33_disablecopyonread_adam_v_conv2d_15_bias:@K
1read_34_disablecopyonread_adam_m_conv2d_16_kernel:@@K
1read_35_disablecopyonread_adam_v_conv2d_16_kernel:@@=
/read_36_disablecopyonread_adam_m_conv2d_16_bias:@=
/read_37_disablecopyonread_adam_v_conv2d_16_bias:@K
1read_38_disablecopyonread_adam_m_conv2d_17_kernel:@@K
1read_39_disablecopyonread_adam_v_conv2d_17_kernel:@@=
/read_40_disablecopyonread_adam_m_conv2d_17_bias:@=
/read_41_disablecopyonread_adam_v_conv2d_17_bias:@B
/read_42_disablecopyonread_adam_m_dense_4_kernel:	А@B
/read_43_disablecopyonread_adam_v_dense_4_kernel:	А@;
-read_44_disablecopyonread_adam_m_dense_4_bias:@;
-read_45_disablecopyonread_adam_v_dense_4_bias:@A
/read_46_disablecopyonread_adam_m_dense_5_kernel:@A
/read_47_disablecopyonread_adam_v_dense_5_kernel:@;
-read_48_disablecopyonread_adam_m_dense_5_bias:;
-read_49_disablecopyonread_adam_v_dense_5_bias:+
!read_50_disablecopyonread_total_1: +
!read_51_disablecopyonread_count_1: )
read_52_disablecopyonread_total: )
read_53_disablecopyonread_count: >
0read_54_disablecopyonread_random_flip_1_statevar:	B
4read_55_disablecopyonread_random_rotation_1_statevar:	
savev2_const
identity_113ИвMergeV2CheckpointsвRead/DisableCopyOnReadвRead/ReadVariableOpвRead_1/DisableCopyOnReadвRead_1/ReadVariableOpвRead_10/DisableCopyOnReadвRead_10/ReadVariableOpвRead_11/DisableCopyOnReadвRead_11/ReadVariableOpвRead_12/DisableCopyOnReadвRead_12/ReadVariableOpвRead_13/DisableCopyOnReadвRead_13/ReadVariableOpвRead_14/DisableCopyOnReadвRead_14/ReadVariableOpвRead_15/DisableCopyOnReadвRead_15/ReadVariableOpвRead_16/DisableCopyOnReadвRead_16/ReadVariableOpвRead_17/DisableCopyOnReadвRead_17/ReadVariableOpвRead_18/DisableCopyOnReadвRead_18/ReadVariableOpвRead_19/DisableCopyOnReadвRead_19/ReadVariableOpвRead_2/DisableCopyOnReadвRead_2/ReadVariableOpвRead_20/DisableCopyOnReadвRead_20/ReadVariableOpвRead_21/DisableCopyOnReadвRead_21/ReadVariableOpвRead_22/DisableCopyOnReadвRead_22/ReadVariableOpвRead_23/DisableCopyOnReadвRead_23/ReadVariableOpвRead_24/DisableCopyOnReadвRead_24/ReadVariableOpвRead_25/DisableCopyOnReadвRead_25/ReadVariableOpвRead_26/DisableCopyOnReadвRead_26/ReadVariableOpвRead_27/DisableCopyOnReadвRead_27/ReadVariableOpвRead_28/DisableCopyOnReadвRead_28/ReadVariableOpвRead_29/DisableCopyOnReadвRead_29/ReadVariableOpвRead_3/DisableCopyOnReadвRead_3/ReadVariableOpвRead_30/DisableCopyOnReadвRead_30/ReadVariableOpвRead_31/DisableCopyOnReadвRead_31/ReadVariableOpвRead_32/DisableCopyOnReadвRead_32/ReadVariableOpвRead_33/DisableCopyOnReadвRead_33/ReadVariableOpвRead_34/DisableCopyOnReadвRead_34/ReadVariableOpвRead_35/DisableCopyOnReadвRead_35/ReadVariableOpвRead_36/DisableCopyOnReadвRead_36/ReadVariableOpвRead_37/DisableCopyOnReadвRead_37/ReadVariableOpвRead_38/DisableCopyOnReadвRead_38/ReadVariableOpвRead_39/DisableCopyOnReadвRead_39/ReadVariableOpвRead_4/DisableCopyOnReadвRead_4/ReadVariableOpвRead_40/DisableCopyOnReadвRead_40/ReadVariableOpвRead_41/DisableCopyOnReadвRead_41/ReadVariableOpвRead_42/DisableCopyOnReadвRead_42/ReadVariableOpвRead_43/DisableCopyOnReadвRead_43/ReadVariableOpвRead_44/DisableCopyOnReadвRead_44/ReadVariableOpвRead_45/DisableCopyOnReadвRead_45/ReadVariableOpвRead_46/DisableCopyOnReadвRead_46/ReadVariableOpвRead_47/DisableCopyOnReadвRead_47/ReadVariableOpвRead_48/DisableCopyOnReadвRead_48/ReadVariableOpвRead_49/DisableCopyOnReadвRead_49/ReadVariableOpвRead_5/DisableCopyOnReadвRead_5/ReadVariableOpвRead_50/DisableCopyOnReadвRead_50/ReadVariableOpвRead_51/DisableCopyOnReadвRead_51/ReadVariableOpвRead_52/DisableCopyOnReadвRead_52/ReadVariableOpвRead_53/DisableCopyOnReadвRead_53/ReadVariableOpвRead_54/DisableCopyOnReadвRead_54/ReadVariableOpвRead_55/DisableCopyOnReadвRead_55/ReadVariableOpвRead_6/DisableCopyOnReadвRead_6/ReadVariableOpвRead_7/DisableCopyOnReadвRead_7/ReadVariableOpвRead_8/DisableCopyOnReadвRead_8/ReadVariableOpвRead_9/DisableCopyOnReadвRead_9/ReadVariableOpw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv2d_12_kernel"/device:CPU:0*
_output_shapes
 л
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv2d_12_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
: {
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv2d_12_bias"/device:CPU:0*
_output_shapes
 г
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv2d_12_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: }
Read_2/DisableCopyOnReadDisableCopyOnRead)read_2_disablecopyonread_conv2d_13_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_2/ReadVariableOpReadVariableOp)read_2_disablecopyonread_conv2d_13_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
: @{
Read_3/DisableCopyOnReadDisableCopyOnRead'read_3_disablecopyonread_conv2d_13_bias"/device:CPU:0*
_output_shapes
 г
Read_3/ReadVariableOpReadVariableOp'read_3_disablecopyonread_conv2d_13_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:@}
Read_4/DisableCopyOnReadDisableCopyOnRead)read_4_disablecopyonread_conv2d_14_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_4/ReadVariableOpReadVariableOp)read_4_disablecopyonread_conv2d_14_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@{
Read_5/DisableCopyOnReadDisableCopyOnRead'read_5_disablecopyonread_conv2d_14_bias"/device:CPU:0*
_output_shapes
 г
Read_5/ReadVariableOpReadVariableOp'read_5_disablecopyonread_conv2d_14_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:@}
Read_6/DisableCopyOnReadDisableCopyOnRead)read_6_disablecopyonread_conv2d_15_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_6/ReadVariableOpReadVariableOp)read_6_disablecopyonread_conv2d_15_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@{
Read_7/DisableCopyOnReadDisableCopyOnRead'read_7_disablecopyonread_conv2d_15_bias"/device:CPU:0*
_output_shapes
 г
Read_7/ReadVariableOpReadVariableOp'read_7_disablecopyonread_conv2d_15_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:@}
Read_8/DisableCopyOnReadDisableCopyOnRead)read_8_disablecopyonread_conv2d_16_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_8/ReadVariableOpReadVariableOp)read_8_disablecopyonread_conv2d_16_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0v
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@{
Read_9/DisableCopyOnReadDisableCopyOnRead'read_9_disablecopyonread_conv2d_16_bias"/device:CPU:0*
_output_shapes
 г
Read_9/ReadVariableOpReadVariableOp'read_9_disablecopyonread_conv2d_16_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:@
Read_10/DisableCopyOnReadDisableCopyOnRead*read_10_disablecopyonread_conv2d_17_kernel"/device:CPU:0*
_output_shapes
 ┤
Read_10/ReadVariableOpReadVariableOp*read_10_disablecopyonread_conv2d_17_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@}
Read_11/DisableCopyOnReadDisableCopyOnRead(read_11_disablecopyonread_conv2d_17_bias"/device:CPU:0*
_output_shapes
 ж
Read_11/ReadVariableOpReadVariableOp(read_11_disablecopyonread_conv2d_17_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:@}
Read_12/DisableCopyOnReadDisableCopyOnRead(read_12_disablecopyonread_dense_4_kernel"/device:CPU:0*
_output_shapes
 л
Read_12/ReadVariableOpReadVariableOp(read_12_disablecopyonread_dense_4_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А@*
dtype0p
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	А@f
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:	А@{
Read_13/DisableCopyOnReadDisableCopyOnRead&read_13_disablecopyonread_dense_4_bias"/device:CPU:0*
_output_shapes
 д
Read_13/ReadVariableOpReadVariableOp&read_13_disablecopyonread_dense_4_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:@}
Read_14/DisableCopyOnReadDisableCopyOnRead(read_14_disablecopyonread_dense_5_kernel"/device:CPU:0*
_output_shapes
 к
Read_14/ReadVariableOpReadVariableOp(read_14_disablecopyonread_dense_5_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:@{
Read_15/DisableCopyOnReadDisableCopyOnRead&read_15_disablecopyonread_dense_5_bias"/device:CPU:0*
_output_shapes
 д
Read_15/ReadVariableOpReadVariableOp&read_15_disablecopyonread_dense_5_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_16/DisableCopyOnReadDisableCopyOnRead#read_16_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Э
Read_16/ReadVariableOpReadVariableOp#read_16_disablecopyonread_iteration^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_17/DisableCopyOnReadDisableCopyOnRead'read_17_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 б
Read_17/ReadVariableOpReadVariableOp'read_17_disablecopyonread_learning_rate^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: Ж
Read_18/DisableCopyOnReadDisableCopyOnRead1read_18_disablecopyonread_adam_m_conv2d_12_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_18/ReadVariableOpReadVariableOp1read_18_disablecopyonread_adam_m_conv2d_12_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
: Ж
Read_19/DisableCopyOnReadDisableCopyOnRead1read_19_disablecopyonread_adam_v_conv2d_12_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_19/ReadVariableOpReadVariableOp1read_19_disablecopyonread_adam_v_conv2d_12_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*&
_output_shapes
: Д
Read_20/DisableCopyOnReadDisableCopyOnRead/read_20_disablecopyonread_adam_m_conv2d_12_bias"/device:CPU:0*
_output_shapes
 н
Read_20/ReadVariableOpReadVariableOp/read_20_disablecopyonread_adam_m_conv2d_12_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
: Д
Read_21/DisableCopyOnReadDisableCopyOnRead/read_21_disablecopyonread_adam_v_conv2d_12_bias"/device:CPU:0*
_output_shapes
 н
Read_21/ReadVariableOpReadVariableOp/read_21_disablecopyonread_adam_v_conv2d_12_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
: Ж
Read_22/DisableCopyOnReadDisableCopyOnRead1read_22_disablecopyonread_adam_m_conv2d_13_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_22/ReadVariableOpReadVariableOp1read_22_disablecopyonread_adam_m_conv2d_13_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*&
_output_shapes
: @Ж
Read_23/DisableCopyOnReadDisableCopyOnRead1read_23_disablecopyonread_adam_v_conv2d_13_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_23/ReadVariableOpReadVariableOp1read_23_disablecopyonread_adam_v_conv2d_13_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*&
_output_shapes
: @Д
Read_24/DisableCopyOnReadDisableCopyOnRead/read_24_disablecopyonread_adam_m_conv2d_13_bias"/device:CPU:0*
_output_shapes
 н
Read_24/ReadVariableOpReadVariableOp/read_24_disablecopyonread_adam_m_conv2d_13_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:@Д
Read_25/DisableCopyOnReadDisableCopyOnRead/read_25_disablecopyonread_adam_v_conv2d_13_bias"/device:CPU:0*
_output_shapes
 н
Read_25/ReadVariableOpReadVariableOp/read_25_disablecopyonread_adam_v_conv2d_13_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ж
Read_26/DisableCopyOnReadDisableCopyOnRead1read_26_disablecopyonread_adam_m_conv2d_14_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_26/ReadVariableOpReadVariableOp1read_26_disablecopyonread_adam_m_conv2d_14_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@Ж
Read_27/DisableCopyOnReadDisableCopyOnRead1read_27_disablecopyonread_adam_v_conv2d_14_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_27/ReadVariableOpReadVariableOp1read_27_disablecopyonread_adam_v_conv2d_14_kernel^Read_27/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@Д
Read_28/DisableCopyOnReadDisableCopyOnRead/read_28_disablecopyonread_adam_m_conv2d_14_bias"/device:CPU:0*
_output_shapes
 н
Read_28/ReadVariableOpReadVariableOp/read_28_disablecopyonread_adam_m_conv2d_14_bias^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:@Д
Read_29/DisableCopyOnReadDisableCopyOnRead/read_29_disablecopyonread_adam_v_conv2d_14_bias"/device:CPU:0*
_output_shapes
 н
Read_29/ReadVariableOpReadVariableOp/read_29_disablecopyonread_adam_v_conv2d_14_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ж
Read_30/DisableCopyOnReadDisableCopyOnRead1read_30_disablecopyonread_adam_m_conv2d_15_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_30/ReadVariableOpReadVariableOp1read_30_disablecopyonread_adam_m_conv2d_15_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@Ж
Read_31/DisableCopyOnReadDisableCopyOnRead1read_31_disablecopyonread_adam_v_conv2d_15_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_31/ReadVariableOpReadVariableOp1read_31_disablecopyonread_adam_v_conv2d_15_kernel^Read_31/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@Д
Read_32/DisableCopyOnReadDisableCopyOnRead/read_32_disablecopyonread_adam_m_conv2d_15_bias"/device:CPU:0*
_output_shapes
 н
Read_32/ReadVariableOpReadVariableOp/read_32_disablecopyonread_adam_m_conv2d_15_bias^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:@Д
Read_33/DisableCopyOnReadDisableCopyOnRead/read_33_disablecopyonread_adam_v_conv2d_15_bias"/device:CPU:0*
_output_shapes
 н
Read_33/ReadVariableOpReadVariableOp/read_33_disablecopyonread_adam_v_conv2d_15_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ж
Read_34/DisableCopyOnReadDisableCopyOnRead1read_34_disablecopyonread_adam_m_conv2d_16_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_34/ReadVariableOpReadVariableOp1read_34_disablecopyonread_adam_m_conv2d_16_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@Ж
Read_35/DisableCopyOnReadDisableCopyOnRead1read_35_disablecopyonread_adam_v_conv2d_16_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_35/ReadVariableOpReadVariableOp1read_35_disablecopyonread_adam_v_conv2d_16_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@Д
Read_36/DisableCopyOnReadDisableCopyOnRead/read_36_disablecopyonread_adam_m_conv2d_16_bias"/device:CPU:0*
_output_shapes
 н
Read_36/ReadVariableOpReadVariableOp/read_36_disablecopyonread_adam_m_conv2d_16_bias^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:@Д
Read_37/DisableCopyOnReadDisableCopyOnRead/read_37_disablecopyonread_adam_v_conv2d_16_bias"/device:CPU:0*
_output_shapes
 н
Read_37/ReadVariableOpReadVariableOp/read_37_disablecopyonread_adam_v_conv2d_16_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ж
Read_38/DisableCopyOnReadDisableCopyOnRead1read_38_disablecopyonread_adam_m_conv2d_17_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_38/ReadVariableOpReadVariableOp1read_38_disablecopyonread_adam_m_conv2d_17_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@Ж
Read_39/DisableCopyOnReadDisableCopyOnRead1read_39_disablecopyonread_adam_v_conv2d_17_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_39/ReadVariableOpReadVariableOp1read_39_disablecopyonread_adam_v_conv2d_17_kernel^Read_39/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@@*
dtype0w
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@@m
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*&
_output_shapes
:@@Д
Read_40/DisableCopyOnReadDisableCopyOnRead/read_40_disablecopyonread_adam_m_conv2d_17_bias"/device:CPU:0*
_output_shapes
 н
Read_40/ReadVariableOpReadVariableOp/read_40_disablecopyonread_adam_m_conv2d_17_bias^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
:@Д
Read_41/DisableCopyOnReadDisableCopyOnRead/read_41_disablecopyonread_adam_v_conv2d_17_bias"/device:CPU:0*
_output_shapes
 н
Read_41/ReadVariableOpReadVariableOp/read_41_disablecopyonread_adam_v_conv2d_17_bias^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
:@Д
Read_42/DisableCopyOnReadDisableCopyOnRead/read_42_disablecopyonread_adam_m_dense_4_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_42/ReadVariableOpReadVariableOp/read_42_disablecopyonread_adam_m_dense_4_kernel^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А@*
dtype0p
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	А@f
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes
:	А@Д
Read_43/DisableCopyOnReadDisableCopyOnRead/read_43_disablecopyonread_adam_v_dense_4_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_43/ReadVariableOpReadVariableOp/read_43_disablecopyonread_adam_v_dense_4_kernel^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А@*
dtype0p
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	А@f
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
:	А@В
Read_44/DisableCopyOnReadDisableCopyOnRead-read_44_disablecopyonread_adam_m_dense_4_bias"/device:CPU:0*
_output_shapes
 л
Read_44/ReadVariableOpReadVariableOp-read_44_disablecopyonread_adam_m_dense_4_bias^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
:@В
Read_45/DisableCopyOnReadDisableCopyOnRead-read_45_disablecopyonread_adam_v_dense_4_bias"/device:CPU:0*
_output_shapes
 л
Read_45/ReadVariableOpReadVariableOp-read_45_disablecopyonread_adam_v_dense_4_bias^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
:@Д
Read_46/DisableCopyOnReadDisableCopyOnRead/read_46_disablecopyonread_adam_m_dense_5_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_46/ReadVariableOpReadVariableOp/read_46_disablecopyonread_adam_m_dense_5_kernel^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes

:@Д
Read_47/DisableCopyOnReadDisableCopyOnRead/read_47_disablecopyonread_adam_v_dense_5_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_47/ReadVariableOpReadVariableOp/read_47_disablecopyonread_adam_v_dense_5_kernel^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes

:@В
Read_48/DisableCopyOnReadDisableCopyOnRead-read_48_disablecopyonread_adam_m_dense_5_bias"/device:CPU:0*
_output_shapes
 л
Read_48/ReadVariableOpReadVariableOp-read_48_disablecopyonread_adam_m_dense_5_bias^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
:В
Read_49/DisableCopyOnReadDisableCopyOnRead-read_49_disablecopyonread_adam_v_dense_5_bias"/device:CPU:0*
_output_shapes
 л
Read_49/ReadVariableOpReadVariableOp-read_49_disablecopyonread_adam_v_dense_5_bias^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_50/DisableCopyOnReadDisableCopyOnRead!read_50_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_50/ReadVariableOpReadVariableOp!read_50_disablecopyonread_total_1^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_51/DisableCopyOnReadDisableCopyOnRead!read_51_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_51/ReadVariableOpReadVariableOp!read_51_disablecopyonread_count_1^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_52/DisableCopyOnReadDisableCopyOnReadread_52_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_52/ReadVariableOpReadVariableOpread_52_disablecopyonread_total^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_53/DisableCopyOnReadDisableCopyOnReadread_53_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_53/ReadVariableOpReadVariableOpread_53_disablecopyonread_count^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
: Е
Read_54/DisableCopyOnReadDisableCopyOnRead0read_54_disablecopyonread_random_flip_1_statevar"/device:CPU:0*
_output_shapes
 о
Read_54/ReadVariableOpReadVariableOp0read_54_disablecopyonread_random_flip_1_statevar^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0	l
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
:c
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0	*
_output_shapes
:Й
Read_55/DisableCopyOnReadDisableCopyOnRead4read_55_disablecopyonread_random_rotation_1_statevar"/device:CPU:0*
_output_shapes
 ▓
Read_55/ReadVariableOpReadVariableOp4read_55_disablecopyonread_random_rotation_1_statevar^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0	l
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
:c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0	*
_output_shapes
:╪
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*Б
valueўBЇ9B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-1/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHр
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*Е
value|Bz9B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B с
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *G
dtypes=
;29			Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_112Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_113IdentityIdentity_112:output:0^NoOp*
T0*
_output_shapes
: ╖
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_113Identity_113:output:0*(
_construction_contextkEagerRuntime*З
_input_shapesv
t: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:0,
*
_user_specified_nameconv2d_12/kernel:.*
(
_user_specified_nameconv2d_12/bias:0,
*
_user_specified_nameconv2d_13/kernel:.*
(
_user_specified_nameconv2d_13/bias:0,
*
_user_specified_nameconv2d_14/kernel:.*
(
_user_specified_nameconv2d_14/bias:0,
*
_user_specified_nameconv2d_15/kernel:.*
(
_user_specified_nameconv2d_15/bias:0	,
*
_user_specified_nameconv2d_16/kernel:.
*
(
_user_specified_nameconv2d_16/bias:0,
*
_user_specified_nameconv2d_17/kernel:.*
(
_user_specified_nameconv2d_17/bias:.*
(
_user_specified_namedense_4/kernel:,(
&
_user_specified_namedense_4/bias:.*
(
_user_specified_namedense_5/kernel:,(
&
_user_specified_namedense_5/bias:)%
#
_user_specified_name	iteration:-)
'
_user_specified_namelearning_rate:73
1
_user_specified_nameAdam/m/conv2d_12/kernel:73
1
_user_specified_nameAdam/v/conv2d_12/kernel:51
/
_user_specified_nameAdam/m/conv2d_12/bias:51
/
_user_specified_nameAdam/v/conv2d_12/bias:73
1
_user_specified_nameAdam/m/conv2d_13/kernel:73
1
_user_specified_nameAdam/v/conv2d_13/kernel:51
/
_user_specified_nameAdam/m/conv2d_13/bias:51
/
_user_specified_nameAdam/v/conv2d_13/bias:73
1
_user_specified_nameAdam/m/conv2d_14/kernel:73
1
_user_specified_nameAdam/v/conv2d_14/kernel:51
/
_user_specified_nameAdam/m/conv2d_14/bias:51
/
_user_specified_nameAdam/v/conv2d_14/bias:73
1
_user_specified_nameAdam/m/conv2d_15/kernel:7 3
1
_user_specified_nameAdam/v/conv2d_15/kernel:5!1
/
_user_specified_nameAdam/m/conv2d_15/bias:5"1
/
_user_specified_nameAdam/v/conv2d_15/bias:7#3
1
_user_specified_nameAdam/m/conv2d_16/kernel:7$3
1
_user_specified_nameAdam/v/conv2d_16/kernel:5%1
/
_user_specified_nameAdam/m/conv2d_16/bias:5&1
/
_user_specified_nameAdam/v/conv2d_16/bias:7'3
1
_user_specified_nameAdam/m/conv2d_17/kernel:7(3
1
_user_specified_nameAdam/v/conv2d_17/kernel:5)1
/
_user_specified_nameAdam/m/conv2d_17/bias:5*1
/
_user_specified_nameAdam/v/conv2d_17/bias:5+1
/
_user_specified_nameAdam/m/dense_4/kernel:5,1
/
_user_specified_nameAdam/v/dense_4/kernel:3-/
-
_user_specified_nameAdam/m/dense_4/bias:3./
-
_user_specified_nameAdam/v/dense_4/bias:5/1
/
_user_specified_nameAdam/m/dense_5/kernel:501
/
_user_specified_nameAdam/v/dense_5/kernel:31/
-
_user_specified_nameAdam/m/dense_5/bias:32/
-
_user_specified_nameAdam/v/dense_5/bias:'3#
!
_user_specified_name	total_1:'4#
!
_user_specified_name	count_1:%5!

_user_specified_nametotal:%6!

_user_specified_namecount:672
0
_user_specified_namerandom_flip_1/StateVar::86
4
_user_specified_namerandom_rotation_1/StateVar:=99

_output_shapes
: 

_user_specified_nameConst
У
g
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_58420

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_57826

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┤
¤
D__inference_conv2d_16_layer_call_and_return_conditional_losses_58380

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
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
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
У
g
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_57816

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╬

є
B__inference_dense_5_layer_call_and_return_conditional_losses_58471

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
┤
¤
D__inference_conv2d_17_layer_call_and_return_conditional_losses_58410

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
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
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╤
Б
1__inference_random_rotation_1_layer_call_fn_58629

inputs
unknown:	
identityИвStatefulPartitionedCall▐
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_57724y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         АА<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         АА: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs:%!

_user_specified_name58625
╗
L
0__inference_max_pooling2d_15_layer_call_fn_58355

inputs
identity▄
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_57816Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
└
¤
D__inference_conv2d_12_layer_call_and_return_conditional_losses_57860

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ь
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ■■ *
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
:         ■■ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ■■ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         ■■ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
л
J
"__inference__update_step_xla_56018
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ч
Ю
)__inference_conv2d_13_layer_call_fn_58279

inputs!
unknown: @
	unknown_0:@
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         }}@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_57877w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         }}@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs:%!

_user_specified_name58273:%!

_user_specified_name58275
╚
}
-__inference_random_flip_1_layer_call_fn_58502

inputs
unknown:	
identityИвStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_random_flip_1_layer_call_and_return_conditional_losses_57603y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         АА<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         АА: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs:%!

_user_specified_name58498
ї
U
,__inference_sequential_4_layer_call_fn_57757
random_flip_1_input
identity╠
PartitionedCallPartitionedCallrandom_flip_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_57743j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:f b
1
_output_shapes
:         АА
-
_user_specified_namerandom_flip_1_input
╠
G
+__inference_rescaling_1_layer_call_fn_58487

inputs
identity╛
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_rescaling_1_layer_call_and_return_conditional_losses_57461j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
п
a
E__inference_resizing_1_layer_call_and_return_conditional_losses_57452

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"      Ы
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:         АА*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
╧
V
"__inference__update_step_xla_56013
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
╟А
┼
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_58752

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИвstateful_uniform/RngReadAndSkipI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
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
valueB:╤
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
¤        j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
■        a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
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
■        j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
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
 *|┘а┐Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|┘а?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ╢
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
valueB:м
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
valueB:в
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Л
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ч
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:         А
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:         Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:         ^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:         ~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:         ~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:         ^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @П
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: А
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:         `
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:         \
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: А
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:         А
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:         ~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:         `
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @У
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:         g
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
::э╧m
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
valueB:б
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:         v
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
valueB"      ╘
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:         v
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
valueB"      ╘
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:         v
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
valueB"      ╓
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:         v
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
valueB"      ╘
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:         v
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
valueB"      ╘
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

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
valueB"      ╪
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :г
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
 *    Ь
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:         ]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :О
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:         S
transform/ShapeShapeinputs*
T0*
_output_shapes
::э╧g
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
valueB:я
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
 *    б
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:         АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:         ААD
NoOpNoOp ^stateful_uniform/RngReadAndSkip*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         АА: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs:($
"
_user_specified_name
resource
еЧ
А
H__inference_random_flip_1_layer_call_and_return_conditional_losses_58618

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identityИв(stateful_uniform_full_int/RngReadAndSkipв*stateful_uniform_full_int_1/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ы
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Б
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ┌
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskП
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╧
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:У
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :С
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ў
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskЮ
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:         ААа
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::э╧~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: А
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:А
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskо
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:В
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    В
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?░
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::Ш
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :■
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         ї
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Т
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         √
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :╬
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:х
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:         Ь
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:         y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:ы
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         АА╚
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:         ААk
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?┬
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:         ╤
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:         АА┐
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:         ААk
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: б
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Е
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Л
*stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource+stateful_uniform_full_int_1/Cast/x:output:0&stateful_uniform_full_int_1/Cast_1:y:0)^stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:y
/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:у
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskУ
#stateful_uniform_full_int_1/BitcastBitcast2stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0{
1stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
+stateful_uniform_full_int_1/strided_slice_1StridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:0:stateful_uniform_full_int_1/strided_slice_1/stack:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ч
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Ы
stateful_uniform_full_int_1StatelessRandomUniformFullIntV2*stateful_uniform_full_int_1/shape:output:0.stateful_uniform_full_int_1/Bitcast_1:output:0,stateful_uniform_full_int_1/Bitcast:output:0(stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	V
zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ~
stack_1Pack$stateful_uniform_full_int_1:output:0zeros_like_1:output:0*
N*
T0	*
_output_shapes

:f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask█
0stateless_random_flip_up_down/control_dependencyIdentity(stateless_random_flip_left_right/add:z:0*
T0*7
_class-
+)loc:@stateless_random_flip_left_right/add*1
_output_shapes
:         ААЪ
#stateless_random_flip_up_down/ShapeShape9stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
::э╧{
1stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ч
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskи
<stateless_random_flip_up_down/stateless_random_uniform/shapePack4stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
:stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
:stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?п
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::Х
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :я
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         ь
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Й
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         Є
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         o
-stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :┐
+stateless_random_flip_up_down/Reshape/shapePack4stateless_random_flip_up_down/strided_slice:output:06stateless_random_flip_up_down/Reshape/shape/1:output:06stateless_random_flip_up_down/Reshape/shape/2:output:06stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:▄
%stateless_random_flip_up_down/ReshapeReshape:stateless_random_flip_up_down/stateless_random_uniform:z:04stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:         Ц
#stateless_random_flip_up_down/RoundRound.stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:         v
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:т
'stateless_random_flip_up_down/ReverseV2	ReverseV29stateless_random_flip_up_down/control_dependency:output:05stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         АА┐
!stateless_random_flip_up_down/mulMul'stateless_random_flip_up_down/Round:y:00stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:         ААh
#stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╣
!stateless_random_flip_up_down/subSub,stateless_random_flip_up_down/sub/x:output:0'stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:         ╚
#stateless_random_flip_up_down/mul_1Mul%stateless_random_flip_up_down/sub:z:09stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:         АА╢
!stateless_random_flip_up_down/addAddV2%stateless_random_flip_up_down/mul:z:0'stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:         АА~
IdentityIdentity%stateless_random_flip_up_down/add:z:0^NoOp*
T0*1
_output_shapes
:         ААz
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkip*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         АА: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs:($
"
_user_specified_name
resource
Ч
Ю
)__inference_conv2d_14_layer_call_fn_58309

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_57894w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         <<@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         >>@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         >>@
 
_user_specified_nameinputs:%!

_user_specified_name58303:%!

_user_specified_name58305
ы
Ф
'__inference_dense_5_layer_call_fn_58460

inputs
unknown:@
	unknown_0:
identityИвStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_57985o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         @
 
_user_specified_nameinputs:%!

_user_specified_name58454:%!

_user_specified_name58456
л
J
"__inference__update_step_xla_56058
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
╩
F
*__inference_resizing_1_layer_call_fn_58476

inputs
identity╜
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_resizing_1_layer_call_and_return_conditional_losses_57452j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_58300

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Я
Ю
)__inference_conv2d_12_layer_call_fn_58249

inputs!
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ■■ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_57860y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ■■ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs:%!

_user_specified_name58243:%!

_user_specified_name58245
Ъ
h
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_57740

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
л
J
"__inference__update_step_xla_56068
gradient
variable:*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:: *
	_noinline(:D @

_output_shapes
:
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
╪
M
1__inference_random_rotation_1_layer_call_fn_58634

inputs
identity─
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_57740j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
ю
Х
'__inference_dense_4_layer_call_fn_58440

inputs
unknown:	А@
	unknown_0:@
identityИвStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_57969o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs:%!

_user_specified_name58434:%!

_user_specified_name58436
л
J
"__inference__update_step_xla_56008
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
╝
в
,__inference_sequential_4_layer_call_fn_57752
random_flip_1_input
unknown:	
	unknown_0:	
identityИвStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_1_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_57729y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         АА<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         АА: : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:         АА
-
_user_specified_namerandom_flip_1_input:%!

_user_specified_name57746:%!

_user_specified_name57748
У
g
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_58360

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ЦJ
╟
G__inference_sequential_6_layer_call_and_return_conditional_losses_58045
sequential_3_input)
conv2d_12_57997: 
conv2d_12_57999: )
conv2d_13_58003: @
conv2d_13_58005:@)
conv2d_14_58009:@@
conv2d_14_58011:@)
conv2d_15_58015:@@
conv2d_15_58017:@)
conv2d_16_58021:@@
conv2d_16_58023:@)
conv2d_17_58027:@@
conv2d_17_58029:@ 
dense_4_58034:	А@
dense_4_58036:@
dense_5_58039:@
dense_5_58041:
identityИв!conv2d_12/StatefulPartitionedCallв!conv2d_13/StatefulPartitionedCallв!conv2d_14/StatefulPartitionedCallв!conv2d_15/StatefulPartitionedCallв!conv2d_16/StatefulPartitionedCallв!conv2d_17/StatefulPartitionedCallвdense_4/StatefulPartitionedCallвdense_5/StatefulPartitionedCall╪
sequential_3/PartitionedCallPartitionedCallsequential_3_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_57470ы
sequential_4/PartitionedCallPartitionedCall%sequential_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_57743Э
!conv2d_12/StatefulPartitionedCallStatefulPartitionedCall%sequential_4/PartitionedCall:output:0conv2d_12_57997conv2d_12_57999*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ■■ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_12_layer_call_and_return_conditional_losses_57860Ў
 max_pooling2d_12/PartitionedCallPartitionedCall*conv2d_12/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_57786Я
!conv2d_13/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_12/PartitionedCall:output:0conv2d_13_58003conv2d_13_58005*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         }}@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_13_layer_call_and_return_conditional_losses_57877Ў
 max_pooling2d_13/PartitionedCallPartitionedCall*conv2d_13/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         >>@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_57796Я
!conv2d_14/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_13/PartitionedCall:output:0conv2d_14_58009conv2d_14_58011*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         <<@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_14_layer_call_and_return_conditional_losses_57894Ў
 max_pooling2d_14/PartitionedCallPartitionedCall*conv2d_14/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_57806Я
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_14/PartitionedCall:output:0conv2d_15_58015conv2d_15_58017*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_15_layer_call_and_return_conditional_losses_57911Ў
 max_pooling2d_15/PartitionedCallPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_57816Я
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_16_58021conv2d_16_58023*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_16_layer_call_and_return_conditional_losses_57928Ў
 max_pooling2d_16/PartitionedCallPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_57826Я
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_17_58027conv2d_17_58029*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_17_layer_call_and_return_conditional_losses_57945Ў
 max_pooling2d_17/PartitionedCallPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_57836р
flatten_2/PartitionedCallPartitionedCall)max_pooling2d_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_57957И
dense_4/StatefulPartitionedCallStatefulPartitionedCall"flatten_2/PartitionedCall:output:0dense_4_58034dense_4_58036*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_57969О
dense_5/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0dense_5_58039dense_5_58041*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_57985w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ╛
NoOpNoOp"^conv2d_12/StatefulPartitionedCall"^conv2d_13/StatefulPartitionedCall"^conv2d_14/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 2F
!conv2d_12/StatefulPartitionedCall!conv2d_12/StatefulPartitionedCall2F
!conv2d_13/StatefulPartitionedCall!conv2d_13/StatefulPartitionedCall2F
!conv2d_14/StatefulPartitionedCall!conv2d_14/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:e a
1
_output_shapes
:         АА
,
_user_specified_namesequential_3_input:%!

_user_specified_name57997:%!

_user_specified_name57999:%!

_user_specified_name58003:%!

_user_specified_name58005:%!

_user_specified_name58009:%!

_user_specified_name58011:%!

_user_specified_name58015:%!

_user_specified_name58017:%	!

_user_specified_name58021:%
!

_user_specified_name58023:%!

_user_specified_name58027:%!

_user_specified_name58029:%!

_user_specified_name58034:%!

_user_specified_name58036:%!

_user_specified_name58039:%!

_user_specified_name58041
║
O
"__inference__update_step_xla_56053
gradient
variable:	А@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime* 
_input_shapes
:	А@: *
	_noinline(:I E

_output_shapes
:	А@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
°
b
F__inference_rescaling_1_layer_call_and_return_conditional_losses_57461

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:         ААd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:         ААY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_57806

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╧
V
"__inference__update_step_xla_56003
gradient"
variable: @*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
: @: *
	_noinline(:P L
&
_output_shapes
: @
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
ж
╠
#__inference_signature_wrapper_58240
sequential_3_input!
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

unknown_11:	А@

unknown_12:@

unknown_13:@

unknown_14:
identityИвStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallsequential_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
:         *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__wrapped_model_57444o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:         АА: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:         АА
,
_user_specified_namesequential_3_input:%!

_user_specified_name58206:%!

_user_specified_name58208:%!

_user_specified_name58210:%!

_user_specified_name58212:%!

_user_specified_name58214:%!

_user_specified_name58216:%!

_user_specified_name58218:%!

_user_specified_name58220:%	!

_user_specified_name58222:%
!

_user_specified_name58224:%!

_user_specified_name58226:%!

_user_specified_name58228:%!

_user_specified_name58230:%!

_user_specified_name58232:%!

_user_specified_name58234:%!

_user_specified_name58236
▓
E
)__inference_flatten_2_layer_call_fn_58425

inputs
identity│
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_57957a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
═

Ї
B__inference_dense_4_layer_call_and_return_conditional_losses_58451

inputs1
matmul_readvariableop_resource:	А@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
°
b
F__inference_rescaling_1_layer_call_and_return_conditional_losses_58495

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:         ААd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:         ААY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
к	
p
G__inference_sequential_4_layer_call_and_return_conditional_losses_57743
random_flip_1_input
identity█
random_flip_1/PartitionedCallPartitionedCallrandom_flip_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_random_flip_1_layer_call_and_return_conditional_losses_57735Ў
!random_rotation_1/PartitionedCallPartitionedCall&random_flip_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_57740|
IdentityIdentity*random_rotation_1/PartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:f b
1
_output_shapes
:         АА
-
_user_specified_namerandom_flip_1_input
ь
R
,__inference_sequential_3_layer_call_fn_57475
resizing_1_input
identity╔
PartitionedCallPartitionedCallresizing_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_3_layer_call_and_return_conditional_losses_57464j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:c _
1
_output_shapes
:         АА
*
_user_specified_nameresizing_1_input
╧
V
"__inference__update_step_xla_56033
gradient"
variable:@@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*'
_input_shapes
:@@: *
	_noinline(:P L
&
_output_shapes
:@@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
╞
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_57957

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
л
J
"__inference__update_step_xla_56028
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
═

Ї
B__inference_dense_4_layer_call_and_return_conditional_losses_57969

inputs1
matmul_readvariableop_resource:	А@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         @a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
еЧ
А
H__inference_random_flip_1_layer_call_and_return_conditional_losses_57603

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identityИв(stateful_uniform_full_int/RngReadAndSkipв*stateful_uniform_full_int_1/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ы
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Б
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ┌
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskП
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╧
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:У
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :С
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ў
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskЮ
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:         ААа
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
::э╧~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: А
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:А
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskо
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:В
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    В
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?░
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::Ш
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :■
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         ї
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Т
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         √
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :╬
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:х
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:         Ь
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:         y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:ы
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         АА╚
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:         ААk
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?┬
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:         ╤
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:         АА┐
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:         ААk
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: б
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Е
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Л
*stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource+stateful_uniform_full_int_1/Cast/x:output:0&stateful_uniform_full_int_1/Cast_1:y:0)^stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:y
/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:у
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskУ
#stateful_uniform_full_int_1/BitcastBitcast2stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0{
1stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
+stateful_uniform_full_int_1/strided_slice_1StridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:0:stateful_uniform_full_int_1/strided_slice_1/stack:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ч
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Ы
stateful_uniform_full_int_1StatelessRandomUniformFullIntV2*stateful_uniform_full_int_1/shape:output:0.stateful_uniform_full_int_1/Bitcast_1:output:0,stateful_uniform_full_int_1/Bitcast:output:0(stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	V
zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ~
stack_1Pack$stateful_uniform_full_int_1:output:0zeros_like_1:output:0*
N*
T0	*
_output_shapes

:f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask█
0stateless_random_flip_up_down/control_dependencyIdentity(stateless_random_flip_left_right/add:z:0*
T0*7
_class-
+)loc:@stateless_random_flip_left_right/add*1
_output_shapes
:         ААЪ
#stateless_random_flip_up_down/ShapeShape9stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
::э╧{
1stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ч
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskи
<stateless_random_flip_up_down/stateless_random_uniform/shapePack4stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
:stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
:stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?п
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::Х
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :я
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:         ь
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Й
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:         Є
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:         o
-stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :┐
+stateless_random_flip_up_down/Reshape/shapePack4stateless_random_flip_up_down/strided_slice:output:06stateless_random_flip_up_down/Reshape/shape/1:output:06stateless_random_flip_up_down/Reshape/shape/2:output:06stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:▄
%stateless_random_flip_up_down/ReshapeReshape:stateless_random_flip_up_down/stateless_random_uniform:z:04stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:         Ц
#stateless_random_flip_up_down/RoundRound.stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:         v
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:т
'stateless_random_flip_up_down/ReverseV2	ReverseV29stateless_random_flip_up_down/control_dependency:output:05stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:         АА┐
!stateless_random_flip_up_down/mulMul'stateless_random_flip_up_down/Round:y:00stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:         ААh
#stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?╣
!stateless_random_flip_up_down/subSub,stateless_random_flip_up_down/sub/x:output:0'stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:         ╚
#stateless_random_flip_up_down/mul_1Mul%stateless_random_flip_up_down/sub:z:09stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:         АА╢
!stateless_random_flip_up_down/addAddV2%stateless_random_flip_up_down/mul:z:0'stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:         АА~
IdentityIdentity%stateless_random_flip_up_down/add:z:0^NoOp*
T0*1
_output_shapes
:         ААz
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkip*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         АА: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs:($
"
_user_specified_name
resource
л
J
"__inference__update_step_xla_56038
gradient
variable:@*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*
_input_shapes

:@: *
	_noinline(:D @

_output_shapes
:@
"
_user_specified_name
gradient:($
"
_user_specified_name
variable
Ц
d
H__inference_random_flip_1_layer_call_and_return_conditional_losses_57735

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs
Ж	
m
G__inference_sequential_3_layer_call_and_return_conditional_losses_57464
resizing_1_input
identity╥
resizing_1/PartitionedCallPartitionedCallresizing_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_resizing_1_layer_call_and_return_conditional_losses_57452ч
rescaling_1/PartitionedCallPartitionedCall#resizing_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_rescaling_1_layer_call_and_return_conditional_losses_57461v
IdentityIdentity$rescaling_1/PartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:c _
1
_output_shapes
:         АА
*
_user_specified_nameresizing_1_input
┤
¤
D__inference_conv2d_14_layer_call_and_return_conditional_losses_57894

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         <<@*
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
:         <<@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         <<@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         <<@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         >>@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         >>@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╗
L
0__inference_max_pooling2d_16_layer_call_fn_58385

inputs
identity▄
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_57826Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╨
I
-__inference_random_flip_1_layer_call_fn_58507

inputs
identity└
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_random_flip_1_layer_call_and_return_conditional_losses_57735j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:         АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         АА:Y U
1
_output_shapes
:         АА
 
_user_specified_nameinputs"эL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╩
serving_default╢
[
sequential_3_inputE
$serving_default_sequential_3_input:0         АА;
dense_50
StatefulPartitionedCall:0         tensorflow/serving/predict:┼З
Ъ
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
─
layer-0
layer-1
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_sequential
─
#layer-0
$layer-1
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_sequential
▌
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
е
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
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
е
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
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
е
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
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
е
a	variables
btrainable_variables
cregularization_losses
d	keras_api
e__call__
*f&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
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
е
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
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
к
	variables
Аtrainable_variables
Бregularization_losses
В	keras_api
Г__call__
+Д&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Е	variables
Жtrainable_variables
Зregularization_losses
И	keras_api
Й__call__
+К&call_and_return_all_conditional_losses"
_tf_keras_layer
├
Л	variables
Мtrainable_variables
Нregularization_losses
О	keras_api
П__call__
+Р&call_and_return_all_conditional_losses
Сkernel
	Тbias"
_tf_keras_layer
├
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses
Щkernel
	Ъbias"
_tf_keras_layer
Ъ
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
С12
Т13
Щ14
Ъ15"
trackable_list_wrapper
Ъ
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
С12
Т13
Щ14
Ъ15"
trackable_list_wrapper
 "
trackable_list_wrapper
╧
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╧
аtrace_0
бtrace_12Ф
,__inference_sequential_6_layer_call_fn_58086
,__inference_sequential_6_layer_call_fn_58123╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zаtrace_0zбtrace_1
Е
вtrace_0
гtrace_12╩
G__inference_sequential_6_layer_call_and_return_conditional_losses_57992
G__inference_sequential_6_layer_call_and_return_conditional_losses_58045╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zвtrace_0zгtrace_1
╓B╙
 __inference__wrapped_model_57444sequential_3_input"Ш
С▓Н
FullArgSpec
argsЪ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
г
д
_variables
е_iterations
ж_learning_rate
з_index_dict
и
_momentums
й_velocities
к_update_step_xla"
experimentalOptimizer
-
лserving_default"
signature_map
л
м	variables
нtrainable_variables
оregularization_losses
п	keras_api
░__call__
+▒&call_and_return_all_conditional_losses"
_tf_keras_layer
л
▓	variables
│trainable_variables
┤regularization_losses
╡	keras_api
╢__call__
+╖&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╕non_trainable_variables
╣layers
║metrics
 ╗layer_regularization_losses
╝layer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
╧
╜trace_0
╛trace_12Ф
,__inference_sequential_3_layer_call_fn_57475
,__inference_sequential_3_layer_call_fn_57480╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╜trace_0z╛trace_1
Е
┐trace_0
└trace_12╩
G__inference_sequential_3_layer_call_and_return_conditional_losses_57464
G__inference_sequential_3_layer_call_and_return_conditional_losses_57470╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┐trace_0z└trace_1
├
┴	variables
┬trainable_variables
├regularization_losses
─	keras_api
┼__call__
+╞&call_and_return_all_conditional_losses
╟_random_generator"
_tf_keras_layer
├
╚	variables
╔trainable_variables
╩regularization_losses
╦	keras_api
╠__call__
+═&call_and_return_all_conditional_losses
╬_random_generator"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╧non_trainable_variables
╨layers
╤metrics
 ╥layer_regularization_losses
╙layer_metrics
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
╧
╘trace_0
╒trace_12Ф
,__inference_sequential_4_layer_call_fn_57752
,__inference_sequential_4_layer_call_fn_57757╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╘trace_0z╒trace_1
Е
╓trace_0
╫trace_12╩
G__inference_sequential_4_layer_call_and_return_conditional_losses_57729
G__inference_sequential_4_layer_call_and_return_conditional_losses_57743╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╓trace_0z╫trace_1
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
▓
╪non_trainable_variables
┘layers
┌metrics
 █layer_regularization_losses
▄layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
х
▌trace_02╞
)__inference_conv2d_12_layer_call_fn_58249Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▌trace_0
А
▐trace_02с
D__inference_conv2d_12_layer_call_and_return_conditional_losses_58260Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▐trace_0
*:( 2conv2d_12/kernel
: 2conv2d_12/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
▀non_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
ь
фtrace_02═
0__inference_max_pooling2d_12_layer_call_fn_58265Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zфtrace_0
З
хtrace_02ш
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_58270Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zхtrace_0
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
▓
цnon_trainable_variables
чlayers
шmetrics
 щlayer_regularization_losses
ъlayer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
х
ыtrace_02╞
)__inference_conv2d_13_layer_call_fn_58279Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zыtrace_0
А
ьtrace_02с
D__inference_conv2d_13_layer_call_and_return_conditional_losses_58290Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zьtrace_0
*:( @2conv2d_13/kernel
:@2conv2d_13/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
эnon_trainable_variables
юlayers
яmetrics
 Ёlayer_regularization_losses
ёlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
ь
Єtrace_02═
0__inference_max_pooling2d_13_layer_call_fn_58295Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЄtrace_0
З
єtrace_02ш
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_58300Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zєtrace_0
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
▓
Їnon_trainable_variables
їlayers
Ўmetrics
 ўlayer_regularization_losses
°layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
х
∙trace_02╞
)__inference_conv2d_14_layer_call_fn_58309Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z∙trace_0
А
·trace_02с
D__inference_conv2d_14_layer_call_and_return_conditional_losses_58320Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z·trace_0
*:(@@2conv2d_14/kernel
:@2conv2d_14/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
√non_trainable_variables
№layers
¤metrics
 ■layer_regularization_losses
 layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
ь
Аtrace_02═
0__inference_max_pooling2d_14_layer_call_fn_58325Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zАtrace_0
З
Бtrace_02ш
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_58330Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zБtrace_0
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
▓
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
х
Зtrace_02╞
)__inference_conv2d_15_layer_call_fn_58339Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЗtrace_0
А
Иtrace_02с
D__inference_conv2d_15_layer_call_and_return_conditional_losses_58350Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zИtrace_0
*:(@@2conv2d_15/kernel
:@2conv2d_15/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
a	variables
btrainable_variables
cregularization_losses
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
ь
Оtrace_02═
0__inference_max_pooling2d_15_layer_call_fn_58355Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zОtrace_0
З
Пtrace_02ш
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_58360Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zПtrace_0
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
▓
Рnon_trainable_variables
Сlayers
Тmetrics
 Уlayer_regularization_losses
Фlayer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
х
Хtrace_02╞
)__inference_conv2d_16_layer_call_fn_58369Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zХtrace_0
А
Цtrace_02с
D__inference_conv2d_16_layer_call_and_return_conditional_losses_58380Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЦtrace_0
*:(@@2conv2d_16/kernel
:@2conv2d_16/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
ь
Ьtrace_02═
0__inference_max_pooling2d_16_layer_call_fn_58385Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЬtrace_0
З
Эtrace_02ш
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_58390Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЭtrace_0
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
▓
Юnon_trainable_variables
Яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
х
гtrace_02╞
)__inference_conv2d_17_layer_call_fn_58399Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zгtrace_0
А
дtrace_02с
D__inference_conv2d_17_layer_call_and_return_conditional_losses_58410Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zдtrace_0
*:(@@2conv2d_17/kernel
:@2conv2d_17/bias
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╖
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
	variables
Аtrainable_variables
Бregularization_losses
Г__call__
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses"
_generic_user_object
ь
кtrace_02═
0__inference_max_pooling2d_17_layer_call_fn_58415Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zкtrace_0
З
лtrace_02ш
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_58420Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zлtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
░layer_metrics
Е	variables
Жtrainable_variables
Зregularization_losses
Й__call__
+К&call_and_return_all_conditional_losses
'К"call_and_return_conditional_losses"
_generic_user_object
х
▒trace_02╞
)__inference_flatten_2_layer_call_fn_58425Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▒trace_0
А
▓trace_02с
D__inference_flatten_2_layer_call_and_return_conditional_losses_58431Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▓trace_0
0
С0
Т1"
trackable_list_wrapper
0
С0
Т1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
│non_trainable_variables
┤layers
╡metrics
 ╢layer_regularization_losses
╖layer_metrics
Л	variables
Мtrainable_variables
Нregularization_losses
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses"
_generic_user_object
у
╕trace_02─
'__inference_dense_4_layer_call_fn_58440Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╕trace_0
■
╣trace_02▀
B__inference_dense_4_layer_call_and_return_conditional_losses_58451Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╣trace_0
!:	А@2dense_4/kernel
:@2dense_4/bias
0
Щ0
Ъ1"
trackable_list_wrapper
0
Щ0
Ъ1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
║non_trainable_variables
╗layers
╝metrics
 ╜layer_regularization_losses
╛layer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
у
┐trace_02─
'__inference_dense_5_layer_call_fn_58460Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┐trace_0
■
└trace_02▀
B__inference_dense_5_layer_call_and_return_conditional_losses_58471Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z└trace_0
 :@2dense_5/kernel
:2dense_5/bias
 "
trackable_list_wrapper
Ю
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
┴0
┬1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЎBє
,__inference_sequential_6_layer_call_fn_58086sequential_3_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЎBє
,__inference_sequential_6_layer_call_fn_58123sequential_3_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
СBО
G__inference_sequential_6_layer_call_and_return_conditional_losses_57992sequential_3_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
СBО
G__inference_sequential_6_layer_call_and_return_conditional_losses_58045sequential_3_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
┐
е0
├1
─2
┼3
╞4
╟5
╚6
╔7
╩8
╦9
╠10
═11
╬12
╧13
╨14
╤15
╥16
╙17
╘18
╒19
╓20
╫21
╪22
┘23
┌24
█25
▄26
▌27
▐28
▀29
р30
с31
т32"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
ж
├0
┼1
╟2
╔3
╦4
═5
╧6
╤7
╙8
╒9
╫10
┘11
█12
▌13
▀14
с15"
trackable_list_wrapper
ж
─0
╞1
╚2
╩3
╠4
╬5
╨6
╥7
╘8
╓9
╪10
┌11
▄12
▐13
р14
т15"
trackable_list_wrapper
┴	
уtrace_0
фtrace_1
хtrace_2
цtrace_3
чtrace_4
шtrace_5
щtrace_6
ъtrace_7
ыtrace_8
ьtrace_9
эtrace_10
юtrace_11
яtrace_12
Ёtrace_13
ёtrace_14
Єtrace_152Є
"__inference__update_step_xla_55993
"__inference__update_step_xla_55998
"__inference__update_step_xla_56003
"__inference__update_step_xla_56008
"__inference__update_step_xla_56013
"__inference__update_step_xla_56018
"__inference__update_step_xla_56023
"__inference__update_step_xla_56028
"__inference__update_step_xla_56033
"__inference__update_step_xla_56038
"__inference__update_step_xla_56043
"__inference__update_step_xla_56048
"__inference__update_step_xla_56053
"__inference__update_step_xla_56058
"__inference__update_step_xla_56063
"__inference__update_step_xla_56068п
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0zуtrace_0zфtrace_1zхtrace_2zцtrace_3zчtrace_4zшtrace_5zщtrace_6zъtrace_7zыtrace_8zьtrace_9zэtrace_10zюtrace_11zяtrace_12zЁtrace_13zёtrace_14zЄtrace_15
хBт
#__inference_signature_wrapper_58240sequential_3_input"д
Э▓Щ
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 '

kwonlyargsЪ
jsequential_3_input
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
єnon_trainable_variables
Їlayers
їmetrics
 Ўlayer_regularization_losses
ўlayer_metrics
м	variables
нtrainable_variables
оregularization_losses
░__call__
+▒&call_and_return_all_conditional_losses
'▒"call_and_return_conditional_losses"
_generic_user_object
ц
°trace_02╟
*__inference_resizing_1_layer_call_fn_58476Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z°trace_0
Б
∙trace_02т
E__inference_resizing_1_layer_call_and_return_conditional_losses_58482Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z∙trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
·non_trainable_variables
√layers
№metrics
 ¤layer_regularization_losses
■layer_metrics
▓	variables
│trainable_variables
┤regularization_losses
╢__call__
+╖&call_and_return_all_conditional_losses
'╖"call_and_return_conditional_losses"
_generic_user_object
ч
 trace_02╚
+__inference_rescaling_1_layer_call_fn_58487Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z trace_0
В
Аtrace_02у
F__inference_rescaling_1_layer_call_and_return_conditional_losses_58495Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zАtrace_0
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
ЇBё
,__inference_sequential_3_layer_call_fn_57475resizing_1_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЇBё
,__inference_sequential_3_layer_call_fn_57480resizing_1_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ПBМ
G__inference_sequential_3_layer_call_and_return_conditional_losses_57464resizing_1_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ПBМ
G__inference_sequential_3_layer_call_and_return_conditional_losses_57470resizing_1_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
┴	variables
┬trainable_variables
├regularization_losses
┼__call__
+╞&call_and_return_all_conditional_losses
'╞"call_and_return_conditional_losses"
_generic_user_object
┼
Жtrace_0
Зtrace_12К
-__inference_random_flip_1_layer_call_fn_58502
-__inference_random_flip_1_layer_call_fn_58507й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЖtrace_0zЗtrace_1
√
Иtrace_0
Йtrace_12└
H__inference_random_flip_1_layer_call_and_return_conditional_losses_58618
H__inference_random_flip_1_layer_call_and_return_conditional_losses_58622й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zИtrace_0zЙtrace_1
/
К
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
╚	variables
╔trainable_variables
╩regularization_losses
╠__call__
+═&call_and_return_all_conditional_losses
'═"call_and_return_conditional_losses"
_generic_user_object
═
Рtrace_0
Сtrace_12Т
1__inference_random_rotation_1_layer_call_fn_58629
1__inference_random_rotation_1_layer_call_fn_58634й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zРtrace_0zСtrace_1
Г
Тtrace_0
Уtrace_12╚
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_58752
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_58756й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zТtrace_0zУtrace_1
/
Ф
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
ўBЇ
,__inference_sequential_4_layer_call_fn_57752random_flip_1_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
,__inference_sequential_4_layer_call_fn_57757random_flip_1_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ТBП
G__inference_sequential_4_layer_call_and_return_conditional_losses_57729random_flip_1_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ТBП
G__inference_sequential_4_layer_call_and_return_conditional_losses_57743random_flip_1_input"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╙B╨
)__inference_conv2d_12_layer_call_fn_58249inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_conv2d_12_layer_call_and_return_conditional_losses_58260inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
┌B╫
0__inference_max_pooling2d_12_layer_call_fn_58265inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_58270inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╙B╨
)__inference_conv2d_13_layer_call_fn_58279inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_conv2d_13_layer_call_and_return_conditional_losses_58290inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
┌B╫
0__inference_max_pooling2d_13_layer_call_fn_58295inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_58300inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╙B╨
)__inference_conv2d_14_layer_call_fn_58309inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_conv2d_14_layer_call_and_return_conditional_losses_58320inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
┌B╫
0__inference_max_pooling2d_14_layer_call_fn_58325inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_58330inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╙B╨
)__inference_conv2d_15_layer_call_fn_58339inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_conv2d_15_layer_call_and_return_conditional_losses_58350inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
┌B╫
0__inference_max_pooling2d_15_layer_call_fn_58355inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_58360inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╙B╨
)__inference_conv2d_16_layer_call_fn_58369inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_conv2d_16_layer_call_and_return_conditional_losses_58380inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
┌B╫
0__inference_max_pooling2d_16_layer_call_fn_58385inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_58390inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╙B╨
)__inference_conv2d_17_layer_call_fn_58399inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_conv2d_17_layer_call_and_return_conditional_losses_58410inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
┌B╫
0__inference_max_pooling2d_17_layer_call_fn_58415inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_58420inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╙B╨
)__inference_flatten_2_layer_call_fn_58425inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_flatten_2_layer_call_and_return_conditional_losses_58431inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╤B╬
'__inference_dense_4_layer_call_fn_58440inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_dense_4_layer_call_and_return_conditional_losses_58451inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╤B╬
'__inference_dense_5_layer_call_fn_58460inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_dense_5_layer_call_and_return_conditional_losses_58471inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
R
Х	variables
Ц	keras_api

Чtotal

Шcount"
_tf_keras_metric
c
Щ	variables
Ъ	keras_api

Ыtotal

Ьcount
Э
_fn_kwargs"
_tf_keras_metric
/:- 2Adam/m/conv2d_12/kernel
/:- 2Adam/v/conv2d_12/kernel
!: 2Adam/m/conv2d_12/bias
!: 2Adam/v/conv2d_12/bias
/:- @2Adam/m/conv2d_13/kernel
/:- @2Adam/v/conv2d_13/kernel
!:@2Adam/m/conv2d_13/bias
!:@2Adam/v/conv2d_13/bias
/:-@@2Adam/m/conv2d_14/kernel
/:-@@2Adam/v/conv2d_14/kernel
!:@2Adam/m/conv2d_14/bias
!:@2Adam/v/conv2d_14/bias
/:-@@2Adam/m/conv2d_15/kernel
/:-@@2Adam/v/conv2d_15/kernel
!:@2Adam/m/conv2d_15/bias
!:@2Adam/v/conv2d_15/bias
/:-@@2Adam/m/conv2d_16/kernel
/:-@@2Adam/v/conv2d_16/kernel
!:@2Adam/m/conv2d_16/bias
!:@2Adam/v/conv2d_16/bias
/:-@@2Adam/m/conv2d_17/kernel
/:-@@2Adam/v/conv2d_17/kernel
!:@2Adam/m/conv2d_17/bias
!:@2Adam/v/conv2d_17/bias
&:$	А@2Adam/m/dense_4/kernel
&:$	А@2Adam/v/dense_4/kernel
:@2Adam/m/dense_4/bias
:@2Adam/v/dense_4/bias
%:#@2Adam/m/dense_5/kernel
%:#@2Adam/v/dense_5/kernel
:2Adam/m/dense_5/bias
:2Adam/v/dense_5/bias
эBъ
"__inference__update_step_xla_55993gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_55998gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_56003gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_56008gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_56013gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_56018gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_56023gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_56028gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_56033gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_56038gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_56043gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_56048gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_56053gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_56058gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_56063gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
"__inference__update_step_xla_56068gradientvariable"н
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╘B╤
*__inference_resizing_1_layer_call_fn_58476inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
E__inference_resizing_1_layer_call_and_return_conditional_losses_58482inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
╒B╥
+__inference_rescaling_1_layer_call_fn_58487inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЁBэ
F__inference_rescaling_1_layer_call_and_return_conditional_losses_58495inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
уBр
-__inference_random_flip_1_layer_call_fn_58502inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
уBр
-__inference_random_flip_1_layer_call_fn_58507inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
H__inference_random_flip_1_layer_call_and_return_conditional_losses_58618inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
H__inference_random_flip_1_layer_call_and_return_conditional_losses_58622inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
/
Ю
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
чBф
1__inference_random_rotation_1_layer_call_fn_58629inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
чBф
1__inference_random_rotation_1_layer_call_fn_58634inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ВB 
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_58752inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ВB 
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_58756inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
/
Я
_state_var"
_generic_user_object
0
Ч0
Ш1"
trackable_list_wrapper
.
Х	variables"
_generic_user_object
:  (2total
:  (2count
0
Ы0
Ь1"
trackable_list_wrapper
.
Щ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
": 	2random_flip_1/StateVar
&:$	2random_rotation_1/StateVarд
"__inference__update_step_xla_55993~xвu
nвk
!К
gradient 
<Т9	%в"
· 
А
p
` VariableSpec 
`р╚ўтїЙ?
к "
 М
"__inference__update_step_xla_55998f`в]
VвS
К
gradient 
0Т-	в
· 
А
p
` VariableSpec 
`р├ўтїЙ?
к "
 д
"__inference__update_step_xla_56003~xвu
nвk
!К
gradient @
<Т9	%в"
· @
А
p
` VariableSpec 
`аТФїЇЙ?
к "
 М
"__inference__update_step_xla_56008f`в]
VвS
К
gradient@
0Т-	в
·@
А
p
` VariableSpec 
`АСФїЇЙ?
к "
 д
"__inference__update_step_xla_56013~xвu
nвk
!К
gradient@@
<Т9	%в"
·@@
А
p
` VariableSpec 
`АкФїЇЙ?
к "
 М
"__inference__update_step_xla_56018f`в]
VвS
К
gradient@
0Т-	в
·@
А
p
` VariableSpec 
`риФїЇЙ?
к "
 д
"__inference__update_step_xla_56023~xвu
nвk
!К
gradient@@
<Т9	%в"
·@@
А
p
` VariableSpec 
`аёФїЇЙ?
к "
 М
"__inference__update_step_xla_56028f`в]
VвS
К
gradient@
0Т-	в
·@
А
p
` VariableSpec 
`АЁФїЇЙ?
к "
 д
"__inference__update_step_xla_56033~xвu
nвk
!К
gradient@@
<Т9	%в"
·@@
А
p
` VariableSpec 
`└№ФїЇЙ?
к "
 М
"__inference__update_step_xla_56038f`в]
VвS
К
gradient@
0Т-	в
·@
А
p
` VariableSpec 
`└ЛХїЇЙ?
к "
 д
"__inference__update_step_xla_56043~xвu
nвk
!К
gradient@@
<Т9	%в"
·@@
А
p
` VariableSpec 
`└ЯХїЇЙ?
к "
 М
"__inference__update_step_xla_56048f`в]
VвS
К
gradient@
0Т-	в
·@
А
p
` VariableSpec 
`аЮХїЇЙ?
к "
 Ц
"__inference__update_step_xla_56053pjвg
`в]
К
gradient	А@
5Т2	в
·	А@
А
p
` VariableSpec 
`АуўтїЙ?
к "
 М
"__inference__update_step_xla_56058f`в]
VвS
К
gradient@
0Т-	в
·@
А
p
` VariableSpec 
`а╦ўтїЙ?
к "
 Ф
"__inference__update_step_xla_56063nhвe
^в[
К
gradient@
4Т1	в
·@
А
p
` VariableSpec 
`└ЯўтїЙ?
к "
 М
"__inference__update_step_xla_56068f`в]
VвS
К
gradient
0Т-	в
·
А
p
` VariableSpec 
`└ЪўтїЙ?
к "
 ╡
 __inference__wrapped_model_57444Р12@AOP^_mn|}СТЩЪEвB
;в8
6К3
sequential_3_input         АА
к "1к.
,
dense_5!К
dense_5         ┐
D__inference_conv2d_12_layer_call_and_return_conditional_losses_58260w129в6
/в,
*К'
inputs         АА
к "6в3
,К)
tensor_0         ■■ 
Ъ Щ
)__inference_conv2d_12_layer_call_fn_58249l129в6
/в,
*К'
inputs         АА
к "+К(
unknown         ■■ ╗
D__inference_conv2d_13_layer_call_and_return_conditional_losses_58290s@A7в4
-в*
(К%
inputs          
к "4в1
*К'
tensor_0         }}@
Ъ Х
)__inference_conv2d_13_layer_call_fn_58279h@A7в4
-в*
(К%
inputs          
к ")К&
unknown         }}@╗
D__inference_conv2d_14_layer_call_and_return_conditional_losses_58320sOP7в4
-в*
(К%
inputs         >>@
к "4в1
*К'
tensor_0         <<@
Ъ Х
)__inference_conv2d_14_layer_call_fn_58309hOP7в4
-в*
(К%
inputs         >>@
к ")К&
unknown         <<@╗
D__inference_conv2d_15_layer_call_and_return_conditional_losses_58350s^_7в4
-в*
(К%
inputs         @
к "4в1
*К'
tensor_0         @
Ъ Х
)__inference_conv2d_15_layer_call_fn_58339h^_7в4
-в*
(К%
inputs         @
к ")К&
unknown         @╗
D__inference_conv2d_16_layer_call_and_return_conditional_losses_58380smn7в4
-в*
(К%
inputs         @
к "4в1
*К'
tensor_0         @
Ъ Х
)__inference_conv2d_16_layer_call_fn_58369hmn7в4
-в*
(К%
inputs         @
к ")К&
unknown         @╗
D__inference_conv2d_17_layer_call_and_return_conditional_losses_58410s|}7в4
-в*
(К%
inputs         @
к "4в1
*К'
tensor_0         @
Ъ Х
)__inference_conv2d_17_layer_call_fn_58399h|}7в4
-в*
(К%
inputs         @
к ")К&
unknown         @м
B__inference_dense_4_layer_call_and_return_conditional_losses_58451fСТ0в-
&в#
!К
inputs         А
к ",в)
"К
tensor_0         @
Ъ Ж
'__inference_dense_4_layer_call_fn_58440[СТ0в-
&в#
!К
inputs         А
к "!К
unknown         @л
B__inference_dense_5_layer_call_and_return_conditional_losses_58471eЩЪ/в,
%в"
 К
inputs         @
к ",в)
"К
tensor_0         
Ъ Е
'__inference_dense_5_layer_call_fn_58460ZЩЪ/в,
%в"
 К
inputs         @
к "!К
unknown         ░
D__inference_flatten_2_layer_call_and_return_conditional_losses_58431h7в4
-в*
(К%
inputs         @
к "-в*
#К 
tensor_0         А
Ъ К
)__inference_flatten_2_layer_call_fn_58425]7в4
-в*
(К%
inputs         @
к ""К
unknown         Аї
K__inference_max_pooling2d_12_layer_call_and_return_conditional_losses_58270еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_12_layer_call_fn_58265ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ї
K__inference_max_pooling2d_13_layer_call_and_return_conditional_losses_58300еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_13_layer_call_fn_58295ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ї
K__inference_max_pooling2d_14_layer_call_and_return_conditional_losses_58330еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_14_layer_call_fn_58325ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ї
K__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_58360еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_15_layer_call_fn_58355ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ї
K__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_58390еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_16_layer_call_fn_58385ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ї
K__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_58420еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╧
0__inference_max_pooling2d_17_layer_call_fn_58415ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ╟
H__inference_random_flip_1_layer_call_and_return_conditional_losses_58618{Ю=в:
3в0
*К'
inputs         АА
p
к "6в3
,К)
tensor_0         АА
Ъ ├
H__inference_random_flip_1_layer_call_and_return_conditional_losses_58622w=в:
3в0
*К'
inputs         АА
p 
к "6в3
,К)
tensor_0         АА
Ъ б
-__inference_random_flip_1_layer_call_fn_58502pЮ=в:
3в0
*К'
inputs         АА
p
к "+К(
unknown         ААЭ
-__inference_random_flip_1_layer_call_fn_58507l=в:
3в0
*К'
inputs         АА
p 
к "+К(
unknown         АА╦
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_58752{Я=в:
3в0
*К'
inputs         АА
p
к "6в3
,К)
tensor_0         АА
Ъ ╟
L__inference_random_rotation_1_layer_call_and_return_conditional_losses_58756w=в:
3в0
*К'
inputs         АА
p 
к "6в3
,К)
tensor_0         АА
Ъ е
1__inference_random_rotation_1_layer_call_fn_58629pЯ=в:
3в0
*К'
inputs         АА
p
к "+К(
unknown         ААб
1__inference_random_rotation_1_layer_call_fn_58634l=в:
3в0
*К'
inputs         АА
p 
к "+К(
unknown         АА╜
F__inference_rescaling_1_layer_call_and_return_conditional_losses_58495s9в6
/в,
*К'
inputs         АА
к "6в3
,К)
tensor_0         АА
Ъ Ч
+__inference_rescaling_1_layer_call_fn_58487h9в6
/в,
*К'
inputs         АА
к "+К(
unknown         АА╝
E__inference_resizing_1_layer_call_and_return_conditional_losses_58482s9в6
/в,
*К'
inputs         АА
к "6в3
,К)
tensor_0         АА
Ъ Ц
*__inference_resizing_1_layer_call_fn_58476h9в6
/в,
*К'
inputs         АА
к "+К(
unknown         АА╤
G__inference_sequential_3_layer_call_and_return_conditional_losses_57464ЕKвH
Aв>
4К1
resizing_1_input         АА
p

 
к "6в3
,К)
tensor_0         АА
Ъ ╤
G__inference_sequential_3_layer_call_and_return_conditional_losses_57470ЕKвH
Aв>
4К1
resizing_1_input         АА
p 

 
к "6в3
,К)
tensor_0         АА
Ъ к
,__inference_sequential_3_layer_call_fn_57475zKвH
Aв>
4К1
resizing_1_input         АА
p

 
к "+К(
unknown         ААк
,__inference_sequential_3_layer_call_fn_57480zKвH
Aв>
4К1
resizing_1_input         АА
p 

 
к "+К(
unknown         АА┌
G__inference_sequential_4_layer_call_and_return_conditional_losses_57729ОЮЯNвK
DвA
7К4
random_flip_1_input         АА
p

 
к "6в3
,К)
tensor_0         АА
Ъ ╘
G__inference_sequential_4_layer_call_and_return_conditional_losses_57743ИNвK
DвA
7К4
random_flip_1_input         АА
p 

 
к "6в3
,К)
tensor_0         АА
Ъ ┤
,__inference_sequential_4_layer_call_fn_57752ГЮЯNвK
DвA
7К4
random_flip_1_input         АА
p

 
к "+К(
unknown         ААн
,__inference_sequential_4_layer_call_fn_57757}NвK
DвA
7К4
random_flip_1_input         АА
p 

 
к "+К(
unknown         ААу
G__inference_sequential_6_layer_call_and_return_conditional_losses_57992ЧЮЯ12@AOP^_mn|}СТЩЪMвJ
Cв@
6К3
sequential_3_input         АА
p

 
к ",в)
"К
tensor_0         
Ъ ▀
G__inference_sequential_6_layer_call_and_return_conditional_losses_58045У12@AOP^_mn|}СТЩЪMвJ
Cв@
6К3
sequential_3_input         АА
p 

 
к ",в)
"К
tensor_0         
Ъ ╜
,__inference_sequential_6_layer_call_fn_58086МЮЯ12@AOP^_mn|}СТЩЪMвJ
Cв@
6К3
sequential_3_input         АА
p

 
к "!К
unknown         ╣
,__inference_sequential_6_layer_call_fn_58123И12@AOP^_mn|}СТЩЪMвJ
Cв@
6К3
sequential_3_input         АА
p 

 
к "!К
unknown         ╬
#__inference_signature_wrapper_58240ж12@AOP^_mn|}СТЩЪ[вX
в 
QкN
L
sequential_3_input6К3
sequential_3_input         АА"1к.
,
dense_5!К
dense_5         