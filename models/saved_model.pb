£х;
ЅЩ
:
Add
x"T
y"T
z"T"
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
Ь
ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"
output_typetype0	:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetypeИ
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
Ѕ
	AvgPool3D

input"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"
Ttype:
2
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
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
÷
Conv3D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"!
	dilations	list(int)	

8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
k
Equal
x"T
y"T
z
""
Ttype:
2	
"$
incompatible_shape_errorbool(Р
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
,
Log
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
ј
	MaxPool3D

input"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"
Ttype:
2
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
:
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
0
Neg
x"T
y"T"
Ttype:
2
	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0И
.
Rsqrt
x"T
y"T"
Ttype:

2
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
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
;
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
9
VarIsInitializedOp
resource
is_initialized
И"serve*2.3.12v2.3.0-54-gfcc4b966f1±¶6
Ж
input_1Placeholder*5
_output_shapes#
!:€€€€€€€€€ аа*
dtype0**
shape!:€€€€€€€€€ аа
≈
:Conv3d_1a_7x7_conv/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@Conv3d_1a_7x7_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            @   
Ђ
8Conv3d_1a_7x7_conv/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@Conv3d_1a_7x7_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *^ДЉ
Ђ
8Conv3d_1a_7x7_conv/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@Conv3d_1a_7x7_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *^Д<
Ш
BConv3d_1a_7x7_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform:Conv3d_1a_7x7_conv/kernel/Initializer/random_uniform/shape*
T0*,
_class"
 loc:@Conv3d_1a_7x7_conv/kernel**
_output_shapes
:@*
dtype0*

seed *
seed2 
В
8Conv3d_1a_7x7_conv/kernel/Initializer/random_uniform/subSub8Conv3d_1a_7x7_conv/kernel/Initializer/random_uniform/max8Conv3d_1a_7x7_conv/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@Conv3d_1a_7x7_conv/kernel*
_output_shapes
: 
†
8Conv3d_1a_7x7_conv/kernel/Initializer/random_uniform/mulMulBConv3d_1a_7x7_conv/kernel/Initializer/random_uniform/RandomUniform8Conv3d_1a_7x7_conv/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@Conv3d_1a_7x7_conv/kernel**
_output_shapes
:@
Т
4Conv3d_1a_7x7_conv/kernel/Initializer/random_uniformAdd8Conv3d_1a_7x7_conv/kernel/Initializer/random_uniform/mul8Conv3d_1a_7x7_conv/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@Conv3d_1a_7x7_conv/kernel**
_output_shapes
:@
р
Conv3d_1a_7x7_conv/kernelVarHandleOp*,
_class"
 loc:@Conv3d_1a_7x7_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@**
shared_nameConv3d_1a_7x7_conv/kernel
Г
:Conv3d_1a_7x7_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_1a_7x7_conv/kernel*
_output_shapes
: 
Т
 Conv3d_1a_7x7_conv/kernel/AssignAssignVariableOpConv3d_1a_7x7_conv/kernel4Conv3d_1a_7x7_conv/kernel/Initializer/random_uniform*
dtype0
У
-Conv3d_1a_7x7_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_1a_7x7_conv/kernel**
_output_shapes
:@*
dtype0
О
(Conv3d_1a_7x7_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_1a_7x7_conv/kernel**
_output_shapes
:@*
dtype0
н
Conv3d_1a_7x7_conv/Conv3DConv3Dinput_1(Conv3d_1a_7x7_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€pp@*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ю
'Conv3d_1a_7x7_bn/beta/Initializer/zerosConst*(
_class
loc:@Conv3d_1a_7x7_bn/beta*
_output_shapes
:@*
dtype0*
valueB@*    
‘
Conv3d_1a_7x7_bn/betaVarHandleOp*(
_class
loc:@Conv3d_1a_7x7_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*&
shared_nameConv3d_1a_7x7_bn/beta
{
6Conv3d_1a_7x7_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_1a_7x7_bn/beta*
_output_shapes
: 
}
Conv3d_1a_7x7_bn/beta/AssignAssignVariableOpConv3d_1a_7x7_bn/beta'Conv3d_1a_7x7_bn/beta/Initializer/zeros*
dtype0
{
)Conv3d_1a_7x7_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_1a_7x7_bn/beta*
_output_shapes
:@*
dtype0
ђ
.Conv3d_1a_7x7_bn/moving_mean/Initializer/zerosConst*/
_class%
#!loc:@Conv3d_1a_7x7_bn/moving_mean*
_output_shapes
:@*
dtype0*
valueB@*    
й
Conv3d_1a_7x7_bn/moving_meanVarHandleOp*/
_class%
#!loc:@Conv3d_1a_7x7_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*-
shared_nameConv3d_1a_7x7_bn/moving_mean
Й
=Conv3d_1a_7x7_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_1a_7x7_bn/moving_mean*
_output_shapes
: 
Т
#Conv3d_1a_7x7_bn/moving_mean/AssignAssignVariableOpConv3d_1a_7x7_bn/moving_mean.Conv3d_1a_7x7_bn/moving_mean/Initializer/zeros*
dtype0
Й
0Conv3d_1a_7x7_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_1a_7x7_bn/moving_mean*
_output_shapes
:@*
dtype0
≥
1Conv3d_1a_7x7_bn/moving_variance/Initializer/onesConst*3
_class)
'%loc:@Conv3d_1a_7x7_bn/moving_variance*
_output_shapes
:@*
dtype0*
valueB@*  А?
х
 Conv3d_1a_7x7_bn/moving_varianceVarHandleOp*3
_class)
'%loc:@Conv3d_1a_7x7_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*1
shared_name" Conv3d_1a_7x7_bn/moving_variance
С
AConv3d_1a_7x7_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp Conv3d_1a_7x7_bn/moving_variance*
_output_shapes
: 
Э
'Conv3d_1a_7x7_bn/moving_variance/AssignAssignVariableOp Conv3d_1a_7x7_bn/moving_variance1Conv3d_1a_7x7_bn/moving_variance/Initializer/ones*
dtype0
С
4Conv3d_1a_7x7_bn/moving_variance/Read/ReadVariableOpReadVariableOp Conv3d_1a_7x7_bn/moving_variance*
_output_shapes
:@*
dtype0
Ж
)Conv3d_1a_7x7_bn/batchnorm/ReadVariableOpReadVariableOp Conv3d_1a_7x7_bn/moving_variance*
_output_shapes
:@*
dtype0
e
 Conv3d_1a_7x7_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Щ
Conv3d_1a_7x7_bn/batchnorm/addAddV2)Conv3d_1a_7x7_bn/batchnorm/ReadVariableOp Conv3d_1a_7x7_bn/batchnorm/add/y*
T0*
_output_shapes
:@
n
 Conv3d_1a_7x7_bn/batchnorm/RsqrtRsqrtConv3d_1a_7x7_bn/batchnorm/add*
T0*
_output_shapes
:@
†
Conv3d_1a_7x7_bn/batchnorm/mulMulConv3d_1a_7x7_conv/Conv3D Conv3d_1a_7x7_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€pp@
Д
+Conv3d_1a_7x7_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_1a_7x7_bn/moving_mean*
_output_shapes
:@*
dtype0
Ы
 Conv3d_1a_7x7_bn/batchnorm/mul_1Mul+Conv3d_1a_7x7_bn/batchnorm/ReadVariableOp_1 Conv3d_1a_7x7_bn/batchnorm/Rsqrt*
T0*
_output_shapes
:@
}
+Conv3d_1a_7x7_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_1a_7x7_bn/beta*
_output_shapes
:@*
dtype0
Щ
Conv3d_1a_7x7_bn/batchnorm/subSub+Conv3d_1a_7x7_bn/batchnorm/ReadVariableOp_2 Conv3d_1a_7x7_bn/batchnorm/mul_1*
T0*
_output_shapes
:@
І
 Conv3d_1a_7x7_bn/batchnorm/add_1AddV2Conv3d_1a_7x7_bn/batchnorm/mulConv3d_1a_7x7_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€pp@
z
Conv3d_1a_7x7/ReluRelu Conv3d_1a_7x7_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€pp@
ќ
MaxPool2d_2a_3x3/MaxPool3D	MaxPool3DConv3d_1a_7x7/Relu*
T0*3
_output_shapes!
:€€€€€€€€€88@*
data_formatNDHWC*
ksize	
*
paddingSAME*
strides	

≈
:Conv3d_2b_1x1_conv/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@Conv3d_2b_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         @   @   
Ђ
8Conv3d_2b_1x1_conv/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@Conv3d_2b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *„≥]Њ
Ђ
8Conv3d_2b_1x1_conv/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@Conv3d_2b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *„≥]>
Ш
BConv3d_2b_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform:Conv3d_2b_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*,
_class"
 loc:@Conv3d_2b_1x1_conv/kernel**
_output_shapes
:@@*
dtype0*

seed *
seed2 
В
8Conv3d_2b_1x1_conv/kernel/Initializer/random_uniform/subSub8Conv3d_2b_1x1_conv/kernel/Initializer/random_uniform/max8Conv3d_2b_1x1_conv/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@Conv3d_2b_1x1_conv/kernel*
_output_shapes
: 
†
8Conv3d_2b_1x1_conv/kernel/Initializer/random_uniform/mulMulBConv3d_2b_1x1_conv/kernel/Initializer/random_uniform/RandomUniform8Conv3d_2b_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@Conv3d_2b_1x1_conv/kernel**
_output_shapes
:@@
Т
4Conv3d_2b_1x1_conv/kernel/Initializer/random_uniformAdd8Conv3d_2b_1x1_conv/kernel/Initializer/random_uniform/mul8Conv3d_2b_1x1_conv/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@Conv3d_2b_1x1_conv/kernel**
_output_shapes
:@@
р
Conv3d_2b_1x1_conv/kernelVarHandleOp*,
_class"
 loc:@Conv3d_2b_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@@**
shared_nameConv3d_2b_1x1_conv/kernel
Г
:Conv3d_2b_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_2b_1x1_conv/kernel*
_output_shapes
: 
Т
 Conv3d_2b_1x1_conv/kernel/AssignAssignVariableOpConv3d_2b_1x1_conv/kernel4Conv3d_2b_1x1_conv/kernel/Initializer/random_uniform*
dtype0
У
-Conv3d_2b_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_2b_1x1_conv/kernel**
_output_shapes
:@@*
dtype0
О
(Conv3d_2b_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_2b_1x1_conv/kernel**
_output_shapes
:@@*
dtype0
А
Conv3d_2b_1x1_conv/Conv3DConv3DMaxPool2d_2a_3x3/MaxPool3D(Conv3d_2b_1x1_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€88@*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ю
'Conv3d_2b_1x1_bn/beta/Initializer/zerosConst*(
_class
loc:@Conv3d_2b_1x1_bn/beta*
_output_shapes
:@*
dtype0*
valueB@*    
‘
Conv3d_2b_1x1_bn/betaVarHandleOp*(
_class
loc:@Conv3d_2b_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*&
shared_nameConv3d_2b_1x1_bn/beta
{
6Conv3d_2b_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_2b_1x1_bn/beta*
_output_shapes
: 
}
Conv3d_2b_1x1_bn/beta/AssignAssignVariableOpConv3d_2b_1x1_bn/beta'Conv3d_2b_1x1_bn/beta/Initializer/zeros*
dtype0
{
)Conv3d_2b_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_2b_1x1_bn/beta*
_output_shapes
:@*
dtype0
ђ
.Conv3d_2b_1x1_bn/moving_mean/Initializer/zerosConst*/
_class%
#!loc:@Conv3d_2b_1x1_bn/moving_mean*
_output_shapes
:@*
dtype0*
valueB@*    
й
Conv3d_2b_1x1_bn/moving_meanVarHandleOp*/
_class%
#!loc:@Conv3d_2b_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*-
shared_nameConv3d_2b_1x1_bn/moving_mean
Й
=Conv3d_2b_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_2b_1x1_bn/moving_mean*
_output_shapes
: 
Т
#Conv3d_2b_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_2b_1x1_bn/moving_mean.Conv3d_2b_1x1_bn/moving_mean/Initializer/zeros*
dtype0
Й
0Conv3d_2b_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_2b_1x1_bn/moving_mean*
_output_shapes
:@*
dtype0
≥
1Conv3d_2b_1x1_bn/moving_variance/Initializer/onesConst*3
_class)
'%loc:@Conv3d_2b_1x1_bn/moving_variance*
_output_shapes
:@*
dtype0*
valueB@*  А?
х
 Conv3d_2b_1x1_bn/moving_varianceVarHandleOp*3
_class)
'%loc:@Conv3d_2b_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*1
shared_name" Conv3d_2b_1x1_bn/moving_variance
С
AConv3d_2b_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp Conv3d_2b_1x1_bn/moving_variance*
_output_shapes
: 
Э
'Conv3d_2b_1x1_bn/moving_variance/AssignAssignVariableOp Conv3d_2b_1x1_bn/moving_variance1Conv3d_2b_1x1_bn/moving_variance/Initializer/ones*
dtype0
С
4Conv3d_2b_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp Conv3d_2b_1x1_bn/moving_variance*
_output_shapes
:@*
dtype0
Ж
)Conv3d_2b_1x1_bn/batchnorm/ReadVariableOpReadVariableOp Conv3d_2b_1x1_bn/moving_variance*
_output_shapes
:@*
dtype0
e
 Conv3d_2b_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Щ
Conv3d_2b_1x1_bn/batchnorm/addAddV2)Conv3d_2b_1x1_bn/batchnorm/ReadVariableOp Conv3d_2b_1x1_bn/batchnorm/add/y*
T0*
_output_shapes
:@
n
 Conv3d_2b_1x1_bn/batchnorm/RsqrtRsqrtConv3d_2b_1x1_bn/batchnorm/add*
T0*
_output_shapes
:@
†
Conv3d_2b_1x1_bn/batchnorm/mulMulConv3d_2b_1x1_conv/Conv3D Conv3d_2b_1x1_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€88@
Д
+Conv3d_2b_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_2b_1x1_bn/moving_mean*
_output_shapes
:@*
dtype0
Ы
 Conv3d_2b_1x1_bn/batchnorm/mul_1Mul+Conv3d_2b_1x1_bn/batchnorm/ReadVariableOp_1 Conv3d_2b_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes
:@
}
+Conv3d_2b_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_2b_1x1_bn/beta*
_output_shapes
:@*
dtype0
Щ
Conv3d_2b_1x1_bn/batchnorm/subSub+Conv3d_2b_1x1_bn/batchnorm/ReadVariableOp_2 Conv3d_2b_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes
:@
І
 Conv3d_2b_1x1_bn/batchnorm/add_1AddV2Conv3d_2b_1x1_bn/batchnorm/mulConv3d_2b_1x1_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€88@
z
Conv3d_2b_1x1/ReluRelu Conv3d_2b_1x1_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€88@
≈
:Conv3d_2c_3x3_conv/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@Conv3d_2c_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         @   ј   
Ђ
8Conv3d_2c_3x3_conv/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@Conv3d_2c_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *п[сЉ
Ђ
8Conv3d_2c_3x3_conv/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@Conv3d_2c_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *п[с<
Щ
BConv3d_2c_3x3_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform:Conv3d_2c_3x3_conv/kernel/Initializer/random_uniform/shape*
T0*,
_class"
 loc:@Conv3d_2c_3x3_conv/kernel*+
_output_shapes
:@ј*
dtype0*

seed *
seed2 
В
8Conv3d_2c_3x3_conv/kernel/Initializer/random_uniform/subSub8Conv3d_2c_3x3_conv/kernel/Initializer/random_uniform/max8Conv3d_2c_3x3_conv/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@Conv3d_2c_3x3_conv/kernel*
_output_shapes
: 
°
8Conv3d_2c_3x3_conv/kernel/Initializer/random_uniform/mulMulBConv3d_2c_3x3_conv/kernel/Initializer/random_uniform/RandomUniform8Conv3d_2c_3x3_conv/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@Conv3d_2c_3x3_conv/kernel*+
_output_shapes
:@ј
У
4Conv3d_2c_3x3_conv/kernel/Initializer/random_uniformAdd8Conv3d_2c_3x3_conv/kernel/Initializer/random_uniform/mul8Conv3d_2c_3x3_conv/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@Conv3d_2c_3x3_conv/kernel*+
_output_shapes
:@ј
с
Conv3d_2c_3x3_conv/kernelVarHandleOp*,
_class"
 loc:@Conv3d_2c_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:@ј**
shared_nameConv3d_2c_3x3_conv/kernel
Г
:Conv3d_2c_3x3_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_2c_3x3_conv/kernel*
_output_shapes
: 
Т
 Conv3d_2c_3x3_conv/kernel/AssignAssignVariableOpConv3d_2c_3x3_conv/kernel4Conv3d_2c_3x3_conv/kernel/Initializer/random_uniform*
dtype0
Ф
-Conv3d_2c_3x3_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_2c_3x3_conv/kernel*+
_output_shapes
:@ј*
dtype0
П
(Conv3d_2c_3x3_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_2c_3x3_conv/kernel*+
_output_shapes
:@ј*
dtype0
щ
Conv3d_2c_3x3_conv/Conv3DConv3DConv3d_2b_1x1/Relu(Conv3d_2c_3x3_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€88ј*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

†
'Conv3d_2c_3x3_bn/beta/Initializer/zerosConst*(
_class
loc:@Conv3d_2c_3x3_bn/beta*
_output_shapes	
:ј*
dtype0*
valueBј*    
’
Conv3d_2c_3x3_bn/betaVarHandleOp*(
_class
loc:@Conv3d_2c_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:ј*&
shared_nameConv3d_2c_3x3_bn/beta
{
6Conv3d_2c_3x3_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_2c_3x3_bn/beta*
_output_shapes
: 
}
Conv3d_2c_3x3_bn/beta/AssignAssignVariableOpConv3d_2c_3x3_bn/beta'Conv3d_2c_3x3_bn/beta/Initializer/zeros*
dtype0
|
)Conv3d_2c_3x3_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_2c_3x3_bn/beta*
_output_shapes	
:ј*
dtype0
Ѓ
.Conv3d_2c_3x3_bn/moving_mean/Initializer/zerosConst*/
_class%
#!loc:@Conv3d_2c_3x3_bn/moving_mean*
_output_shapes	
:ј*
dtype0*
valueBј*    
к
Conv3d_2c_3x3_bn/moving_meanVarHandleOp*/
_class%
#!loc:@Conv3d_2c_3x3_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:ј*-
shared_nameConv3d_2c_3x3_bn/moving_mean
Й
=Conv3d_2c_3x3_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_2c_3x3_bn/moving_mean*
_output_shapes
: 
Т
#Conv3d_2c_3x3_bn/moving_mean/AssignAssignVariableOpConv3d_2c_3x3_bn/moving_mean.Conv3d_2c_3x3_bn/moving_mean/Initializer/zeros*
dtype0
К
0Conv3d_2c_3x3_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_2c_3x3_bn/moving_mean*
_output_shapes	
:ј*
dtype0
µ
1Conv3d_2c_3x3_bn/moving_variance/Initializer/onesConst*3
_class)
'%loc:@Conv3d_2c_3x3_bn/moving_variance*
_output_shapes	
:ј*
dtype0*
valueBј*  А?
ц
 Conv3d_2c_3x3_bn/moving_varianceVarHandleOp*3
_class)
'%loc:@Conv3d_2c_3x3_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:ј*1
shared_name" Conv3d_2c_3x3_bn/moving_variance
С
AConv3d_2c_3x3_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp Conv3d_2c_3x3_bn/moving_variance*
_output_shapes
: 
Э
'Conv3d_2c_3x3_bn/moving_variance/AssignAssignVariableOp Conv3d_2c_3x3_bn/moving_variance1Conv3d_2c_3x3_bn/moving_variance/Initializer/ones*
dtype0
Т
4Conv3d_2c_3x3_bn/moving_variance/Read/ReadVariableOpReadVariableOp Conv3d_2c_3x3_bn/moving_variance*
_output_shapes	
:ј*
dtype0
З
)Conv3d_2c_3x3_bn/batchnorm/ReadVariableOpReadVariableOp Conv3d_2c_3x3_bn/moving_variance*
_output_shapes	
:ј*
dtype0
e
 Conv3d_2c_3x3_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ъ
Conv3d_2c_3x3_bn/batchnorm/addAddV2)Conv3d_2c_3x3_bn/batchnorm/ReadVariableOp Conv3d_2c_3x3_bn/batchnorm/add/y*
T0*
_output_shapes	
:ј
o
 Conv3d_2c_3x3_bn/batchnorm/RsqrtRsqrtConv3d_2c_3x3_bn/batchnorm/add*
T0*
_output_shapes	
:ј
°
Conv3d_2c_3x3_bn/batchnorm/mulMulConv3d_2c_3x3_conv/Conv3D Conv3d_2c_3x3_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€88ј
Е
+Conv3d_2c_3x3_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_2c_3x3_bn/moving_mean*
_output_shapes	
:ј*
dtype0
Ь
 Conv3d_2c_3x3_bn/batchnorm/mul_1Mul+Conv3d_2c_3x3_bn/batchnorm/ReadVariableOp_1 Conv3d_2c_3x3_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:ј
~
+Conv3d_2c_3x3_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_2c_3x3_bn/beta*
_output_shapes	
:ј*
dtype0
Ъ
Conv3d_2c_3x3_bn/batchnorm/subSub+Conv3d_2c_3x3_bn/batchnorm/ReadVariableOp_2 Conv3d_2c_3x3_bn/batchnorm/mul_1*
T0*
_output_shapes	
:ј
®
 Conv3d_2c_3x3_bn/batchnorm/add_1AddV2Conv3d_2c_3x3_bn/batchnorm/mulConv3d_2c_3x3_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€88ј
{
Conv3d_2c_3x3/ReluRelu Conv3d_2c_3x3_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€88ј
ѕ
MaxPool2d_3a_3x3/MaxPool3D	MaxPool3DConv3d_2c_3x3/Relu*
T0*4
_output_shapes"
 :€€€€€€€€€ј*
data_formatNDHWC*
ksize	
*
paddingSAME*
strides	

Ћ
=Conv3d_3b_1a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_3b_1a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         ј   `   
±
;Conv3d_3b_1a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_3b_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *:ЌЊ
±
;Conv3d_3b_1a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_3b_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *:Ќ>
Ґ
EConv3d_3b_1a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_3b_1a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_3b_1a_1x1_conv/kernel*+
_output_shapes
:ј`*
dtype0*

seed *
seed2 
О
;Conv3d_3b_1a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_3b_1a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_3b_1a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_3b_1a_1x1_conv/kernel*
_output_shapes
: 
≠
;Conv3d_3b_1a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_3b_1a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_3b_1a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_3b_1a_1x1_conv/kernel*+
_output_shapes
:ј`
Я
7Conv3d_3b_1a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_3b_1a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_3b_1a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_3b_1a_1x1_conv/kernel*+
_output_shapes
:ј`
ъ
Conv3d_3b_1a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_3b_1a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:ј`*-
shared_nameConv3d_3b_1a_1x1_conv/kernel
Й
=Conv3d_3b_1a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3b_1a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_3b_1a_1x1_conv/kernel/AssignAssignVariableOpConv3d_3b_1a_1x1_conv/kernel7Conv3d_3b_1a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_3b_1a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_3b_1a_1x1_conv/kernel*+
_output_shapes
:ј`*
dtype0
Х
+Conv3d_3b_1a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_3b_1a_1x1_conv/kernel*+
_output_shapes
:ј`*
dtype0
Ж
Conv3d_3b_1a_1x1_conv/Conv3DConv3DMaxPool2d_3a_3x3/MaxPool3D+Conv3d_3b_1a_1x1_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€`*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_3b_2a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_3b_2a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         ј      
±
;Conv3d_3b_2a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_3b_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *тк-Њ
±
;Conv3d_3b_2a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_3b_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *тк->
Ґ
EConv3d_3b_2a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_3b_2a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_3b_2a_1x1_conv/kernel*+
_output_shapes
:ј*
dtype0*

seed *
seed2 
О
;Conv3d_3b_2a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_3b_2a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_3b_2a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_3b_2a_1x1_conv/kernel*
_output_shapes
: 
≠
;Conv3d_3b_2a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_3b_2a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_3b_2a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_3b_2a_1x1_conv/kernel*+
_output_shapes
:ј
Я
7Conv3d_3b_2a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_3b_2a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_3b_2a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_3b_2a_1x1_conv/kernel*+
_output_shapes
:ј
ъ
Conv3d_3b_2a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_3b_2a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:ј*-
shared_nameConv3d_3b_2a_1x1_conv/kernel
Й
=Conv3d_3b_2a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3b_2a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_3b_2a_1x1_conv/kernel/AssignAssignVariableOpConv3d_3b_2a_1x1_conv/kernel7Conv3d_3b_2a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_3b_2a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_3b_2a_1x1_conv/kernel*+
_output_shapes
:ј*
dtype0
Х
+Conv3d_3b_2a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_3b_2a_1x1_conv/kernel*+
_output_shapes
:ј*
dtype0
Ж
Conv3d_3b_2a_1x1_conv/Conv3DConv3DMaxPool2d_3a_3x3/MaxPool3D+Conv3d_3b_2a_1x1_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

§
*Conv3d_3b_1a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_3b_1a_1x1_bn/beta*
_output_shapes
:`*
dtype0*
valueB`*    
Ё
Conv3d_3b_1a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_3b_1a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:`*)
shared_nameConv3d_3b_1a_1x1_bn/beta
Б
9Conv3d_3b_1a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3b_1a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_3b_1a_1x1_bn/beta/AssignAssignVariableOpConv3d_3b_1a_1x1_bn/beta*Conv3d_3b_1a_1x1_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_3b_1a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_3b_1a_1x1_bn/beta*
_output_shapes
:`*
dtype0
≤
1Conv3d_3b_1a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_3b_1a_1x1_bn/moving_mean*
_output_shapes
:`*
dtype0*
valueB`*    
т
Conv3d_3b_1a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_3b_1a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:`*0
shared_name!Conv3d_3b_1a_1x1_bn/moving_mean
П
@Conv3d_3b_1a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3b_1a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_3b_1a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_3b_1a_1x1_bn/moving_mean1Conv3d_3b_1a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_3b_1a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_3b_1a_1x1_bn/moving_mean*
_output_shapes
:`*
dtype0
є
4Conv3d_3b_1a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_3b_1a_1x1_bn/moving_variance*
_output_shapes
:`*
dtype0*
valueB`*  А?
ю
#Conv3d_3b_1a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_3b_1a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:`*4
shared_name%#Conv3d_3b_1a_1x1_bn/moving_variance
Ч
DConv3d_3b_1a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_3b_1a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_3b_1a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_3b_1a_1x1_bn/moving_variance4Conv3d_3b_1a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_3b_1a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_3b_1a_1x1_bn/moving_variance*
_output_shapes
:`*
dtype0
М
,Conv3d_3b_1a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_3b_1a_1x1_bn/moving_variance*
_output_shapes
:`*
dtype0
h
#Conv3d_3b_1a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_3b_1a_1x1_bn/batchnorm/addAddV2,Conv3d_3b_1a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_3b_1a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes
:`
t
#Conv3d_3b_1a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_3b_1a_1x1_bn/batchnorm/add*
T0*
_output_shapes
:`
©
!Conv3d_3b_1a_1x1_bn/batchnorm/mulMulConv3d_3b_1a_1x1_conv/Conv3D#Conv3d_3b_1a_1x1_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€`
К
.Conv3d_3b_1a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_3b_1a_1x1_bn/moving_mean*
_output_shapes
:`*
dtype0
§
#Conv3d_3b_1a_1x1_bn/batchnorm/mul_1Mul.Conv3d_3b_1a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_3b_1a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes
:`
Г
.Conv3d_3b_1a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_3b_1a_1x1_bn/beta*
_output_shapes
:`*
dtype0
Ґ
!Conv3d_3b_1a_1x1_bn/batchnorm/subSub.Conv3d_3b_1a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_3b_1a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes
:`
∞
#Conv3d_3b_1a_1x1_bn/batchnorm/add_1AddV2!Conv3d_3b_1a_1x1_bn/batchnorm/mul!Conv3d_3b_1a_1x1_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€`
§
*Conv3d_3b_2a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_3b_2a_1x1_bn/beta*
_output_shapes
:*
dtype0*
valueB*    
Ё
Conv3d_3b_2a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_3b_2a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*)
shared_nameConv3d_3b_2a_1x1_bn/beta
Б
9Conv3d_3b_2a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3b_2a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_3b_2a_1x1_bn/beta/AssignAssignVariableOpConv3d_3b_2a_1x1_bn/beta*Conv3d_3b_2a_1x1_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_3b_2a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_3b_2a_1x1_bn/beta*
_output_shapes
:*
dtype0
≤
1Conv3d_3b_2a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_3b_2a_1x1_bn/moving_mean*
_output_shapes
:*
dtype0*
valueB*    
т
Conv3d_3b_2a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_3b_2a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*0
shared_name!Conv3d_3b_2a_1x1_bn/moving_mean
П
@Conv3d_3b_2a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3b_2a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_3b_2a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_3b_2a_1x1_bn/moving_mean1Conv3d_3b_2a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_3b_2a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_3b_2a_1x1_bn/moving_mean*
_output_shapes
:*
dtype0
є
4Conv3d_3b_2a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_3b_2a_1x1_bn/moving_variance*
_output_shapes
:*
dtype0*
valueB*  А?
ю
#Conv3d_3b_2a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_3b_2a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*4
shared_name%#Conv3d_3b_2a_1x1_bn/moving_variance
Ч
DConv3d_3b_2a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_3b_2a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_3b_2a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_3b_2a_1x1_bn/moving_variance4Conv3d_3b_2a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_3b_2a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_3b_2a_1x1_bn/moving_variance*
_output_shapes
:*
dtype0
М
,Conv3d_3b_2a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_3b_2a_1x1_bn/moving_variance*
_output_shapes
:*
dtype0
h
#Conv3d_3b_2a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_3b_2a_1x1_bn/batchnorm/addAddV2,Conv3d_3b_2a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_3b_2a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes
:
t
#Conv3d_3b_2a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_3b_2a_1x1_bn/batchnorm/add*
T0*
_output_shapes
:
©
!Conv3d_3b_2a_1x1_bn/batchnorm/mulMulConv3d_3b_2a_1x1_conv/Conv3D#Conv3d_3b_2a_1x1_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€
К
.Conv3d_3b_2a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_3b_2a_1x1_bn/moving_mean*
_output_shapes
:*
dtype0
§
#Conv3d_3b_2a_1x1_bn/batchnorm/mul_1Mul.Conv3d_3b_2a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_3b_2a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes
:
Г
.Conv3d_3b_2a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_3b_2a_1x1_bn/beta*
_output_shapes
:*
dtype0
Ґ
!Conv3d_3b_2a_1x1_bn/batchnorm/subSub.Conv3d_3b_2a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_3b_2a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes
:
∞
#Conv3d_3b_2a_1x1_bn/batchnorm/add_1AddV2!Conv3d_3b_2a_1x1_bn/batchnorm/mul!Conv3d_3b_2a_1x1_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€
А
Conv3d_3b_1a_1x1/ReluRelu#Conv3d_3b_1a_1x1_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€`
А
Conv3d_3b_2a_1x1/ReluRelu#Conv3d_3b_2a_1x1_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€
Џ
MaxPool2d_3b_3a_3x3/MaxPool3D	MaxPool3DMaxPool2d_3a_3x3/MaxPool3D*
T0*4
_output_shapes"
 :€€€€€€€€€ј*
data_formatNDHWC*
ksize	
*
paddingSAME*
strides	

Ћ
=Conv3d_3b_0a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_3b_0a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         ј   @   
±
;Conv3d_3b_0a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_3b_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *qƒЊ
±
;Conv3d_3b_0a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_3b_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *qƒ>
Ґ
EConv3d_3b_0a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_3b_0a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_3b_0a_1x1_conv/kernel*+
_output_shapes
:ј@*
dtype0*

seed *
seed2 
О
;Conv3d_3b_0a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_3b_0a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_3b_0a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_3b_0a_1x1_conv/kernel*
_output_shapes
: 
≠
;Conv3d_3b_0a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_3b_0a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_3b_0a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_3b_0a_1x1_conv/kernel*+
_output_shapes
:ј@
Я
7Conv3d_3b_0a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_3b_0a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_3b_0a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_3b_0a_1x1_conv/kernel*+
_output_shapes
:ј@
ъ
Conv3d_3b_0a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_3b_0a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:ј@*-
shared_nameConv3d_3b_0a_1x1_conv/kernel
Й
=Conv3d_3b_0a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3b_0a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_3b_0a_1x1_conv/kernel/AssignAssignVariableOpConv3d_3b_0a_1x1_conv/kernel7Conv3d_3b_0a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_3b_0a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_3b_0a_1x1_conv/kernel*+
_output_shapes
:ј@*
dtype0
Х
+Conv3d_3b_0a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_3b_0a_1x1_conv/kernel*+
_output_shapes
:ј@*
dtype0
Ж
Conv3d_3b_0a_1x1_conv/Conv3DConv3DMaxPool2d_3a_3x3/MaxPool3D+Conv3d_3b_0a_1x1_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€@*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_3b_1b_3x3_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_3b_1b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         `   А   
±
;Conv3d_3b_1b_3x3_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_3b_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *
љ
±
;Conv3d_3b_1b_3x3_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_3b_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *
=
Ґ
EConv3d_3b_1b_3x3_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_3b_1b_3x3_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_3b_1b_3x3_conv/kernel*+
_output_shapes
:`А*
dtype0*

seed *
seed2 
О
;Conv3d_3b_1b_3x3_conv/kernel/Initializer/random_uniform/subSub;Conv3d_3b_1b_3x3_conv/kernel/Initializer/random_uniform/max;Conv3d_3b_1b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_3b_1b_3x3_conv/kernel*
_output_shapes
: 
≠
;Conv3d_3b_1b_3x3_conv/kernel/Initializer/random_uniform/mulMulEConv3d_3b_1b_3x3_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_3b_1b_3x3_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_3b_1b_3x3_conv/kernel*+
_output_shapes
:`А
Я
7Conv3d_3b_1b_3x3_conv/kernel/Initializer/random_uniformAdd;Conv3d_3b_1b_3x3_conv/kernel/Initializer/random_uniform/mul;Conv3d_3b_1b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_3b_1b_3x3_conv/kernel*+
_output_shapes
:`А
ъ
Conv3d_3b_1b_3x3_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_3b_1b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:`А*-
shared_nameConv3d_3b_1b_3x3_conv/kernel
Й
=Conv3d_3b_1b_3x3_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3b_1b_3x3_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_3b_1b_3x3_conv/kernel/AssignAssignVariableOpConv3d_3b_1b_3x3_conv/kernel7Conv3d_3b_1b_3x3_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_3b_1b_3x3_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_3b_1b_3x3_conv/kernel*+
_output_shapes
:`А*
dtype0
Х
+Conv3d_3b_1b_3x3_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_3b_1b_3x3_conv/kernel*+
_output_shapes
:`А*
dtype0
В
Conv3d_3b_1b_3x3_conv/Conv3DConv3DConv3d_3b_1a_1x1/Relu+Conv3d_3b_1b_3x3_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€А*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_3b_2b_3x3_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_3b_2b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"                
±
;Conv3d_3b_2b_3x3_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_3b_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *HYЛљ
±
;Conv3d_3b_2b_3x3_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_3b_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *HYЛ=
°
EConv3d_3b_2b_3x3_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_3b_2b_3x3_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_3b_2b_3x3_conv/kernel**
_output_shapes
: *
dtype0*

seed *
seed2 
О
;Conv3d_3b_2b_3x3_conv/kernel/Initializer/random_uniform/subSub;Conv3d_3b_2b_3x3_conv/kernel/Initializer/random_uniform/max;Conv3d_3b_2b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_3b_2b_3x3_conv/kernel*
_output_shapes
: 
ђ
;Conv3d_3b_2b_3x3_conv/kernel/Initializer/random_uniform/mulMulEConv3d_3b_2b_3x3_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_3b_2b_3x3_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_3b_2b_3x3_conv/kernel**
_output_shapes
: 
Ю
7Conv3d_3b_2b_3x3_conv/kernel/Initializer/random_uniformAdd;Conv3d_3b_2b_3x3_conv/kernel/Initializer/random_uniform/mul;Conv3d_3b_2b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_3b_2b_3x3_conv/kernel**
_output_shapes
: 
щ
Conv3d_3b_2b_3x3_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_3b_2b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *-
shared_nameConv3d_3b_2b_3x3_conv/kernel
Й
=Conv3d_3b_2b_3x3_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3b_2b_3x3_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_3b_2b_3x3_conv/kernel/AssignAssignVariableOpConv3d_3b_2b_3x3_conv/kernel7Conv3d_3b_2b_3x3_conv/kernel/Initializer/random_uniform*
dtype0
Щ
0Conv3d_3b_2b_3x3_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_3b_2b_3x3_conv/kernel**
_output_shapes
: *
dtype0
Ф
+Conv3d_3b_2b_3x3_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_3b_2b_3x3_conv/kernel**
_output_shapes
: *
dtype0
Б
Conv3d_3b_2b_3x3_conv/Conv3DConv3DConv3d_3b_2a_1x1/Relu+Conv3d_3b_2b_3x3_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€ *
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_3b_3b_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_3b_3b_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         ј       
±
;Conv3d_3b_3b_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_3b_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *bЧ'Њ
±
;Conv3d_3b_3b_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_3b_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *bЧ'>
Ґ
EConv3d_3b_3b_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_3b_3b_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_3b_3b_1x1_conv/kernel*+
_output_shapes
:ј *
dtype0*

seed *
seed2 
О
;Conv3d_3b_3b_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_3b_3b_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_3b_3b_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_3b_3b_1x1_conv/kernel*
_output_shapes
: 
≠
;Conv3d_3b_3b_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_3b_3b_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_3b_3b_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_3b_3b_1x1_conv/kernel*+
_output_shapes
:ј 
Я
7Conv3d_3b_3b_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_3b_3b_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_3b_3b_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_3b_3b_1x1_conv/kernel*+
_output_shapes
:ј 
ъ
Conv3d_3b_3b_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_3b_3b_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:ј *-
shared_nameConv3d_3b_3b_1x1_conv/kernel
Й
=Conv3d_3b_3b_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3b_3b_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_3b_3b_1x1_conv/kernel/AssignAssignVariableOpConv3d_3b_3b_1x1_conv/kernel7Conv3d_3b_3b_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_3b_3b_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_3b_3b_1x1_conv/kernel*+
_output_shapes
:ј *
dtype0
Х
+Conv3d_3b_3b_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_3b_3b_1x1_conv/kernel*+
_output_shapes
:ј *
dtype0
Й
Conv3d_3b_3b_1x1_conv/Conv3DConv3DMaxPool2d_3b_3a_3x3/MaxPool3D+Conv3d_3b_3b_1x1_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€ *
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

§
*Conv3d_3b_0a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_3b_0a_1x1_bn/beta*
_output_shapes
:@*
dtype0*
valueB@*    
Ё
Conv3d_3b_0a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_3b_0a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*)
shared_nameConv3d_3b_0a_1x1_bn/beta
Б
9Conv3d_3b_0a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3b_0a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_3b_0a_1x1_bn/beta/AssignAssignVariableOpConv3d_3b_0a_1x1_bn/beta*Conv3d_3b_0a_1x1_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_3b_0a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_3b_0a_1x1_bn/beta*
_output_shapes
:@*
dtype0
≤
1Conv3d_3b_0a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_3b_0a_1x1_bn/moving_mean*
_output_shapes
:@*
dtype0*
valueB@*    
т
Conv3d_3b_0a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_3b_0a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*0
shared_name!Conv3d_3b_0a_1x1_bn/moving_mean
П
@Conv3d_3b_0a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3b_0a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_3b_0a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_3b_0a_1x1_bn/moving_mean1Conv3d_3b_0a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_3b_0a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_3b_0a_1x1_bn/moving_mean*
_output_shapes
:@*
dtype0
є
4Conv3d_3b_0a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_3b_0a_1x1_bn/moving_variance*
_output_shapes
:@*
dtype0*
valueB@*  А?
ю
#Conv3d_3b_0a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_3b_0a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*4
shared_name%#Conv3d_3b_0a_1x1_bn/moving_variance
Ч
DConv3d_3b_0a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_3b_0a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_3b_0a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_3b_0a_1x1_bn/moving_variance4Conv3d_3b_0a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_3b_0a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_3b_0a_1x1_bn/moving_variance*
_output_shapes
:@*
dtype0
М
,Conv3d_3b_0a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_3b_0a_1x1_bn/moving_variance*
_output_shapes
:@*
dtype0
h
#Conv3d_3b_0a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_3b_0a_1x1_bn/batchnorm/addAddV2,Conv3d_3b_0a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_3b_0a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes
:@
t
#Conv3d_3b_0a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_3b_0a_1x1_bn/batchnorm/add*
T0*
_output_shapes
:@
©
!Conv3d_3b_0a_1x1_bn/batchnorm/mulMulConv3d_3b_0a_1x1_conv/Conv3D#Conv3d_3b_0a_1x1_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€@
К
.Conv3d_3b_0a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_3b_0a_1x1_bn/moving_mean*
_output_shapes
:@*
dtype0
§
#Conv3d_3b_0a_1x1_bn/batchnorm/mul_1Mul.Conv3d_3b_0a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_3b_0a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes
:@
Г
.Conv3d_3b_0a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_3b_0a_1x1_bn/beta*
_output_shapes
:@*
dtype0
Ґ
!Conv3d_3b_0a_1x1_bn/batchnorm/subSub.Conv3d_3b_0a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_3b_0a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes
:@
∞
#Conv3d_3b_0a_1x1_bn/batchnorm/add_1AddV2!Conv3d_3b_0a_1x1_bn/batchnorm/mul!Conv3d_3b_0a_1x1_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€@
¶
*Conv3d_3b_1b_3x3_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_3b_1b_3x3_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
ё
Conv3d_3b_1b_3x3_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_3b_1b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*)
shared_nameConv3d_3b_1b_3x3_bn/beta
Б
9Conv3d_3b_1b_3x3_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3b_1b_3x3_bn/beta*
_output_shapes
: 
Ж
Conv3d_3b_1b_3x3_bn/beta/AssignAssignVariableOpConv3d_3b_1b_3x3_bn/beta*Conv3d_3b_1b_3x3_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_3b_1b_3x3_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_3b_1b_3x3_bn/beta*
_output_shapes	
:А*
dtype0
і
1Conv3d_3b_1b_3x3_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_3b_1b_3x3_bn/moving_mean*
_output_shapes	
:А*
dtype0*
valueBА*    
у
Conv3d_3b_1b_3x3_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_3b_1b_3x3_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*0
shared_name!Conv3d_3b_1b_3x3_bn/moving_mean
П
@Conv3d_3b_1b_3x3_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3b_1b_3x3_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_3b_1b_3x3_bn/moving_mean/AssignAssignVariableOpConv3d_3b_1b_3x3_bn/moving_mean1Conv3d_3b_1b_3x3_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_3b_1b_3x3_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_3b_1b_3x3_bn/moving_mean*
_output_shapes	
:А*
dtype0
ї
4Conv3d_3b_1b_3x3_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_3b_1b_3x3_bn/moving_variance*
_output_shapes	
:А*
dtype0*
valueBА*  А?
€
#Conv3d_3b_1b_3x3_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_3b_1b_3x3_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*4
shared_name%#Conv3d_3b_1b_3x3_bn/moving_variance
Ч
DConv3d_3b_1b_3x3_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_3b_1b_3x3_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_3b_1b_3x3_bn/moving_variance/AssignAssignVariableOp#Conv3d_3b_1b_3x3_bn/moving_variance4Conv3d_3b_1b_3x3_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_3b_1b_3x3_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_3b_1b_3x3_bn/moving_variance*
_output_shapes	
:А*
dtype0
Н
,Conv3d_3b_1b_3x3_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_3b_1b_3x3_bn/moving_variance*
_output_shapes	
:А*
dtype0
h
#Conv3d_3b_1b_3x3_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_3b_1b_3x3_bn/batchnorm/addAddV2,Conv3d_3b_1b_3x3_bn/batchnorm/ReadVariableOp#Conv3d_3b_1b_3x3_bn/batchnorm/add/y*
T0*
_output_shapes	
:А
u
#Conv3d_3b_1b_3x3_bn/batchnorm/RsqrtRsqrt!Conv3d_3b_1b_3x3_bn/batchnorm/add*
T0*
_output_shapes	
:А
™
!Conv3d_3b_1b_3x3_bn/batchnorm/mulMulConv3d_3b_1b_3x3_conv/Conv3D#Conv3d_3b_1b_3x3_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€А
Л
.Conv3d_3b_1b_3x3_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_3b_1b_3x3_bn/moving_mean*
_output_shapes	
:А*
dtype0
•
#Conv3d_3b_1b_3x3_bn/batchnorm/mul_1Mul.Conv3d_3b_1b_3x3_bn/batchnorm/ReadVariableOp_1#Conv3d_3b_1b_3x3_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:А
Д
.Conv3d_3b_1b_3x3_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_3b_1b_3x3_bn/beta*
_output_shapes	
:А*
dtype0
£
!Conv3d_3b_1b_3x3_bn/batchnorm/subSub.Conv3d_3b_1b_3x3_bn/batchnorm/ReadVariableOp_2#Conv3d_3b_1b_3x3_bn/batchnorm/mul_1*
T0*
_output_shapes	
:А
±
#Conv3d_3b_1b_3x3_bn/batchnorm/add_1AddV2!Conv3d_3b_1b_3x3_bn/batchnorm/mul!Conv3d_3b_1b_3x3_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€А
§
*Conv3d_3b_2b_3x3_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_3b_2b_3x3_bn/beta*
_output_shapes
: *
dtype0*
valueB *    
Ё
Conv3d_3b_2b_3x3_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_3b_2b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *)
shared_nameConv3d_3b_2b_3x3_bn/beta
Б
9Conv3d_3b_2b_3x3_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3b_2b_3x3_bn/beta*
_output_shapes
: 
Ж
Conv3d_3b_2b_3x3_bn/beta/AssignAssignVariableOpConv3d_3b_2b_3x3_bn/beta*Conv3d_3b_2b_3x3_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_3b_2b_3x3_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_3b_2b_3x3_bn/beta*
_output_shapes
: *
dtype0
≤
1Conv3d_3b_2b_3x3_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_3b_2b_3x3_bn/moving_mean*
_output_shapes
: *
dtype0*
valueB *    
т
Conv3d_3b_2b_3x3_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_3b_2b_3x3_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *0
shared_name!Conv3d_3b_2b_3x3_bn/moving_mean
П
@Conv3d_3b_2b_3x3_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3b_2b_3x3_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_3b_2b_3x3_bn/moving_mean/AssignAssignVariableOpConv3d_3b_2b_3x3_bn/moving_mean1Conv3d_3b_2b_3x3_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_3b_2b_3x3_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_3b_2b_3x3_bn/moving_mean*
_output_shapes
: *
dtype0
є
4Conv3d_3b_2b_3x3_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_3b_2b_3x3_bn/moving_variance*
_output_shapes
: *
dtype0*
valueB *  А?
ю
#Conv3d_3b_2b_3x3_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_3b_2b_3x3_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *4
shared_name%#Conv3d_3b_2b_3x3_bn/moving_variance
Ч
DConv3d_3b_2b_3x3_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_3b_2b_3x3_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_3b_2b_3x3_bn/moving_variance/AssignAssignVariableOp#Conv3d_3b_2b_3x3_bn/moving_variance4Conv3d_3b_2b_3x3_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_3b_2b_3x3_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_3b_2b_3x3_bn/moving_variance*
_output_shapes
: *
dtype0
М
,Conv3d_3b_2b_3x3_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_3b_2b_3x3_bn/moving_variance*
_output_shapes
: *
dtype0
h
#Conv3d_3b_2b_3x3_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_3b_2b_3x3_bn/batchnorm/addAddV2,Conv3d_3b_2b_3x3_bn/batchnorm/ReadVariableOp#Conv3d_3b_2b_3x3_bn/batchnorm/add/y*
T0*
_output_shapes
: 
t
#Conv3d_3b_2b_3x3_bn/batchnorm/RsqrtRsqrt!Conv3d_3b_2b_3x3_bn/batchnorm/add*
T0*
_output_shapes
: 
©
!Conv3d_3b_2b_3x3_bn/batchnorm/mulMulConv3d_3b_2b_3x3_conv/Conv3D#Conv3d_3b_2b_3x3_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€ 
К
.Conv3d_3b_2b_3x3_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_3b_2b_3x3_bn/moving_mean*
_output_shapes
: *
dtype0
§
#Conv3d_3b_2b_3x3_bn/batchnorm/mul_1Mul.Conv3d_3b_2b_3x3_bn/batchnorm/ReadVariableOp_1#Conv3d_3b_2b_3x3_bn/batchnorm/Rsqrt*
T0*
_output_shapes
: 
Г
.Conv3d_3b_2b_3x3_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_3b_2b_3x3_bn/beta*
_output_shapes
: *
dtype0
Ґ
!Conv3d_3b_2b_3x3_bn/batchnorm/subSub.Conv3d_3b_2b_3x3_bn/batchnorm/ReadVariableOp_2#Conv3d_3b_2b_3x3_bn/batchnorm/mul_1*
T0*
_output_shapes
: 
∞
#Conv3d_3b_2b_3x3_bn/batchnorm/add_1AddV2!Conv3d_3b_2b_3x3_bn/batchnorm/mul!Conv3d_3b_2b_3x3_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€ 
§
*Conv3d_3b_3b_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_3b_3b_1x1_bn/beta*
_output_shapes
: *
dtype0*
valueB *    
Ё
Conv3d_3b_3b_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_3b_3b_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *)
shared_nameConv3d_3b_3b_1x1_bn/beta
Б
9Conv3d_3b_3b_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3b_3b_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_3b_3b_1x1_bn/beta/AssignAssignVariableOpConv3d_3b_3b_1x1_bn/beta*Conv3d_3b_3b_1x1_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_3b_3b_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_3b_3b_1x1_bn/beta*
_output_shapes
: *
dtype0
≤
1Conv3d_3b_3b_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_3b_3b_1x1_bn/moving_mean*
_output_shapes
: *
dtype0*
valueB *    
т
Conv3d_3b_3b_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_3b_3b_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *0
shared_name!Conv3d_3b_3b_1x1_bn/moving_mean
П
@Conv3d_3b_3b_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3b_3b_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_3b_3b_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_3b_3b_1x1_bn/moving_mean1Conv3d_3b_3b_1x1_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_3b_3b_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_3b_3b_1x1_bn/moving_mean*
_output_shapes
: *
dtype0
є
4Conv3d_3b_3b_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_3b_3b_1x1_bn/moving_variance*
_output_shapes
: *
dtype0*
valueB *  А?
ю
#Conv3d_3b_3b_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_3b_3b_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *4
shared_name%#Conv3d_3b_3b_1x1_bn/moving_variance
Ч
DConv3d_3b_3b_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_3b_3b_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_3b_3b_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_3b_3b_1x1_bn/moving_variance4Conv3d_3b_3b_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_3b_3b_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_3b_3b_1x1_bn/moving_variance*
_output_shapes
: *
dtype0
М
,Conv3d_3b_3b_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_3b_3b_1x1_bn/moving_variance*
_output_shapes
: *
dtype0
h
#Conv3d_3b_3b_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_3b_3b_1x1_bn/batchnorm/addAddV2,Conv3d_3b_3b_1x1_bn/batchnorm/ReadVariableOp#Conv3d_3b_3b_1x1_bn/batchnorm/add/y*
T0*
_output_shapes
: 
t
#Conv3d_3b_3b_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_3b_3b_1x1_bn/batchnorm/add*
T0*
_output_shapes
: 
©
!Conv3d_3b_3b_1x1_bn/batchnorm/mulMulConv3d_3b_3b_1x1_conv/Conv3D#Conv3d_3b_3b_1x1_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€ 
К
.Conv3d_3b_3b_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_3b_3b_1x1_bn/moving_mean*
_output_shapes
: *
dtype0
§
#Conv3d_3b_3b_1x1_bn/batchnorm/mul_1Mul.Conv3d_3b_3b_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_3b_3b_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes
: 
Г
.Conv3d_3b_3b_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_3b_3b_1x1_bn/beta*
_output_shapes
: *
dtype0
Ґ
!Conv3d_3b_3b_1x1_bn/batchnorm/subSub.Conv3d_3b_3b_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_3b_3b_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes
: 
∞
#Conv3d_3b_3b_1x1_bn/batchnorm/add_1AddV2!Conv3d_3b_3b_1x1_bn/batchnorm/mul!Conv3d_3b_3b_1x1_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€ 
А
Conv3d_3b_0a_1x1/ReluRelu#Conv3d_3b_0a_1x1_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€@
Б
Conv3d_3b_1b_3x3/ReluRelu#Conv3d_3b_1b_3x3_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€А
А
Conv3d_3b_2b_3x3/ReluRelu#Conv3d_3b_2b_3x3_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€ 
А
Conv3d_3b_3b_1x1/ReluRelu#Conv3d_3b_3b_1x1_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€ 
V
Mixed_3b/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
б
Mixed_3b/concatConcatV2Conv3d_3b_0a_1x1/ReluConv3d_3b_1b_3x3/ReluConv3d_3b_2b_3x3/ReluConv3d_3b_3b_1x1/ReluMixed_3b/concat/axis*
N*
T0*

Tidx0*4
_output_shapes"
 :€€€€€€€€€А
Ћ
=Conv3d_3c_1a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_3c_1a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            А   
±
;Conv3d_3c_1a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_3c_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *   Њ
±
;Conv3d_3c_1a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_3c_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *   >
£
EConv3d_3c_1a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_3c_1a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_3c_1a_1x1_conv/kernel*,
_output_shapes
:АА*
dtype0*

seed *
seed2 
О
;Conv3d_3c_1a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_3c_1a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_3c_1a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_3c_1a_1x1_conv/kernel*
_output_shapes
: 
Ѓ
;Conv3d_3c_1a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_3c_1a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_3c_1a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_3c_1a_1x1_conv/kernel*,
_output_shapes
:АА
†
7Conv3d_3c_1a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_3c_1a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_3c_1a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_3c_1a_1x1_conv/kernel*,
_output_shapes
:АА
ы
Conv3d_3c_1a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_3c_1a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:АА*-
shared_nameConv3d_3c_1a_1x1_conv/kernel
Й
=Conv3d_3c_1a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3c_1a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_3c_1a_1x1_conv/kernel/AssignAssignVariableOpConv3d_3c_1a_1x1_conv/kernel7Conv3d_3c_1a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ы
0Conv3d_3c_1a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_3c_1a_1x1_conv/kernel*,
_output_shapes
:АА*
dtype0
Ц
+Conv3d_3c_1a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_3c_1a_1x1_conv/kernel*,
_output_shapes
:АА*
dtype0
ь
Conv3d_3c_1a_1x1_conv/Conv3DConv3DMixed_3b/concat+Conv3d_3c_1a_1x1_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€А*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_3c_2a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_3c_2a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"                
±
;Conv3d_3c_2a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_3c_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *:ЌЊ
±
;Conv3d_3c_2a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_3c_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *:Ќ>
Ґ
EConv3d_3c_2a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_3c_2a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_3c_2a_1x1_conv/kernel*+
_output_shapes
:А *
dtype0*

seed *
seed2 
О
;Conv3d_3c_2a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_3c_2a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_3c_2a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_3c_2a_1x1_conv/kernel*
_output_shapes
: 
≠
;Conv3d_3c_2a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_3c_2a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_3c_2a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_3c_2a_1x1_conv/kernel*+
_output_shapes
:А 
Я
7Conv3d_3c_2a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_3c_2a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_3c_2a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_3c_2a_1x1_conv/kernel*+
_output_shapes
:А 
ъ
Conv3d_3c_2a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_3c_2a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:А *-
shared_nameConv3d_3c_2a_1x1_conv/kernel
Й
=Conv3d_3c_2a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3c_2a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_3c_2a_1x1_conv/kernel/AssignAssignVariableOpConv3d_3c_2a_1x1_conv/kernel7Conv3d_3c_2a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_3c_2a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_3c_2a_1x1_conv/kernel*+
_output_shapes
:А *
dtype0
Х
+Conv3d_3c_2a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_3c_2a_1x1_conv/kernel*+
_output_shapes
:А *
dtype0
ы
Conv3d_3c_2a_1x1_conv/Conv3DConv3DMixed_3b/concat+Conv3d_3c_2a_1x1_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€ *
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

¶
*Conv3d_3c_1a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_3c_1a_1x1_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
ё
Conv3d_3c_1a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_3c_1a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*)
shared_nameConv3d_3c_1a_1x1_bn/beta
Б
9Conv3d_3c_1a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3c_1a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_3c_1a_1x1_bn/beta/AssignAssignVariableOpConv3d_3c_1a_1x1_bn/beta*Conv3d_3c_1a_1x1_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_3c_1a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_3c_1a_1x1_bn/beta*
_output_shapes	
:А*
dtype0
і
1Conv3d_3c_1a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_3c_1a_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0*
valueBА*    
у
Conv3d_3c_1a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_3c_1a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*0
shared_name!Conv3d_3c_1a_1x1_bn/moving_mean
П
@Conv3d_3c_1a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3c_1a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_3c_1a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_3c_1a_1x1_bn/moving_mean1Conv3d_3c_1a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_3c_1a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_3c_1a_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0
ї
4Conv3d_3c_1a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_3c_1a_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0*
valueBА*  А?
€
#Conv3d_3c_1a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_3c_1a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*4
shared_name%#Conv3d_3c_1a_1x1_bn/moving_variance
Ч
DConv3d_3c_1a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_3c_1a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_3c_1a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_3c_1a_1x1_bn/moving_variance4Conv3d_3c_1a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_3c_1a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_3c_1a_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0
Н
,Conv3d_3c_1a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_3c_1a_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0
h
#Conv3d_3c_1a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_3c_1a_1x1_bn/batchnorm/addAddV2,Conv3d_3c_1a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_3c_1a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes	
:А
u
#Conv3d_3c_1a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_3c_1a_1x1_bn/batchnorm/add*
T0*
_output_shapes	
:А
™
!Conv3d_3c_1a_1x1_bn/batchnorm/mulMulConv3d_3c_1a_1x1_conv/Conv3D#Conv3d_3c_1a_1x1_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€А
Л
.Conv3d_3c_1a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_3c_1a_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0
•
#Conv3d_3c_1a_1x1_bn/batchnorm/mul_1Mul.Conv3d_3c_1a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_3c_1a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:А
Д
.Conv3d_3c_1a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_3c_1a_1x1_bn/beta*
_output_shapes	
:А*
dtype0
£
!Conv3d_3c_1a_1x1_bn/batchnorm/subSub.Conv3d_3c_1a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_3c_1a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes	
:А
±
#Conv3d_3c_1a_1x1_bn/batchnorm/add_1AddV2!Conv3d_3c_1a_1x1_bn/batchnorm/mul!Conv3d_3c_1a_1x1_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€А
§
*Conv3d_3c_2a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_3c_2a_1x1_bn/beta*
_output_shapes
: *
dtype0*
valueB *    
Ё
Conv3d_3c_2a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_3c_2a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *)
shared_nameConv3d_3c_2a_1x1_bn/beta
Б
9Conv3d_3c_2a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3c_2a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_3c_2a_1x1_bn/beta/AssignAssignVariableOpConv3d_3c_2a_1x1_bn/beta*Conv3d_3c_2a_1x1_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_3c_2a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_3c_2a_1x1_bn/beta*
_output_shapes
: *
dtype0
≤
1Conv3d_3c_2a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_3c_2a_1x1_bn/moving_mean*
_output_shapes
: *
dtype0*
valueB *    
т
Conv3d_3c_2a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_3c_2a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *0
shared_name!Conv3d_3c_2a_1x1_bn/moving_mean
П
@Conv3d_3c_2a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3c_2a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_3c_2a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_3c_2a_1x1_bn/moving_mean1Conv3d_3c_2a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_3c_2a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_3c_2a_1x1_bn/moving_mean*
_output_shapes
: *
dtype0
є
4Conv3d_3c_2a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_3c_2a_1x1_bn/moving_variance*
_output_shapes
: *
dtype0*
valueB *  А?
ю
#Conv3d_3c_2a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_3c_2a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *4
shared_name%#Conv3d_3c_2a_1x1_bn/moving_variance
Ч
DConv3d_3c_2a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_3c_2a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_3c_2a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_3c_2a_1x1_bn/moving_variance4Conv3d_3c_2a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_3c_2a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_3c_2a_1x1_bn/moving_variance*
_output_shapes
: *
dtype0
М
,Conv3d_3c_2a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_3c_2a_1x1_bn/moving_variance*
_output_shapes
: *
dtype0
h
#Conv3d_3c_2a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_3c_2a_1x1_bn/batchnorm/addAddV2,Conv3d_3c_2a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_3c_2a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes
: 
t
#Conv3d_3c_2a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_3c_2a_1x1_bn/batchnorm/add*
T0*
_output_shapes
: 
©
!Conv3d_3c_2a_1x1_bn/batchnorm/mulMulConv3d_3c_2a_1x1_conv/Conv3D#Conv3d_3c_2a_1x1_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€ 
К
.Conv3d_3c_2a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_3c_2a_1x1_bn/moving_mean*
_output_shapes
: *
dtype0
§
#Conv3d_3c_2a_1x1_bn/batchnorm/mul_1Mul.Conv3d_3c_2a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_3c_2a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes
: 
Г
.Conv3d_3c_2a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_3c_2a_1x1_bn/beta*
_output_shapes
: *
dtype0
Ґ
!Conv3d_3c_2a_1x1_bn/batchnorm/subSub.Conv3d_3c_2a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_3c_2a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes
: 
∞
#Conv3d_3c_2a_1x1_bn/batchnorm/add_1AddV2!Conv3d_3c_2a_1x1_bn/batchnorm/mul!Conv3d_3c_2a_1x1_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€ 
Б
Conv3d_3c_1a_1x1/ReluRelu#Conv3d_3c_1a_1x1_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€А
А
Conv3d_3c_2a_1x1/ReluRelu#Conv3d_3c_2a_1x1_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€ 
ѕ
MaxPool2d_3c_3a_3x3/MaxPool3D	MaxPool3DMixed_3b/concat*
T0*4
_output_shapes"
 :€€€€€€€€€А*
data_formatNDHWC*
ksize	
*
paddingSAME*
strides	

Ћ
=Conv3d_3c_0a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_3c_0a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            А   
±
;Conv3d_3c_0a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_3c_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *   Њ
±
;Conv3d_3c_0a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_3c_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *   >
£
EConv3d_3c_0a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_3c_0a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_3c_0a_1x1_conv/kernel*,
_output_shapes
:АА*
dtype0*

seed *
seed2 
О
;Conv3d_3c_0a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_3c_0a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_3c_0a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_3c_0a_1x1_conv/kernel*
_output_shapes
: 
Ѓ
;Conv3d_3c_0a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_3c_0a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_3c_0a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_3c_0a_1x1_conv/kernel*,
_output_shapes
:АА
†
7Conv3d_3c_0a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_3c_0a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_3c_0a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_3c_0a_1x1_conv/kernel*,
_output_shapes
:АА
ы
Conv3d_3c_0a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_3c_0a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:АА*-
shared_nameConv3d_3c_0a_1x1_conv/kernel
Й
=Conv3d_3c_0a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3c_0a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_3c_0a_1x1_conv/kernel/AssignAssignVariableOpConv3d_3c_0a_1x1_conv/kernel7Conv3d_3c_0a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ы
0Conv3d_3c_0a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_3c_0a_1x1_conv/kernel*,
_output_shapes
:АА*
dtype0
Ц
+Conv3d_3c_0a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_3c_0a_1x1_conv/kernel*,
_output_shapes
:АА*
dtype0
ь
Conv3d_3c_0a_1x1_conv/Conv3DConv3DMixed_3b/concat+Conv3d_3c_0a_1x1_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€А*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_3c_1b_3x3_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_3c_1b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         А   ј   
±
;Conv3d_3c_1b_3x3_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_3c_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *ѕа„Љ
±
;Conv3d_3c_1b_3x3_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_3c_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *ѕа„<
£
EConv3d_3c_1b_3x3_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_3c_1b_3x3_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_3c_1b_3x3_conv/kernel*,
_output_shapes
:Ај*
dtype0*

seed *
seed2 
О
;Conv3d_3c_1b_3x3_conv/kernel/Initializer/random_uniform/subSub;Conv3d_3c_1b_3x3_conv/kernel/Initializer/random_uniform/max;Conv3d_3c_1b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_3c_1b_3x3_conv/kernel*
_output_shapes
: 
Ѓ
;Conv3d_3c_1b_3x3_conv/kernel/Initializer/random_uniform/mulMulEConv3d_3c_1b_3x3_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_3c_1b_3x3_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_3c_1b_3x3_conv/kernel*,
_output_shapes
:Ај
†
7Conv3d_3c_1b_3x3_conv/kernel/Initializer/random_uniformAdd;Conv3d_3c_1b_3x3_conv/kernel/Initializer/random_uniform/mul;Conv3d_3c_1b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_3c_1b_3x3_conv/kernel*,
_output_shapes
:Ај
ы
Conv3d_3c_1b_3x3_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_3c_1b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:Ај*-
shared_nameConv3d_3c_1b_3x3_conv/kernel
Й
=Conv3d_3c_1b_3x3_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3c_1b_3x3_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_3c_1b_3x3_conv/kernel/AssignAssignVariableOpConv3d_3c_1b_3x3_conv/kernel7Conv3d_3c_1b_3x3_conv/kernel/Initializer/random_uniform*
dtype0
Ы
0Conv3d_3c_1b_3x3_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_3c_1b_3x3_conv/kernel*,
_output_shapes
:Ај*
dtype0
Ц
+Conv3d_3c_1b_3x3_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_3c_1b_3x3_conv/kernel*,
_output_shapes
:Ај*
dtype0
В
Conv3d_3c_1b_3x3_conv/Conv3DConv3DConv3d_3c_1a_1x1/Relu+Conv3d_3c_1b_3x3_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€ј*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_3c_2b_3x3_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_3c_2b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"             `   
±
;Conv3d_3c_2b_3x3_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_3c_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *Ђ™*љ
±
;Conv3d_3c_2b_3x3_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_3c_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *Ђ™*=
°
EConv3d_3c_2b_3x3_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_3c_2b_3x3_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_3c_2b_3x3_conv/kernel**
_output_shapes
: `*
dtype0*

seed *
seed2 
О
;Conv3d_3c_2b_3x3_conv/kernel/Initializer/random_uniform/subSub;Conv3d_3c_2b_3x3_conv/kernel/Initializer/random_uniform/max;Conv3d_3c_2b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_3c_2b_3x3_conv/kernel*
_output_shapes
: 
ђ
;Conv3d_3c_2b_3x3_conv/kernel/Initializer/random_uniform/mulMulEConv3d_3c_2b_3x3_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_3c_2b_3x3_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_3c_2b_3x3_conv/kernel**
_output_shapes
: `
Ю
7Conv3d_3c_2b_3x3_conv/kernel/Initializer/random_uniformAdd;Conv3d_3c_2b_3x3_conv/kernel/Initializer/random_uniform/mul;Conv3d_3c_2b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_3c_2b_3x3_conv/kernel**
_output_shapes
: `
щ
Conv3d_3c_2b_3x3_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_3c_2b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: `*-
shared_nameConv3d_3c_2b_3x3_conv/kernel
Й
=Conv3d_3c_2b_3x3_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3c_2b_3x3_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_3c_2b_3x3_conv/kernel/AssignAssignVariableOpConv3d_3c_2b_3x3_conv/kernel7Conv3d_3c_2b_3x3_conv/kernel/Initializer/random_uniform*
dtype0
Щ
0Conv3d_3c_2b_3x3_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_3c_2b_3x3_conv/kernel**
_output_shapes
: `*
dtype0
Ф
+Conv3d_3c_2b_3x3_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_3c_2b_3x3_conv/kernel**
_output_shapes
: `*
dtype0
Б
Conv3d_3c_2b_3x3_conv/Conv3DConv3DConv3d_3c_2a_1x1/Relu+Conv3d_3c_2b_3x3_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€`*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_3c_3b_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_3c_3b_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            @   
±
;Conv3d_3c_3b_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_3c_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *М7Њ
±
;Conv3d_3c_3b_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_3c_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *М7>
Ґ
EConv3d_3c_3b_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_3c_3b_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_3c_3b_1x1_conv/kernel*+
_output_shapes
:А@*
dtype0*

seed *
seed2 
О
;Conv3d_3c_3b_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_3c_3b_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_3c_3b_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_3c_3b_1x1_conv/kernel*
_output_shapes
: 
≠
;Conv3d_3c_3b_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_3c_3b_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_3c_3b_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_3c_3b_1x1_conv/kernel*+
_output_shapes
:А@
Я
7Conv3d_3c_3b_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_3c_3b_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_3c_3b_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_3c_3b_1x1_conv/kernel*+
_output_shapes
:А@
ъ
Conv3d_3c_3b_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_3c_3b_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:А@*-
shared_nameConv3d_3c_3b_1x1_conv/kernel
Й
=Conv3d_3c_3b_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3c_3b_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_3c_3b_1x1_conv/kernel/AssignAssignVariableOpConv3d_3c_3b_1x1_conv/kernel7Conv3d_3c_3b_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_3c_3b_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_3c_3b_1x1_conv/kernel*+
_output_shapes
:А@*
dtype0
Х
+Conv3d_3c_3b_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_3c_3b_1x1_conv/kernel*+
_output_shapes
:А@*
dtype0
Й
Conv3d_3c_3b_1x1_conv/Conv3DConv3DMaxPool2d_3c_3a_3x3/MaxPool3D+Conv3d_3c_3b_1x1_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€@*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

¶
*Conv3d_3c_0a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_3c_0a_1x1_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
ё
Conv3d_3c_0a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_3c_0a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*)
shared_nameConv3d_3c_0a_1x1_bn/beta
Б
9Conv3d_3c_0a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3c_0a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_3c_0a_1x1_bn/beta/AssignAssignVariableOpConv3d_3c_0a_1x1_bn/beta*Conv3d_3c_0a_1x1_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_3c_0a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_3c_0a_1x1_bn/beta*
_output_shapes	
:А*
dtype0
і
1Conv3d_3c_0a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_3c_0a_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0*
valueBА*    
у
Conv3d_3c_0a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_3c_0a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*0
shared_name!Conv3d_3c_0a_1x1_bn/moving_mean
П
@Conv3d_3c_0a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3c_0a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_3c_0a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_3c_0a_1x1_bn/moving_mean1Conv3d_3c_0a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_3c_0a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_3c_0a_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0
ї
4Conv3d_3c_0a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_3c_0a_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0*
valueBА*  А?
€
#Conv3d_3c_0a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_3c_0a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*4
shared_name%#Conv3d_3c_0a_1x1_bn/moving_variance
Ч
DConv3d_3c_0a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_3c_0a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_3c_0a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_3c_0a_1x1_bn/moving_variance4Conv3d_3c_0a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_3c_0a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_3c_0a_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0
Н
,Conv3d_3c_0a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_3c_0a_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0
h
#Conv3d_3c_0a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_3c_0a_1x1_bn/batchnorm/addAddV2,Conv3d_3c_0a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_3c_0a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes	
:А
u
#Conv3d_3c_0a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_3c_0a_1x1_bn/batchnorm/add*
T0*
_output_shapes	
:А
™
!Conv3d_3c_0a_1x1_bn/batchnorm/mulMulConv3d_3c_0a_1x1_conv/Conv3D#Conv3d_3c_0a_1x1_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€А
Л
.Conv3d_3c_0a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_3c_0a_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0
•
#Conv3d_3c_0a_1x1_bn/batchnorm/mul_1Mul.Conv3d_3c_0a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_3c_0a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:А
Д
.Conv3d_3c_0a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_3c_0a_1x1_bn/beta*
_output_shapes	
:А*
dtype0
£
!Conv3d_3c_0a_1x1_bn/batchnorm/subSub.Conv3d_3c_0a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_3c_0a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes	
:А
±
#Conv3d_3c_0a_1x1_bn/batchnorm/add_1AddV2!Conv3d_3c_0a_1x1_bn/batchnorm/mul!Conv3d_3c_0a_1x1_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€А
¶
*Conv3d_3c_1b_3x3_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_3c_1b_3x3_bn/beta*
_output_shapes	
:ј*
dtype0*
valueBј*    
ё
Conv3d_3c_1b_3x3_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_3c_1b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:ј*)
shared_nameConv3d_3c_1b_3x3_bn/beta
Б
9Conv3d_3c_1b_3x3_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3c_1b_3x3_bn/beta*
_output_shapes
: 
Ж
Conv3d_3c_1b_3x3_bn/beta/AssignAssignVariableOpConv3d_3c_1b_3x3_bn/beta*Conv3d_3c_1b_3x3_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_3c_1b_3x3_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_3c_1b_3x3_bn/beta*
_output_shapes	
:ј*
dtype0
і
1Conv3d_3c_1b_3x3_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_3c_1b_3x3_bn/moving_mean*
_output_shapes	
:ј*
dtype0*
valueBј*    
у
Conv3d_3c_1b_3x3_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_3c_1b_3x3_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:ј*0
shared_name!Conv3d_3c_1b_3x3_bn/moving_mean
П
@Conv3d_3c_1b_3x3_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3c_1b_3x3_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_3c_1b_3x3_bn/moving_mean/AssignAssignVariableOpConv3d_3c_1b_3x3_bn/moving_mean1Conv3d_3c_1b_3x3_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_3c_1b_3x3_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_3c_1b_3x3_bn/moving_mean*
_output_shapes	
:ј*
dtype0
ї
4Conv3d_3c_1b_3x3_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_3c_1b_3x3_bn/moving_variance*
_output_shapes	
:ј*
dtype0*
valueBј*  А?
€
#Conv3d_3c_1b_3x3_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_3c_1b_3x3_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:ј*4
shared_name%#Conv3d_3c_1b_3x3_bn/moving_variance
Ч
DConv3d_3c_1b_3x3_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_3c_1b_3x3_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_3c_1b_3x3_bn/moving_variance/AssignAssignVariableOp#Conv3d_3c_1b_3x3_bn/moving_variance4Conv3d_3c_1b_3x3_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_3c_1b_3x3_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_3c_1b_3x3_bn/moving_variance*
_output_shapes	
:ј*
dtype0
Н
,Conv3d_3c_1b_3x3_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_3c_1b_3x3_bn/moving_variance*
_output_shapes	
:ј*
dtype0
h
#Conv3d_3c_1b_3x3_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_3c_1b_3x3_bn/batchnorm/addAddV2,Conv3d_3c_1b_3x3_bn/batchnorm/ReadVariableOp#Conv3d_3c_1b_3x3_bn/batchnorm/add/y*
T0*
_output_shapes	
:ј
u
#Conv3d_3c_1b_3x3_bn/batchnorm/RsqrtRsqrt!Conv3d_3c_1b_3x3_bn/batchnorm/add*
T0*
_output_shapes	
:ј
™
!Conv3d_3c_1b_3x3_bn/batchnorm/mulMulConv3d_3c_1b_3x3_conv/Conv3D#Conv3d_3c_1b_3x3_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€ј
Л
.Conv3d_3c_1b_3x3_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_3c_1b_3x3_bn/moving_mean*
_output_shapes	
:ј*
dtype0
•
#Conv3d_3c_1b_3x3_bn/batchnorm/mul_1Mul.Conv3d_3c_1b_3x3_bn/batchnorm/ReadVariableOp_1#Conv3d_3c_1b_3x3_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:ј
Д
.Conv3d_3c_1b_3x3_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_3c_1b_3x3_bn/beta*
_output_shapes	
:ј*
dtype0
£
!Conv3d_3c_1b_3x3_bn/batchnorm/subSub.Conv3d_3c_1b_3x3_bn/batchnorm/ReadVariableOp_2#Conv3d_3c_1b_3x3_bn/batchnorm/mul_1*
T0*
_output_shapes	
:ј
±
#Conv3d_3c_1b_3x3_bn/batchnorm/add_1AddV2!Conv3d_3c_1b_3x3_bn/batchnorm/mul!Conv3d_3c_1b_3x3_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€ј
§
*Conv3d_3c_2b_3x3_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_3c_2b_3x3_bn/beta*
_output_shapes
:`*
dtype0*
valueB`*    
Ё
Conv3d_3c_2b_3x3_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_3c_2b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:`*)
shared_nameConv3d_3c_2b_3x3_bn/beta
Б
9Conv3d_3c_2b_3x3_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3c_2b_3x3_bn/beta*
_output_shapes
: 
Ж
Conv3d_3c_2b_3x3_bn/beta/AssignAssignVariableOpConv3d_3c_2b_3x3_bn/beta*Conv3d_3c_2b_3x3_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_3c_2b_3x3_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_3c_2b_3x3_bn/beta*
_output_shapes
:`*
dtype0
≤
1Conv3d_3c_2b_3x3_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_3c_2b_3x3_bn/moving_mean*
_output_shapes
:`*
dtype0*
valueB`*    
т
Conv3d_3c_2b_3x3_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_3c_2b_3x3_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:`*0
shared_name!Conv3d_3c_2b_3x3_bn/moving_mean
П
@Conv3d_3c_2b_3x3_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3c_2b_3x3_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_3c_2b_3x3_bn/moving_mean/AssignAssignVariableOpConv3d_3c_2b_3x3_bn/moving_mean1Conv3d_3c_2b_3x3_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_3c_2b_3x3_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_3c_2b_3x3_bn/moving_mean*
_output_shapes
:`*
dtype0
є
4Conv3d_3c_2b_3x3_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_3c_2b_3x3_bn/moving_variance*
_output_shapes
:`*
dtype0*
valueB`*  А?
ю
#Conv3d_3c_2b_3x3_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_3c_2b_3x3_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:`*4
shared_name%#Conv3d_3c_2b_3x3_bn/moving_variance
Ч
DConv3d_3c_2b_3x3_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_3c_2b_3x3_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_3c_2b_3x3_bn/moving_variance/AssignAssignVariableOp#Conv3d_3c_2b_3x3_bn/moving_variance4Conv3d_3c_2b_3x3_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_3c_2b_3x3_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_3c_2b_3x3_bn/moving_variance*
_output_shapes
:`*
dtype0
М
,Conv3d_3c_2b_3x3_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_3c_2b_3x3_bn/moving_variance*
_output_shapes
:`*
dtype0
h
#Conv3d_3c_2b_3x3_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_3c_2b_3x3_bn/batchnorm/addAddV2,Conv3d_3c_2b_3x3_bn/batchnorm/ReadVariableOp#Conv3d_3c_2b_3x3_bn/batchnorm/add/y*
T0*
_output_shapes
:`
t
#Conv3d_3c_2b_3x3_bn/batchnorm/RsqrtRsqrt!Conv3d_3c_2b_3x3_bn/batchnorm/add*
T0*
_output_shapes
:`
©
!Conv3d_3c_2b_3x3_bn/batchnorm/mulMulConv3d_3c_2b_3x3_conv/Conv3D#Conv3d_3c_2b_3x3_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€`
К
.Conv3d_3c_2b_3x3_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_3c_2b_3x3_bn/moving_mean*
_output_shapes
:`*
dtype0
§
#Conv3d_3c_2b_3x3_bn/batchnorm/mul_1Mul.Conv3d_3c_2b_3x3_bn/batchnorm/ReadVariableOp_1#Conv3d_3c_2b_3x3_bn/batchnorm/Rsqrt*
T0*
_output_shapes
:`
Г
.Conv3d_3c_2b_3x3_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_3c_2b_3x3_bn/beta*
_output_shapes
:`*
dtype0
Ґ
!Conv3d_3c_2b_3x3_bn/batchnorm/subSub.Conv3d_3c_2b_3x3_bn/batchnorm/ReadVariableOp_2#Conv3d_3c_2b_3x3_bn/batchnorm/mul_1*
T0*
_output_shapes
:`
∞
#Conv3d_3c_2b_3x3_bn/batchnorm/add_1AddV2!Conv3d_3c_2b_3x3_bn/batchnorm/mul!Conv3d_3c_2b_3x3_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€`
§
*Conv3d_3c_3b_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_3c_3b_1x1_bn/beta*
_output_shapes
:@*
dtype0*
valueB@*    
Ё
Conv3d_3c_3b_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_3c_3b_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*)
shared_nameConv3d_3c_3b_1x1_bn/beta
Б
9Conv3d_3c_3b_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3c_3b_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_3c_3b_1x1_bn/beta/AssignAssignVariableOpConv3d_3c_3b_1x1_bn/beta*Conv3d_3c_3b_1x1_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_3c_3b_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_3c_3b_1x1_bn/beta*
_output_shapes
:@*
dtype0
≤
1Conv3d_3c_3b_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_3c_3b_1x1_bn/moving_mean*
_output_shapes
:@*
dtype0*
valueB@*    
т
Conv3d_3c_3b_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_3c_3b_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*0
shared_name!Conv3d_3c_3b_1x1_bn/moving_mean
П
@Conv3d_3c_3b_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_3c_3b_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_3c_3b_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_3c_3b_1x1_bn/moving_mean1Conv3d_3c_3b_1x1_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_3c_3b_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_3c_3b_1x1_bn/moving_mean*
_output_shapes
:@*
dtype0
є
4Conv3d_3c_3b_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_3c_3b_1x1_bn/moving_variance*
_output_shapes
:@*
dtype0*
valueB@*  А?
ю
#Conv3d_3c_3b_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_3c_3b_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*4
shared_name%#Conv3d_3c_3b_1x1_bn/moving_variance
Ч
DConv3d_3c_3b_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_3c_3b_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_3c_3b_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_3c_3b_1x1_bn/moving_variance4Conv3d_3c_3b_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_3c_3b_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_3c_3b_1x1_bn/moving_variance*
_output_shapes
:@*
dtype0
М
,Conv3d_3c_3b_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_3c_3b_1x1_bn/moving_variance*
_output_shapes
:@*
dtype0
h
#Conv3d_3c_3b_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_3c_3b_1x1_bn/batchnorm/addAddV2,Conv3d_3c_3b_1x1_bn/batchnorm/ReadVariableOp#Conv3d_3c_3b_1x1_bn/batchnorm/add/y*
T0*
_output_shapes
:@
t
#Conv3d_3c_3b_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_3c_3b_1x1_bn/batchnorm/add*
T0*
_output_shapes
:@
©
!Conv3d_3c_3b_1x1_bn/batchnorm/mulMulConv3d_3c_3b_1x1_conv/Conv3D#Conv3d_3c_3b_1x1_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€@
К
.Conv3d_3c_3b_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_3c_3b_1x1_bn/moving_mean*
_output_shapes
:@*
dtype0
§
#Conv3d_3c_3b_1x1_bn/batchnorm/mul_1Mul.Conv3d_3c_3b_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_3c_3b_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes
:@
Г
.Conv3d_3c_3b_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_3c_3b_1x1_bn/beta*
_output_shapes
:@*
dtype0
Ґ
!Conv3d_3c_3b_1x1_bn/batchnorm/subSub.Conv3d_3c_3b_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_3c_3b_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes
:@
∞
#Conv3d_3c_3b_1x1_bn/batchnorm/add_1AddV2!Conv3d_3c_3b_1x1_bn/batchnorm/mul!Conv3d_3c_3b_1x1_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€@
Б
Conv3d_3c_0a_1x1/ReluRelu#Conv3d_3c_0a_1x1_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€А
Б
Conv3d_3c_1b_3x3/ReluRelu#Conv3d_3c_1b_3x3_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€ј
А
Conv3d_3c_2b_3x3/ReluRelu#Conv3d_3c_2b_3x3_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€`
А
Conv3d_3c_3b_1x1/ReluRelu#Conv3d_3c_3b_1x1_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€@
V
Mixed_3c/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
б
Mixed_3c/concatConcatV2Conv3d_3c_0a_1x1/ReluConv3d_3c_1b_3x3/ReluConv3d_3c_2b_3x3/ReluConv3d_3c_3b_1x1/ReluMixed_3c/concat/axis*
N*
T0*

Tidx0*4
_output_shapes"
 :€€€€€€€€€а
ћ
MaxPool2d_4a_3x3/MaxPool3D	MaxPool3DMixed_3c/concat*
T0*4
_output_shapes"
 :€€€€€€€€€а*
data_formatNDHWC*
ksize	
*
paddingSAME*
strides	

Ћ
=Conv3d_4b_1a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4b_1a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         а  `   
±
;Conv3d_4b_1a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4b_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *м—љ
±
;Conv3d_4b_1a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4b_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *м—=
Ґ
EConv3d_4b_1a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4b_1a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4b_1a_1x1_conv/kernel*+
_output_shapes
:а`*
dtype0*

seed *
seed2 
О
;Conv3d_4b_1a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4b_1a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_4b_1a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4b_1a_1x1_conv/kernel*
_output_shapes
: 
≠
;Conv3d_4b_1a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4b_1a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4b_1a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4b_1a_1x1_conv/kernel*+
_output_shapes
:а`
Я
7Conv3d_4b_1a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_4b_1a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_4b_1a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4b_1a_1x1_conv/kernel*+
_output_shapes
:а`
ъ
Conv3d_4b_1a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4b_1a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:а`*-
shared_nameConv3d_4b_1a_1x1_conv/kernel
Й
=Conv3d_4b_1a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4b_1a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4b_1a_1x1_conv/kernel/AssignAssignVariableOpConv3d_4b_1a_1x1_conv/kernel7Conv3d_4b_1a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_4b_1a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4b_1a_1x1_conv/kernel*+
_output_shapes
:а`*
dtype0
Х
+Conv3d_4b_1a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4b_1a_1x1_conv/kernel*+
_output_shapes
:а`*
dtype0
Ж
Conv3d_4b_1a_1x1_conv/Conv3DConv3DMaxPool2d_4a_3x3/MaxPool3D+Conv3d_4b_1a_1x1_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€`*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_4b_2a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4b_2a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         а     
±
;Conv3d_4b_2a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4b_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *ю?бљ
±
;Conv3d_4b_2a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4b_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *ю?б=
Ґ
EConv3d_4b_2a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4b_2a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4b_2a_1x1_conv/kernel*+
_output_shapes
:а*
dtype0*

seed *
seed2 
О
;Conv3d_4b_2a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4b_2a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_4b_2a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4b_2a_1x1_conv/kernel*
_output_shapes
: 
≠
;Conv3d_4b_2a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4b_2a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4b_2a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4b_2a_1x1_conv/kernel*+
_output_shapes
:а
Я
7Conv3d_4b_2a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_4b_2a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_4b_2a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4b_2a_1x1_conv/kernel*+
_output_shapes
:а
ъ
Conv3d_4b_2a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4b_2a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:а*-
shared_nameConv3d_4b_2a_1x1_conv/kernel
Й
=Conv3d_4b_2a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4b_2a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4b_2a_1x1_conv/kernel/AssignAssignVariableOpConv3d_4b_2a_1x1_conv/kernel7Conv3d_4b_2a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_4b_2a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4b_2a_1x1_conv/kernel*+
_output_shapes
:а*
dtype0
Х
+Conv3d_4b_2a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4b_2a_1x1_conv/kernel*+
_output_shapes
:а*
dtype0
Ж
Conv3d_4b_2a_1x1_conv/Conv3DConv3DMaxPool2d_4a_3x3/MaxPool3D+Conv3d_4b_2a_1x1_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

§
*Conv3d_4b_1a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4b_1a_1x1_bn/beta*
_output_shapes
:`*
dtype0*
valueB`*    
Ё
Conv3d_4b_1a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4b_1a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:`*)
shared_nameConv3d_4b_1a_1x1_bn/beta
Б
9Conv3d_4b_1a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4b_1a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_4b_1a_1x1_bn/beta/AssignAssignVariableOpConv3d_4b_1a_1x1_bn/beta*Conv3d_4b_1a_1x1_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_4b_1a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4b_1a_1x1_bn/beta*
_output_shapes
:`*
dtype0
≤
1Conv3d_4b_1a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4b_1a_1x1_bn/moving_mean*
_output_shapes
:`*
dtype0*
valueB`*    
т
Conv3d_4b_1a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4b_1a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:`*0
shared_name!Conv3d_4b_1a_1x1_bn/moving_mean
П
@Conv3d_4b_1a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4b_1a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4b_1a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_4b_1a_1x1_bn/moving_mean1Conv3d_4b_1a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_4b_1a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4b_1a_1x1_bn/moving_mean*
_output_shapes
:`*
dtype0
є
4Conv3d_4b_1a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4b_1a_1x1_bn/moving_variance*
_output_shapes
:`*
dtype0*
valueB`*  А?
ю
#Conv3d_4b_1a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4b_1a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:`*4
shared_name%#Conv3d_4b_1a_1x1_bn/moving_variance
Ч
DConv3d_4b_1a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4b_1a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4b_1a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_4b_1a_1x1_bn/moving_variance4Conv3d_4b_1a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_4b_1a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4b_1a_1x1_bn/moving_variance*
_output_shapes
:`*
dtype0
М
,Conv3d_4b_1a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4b_1a_1x1_bn/moving_variance*
_output_shapes
:`*
dtype0
h
#Conv3d_4b_1a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_4b_1a_1x1_bn/batchnorm/addAddV2,Conv3d_4b_1a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_4b_1a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes
:`
t
#Conv3d_4b_1a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_4b_1a_1x1_bn/batchnorm/add*
T0*
_output_shapes
:`
©
!Conv3d_4b_1a_1x1_bn/batchnorm/mulMulConv3d_4b_1a_1x1_conv/Conv3D#Conv3d_4b_1a_1x1_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€`
К
.Conv3d_4b_1a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4b_1a_1x1_bn/moving_mean*
_output_shapes
:`*
dtype0
§
#Conv3d_4b_1a_1x1_bn/batchnorm/mul_1Mul.Conv3d_4b_1a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_4b_1a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes
:`
Г
.Conv3d_4b_1a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4b_1a_1x1_bn/beta*
_output_shapes
:`*
dtype0
Ґ
!Conv3d_4b_1a_1x1_bn/batchnorm/subSub.Conv3d_4b_1a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_4b_1a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes
:`
∞
#Conv3d_4b_1a_1x1_bn/batchnorm/add_1AddV2!Conv3d_4b_1a_1x1_bn/batchnorm/mul!Conv3d_4b_1a_1x1_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€`
§
*Conv3d_4b_2a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4b_2a_1x1_bn/beta*
_output_shapes
:*
dtype0*
valueB*    
Ё
Conv3d_4b_2a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4b_2a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*)
shared_nameConv3d_4b_2a_1x1_bn/beta
Б
9Conv3d_4b_2a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4b_2a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_4b_2a_1x1_bn/beta/AssignAssignVariableOpConv3d_4b_2a_1x1_bn/beta*Conv3d_4b_2a_1x1_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_4b_2a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4b_2a_1x1_bn/beta*
_output_shapes
:*
dtype0
≤
1Conv3d_4b_2a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4b_2a_1x1_bn/moving_mean*
_output_shapes
:*
dtype0*
valueB*    
т
Conv3d_4b_2a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4b_2a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*0
shared_name!Conv3d_4b_2a_1x1_bn/moving_mean
П
@Conv3d_4b_2a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4b_2a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4b_2a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_4b_2a_1x1_bn/moving_mean1Conv3d_4b_2a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_4b_2a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4b_2a_1x1_bn/moving_mean*
_output_shapes
:*
dtype0
є
4Conv3d_4b_2a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4b_2a_1x1_bn/moving_variance*
_output_shapes
:*
dtype0*
valueB*  А?
ю
#Conv3d_4b_2a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4b_2a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*4
shared_name%#Conv3d_4b_2a_1x1_bn/moving_variance
Ч
DConv3d_4b_2a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4b_2a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4b_2a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_4b_2a_1x1_bn/moving_variance4Conv3d_4b_2a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_4b_2a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4b_2a_1x1_bn/moving_variance*
_output_shapes
:*
dtype0
М
,Conv3d_4b_2a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4b_2a_1x1_bn/moving_variance*
_output_shapes
:*
dtype0
h
#Conv3d_4b_2a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_4b_2a_1x1_bn/batchnorm/addAddV2,Conv3d_4b_2a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_4b_2a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes
:
t
#Conv3d_4b_2a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_4b_2a_1x1_bn/batchnorm/add*
T0*
_output_shapes
:
©
!Conv3d_4b_2a_1x1_bn/batchnorm/mulMulConv3d_4b_2a_1x1_conv/Conv3D#Conv3d_4b_2a_1x1_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€
К
.Conv3d_4b_2a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4b_2a_1x1_bn/moving_mean*
_output_shapes
:*
dtype0
§
#Conv3d_4b_2a_1x1_bn/batchnorm/mul_1Mul.Conv3d_4b_2a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_4b_2a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes
:
Г
.Conv3d_4b_2a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4b_2a_1x1_bn/beta*
_output_shapes
:*
dtype0
Ґ
!Conv3d_4b_2a_1x1_bn/batchnorm/subSub.Conv3d_4b_2a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_4b_2a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes
:
∞
#Conv3d_4b_2a_1x1_bn/batchnorm/add_1AddV2!Conv3d_4b_2a_1x1_bn/batchnorm/mul!Conv3d_4b_2a_1x1_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€
А
Conv3d_4b_1a_1x1/ReluRelu#Conv3d_4b_1a_1x1_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€`
А
Conv3d_4b_2a_1x1/ReluRelu#Conv3d_4b_2a_1x1_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€
Џ
MaxPool2d_4b_3a_3x3/MaxPool3D	MaxPool3DMaxPool2d_4a_3x3/MaxPool3D*
T0*4
_output_shapes"
 :€€€€€€€€€а*
data_formatNDHWC*
ksize	
*
paddingSAME*
strides	

Ћ
=Conv3d_4b_0a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4b_0a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         а  ј   
±
;Conv3d_4b_0a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4b_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *ПДЅљ
±
;Conv3d_4b_0a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4b_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *ПДЅ=
£
EConv3d_4b_0a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4b_0a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4b_0a_1x1_conv/kernel*,
_output_shapes
:ај*
dtype0*

seed *
seed2 
О
;Conv3d_4b_0a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4b_0a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_4b_0a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4b_0a_1x1_conv/kernel*
_output_shapes
: 
Ѓ
;Conv3d_4b_0a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4b_0a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4b_0a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4b_0a_1x1_conv/kernel*,
_output_shapes
:ај
†
7Conv3d_4b_0a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_4b_0a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_4b_0a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4b_0a_1x1_conv/kernel*,
_output_shapes
:ај
ы
Conv3d_4b_0a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4b_0a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:ај*-
shared_nameConv3d_4b_0a_1x1_conv/kernel
Й
=Conv3d_4b_0a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4b_0a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4b_0a_1x1_conv/kernel/AssignAssignVariableOpConv3d_4b_0a_1x1_conv/kernel7Conv3d_4b_0a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ы
0Conv3d_4b_0a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4b_0a_1x1_conv/kernel*,
_output_shapes
:ај*
dtype0
Ц
+Conv3d_4b_0a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4b_0a_1x1_conv/kernel*,
_output_shapes
:ај*
dtype0
З
Conv3d_4b_0a_1x1_conv/Conv3DConv3DMaxPool2d_4a_3x3/MaxPool3D+Conv3d_4b_0a_1x1_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€ј*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_4b_1b_3x3_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4b_1b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         `   –   
±
;Conv3d_4b_1b_3x3_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4b_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *|ЁЉ
±
;Conv3d_4b_1b_3x3_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4b_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *|Ё<
Ґ
EConv3d_4b_1b_3x3_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4b_1b_3x3_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4b_1b_3x3_conv/kernel*+
_output_shapes
:`–*
dtype0*

seed *
seed2 
О
;Conv3d_4b_1b_3x3_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4b_1b_3x3_conv/kernel/Initializer/random_uniform/max;Conv3d_4b_1b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4b_1b_3x3_conv/kernel*
_output_shapes
: 
≠
;Conv3d_4b_1b_3x3_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4b_1b_3x3_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4b_1b_3x3_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4b_1b_3x3_conv/kernel*+
_output_shapes
:`–
Я
7Conv3d_4b_1b_3x3_conv/kernel/Initializer/random_uniformAdd;Conv3d_4b_1b_3x3_conv/kernel/Initializer/random_uniform/mul;Conv3d_4b_1b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4b_1b_3x3_conv/kernel*+
_output_shapes
:`–
ъ
Conv3d_4b_1b_3x3_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4b_1b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:`–*-
shared_nameConv3d_4b_1b_3x3_conv/kernel
Й
=Conv3d_4b_1b_3x3_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4b_1b_3x3_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4b_1b_3x3_conv/kernel/AssignAssignVariableOpConv3d_4b_1b_3x3_conv/kernel7Conv3d_4b_1b_3x3_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_4b_1b_3x3_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4b_1b_3x3_conv/kernel*+
_output_shapes
:`–*
dtype0
Х
+Conv3d_4b_1b_3x3_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4b_1b_3x3_conv/kernel*+
_output_shapes
:`–*
dtype0
В
Conv3d_4b_1b_3x3_conv/Conv3DConv3DConv3d_4b_1a_1x1/Relu+Conv3d_4b_1b_3x3_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€–*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_4b_2b_3x3_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4b_2b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            0   
±
;Conv3d_4b_2b_3x3_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4b_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *п[qљ
±
;Conv3d_4b_2b_3x3_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4b_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *п[q=
°
EConv3d_4b_2b_3x3_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4b_2b_3x3_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4b_2b_3x3_conv/kernel**
_output_shapes
:0*
dtype0*

seed *
seed2 
О
;Conv3d_4b_2b_3x3_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4b_2b_3x3_conv/kernel/Initializer/random_uniform/max;Conv3d_4b_2b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4b_2b_3x3_conv/kernel*
_output_shapes
: 
ђ
;Conv3d_4b_2b_3x3_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4b_2b_3x3_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4b_2b_3x3_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4b_2b_3x3_conv/kernel**
_output_shapes
:0
Ю
7Conv3d_4b_2b_3x3_conv/kernel/Initializer/random_uniformAdd;Conv3d_4b_2b_3x3_conv/kernel/Initializer/random_uniform/mul;Conv3d_4b_2b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4b_2b_3x3_conv/kernel**
_output_shapes
:0
щ
Conv3d_4b_2b_3x3_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4b_2b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:0*-
shared_nameConv3d_4b_2b_3x3_conv/kernel
Й
=Conv3d_4b_2b_3x3_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4b_2b_3x3_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4b_2b_3x3_conv/kernel/AssignAssignVariableOpConv3d_4b_2b_3x3_conv/kernel7Conv3d_4b_2b_3x3_conv/kernel/Initializer/random_uniform*
dtype0
Щ
0Conv3d_4b_2b_3x3_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4b_2b_3x3_conv/kernel**
_output_shapes
:0*
dtype0
Ф
+Conv3d_4b_2b_3x3_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4b_2b_3x3_conv/kernel**
_output_shapes
:0*
dtype0
Б
Conv3d_4b_2b_3x3_conv/Conv3DConv3DConv3d_4b_2a_1x1/Relu+Conv3d_4b_2b_3x3_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€0*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_4b_3b_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4b_3b_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         а  @   
±
;Conv3d_4b_3b_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4b_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *A„љ
±
;Conv3d_4b_3b_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4b_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *A„=
Ґ
EConv3d_4b_3b_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4b_3b_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4b_3b_1x1_conv/kernel*+
_output_shapes
:а@*
dtype0*

seed *
seed2 
О
;Conv3d_4b_3b_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4b_3b_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_4b_3b_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4b_3b_1x1_conv/kernel*
_output_shapes
: 
≠
;Conv3d_4b_3b_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4b_3b_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4b_3b_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4b_3b_1x1_conv/kernel*+
_output_shapes
:а@
Я
7Conv3d_4b_3b_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_4b_3b_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_4b_3b_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4b_3b_1x1_conv/kernel*+
_output_shapes
:а@
ъ
Conv3d_4b_3b_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4b_3b_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:а@*-
shared_nameConv3d_4b_3b_1x1_conv/kernel
Й
=Conv3d_4b_3b_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4b_3b_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4b_3b_1x1_conv/kernel/AssignAssignVariableOpConv3d_4b_3b_1x1_conv/kernel7Conv3d_4b_3b_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_4b_3b_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4b_3b_1x1_conv/kernel*+
_output_shapes
:а@*
dtype0
Х
+Conv3d_4b_3b_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4b_3b_1x1_conv/kernel*+
_output_shapes
:а@*
dtype0
Й
Conv3d_4b_3b_1x1_conv/Conv3DConv3DMaxPool2d_4b_3a_3x3/MaxPool3D+Conv3d_4b_3b_1x1_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€@*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

¶
*Conv3d_4b_0a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4b_0a_1x1_bn/beta*
_output_shapes	
:ј*
dtype0*
valueBј*    
ё
Conv3d_4b_0a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4b_0a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:ј*)
shared_nameConv3d_4b_0a_1x1_bn/beta
Б
9Conv3d_4b_0a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4b_0a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_4b_0a_1x1_bn/beta/AssignAssignVariableOpConv3d_4b_0a_1x1_bn/beta*Conv3d_4b_0a_1x1_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_4b_0a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4b_0a_1x1_bn/beta*
_output_shapes	
:ј*
dtype0
і
1Conv3d_4b_0a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4b_0a_1x1_bn/moving_mean*
_output_shapes	
:ј*
dtype0*
valueBј*    
у
Conv3d_4b_0a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4b_0a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:ј*0
shared_name!Conv3d_4b_0a_1x1_bn/moving_mean
П
@Conv3d_4b_0a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4b_0a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4b_0a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_4b_0a_1x1_bn/moving_mean1Conv3d_4b_0a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_4b_0a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4b_0a_1x1_bn/moving_mean*
_output_shapes	
:ј*
dtype0
ї
4Conv3d_4b_0a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4b_0a_1x1_bn/moving_variance*
_output_shapes	
:ј*
dtype0*
valueBј*  А?
€
#Conv3d_4b_0a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4b_0a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:ј*4
shared_name%#Conv3d_4b_0a_1x1_bn/moving_variance
Ч
DConv3d_4b_0a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4b_0a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4b_0a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_4b_0a_1x1_bn/moving_variance4Conv3d_4b_0a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_4b_0a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4b_0a_1x1_bn/moving_variance*
_output_shapes	
:ј*
dtype0
Н
,Conv3d_4b_0a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4b_0a_1x1_bn/moving_variance*
_output_shapes	
:ј*
dtype0
h
#Conv3d_4b_0a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_4b_0a_1x1_bn/batchnorm/addAddV2,Conv3d_4b_0a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_4b_0a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes	
:ј
u
#Conv3d_4b_0a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_4b_0a_1x1_bn/batchnorm/add*
T0*
_output_shapes	
:ј
™
!Conv3d_4b_0a_1x1_bn/batchnorm/mulMulConv3d_4b_0a_1x1_conv/Conv3D#Conv3d_4b_0a_1x1_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€ј
Л
.Conv3d_4b_0a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4b_0a_1x1_bn/moving_mean*
_output_shapes	
:ј*
dtype0
•
#Conv3d_4b_0a_1x1_bn/batchnorm/mul_1Mul.Conv3d_4b_0a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_4b_0a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:ј
Д
.Conv3d_4b_0a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4b_0a_1x1_bn/beta*
_output_shapes	
:ј*
dtype0
£
!Conv3d_4b_0a_1x1_bn/batchnorm/subSub.Conv3d_4b_0a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_4b_0a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes	
:ј
±
#Conv3d_4b_0a_1x1_bn/batchnorm/add_1AddV2!Conv3d_4b_0a_1x1_bn/batchnorm/mul!Conv3d_4b_0a_1x1_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€ј
¶
*Conv3d_4b_1b_3x3_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4b_1b_3x3_bn/beta*
_output_shapes	
:–*
dtype0*
valueB–*    
ё
Conv3d_4b_1b_3x3_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4b_1b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:–*)
shared_nameConv3d_4b_1b_3x3_bn/beta
Б
9Conv3d_4b_1b_3x3_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4b_1b_3x3_bn/beta*
_output_shapes
: 
Ж
Conv3d_4b_1b_3x3_bn/beta/AssignAssignVariableOpConv3d_4b_1b_3x3_bn/beta*Conv3d_4b_1b_3x3_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_4b_1b_3x3_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4b_1b_3x3_bn/beta*
_output_shapes	
:–*
dtype0
і
1Conv3d_4b_1b_3x3_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4b_1b_3x3_bn/moving_mean*
_output_shapes	
:–*
dtype0*
valueB–*    
у
Conv3d_4b_1b_3x3_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4b_1b_3x3_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:–*0
shared_name!Conv3d_4b_1b_3x3_bn/moving_mean
П
@Conv3d_4b_1b_3x3_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4b_1b_3x3_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4b_1b_3x3_bn/moving_mean/AssignAssignVariableOpConv3d_4b_1b_3x3_bn/moving_mean1Conv3d_4b_1b_3x3_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_4b_1b_3x3_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4b_1b_3x3_bn/moving_mean*
_output_shapes	
:–*
dtype0
ї
4Conv3d_4b_1b_3x3_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4b_1b_3x3_bn/moving_variance*
_output_shapes	
:–*
dtype0*
valueB–*  А?
€
#Conv3d_4b_1b_3x3_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4b_1b_3x3_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:–*4
shared_name%#Conv3d_4b_1b_3x3_bn/moving_variance
Ч
DConv3d_4b_1b_3x3_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4b_1b_3x3_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4b_1b_3x3_bn/moving_variance/AssignAssignVariableOp#Conv3d_4b_1b_3x3_bn/moving_variance4Conv3d_4b_1b_3x3_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_4b_1b_3x3_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4b_1b_3x3_bn/moving_variance*
_output_shapes	
:–*
dtype0
Н
,Conv3d_4b_1b_3x3_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4b_1b_3x3_bn/moving_variance*
_output_shapes	
:–*
dtype0
h
#Conv3d_4b_1b_3x3_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_4b_1b_3x3_bn/batchnorm/addAddV2,Conv3d_4b_1b_3x3_bn/batchnorm/ReadVariableOp#Conv3d_4b_1b_3x3_bn/batchnorm/add/y*
T0*
_output_shapes	
:–
u
#Conv3d_4b_1b_3x3_bn/batchnorm/RsqrtRsqrt!Conv3d_4b_1b_3x3_bn/batchnorm/add*
T0*
_output_shapes	
:–
™
!Conv3d_4b_1b_3x3_bn/batchnorm/mulMulConv3d_4b_1b_3x3_conv/Conv3D#Conv3d_4b_1b_3x3_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€–
Л
.Conv3d_4b_1b_3x3_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4b_1b_3x3_bn/moving_mean*
_output_shapes	
:–*
dtype0
•
#Conv3d_4b_1b_3x3_bn/batchnorm/mul_1Mul.Conv3d_4b_1b_3x3_bn/batchnorm/ReadVariableOp_1#Conv3d_4b_1b_3x3_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:–
Д
.Conv3d_4b_1b_3x3_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4b_1b_3x3_bn/beta*
_output_shapes	
:–*
dtype0
£
!Conv3d_4b_1b_3x3_bn/batchnorm/subSub.Conv3d_4b_1b_3x3_bn/batchnorm/ReadVariableOp_2#Conv3d_4b_1b_3x3_bn/batchnorm/mul_1*
T0*
_output_shapes	
:–
±
#Conv3d_4b_1b_3x3_bn/batchnorm/add_1AddV2!Conv3d_4b_1b_3x3_bn/batchnorm/mul!Conv3d_4b_1b_3x3_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€–
§
*Conv3d_4b_2b_3x3_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4b_2b_3x3_bn/beta*
_output_shapes
:0*
dtype0*
valueB0*    
Ё
Conv3d_4b_2b_3x3_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4b_2b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:0*)
shared_nameConv3d_4b_2b_3x3_bn/beta
Б
9Conv3d_4b_2b_3x3_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4b_2b_3x3_bn/beta*
_output_shapes
: 
Ж
Conv3d_4b_2b_3x3_bn/beta/AssignAssignVariableOpConv3d_4b_2b_3x3_bn/beta*Conv3d_4b_2b_3x3_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_4b_2b_3x3_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4b_2b_3x3_bn/beta*
_output_shapes
:0*
dtype0
≤
1Conv3d_4b_2b_3x3_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4b_2b_3x3_bn/moving_mean*
_output_shapes
:0*
dtype0*
valueB0*    
т
Conv3d_4b_2b_3x3_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4b_2b_3x3_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:0*0
shared_name!Conv3d_4b_2b_3x3_bn/moving_mean
П
@Conv3d_4b_2b_3x3_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4b_2b_3x3_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4b_2b_3x3_bn/moving_mean/AssignAssignVariableOpConv3d_4b_2b_3x3_bn/moving_mean1Conv3d_4b_2b_3x3_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_4b_2b_3x3_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4b_2b_3x3_bn/moving_mean*
_output_shapes
:0*
dtype0
є
4Conv3d_4b_2b_3x3_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4b_2b_3x3_bn/moving_variance*
_output_shapes
:0*
dtype0*
valueB0*  А?
ю
#Conv3d_4b_2b_3x3_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4b_2b_3x3_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:0*4
shared_name%#Conv3d_4b_2b_3x3_bn/moving_variance
Ч
DConv3d_4b_2b_3x3_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4b_2b_3x3_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4b_2b_3x3_bn/moving_variance/AssignAssignVariableOp#Conv3d_4b_2b_3x3_bn/moving_variance4Conv3d_4b_2b_3x3_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_4b_2b_3x3_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4b_2b_3x3_bn/moving_variance*
_output_shapes
:0*
dtype0
М
,Conv3d_4b_2b_3x3_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4b_2b_3x3_bn/moving_variance*
_output_shapes
:0*
dtype0
h
#Conv3d_4b_2b_3x3_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_4b_2b_3x3_bn/batchnorm/addAddV2,Conv3d_4b_2b_3x3_bn/batchnorm/ReadVariableOp#Conv3d_4b_2b_3x3_bn/batchnorm/add/y*
T0*
_output_shapes
:0
t
#Conv3d_4b_2b_3x3_bn/batchnorm/RsqrtRsqrt!Conv3d_4b_2b_3x3_bn/batchnorm/add*
T0*
_output_shapes
:0
©
!Conv3d_4b_2b_3x3_bn/batchnorm/mulMulConv3d_4b_2b_3x3_conv/Conv3D#Conv3d_4b_2b_3x3_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€0
К
.Conv3d_4b_2b_3x3_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4b_2b_3x3_bn/moving_mean*
_output_shapes
:0*
dtype0
§
#Conv3d_4b_2b_3x3_bn/batchnorm/mul_1Mul.Conv3d_4b_2b_3x3_bn/batchnorm/ReadVariableOp_1#Conv3d_4b_2b_3x3_bn/batchnorm/Rsqrt*
T0*
_output_shapes
:0
Г
.Conv3d_4b_2b_3x3_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4b_2b_3x3_bn/beta*
_output_shapes
:0*
dtype0
Ґ
!Conv3d_4b_2b_3x3_bn/batchnorm/subSub.Conv3d_4b_2b_3x3_bn/batchnorm/ReadVariableOp_2#Conv3d_4b_2b_3x3_bn/batchnorm/mul_1*
T0*
_output_shapes
:0
∞
#Conv3d_4b_2b_3x3_bn/batchnorm/add_1AddV2!Conv3d_4b_2b_3x3_bn/batchnorm/mul!Conv3d_4b_2b_3x3_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€0
§
*Conv3d_4b_3b_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4b_3b_1x1_bn/beta*
_output_shapes
:@*
dtype0*
valueB@*    
Ё
Conv3d_4b_3b_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4b_3b_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*)
shared_nameConv3d_4b_3b_1x1_bn/beta
Б
9Conv3d_4b_3b_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4b_3b_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_4b_3b_1x1_bn/beta/AssignAssignVariableOpConv3d_4b_3b_1x1_bn/beta*Conv3d_4b_3b_1x1_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_4b_3b_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4b_3b_1x1_bn/beta*
_output_shapes
:@*
dtype0
≤
1Conv3d_4b_3b_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4b_3b_1x1_bn/moving_mean*
_output_shapes
:@*
dtype0*
valueB@*    
т
Conv3d_4b_3b_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4b_3b_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*0
shared_name!Conv3d_4b_3b_1x1_bn/moving_mean
П
@Conv3d_4b_3b_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4b_3b_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4b_3b_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_4b_3b_1x1_bn/moving_mean1Conv3d_4b_3b_1x1_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_4b_3b_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4b_3b_1x1_bn/moving_mean*
_output_shapes
:@*
dtype0
є
4Conv3d_4b_3b_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4b_3b_1x1_bn/moving_variance*
_output_shapes
:@*
dtype0*
valueB@*  А?
ю
#Conv3d_4b_3b_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4b_3b_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*4
shared_name%#Conv3d_4b_3b_1x1_bn/moving_variance
Ч
DConv3d_4b_3b_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4b_3b_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4b_3b_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_4b_3b_1x1_bn/moving_variance4Conv3d_4b_3b_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_4b_3b_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4b_3b_1x1_bn/moving_variance*
_output_shapes
:@*
dtype0
М
,Conv3d_4b_3b_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4b_3b_1x1_bn/moving_variance*
_output_shapes
:@*
dtype0
h
#Conv3d_4b_3b_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_4b_3b_1x1_bn/batchnorm/addAddV2,Conv3d_4b_3b_1x1_bn/batchnorm/ReadVariableOp#Conv3d_4b_3b_1x1_bn/batchnorm/add/y*
T0*
_output_shapes
:@
t
#Conv3d_4b_3b_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_4b_3b_1x1_bn/batchnorm/add*
T0*
_output_shapes
:@
©
!Conv3d_4b_3b_1x1_bn/batchnorm/mulMulConv3d_4b_3b_1x1_conv/Conv3D#Conv3d_4b_3b_1x1_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€@
К
.Conv3d_4b_3b_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4b_3b_1x1_bn/moving_mean*
_output_shapes
:@*
dtype0
§
#Conv3d_4b_3b_1x1_bn/batchnorm/mul_1Mul.Conv3d_4b_3b_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_4b_3b_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes
:@
Г
.Conv3d_4b_3b_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4b_3b_1x1_bn/beta*
_output_shapes
:@*
dtype0
Ґ
!Conv3d_4b_3b_1x1_bn/batchnorm/subSub.Conv3d_4b_3b_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_4b_3b_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes
:@
∞
#Conv3d_4b_3b_1x1_bn/batchnorm/add_1AddV2!Conv3d_4b_3b_1x1_bn/batchnorm/mul!Conv3d_4b_3b_1x1_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€@
Б
Conv3d_4b_0a_1x1/ReluRelu#Conv3d_4b_0a_1x1_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€ј
Б
Conv3d_4b_1b_3x3/ReluRelu#Conv3d_4b_1b_3x3_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€–
А
Conv3d_4b_2b_3x3/ReluRelu#Conv3d_4b_2b_3x3_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€0
А
Conv3d_4b_3b_1x1/ReluRelu#Conv3d_4b_3b_1x1_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€@
V
Mixed_4b/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
б
Mixed_4b/concatConcatV2Conv3d_4b_0a_1x1/ReluConv3d_4b_1b_3x3/ReluConv3d_4b_2b_3x3/ReluConv3d_4b_3b_1x1/ReluMixed_4b/concat/axis*
N*
T0*

Tidx0*4
_output_shapes"
 :€€€€€€€€€А
Ћ
=Conv3d_4c_1a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4c_1a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            p   
±
;Conv3d_4c_1a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4c_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *Ђ“»љ
±
;Conv3d_4c_1a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4c_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *Ђ“»=
Ґ
EConv3d_4c_1a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4c_1a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4c_1a_1x1_conv/kernel*+
_output_shapes
:Аp*
dtype0*

seed *
seed2 
О
;Conv3d_4c_1a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4c_1a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_4c_1a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4c_1a_1x1_conv/kernel*
_output_shapes
: 
≠
;Conv3d_4c_1a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4c_1a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4c_1a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4c_1a_1x1_conv/kernel*+
_output_shapes
:Аp
Я
7Conv3d_4c_1a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_4c_1a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_4c_1a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4c_1a_1x1_conv/kernel*+
_output_shapes
:Аp
ъ
Conv3d_4c_1a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4c_1a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:Аp*-
shared_nameConv3d_4c_1a_1x1_conv/kernel
Й
=Conv3d_4c_1a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4c_1a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4c_1a_1x1_conv/kernel/AssignAssignVariableOpConv3d_4c_1a_1x1_conv/kernel7Conv3d_4c_1a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_4c_1a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4c_1a_1x1_conv/kernel*+
_output_shapes
:Аp*
dtype0
Х
+Conv3d_4c_1a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4c_1a_1x1_conv/kernel*+
_output_shapes
:Аp*
dtype0
ы
Conv3d_4c_1a_1x1_conv/Conv3DConv3DMixed_4b/concat+Conv3d_4c_1a_1x1_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€p*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_4c_2a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4c_2a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"               
±
;Conv3d_4c_2a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4c_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *£ЃЎљ
±
;Conv3d_4c_2a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4c_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *£ЃЎ=
Ґ
EConv3d_4c_2a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4c_2a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4c_2a_1x1_conv/kernel*+
_output_shapes
:А*
dtype0*

seed *
seed2 
О
;Conv3d_4c_2a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4c_2a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_4c_2a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4c_2a_1x1_conv/kernel*
_output_shapes
: 
≠
;Conv3d_4c_2a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4c_2a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4c_2a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4c_2a_1x1_conv/kernel*+
_output_shapes
:А
Я
7Conv3d_4c_2a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_4c_2a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_4c_2a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4c_2a_1x1_conv/kernel*+
_output_shapes
:А
ъ
Conv3d_4c_2a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4c_2a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:А*-
shared_nameConv3d_4c_2a_1x1_conv/kernel
Й
=Conv3d_4c_2a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4c_2a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4c_2a_1x1_conv/kernel/AssignAssignVariableOpConv3d_4c_2a_1x1_conv/kernel7Conv3d_4c_2a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_4c_2a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4c_2a_1x1_conv/kernel*+
_output_shapes
:А*
dtype0
Х
+Conv3d_4c_2a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4c_2a_1x1_conv/kernel*+
_output_shapes
:А*
dtype0
ы
Conv3d_4c_2a_1x1_conv/Conv3DConv3DMixed_4b/concat+Conv3d_4c_2a_1x1_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

§
*Conv3d_4c_1a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4c_1a_1x1_bn/beta*
_output_shapes
:p*
dtype0*
valueBp*    
Ё
Conv3d_4c_1a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4c_1a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:p*)
shared_nameConv3d_4c_1a_1x1_bn/beta
Б
9Conv3d_4c_1a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4c_1a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_4c_1a_1x1_bn/beta/AssignAssignVariableOpConv3d_4c_1a_1x1_bn/beta*Conv3d_4c_1a_1x1_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_4c_1a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4c_1a_1x1_bn/beta*
_output_shapes
:p*
dtype0
≤
1Conv3d_4c_1a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4c_1a_1x1_bn/moving_mean*
_output_shapes
:p*
dtype0*
valueBp*    
т
Conv3d_4c_1a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4c_1a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:p*0
shared_name!Conv3d_4c_1a_1x1_bn/moving_mean
П
@Conv3d_4c_1a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4c_1a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4c_1a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_4c_1a_1x1_bn/moving_mean1Conv3d_4c_1a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_4c_1a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4c_1a_1x1_bn/moving_mean*
_output_shapes
:p*
dtype0
є
4Conv3d_4c_1a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4c_1a_1x1_bn/moving_variance*
_output_shapes
:p*
dtype0*
valueBp*  А?
ю
#Conv3d_4c_1a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4c_1a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:p*4
shared_name%#Conv3d_4c_1a_1x1_bn/moving_variance
Ч
DConv3d_4c_1a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4c_1a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4c_1a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_4c_1a_1x1_bn/moving_variance4Conv3d_4c_1a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_4c_1a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4c_1a_1x1_bn/moving_variance*
_output_shapes
:p*
dtype0
М
,Conv3d_4c_1a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4c_1a_1x1_bn/moving_variance*
_output_shapes
:p*
dtype0
h
#Conv3d_4c_1a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_4c_1a_1x1_bn/batchnorm/addAddV2,Conv3d_4c_1a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_4c_1a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes
:p
t
#Conv3d_4c_1a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_4c_1a_1x1_bn/batchnorm/add*
T0*
_output_shapes
:p
©
!Conv3d_4c_1a_1x1_bn/batchnorm/mulMulConv3d_4c_1a_1x1_conv/Conv3D#Conv3d_4c_1a_1x1_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€p
К
.Conv3d_4c_1a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4c_1a_1x1_bn/moving_mean*
_output_shapes
:p*
dtype0
§
#Conv3d_4c_1a_1x1_bn/batchnorm/mul_1Mul.Conv3d_4c_1a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_4c_1a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes
:p
Г
.Conv3d_4c_1a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4c_1a_1x1_bn/beta*
_output_shapes
:p*
dtype0
Ґ
!Conv3d_4c_1a_1x1_bn/batchnorm/subSub.Conv3d_4c_1a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_4c_1a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes
:p
∞
#Conv3d_4c_1a_1x1_bn/batchnorm/add_1AddV2!Conv3d_4c_1a_1x1_bn/batchnorm/mul!Conv3d_4c_1a_1x1_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€p
§
*Conv3d_4c_2a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4c_2a_1x1_bn/beta*
_output_shapes
:*
dtype0*
valueB*    
Ё
Conv3d_4c_2a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4c_2a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*)
shared_nameConv3d_4c_2a_1x1_bn/beta
Б
9Conv3d_4c_2a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4c_2a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_4c_2a_1x1_bn/beta/AssignAssignVariableOpConv3d_4c_2a_1x1_bn/beta*Conv3d_4c_2a_1x1_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_4c_2a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4c_2a_1x1_bn/beta*
_output_shapes
:*
dtype0
≤
1Conv3d_4c_2a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4c_2a_1x1_bn/moving_mean*
_output_shapes
:*
dtype0*
valueB*    
т
Conv3d_4c_2a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4c_2a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*0
shared_name!Conv3d_4c_2a_1x1_bn/moving_mean
П
@Conv3d_4c_2a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4c_2a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4c_2a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_4c_2a_1x1_bn/moving_mean1Conv3d_4c_2a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_4c_2a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4c_2a_1x1_bn/moving_mean*
_output_shapes
:*
dtype0
є
4Conv3d_4c_2a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4c_2a_1x1_bn/moving_variance*
_output_shapes
:*
dtype0*
valueB*  А?
ю
#Conv3d_4c_2a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4c_2a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*4
shared_name%#Conv3d_4c_2a_1x1_bn/moving_variance
Ч
DConv3d_4c_2a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4c_2a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4c_2a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_4c_2a_1x1_bn/moving_variance4Conv3d_4c_2a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_4c_2a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4c_2a_1x1_bn/moving_variance*
_output_shapes
:*
dtype0
М
,Conv3d_4c_2a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4c_2a_1x1_bn/moving_variance*
_output_shapes
:*
dtype0
h
#Conv3d_4c_2a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_4c_2a_1x1_bn/batchnorm/addAddV2,Conv3d_4c_2a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_4c_2a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes
:
t
#Conv3d_4c_2a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_4c_2a_1x1_bn/batchnorm/add*
T0*
_output_shapes
:
©
!Conv3d_4c_2a_1x1_bn/batchnorm/mulMulConv3d_4c_2a_1x1_conv/Conv3D#Conv3d_4c_2a_1x1_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€
К
.Conv3d_4c_2a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4c_2a_1x1_bn/moving_mean*
_output_shapes
:*
dtype0
§
#Conv3d_4c_2a_1x1_bn/batchnorm/mul_1Mul.Conv3d_4c_2a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_4c_2a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes
:
Г
.Conv3d_4c_2a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4c_2a_1x1_bn/beta*
_output_shapes
:*
dtype0
Ґ
!Conv3d_4c_2a_1x1_bn/batchnorm/subSub.Conv3d_4c_2a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_4c_2a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes
:
∞
#Conv3d_4c_2a_1x1_bn/batchnorm/add_1AddV2!Conv3d_4c_2a_1x1_bn/batchnorm/mul!Conv3d_4c_2a_1x1_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€
А
Conv3d_4c_1a_1x1/ReluRelu#Conv3d_4c_1a_1x1_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€p
А
Conv3d_4c_2a_1x1/ReluRelu#Conv3d_4c_2a_1x1_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€
ѕ
MaxPool2d_4c_3a_3x3/MaxPool3D	MaxPool3DMixed_4b/concat*
T0*4
_output_shapes"
 :€€€€€€€€€А*
data_formatNDHWC*
ksize	
*
paddingSAME*
strides	

Ћ
=Conv3d_4c_0a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4c_0a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            †   
±
;Conv3d_4c_0a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4c_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *ПДЅљ
±
;Conv3d_4c_0a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4c_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *ПДЅ=
£
EConv3d_4c_0a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4c_0a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4c_0a_1x1_conv/kernel*,
_output_shapes
:А†*
dtype0*

seed *
seed2 
О
;Conv3d_4c_0a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4c_0a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_4c_0a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4c_0a_1x1_conv/kernel*
_output_shapes
: 
Ѓ
;Conv3d_4c_0a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4c_0a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4c_0a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4c_0a_1x1_conv/kernel*,
_output_shapes
:А†
†
7Conv3d_4c_0a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_4c_0a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_4c_0a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4c_0a_1x1_conv/kernel*,
_output_shapes
:А†
ы
Conv3d_4c_0a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4c_0a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:А†*-
shared_nameConv3d_4c_0a_1x1_conv/kernel
Й
=Conv3d_4c_0a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4c_0a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4c_0a_1x1_conv/kernel/AssignAssignVariableOpConv3d_4c_0a_1x1_conv/kernel7Conv3d_4c_0a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ы
0Conv3d_4c_0a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4c_0a_1x1_conv/kernel*,
_output_shapes
:А†*
dtype0
Ц
+Conv3d_4c_0a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4c_0a_1x1_conv/kernel*,
_output_shapes
:А†*
dtype0
ь
Conv3d_4c_0a_1x1_conv/Conv3DConv3DMixed_4b/concat+Conv3d_4c_0a_1x1_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€†*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_4c_1b_3x3_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4c_1b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         p   а   
±
;Conv3d_4c_1b_3x3_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4c_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *ођ“Љ
±
;Conv3d_4c_1b_3x3_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4c_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *ођ“<
Ґ
EConv3d_4c_1b_3x3_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4c_1b_3x3_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4c_1b_3x3_conv/kernel*+
_output_shapes
:pа*
dtype0*

seed *
seed2 
О
;Conv3d_4c_1b_3x3_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4c_1b_3x3_conv/kernel/Initializer/random_uniform/max;Conv3d_4c_1b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4c_1b_3x3_conv/kernel*
_output_shapes
: 
≠
;Conv3d_4c_1b_3x3_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4c_1b_3x3_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4c_1b_3x3_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4c_1b_3x3_conv/kernel*+
_output_shapes
:pа
Я
7Conv3d_4c_1b_3x3_conv/kernel/Initializer/random_uniformAdd;Conv3d_4c_1b_3x3_conv/kernel/Initializer/random_uniform/mul;Conv3d_4c_1b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4c_1b_3x3_conv/kernel*+
_output_shapes
:pа
ъ
Conv3d_4c_1b_3x3_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4c_1b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:pа*-
shared_nameConv3d_4c_1b_3x3_conv/kernel
Й
=Conv3d_4c_1b_3x3_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4c_1b_3x3_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4c_1b_3x3_conv/kernel/AssignAssignVariableOpConv3d_4c_1b_3x3_conv/kernel7Conv3d_4c_1b_3x3_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_4c_1b_3x3_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4c_1b_3x3_conv/kernel*+
_output_shapes
:pа*
dtype0
Х
+Conv3d_4c_1b_3x3_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4c_1b_3x3_conv/kernel*+
_output_shapes
:pа*
dtype0
В
Conv3d_4c_1b_3x3_conv/Conv3DConv3DConv3d_4c_1a_1x1/Relu+Conv3d_4c_1b_3x3_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€а*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_4c_2b_3x3_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4c_2b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            @   
±
;Conv3d_4c_2b_3x3_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4c_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *н‘Mљ
±
;Conv3d_4c_2b_3x3_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4c_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *н‘M=
°
EConv3d_4c_2b_3x3_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4c_2b_3x3_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4c_2b_3x3_conv/kernel**
_output_shapes
:@*
dtype0*

seed *
seed2 
О
;Conv3d_4c_2b_3x3_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4c_2b_3x3_conv/kernel/Initializer/random_uniform/max;Conv3d_4c_2b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4c_2b_3x3_conv/kernel*
_output_shapes
: 
ђ
;Conv3d_4c_2b_3x3_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4c_2b_3x3_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4c_2b_3x3_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4c_2b_3x3_conv/kernel**
_output_shapes
:@
Ю
7Conv3d_4c_2b_3x3_conv/kernel/Initializer/random_uniformAdd;Conv3d_4c_2b_3x3_conv/kernel/Initializer/random_uniform/mul;Conv3d_4c_2b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4c_2b_3x3_conv/kernel**
_output_shapes
:@
щ
Conv3d_4c_2b_3x3_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4c_2b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*-
shared_nameConv3d_4c_2b_3x3_conv/kernel
Й
=Conv3d_4c_2b_3x3_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4c_2b_3x3_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4c_2b_3x3_conv/kernel/AssignAssignVariableOpConv3d_4c_2b_3x3_conv/kernel7Conv3d_4c_2b_3x3_conv/kernel/Initializer/random_uniform*
dtype0
Щ
0Conv3d_4c_2b_3x3_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4c_2b_3x3_conv/kernel**
_output_shapes
:@*
dtype0
Ф
+Conv3d_4c_2b_3x3_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4c_2b_3x3_conv/kernel**
_output_shapes
:@*
dtype0
Б
Conv3d_4c_2b_3x3_conv/Conv3DConv3DConv3d_4c_2a_1x1/Relu+Conv3d_4c_2b_3x3_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€@*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_4c_3b_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4c_3b_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            @   
±
;Conv3d_4c_3b_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4c_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *м—љ
±
;Conv3d_4c_3b_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4c_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *м—=
Ґ
EConv3d_4c_3b_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4c_3b_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4c_3b_1x1_conv/kernel*+
_output_shapes
:А@*
dtype0*

seed *
seed2 
О
;Conv3d_4c_3b_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4c_3b_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_4c_3b_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4c_3b_1x1_conv/kernel*
_output_shapes
: 
≠
;Conv3d_4c_3b_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4c_3b_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4c_3b_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4c_3b_1x1_conv/kernel*+
_output_shapes
:А@
Я
7Conv3d_4c_3b_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_4c_3b_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_4c_3b_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4c_3b_1x1_conv/kernel*+
_output_shapes
:А@
ъ
Conv3d_4c_3b_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4c_3b_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:А@*-
shared_nameConv3d_4c_3b_1x1_conv/kernel
Й
=Conv3d_4c_3b_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4c_3b_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4c_3b_1x1_conv/kernel/AssignAssignVariableOpConv3d_4c_3b_1x1_conv/kernel7Conv3d_4c_3b_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_4c_3b_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4c_3b_1x1_conv/kernel*+
_output_shapes
:А@*
dtype0
Х
+Conv3d_4c_3b_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4c_3b_1x1_conv/kernel*+
_output_shapes
:А@*
dtype0
Й
Conv3d_4c_3b_1x1_conv/Conv3DConv3DMaxPool2d_4c_3a_3x3/MaxPool3D+Conv3d_4c_3b_1x1_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€@*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

¶
*Conv3d_4c_0a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4c_0a_1x1_bn/beta*
_output_shapes	
:†*
dtype0*
valueB†*    
ё
Conv3d_4c_0a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4c_0a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:†*)
shared_nameConv3d_4c_0a_1x1_bn/beta
Б
9Conv3d_4c_0a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4c_0a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_4c_0a_1x1_bn/beta/AssignAssignVariableOpConv3d_4c_0a_1x1_bn/beta*Conv3d_4c_0a_1x1_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_4c_0a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4c_0a_1x1_bn/beta*
_output_shapes	
:†*
dtype0
і
1Conv3d_4c_0a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4c_0a_1x1_bn/moving_mean*
_output_shapes	
:†*
dtype0*
valueB†*    
у
Conv3d_4c_0a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4c_0a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:†*0
shared_name!Conv3d_4c_0a_1x1_bn/moving_mean
П
@Conv3d_4c_0a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4c_0a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4c_0a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_4c_0a_1x1_bn/moving_mean1Conv3d_4c_0a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_4c_0a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4c_0a_1x1_bn/moving_mean*
_output_shapes	
:†*
dtype0
ї
4Conv3d_4c_0a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4c_0a_1x1_bn/moving_variance*
_output_shapes	
:†*
dtype0*
valueB†*  А?
€
#Conv3d_4c_0a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4c_0a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:†*4
shared_name%#Conv3d_4c_0a_1x1_bn/moving_variance
Ч
DConv3d_4c_0a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4c_0a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4c_0a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_4c_0a_1x1_bn/moving_variance4Conv3d_4c_0a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_4c_0a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4c_0a_1x1_bn/moving_variance*
_output_shapes	
:†*
dtype0
Н
,Conv3d_4c_0a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4c_0a_1x1_bn/moving_variance*
_output_shapes	
:†*
dtype0
h
#Conv3d_4c_0a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_4c_0a_1x1_bn/batchnorm/addAddV2,Conv3d_4c_0a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_4c_0a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes	
:†
u
#Conv3d_4c_0a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_4c_0a_1x1_bn/batchnorm/add*
T0*
_output_shapes	
:†
™
!Conv3d_4c_0a_1x1_bn/batchnorm/mulMulConv3d_4c_0a_1x1_conv/Conv3D#Conv3d_4c_0a_1x1_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€†
Л
.Conv3d_4c_0a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4c_0a_1x1_bn/moving_mean*
_output_shapes	
:†*
dtype0
•
#Conv3d_4c_0a_1x1_bn/batchnorm/mul_1Mul.Conv3d_4c_0a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_4c_0a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:†
Д
.Conv3d_4c_0a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4c_0a_1x1_bn/beta*
_output_shapes	
:†*
dtype0
£
!Conv3d_4c_0a_1x1_bn/batchnorm/subSub.Conv3d_4c_0a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_4c_0a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes	
:†
±
#Conv3d_4c_0a_1x1_bn/batchnorm/add_1AddV2!Conv3d_4c_0a_1x1_bn/batchnorm/mul!Conv3d_4c_0a_1x1_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€†
¶
*Conv3d_4c_1b_3x3_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4c_1b_3x3_bn/beta*
_output_shapes	
:а*
dtype0*
valueBа*    
ё
Conv3d_4c_1b_3x3_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4c_1b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:а*)
shared_nameConv3d_4c_1b_3x3_bn/beta
Б
9Conv3d_4c_1b_3x3_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4c_1b_3x3_bn/beta*
_output_shapes
: 
Ж
Conv3d_4c_1b_3x3_bn/beta/AssignAssignVariableOpConv3d_4c_1b_3x3_bn/beta*Conv3d_4c_1b_3x3_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_4c_1b_3x3_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4c_1b_3x3_bn/beta*
_output_shapes	
:а*
dtype0
і
1Conv3d_4c_1b_3x3_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4c_1b_3x3_bn/moving_mean*
_output_shapes	
:а*
dtype0*
valueBа*    
у
Conv3d_4c_1b_3x3_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4c_1b_3x3_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:а*0
shared_name!Conv3d_4c_1b_3x3_bn/moving_mean
П
@Conv3d_4c_1b_3x3_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4c_1b_3x3_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4c_1b_3x3_bn/moving_mean/AssignAssignVariableOpConv3d_4c_1b_3x3_bn/moving_mean1Conv3d_4c_1b_3x3_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_4c_1b_3x3_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4c_1b_3x3_bn/moving_mean*
_output_shapes	
:а*
dtype0
ї
4Conv3d_4c_1b_3x3_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4c_1b_3x3_bn/moving_variance*
_output_shapes	
:а*
dtype0*
valueBа*  А?
€
#Conv3d_4c_1b_3x3_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4c_1b_3x3_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:а*4
shared_name%#Conv3d_4c_1b_3x3_bn/moving_variance
Ч
DConv3d_4c_1b_3x3_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4c_1b_3x3_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4c_1b_3x3_bn/moving_variance/AssignAssignVariableOp#Conv3d_4c_1b_3x3_bn/moving_variance4Conv3d_4c_1b_3x3_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_4c_1b_3x3_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4c_1b_3x3_bn/moving_variance*
_output_shapes	
:а*
dtype0
Н
,Conv3d_4c_1b_3x3_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4c_1b_3x3_bn/moving_variance*
_output_shapes	
:а*
dtype0
h
#Conv3d_4c_1b_3x3_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_4c_1b_3x3_bn/batchnorm/addAddV2,Conv3d_4c_1b_3x3_bn/batchnorm/ReadVariableOp#Conv3d_4c_1b_3x3_bn/batchnorm/add/y*
T0*
_output_shapes	
:а
u
#Conv3d_4c_1b_3x3_bn/batchnorm/RsqrtRsqrt!Conv3d_4c_1b_3x3_bn/batchnorm/add*
T0*
_output_shapes	
:а
™
!Conv3d_4c_1b_3x3_bn/batchnorm/mulMulConv3d_4c_1b_3x3_conv/Conv3D#Conv3d_4c_1b_3x3_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€а
Л
.Conv3d_4c_1b_3x3_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4c_1b_3x3_bn/moving_mean*
_output_shapes	
:а*
dtype0
•
#Conv3d_4c_1b_3x3_bn/batchnorm/mul_1Mul.Conv3d_4c_1b_3x3_bn/batchnorm/ReadVariableOp_1#Conv3d_4c_1b_3x3_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:а
Д
.Conv3d_4c_1b_3x3_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4c_1b_3x3_bn/beta*
_output_shapes	
:а*
dtype0
£
!Conv3d_4c_1b_3x3_bn/batchnorm/subSub.Conv3d_4c_1b_3x3_bn/batchnorm/ReadVariableOp_2#Conv3d_4c_1b_3x3_bn/batchnorm/mul_1*
T0*
_output_shapes	
:а
±
#Conv3d_4c_1b_3x3_bn/batchnorm/add_1AddV2!Conv3d_4c_1b_3x3_bn/batchnorm/mul!Conv3d_4c_1b_3x3_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€а
§
*Conv3d_4c_2b_3x3_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4c_2b_3x3_bn/beta*
_output_shapes
:@*
dtype0*
valueB@*    
Ё
Conv3d_4c_2b_3x3_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4c_2b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*)
shared_nameConv3d_4c_2b_3x3_bn/beta
Б
9Conv3d_4c_2b_3x3_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4c_2b_3x3_bn/beta*
_output_shapes
: 
Ж
Conv3d_4c_2b_3x3_bn/beta/AssignAssignVariableOpConv3d_4c_2b_3x3_bn/beta*Conv3d_4c_2b_3x3_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_4c_2b_3x3_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4c_2b_3x3_bn/beta*
_output_shapes
:@*
dtype0
≤
1Conv3d_4c_2b_3x3_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4c_2b_3x3_bn/moving_mean*
_output_shapes
:@*
dtype0*
valueB@*    
т
Conv3d_4c_2b_3x3_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4c_2b_3x3_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*0
shared_name!Conv3d_4c_2b_3x3_bn/moving_mean
П
@Conv3d_4c_2b_3x3_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4c_2b_3x3_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4c_2b_3x3_bn/moving_mean/AssignAssignVariableOpConv3d_4c_2b_3x3_bn/moving_mean1Conv3d_4c_2b_3x3_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_4c_2b_3x3_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4c_2b_3x3_bn/moving_mean*
_output_shapes
:@*
dtype0
є
4Conv3d_4c_2b_3x3_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4c_2b_3x3_bn/moving_variance*
_output_shapes
:@*
dtype0*
valueB@*  А?
ю
#Conv3d_4c_2b_3x3_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4c_2b_3x3_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*4
shared_name%#Conv3d_4c_2b_3x3_bn/moving_variance
Ч
DConv3d_4c_2b_3x3_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4c_2b_3x3_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4c_2b_3x3_bn/moving_variance/AssignAssignVariableOp#Conv3d_4c_2b_3x3_bn/moving_variance4Conv3d_4c_2b_3x3_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_4c_2b_3x3_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4c_2b_3x3_bn/moving_variance*
_output_shapes
:@*
dtype0
М
,Conv3d_4c_2b_3x3_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4c_2b_3x3_bn/moving_variance*
_output_shapes
:@*
dtype0
h
#Conv3d_4c_2b_3x3_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_4c_2b_3x3_bn/batchnorm/addAddV2,Conv3d_4c_2b_3x3_bn/batchnorm/ReadVariableOp#Conv3d_4c_2b_3x3_bn/batchnorm/add/y*
T0*
_output_shapes
:@
t
#Conv3d_4c_2b_3x3_bn/batchnorm/RsqrtRsqrt!Conv3d_4c_2b_3x3_bn/batchnorm/add*
T0*
_output_shapes
:@
©
!Conv3d_4c_2b_3x3_bn/batchnorm/mulMulConv3d_4c_2b_3x3_conv/Conv3D#Conv3d_4c_2b_3x3_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€@
К
.Conv3d_4c_2b_3x3_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4c_2b_3x3_bn/moving_mean*
_output_shapes
:@*
dtype0
§
#Conv3d_4c_2b_3x3_bn/batchnorm/mul_1Mul.Conv3d_4c_2b_3x3_bn/batchnorm/ReadVariableOp_1#Conv3d_4c_2b_3x3_bn/batchnorm/Rsqrt*
T0*
_output_shapes
:@
Г
.Conv3d_4c_2b_3x3_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4c_2b_3x3_bn/beta*
_output_shapes
:@*
dtype0
Ґ
!Conv3d_4c_2b_3x3_bn/batchnorm/subSub.Conv3d_4c_2b_3x3_bn/batchnorm/ReadVariableOp_2#Conv3d_4c_2b_3x3_bn/batchnorm/mul_1*
T0*
_output_shapes
:@
∞
#Conv3d_4c_2b_3x3_bn/batchnorm/add_1AddV2!Conv3d_4c_2b_3x3_bn/batchnorm/mul!Conv3d_4c_2b_3x3_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€@
§
*Conv3d_4c_3b_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4c_3b_1x1_bn/beta*
_output_shapes
:@*
dtype0*
valueB@*    
Ё
Conv3d_4c_3b_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4c_3b_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*)
shared_nameConv3d_4c_3b_1x1_bn/beta
Б
9Conv3d_4c_3b_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4c_3b_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_4c_3b_1x1_bn/beta/AssignAssignVariableOpConv3d_4c_3b_1x1_bn/beta*Conv3d_4c_3b_1x1_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_4c_3b_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4c_3b_1x1_bn/beta*
_output_shapes
:@*
dtype0
≤
1Conv3d_4c_3b_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4c_3b_1x1_bn/moving_mean*
_output_shapes
:@*
dtype0*
valueB@*    
т
Conv3d_4c_3b_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4c_3b_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*0
shared_name!Conv3d_4c_3b_1x1_bn/moving_mean
П
@Conv3d_4c_3b_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4c_3b_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4c_3b_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_4c_3b_1x1_bn/moving_mean1Conv3d_4c_3b_1x1_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_4c_3b_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4c_3b_1x1_bn/moving_mean*
_output_shapes
:@*
dtype0
є
4Conv3d_4c_3b_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4c_3b_1x1_bn/moving_variance*
_output_shapes
:@*
dtype0*
valueB@*  А?
ю
#Conv3d_4c_3b_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4c_3b_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*4
shared_name%#Conv3d_4c_3b_1x1_bn/moving_variance
Ч
DConv3d_4c_3b_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4c_3b_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4c_3b_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_4c_3b_1x1_bn/moving_variance4Conv3d_4c_3b_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_4c_3b_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4c_3b_1x1_bn/moving_variance*
_output_shapes
:@*
dtype0
М
,Conv3d_4c_3b_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4c_3b_1x1_bn/moving_variance*
_output_shapes
:@*
dtype0
h
#Conv3d_4c_3b_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_4c_3b_1x1_bn/batchnorm/addAddV2,Conv3d_4c_3b_1x1_bn/batchnorm/ReadVariableOp#Conv3d_4c_3b_1x1_bn/batchnorm/add/y*
T0*
_output_shapes
:@
t
#Conv3d_4c_3b_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_4c_3b_1x1_bn/batchnorm/add*
T0*
_output_shapes
:@
©
!Conv3d_4c_3b_1x1_bn/batchnorm/mulMulConv3d_4c_3b_1x1_conv/Conv3D#Conv3d_4c_3b_1x1_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€@
К
.Conv3d_4c_3b_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4c_3b_1x1_bn/moving_mean*
_output_shapes
:@*
dtype0
§
#Conv3d_4c_3b_1x1_bn/batchnorm/mul_1Mul.Conv3d_4c_3b_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_4c_3b_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes
:@
Г
.Conv3d_4c_3b_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4c_3b_1x1_bn/beta*
_output_shapes
:@*
dtype0
Ґ
!Conv3d_4c_3b_1x1_bn/batchnorm/subSub.Conv3d_4c_3b_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_4c_3b_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes
:@
∞
#Conv3d_4c_3b_1x1_bn/batchnorm/add_1AddV2!Conv3d_4c_3b_1x1_bn/batchnorm/mul!Conv3d_4c_3b_1x1_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€@
Б
Conv3d_4c_0a_1x1/ReluRelu#Conv3d_4c_0a_1x1_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€†
Б
Conv3d_4c_1b_3x3/ReluRelu#Conv3d_4c_1b_3x3_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€а
А
Conv3d_4c_2b_3x3/ReluRelu#Conv3d_4c_2b_3x3_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€@
А
Conv3d_4c_3b_1x1/ReluRelu#Conv3d_4c_3b_1x1_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€@
V
Mixed_4c/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
б
Mixed_4c/concatConcatV2Conv3d_4c_0a_1x1/ReluConv3d_4c_1b_3x3/ReluConv3d_4c_2b_3x3/ReluConv3d_4c_3b_1x1/ReluMixed_4c/concat/axis*
N*
T0*

Tidx0*4
_output_shapes"
 :€€€€€€€€€А
Ћ
=Conv3d_4d_1a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4d_1a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            А   
±
;Conv3d_4d_1a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4d_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *шK∆љ
±
;Conv3d_4d_1a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4d_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *шK∆=
£
EConv3d_4d_1a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4d_1a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4d_1a_1x1_conv/kernel*,
_output_shapes
:АА*
dtype0*

seed *
seed2 
О
;Conv3d_4d_1a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4d_1a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_4d_1a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4d_1a_1x1_conv/kernel*
_output_shapes
: 
Ѓ
;Conv3d_4d_1a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4d_1a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4d_1a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4d_1a_1x1_conv/kernel*,
_output_shapes
:АА
†
7Conv3d_4d_1a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_4d_1a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_4d_1a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4d_1a_1x1_conv/kernel*,
_output_shapes
:АА
ы
Conv3d_4d_1a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4d_1a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:АА*-
shared_nameConv3d_4d_1a_1x1_conv/kernel
Й
=Conv3d_4d_1a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4d_1a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4d_1a_1x1_conv/kernel/AssignAssignVariableOpConv3d_4d_1a_1x1_conv/kernel7Conv3d_4d_1a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ы
0Conv3d_4d_1a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4d_1a_1x1_conv/kernel*,
_output_shapes
:АА*
dtype0
Ц
+Conv3d_4d_1a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4d_1a_1x1_conv/kernel*,
_output_shapes
:АА*
dtype0
ь
Conv3d_4d_1a_1x1_conv/Conv3DConv3DMixed_4c/concat+Conv3d_4d_1a_1x1_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€А*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_4d_2a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4d_2a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"               
±
;Conv3d_4d_2a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4d_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *£ЃЎљ
±
;Conv3d_4d_2a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4d_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *£ЃЎ=
Ґ
EConv3d_4d_2a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4d_2a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4d_2a_1x1_conv/kernel*+
_output_shapes
:А*
dtype0*

seed *
seed2 
О
;Conv3d_4d_2a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4d_2a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_4d_2a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4d_2a_1x1_conv/kernel*
_output_shapes
: 
≠
;Conv3d_4d_2a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4d_2a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4d_2a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4d_2a_1x1_conv/kernel*+
_output_shapes
:А
Я
7Conv3d_4d_2a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_4d_2a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_4d_2a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4d_2a_1x1_conv/kernel*+
_output_shapes
:А
ъ
Conv3d_4d_2a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4d_2a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:А*-
shared_nameConv3d_4d_2a_1x1_conv/kernel
Й
=Conv3d_4d_2a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4d_2a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4d_2a_1x1_conv/kernel/AssignAssignVariableOpConv3d_4d_2a_1x1_conv/kernel7Conv3d_4d_2a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_4d_2a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4d_2a_1x1_conv/kernel*+
_output_shapes
:А*
dtype0
Х
+Conv3d_4d_2a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4d_2a_1x1_conv/kernel*+
_output_shapes
:А*
dtype0
ы
Conv3d_4d_2a_1x1_conv/Conv3DConv3DMixed_4c/concat+Conv3d_4d_2a_1x1_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

¶
*Conv3d_4d_1a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4d_1a_1x1_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
ё
Conv3d_4d_1a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4d_1a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*)
shared_nameConv3d_4d_1a_1x1_bn/beta
Б
9Conv3d_4d_1a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4d_1a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_4d_1a_1x1_bn/beta/AssignAssignVariableOpConv3d_4d_1a_1x1_bn/beta*Conv3d_4d_1a_1x1_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_4d_1a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4d_1a_1x1_bn/beta*
_output_shapes	
:А*
dtype0
і
1Conv3d_4d_1a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4d_1a_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0*
valueBА*    
у
Conv3d_4d_1a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4d_1a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*0
shared_name!Conv3d_4d_1a_1x1_bn/moving_mean
П
@Conv3d_4d_1a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4d_1a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4d_1a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_4d_1a_1x1_bn/moving_mean1Conv3d_4d_1a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_4d_1a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4d_1a_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0
ї
4Conv3d_4d_1a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4d_1a_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0*
valueBА*  А?
€
#Conv3d_4d_1a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4d_1a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*4
shared_name%#Conv3d_4d_1a_1x1_bn/moving_variance
Ч
DConv3d_4d_1a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4d_1a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4d_1a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_4d_1a_1x1_bn/moving_variance4Conv3d_4d_1a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_4d_1a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4d_1a_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0
Н
,Conv3d_4d_1a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4d_1a_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0
h
#Conv3d_4d_1a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_4d_1a_1x1_bn/batchnorm/addAddV2,Conv3d_4d_1a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_4d_1a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes	
:А
u
#Conv3d_4d_1a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_4d_1a_1x1_bn/batchnorm/add*
T0*
_output_shapes	
:А
™
!Conv3d_4d_1a_1x1_bn/batchnorm/mulMulConv3d_4d_1a_1x1_conv/Conv3D#Conv3d_4d_1a_1x1_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€А
Л
.Conv3d_4d_1a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4d_1a_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0
•
#Conv3d_4d_1a_1x1_bn/batchnorm/mul_1Mul.Conv3d_4d_1a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_4d_1a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:А
Д
.Conv3d_4d_1a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4d_1a_1x1_bn/beta*
_output_shapes	
:А*
dtype0
£
!Conv3d_4d_1a_1x1_bn/batchnorm/subSub.Conv3d_4d_1a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_4d_1a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes	
:А
±
#Conv3d_4d_1a_1x1_bn/batchnorm/add_1AddV2!Conv3d_4d_1a_1x1_bn/batchnorm/mul!Conv3d_4d_1a_1x1_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€А
§
*Conv3d_4d_2a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4d_2a_1x1_bn/beta*
_output_shapes
:*
dtype0*
valueB*    
Ё
Conv3d_4d_2a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4d_2a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*)
shared_nameConv3d_4d_2a_1x1_bn/beta
Б
9Conv3d_4d_2a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4d_2a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_4d_2a_1x1_bn/beta/AssignAssignVariableOpConv3d_4d_2a_1x1_bn/beta*Conv3d_4d_2a_1x1_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_4d_2a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4d_2a_1x1_bn/beta*
_output_shapes
:*
dtype0
≤
1Conv3d_4d_2a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4d_2a_1x1_bn/moving_mean*
_output_shapes
:*
dtype0*
valueB*    
т
Conv3d_4d_2a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4d_2a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*0
shared_name!Conv3d_4d_2a_1x1_bn/moving_mean
П
@Conv3d_4d_2a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4d_2a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4d_2a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_4d_2a_1x1_bn/moving_mean1Conv3d_4d_2a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_4d_2a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4d_2a_1x1_bn/moving_mean*
_output_shapes
:*
dtype0
є
4Conv3d_4d_2a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4d_2a_1x1_bn/moving_variance*
_output_shapes
:*
dtype0*
valueB*  А?
ю
#Conv3d_4d_2a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4d_2a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*4
shared_name%#Conv3d_4d_2a_1x1_bn/moving_variance
Ч
DConv3d_4d_2a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4d_2a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4d_2a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_4d_2a_1x1_bn/moving_variance4Conv3d_4d_2a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_4d_2a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4d_2a_1x1_bn/moving_variance*
_output_shapes
:*
dtype0
М
,Conv3d_4d_2a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4d_2a_1x1_bn/moving_variance*
_output_shapes
:*
dtype0
h
#Conv3d_4d_2a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_4d_2a_1x1_bn/batchnorm/addAddV2,Conv3d_4d_2a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_4d_2a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes
:
t
#Conv3d_4d_2a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_4d_2a_1x1_bn/batchnorm/add*
T0*
_output_shapes
:
©
!Conv3d_4d_2a_1x1_bn/batchnorm/mulMulConv3d_4d_2a_1x1_conv/Conv3D#Conv3d_4d_2a_1x1_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€
К
.Conv3d_4d_2a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4d_2a_1x1_bn/moving_mean*
_output_shapes
:*
dtype0
§
#Conv3d_4d_2a_1x1_bn/batchnorm/mul_1Mul.Conv3d_4d_2a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_4d_2a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes
:
Г
.Conv3d_4d_2a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4d_2a_1x1_bn/beta*
_output_shapes
:*
dtype0
Ґ
!Conv3d_4d_2a_1x1_bn/batchnorm/subSub.Conv3d_4d_2a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_4d_2a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes
:
∞
#Conv3d_4d_2a_1x1_bn/batchnorm/add_1AddV2!Conv3d_4d_2a_1x1_bn/batchnorm/mul!Conv3d_4d_2a_1x1_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€
Б
Conv3d_4d_1a_1x1/ReluRelu#Conv3d_4d_1a_1x1_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€А
А
Conv3d_4d_2a_1x1/ReluRelu#Conv3d_4d_2a_1x1_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€
ѕ
MaxPool2d_4d_3a_3x3/MaxPool3D	MaxPool3DMixed_4c/concat*
T0*4
_output_shapes"
 :€€€€€€€€€А*
data_formatNDHWC*
ksize	
*
paddingSAME*
strides	

Ћ
=Conv3d_4d_0a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4d_0a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            А   
±
;Conv3d_4d_0a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4d_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *шK∆љ
±
;Conv3d_4d_0a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4d_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *шK∆=
£
EConv3d_4d_0a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4d_0a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4d_0a_1x1_conv/kernel*,
_output_shapes
:АА*
dtype0*

seed *
seed2 
О
;Conv3d_4d_0a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4d_0a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_4d_0a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4d_0a_1x1_conv/kernel*
_output_shapes
: 
Ѓ
;Conv3d_4d_0a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4d_0a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4d_0a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4d_0a_1x1_conv/kernel*,
_output_shapes
:АА
†
7Conv3d_4d_0a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_4d_0a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_4d_0a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4d_0a_1x1_conv/kernel*,
_output_shapes
:АА
ы
Conv3d_4d_0a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4d_0a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:АА*-
shared_nameConv3d_4d_0a_1x1_conv/kernel
Й
=Conv3d_4d_0a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4d_0a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4d_0a_1x1_conv/kernel/AssignAssignVariableOpConv3d_4d_0a_1x1_conv/kernel7Conv3d_4d_0a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ы
0Conv3d_4d_0a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4d_0a_1x1_conv/kernel*,
_output_shapes
:АА*
dtype0
Ц
+Conv3d_4d_0a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4d_0a_1x1_conv/kernel*,
_output_shapes
:АА*
dtype0
ь
Conv3d_4d_0a_1x1_conv/Conv3DConv3DMixed_4c/concat+Conv3d_4d_0a_1x1_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€А*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_4d_1b_3x3_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4d_1b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         А      
±
;Conv3d_4d_1b_3x3_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4d_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *£≈Љ
±
;Conv3d_4d_1b_3x3_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4d_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *£≈<
£
EConv3d_4d_1b_3x3_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4d_1b_3x3_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4d_1b_3x3_conv/kernel*,
_output_shapes
:АА*
dtype0*

seed *
seed2 
О
;Conv3d_4d_1b_3x3_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4d_1b_3x3_conv/kernel/Initializer/random_uniform/max;Conv3d_4d_1b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4d_1b_3x3_conv/kernel*
_output_shapes
: 
Ѓ
;Conv3d_4d_1b_3x3_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4d_1b_3x3_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4d_1b_3x3_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4d_1b_3x3_conv/kernel*,
_output_shapes
:АА
†
7Conv3d_4d_1b_3x3_conv/kernel/Initializer/random_uniformAdd;Conv3d_4d_1b_3x3_conv/kernel/Initializer/random_uniform/mul;Conv3d_4d_1b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4d_1b_3x3_conv/kernel*,
_output_shapes
:АА
ы
Conv3d_4d_1b_3x3_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4d_1b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:АА*-
shared_nameConv3d_4d_1b_3x3_conv/kernel
Й
=Conv3d_4d_1b_3x3_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4d_1b_3x3_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4d_1b_3x3_conv/kernel/AssignAssignVariableOpConv3d_4d_1b_3x3_conv/kernel7Conv3d_4d_1b_3x3_conv/kernel/Initializer/random_uniform*
dtype0
Ы
0Conv3d_4d_1b_3x3_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4d_1b_3x3_conv/kernel*,
_output_shapes
:АА*
dtype0
Ц
+Conv3d_4d_1b_3x3_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4d_1b_3x3_conv/kernel*,
_output_shapes
:АА*
dtype0
В
Conv3d_4d_1b_3x3_conv/Conv3DConv3DConv3d_4d_1a_1x1/Relu+Conv3d_4d_1b_3x3_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€А*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_4d_2b_3x3_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4d_2b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            @   
±
;Conv3d_4d_2b_3x3_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4d_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *н‘Mљ
±
;Conv3d_4d_2b_3x3_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4d_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *н‘M=
°
EConv3d_4d_2b_3x3_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4d_2b_3x3_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4d_2b_3x3_conv/kernel**
_output_shapes
:@*
dtype0*

seed *
seed2 
О
;Conv3d_4d_2b_3x3_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4d_2b_3x3_conv/kernel/Initializer/random_uniform/max;Conv3d_4d_2b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4d_2b_3x3_conv/kernel*
_output_shapes
: 
ђ
;Conv3d_4d_2b_3x3_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4d_2b_3x3_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4d_2b_3x3_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4d_2b_3x3_conv/kernel**
_output_shapes
:@
Ю
7Conv3d_4d_2b_3x3_conv/kernel/Initializer/random_uniformAdd;Conv3d_4d_2b_3x3_conv/kernel/Initializer/random_uniform/mul;Conv3d_4d_2b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4d_2b_3x3_conv/kernel**
_output_shapes
:@
щ
Conv3d_4d_2b_3x3_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4d_2b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*-
shared_nameConv3d_4d_2b_3x3_conv/kernel
Й
=Conv3d_4d_2b_3x3_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4d_2b_3x3_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4d_2b_3x3_conv/kernel/AssignAssignVariableOpConv3d_4d_2b_3x3_conv/kernel7Conv3d_4d_2b_3x3_conv/kernel/Initializer/random_uniform*
dtype0
Щ
0Conv3d_4d_2b_3x3_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4d_2b_3x3_conv/kernel**
_output_shapes
:@*
dtype0
Ф
+Conv3d_4d_2b_3x3_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4d_2b_3x3_conv/kernel**
_output_shapes
:@*
dtype0
Б
Conv3d_4d_2b_3x3_conv/Conv3DConv3DConv3d_4d_2a_1x1/Relu+Conv3d_4d_2b_3x3_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€@*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_4d_3b_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4d_3b_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            @   
±
;Conv3d_4d_3b_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4d_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *м—љ
±
;Conv3d_4d_3b_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4d_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *м—=
Ґ
EConv3d_4d_3b_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4d_3b_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4d_3b_1x1_conv/kernel*+
_output_shapes
:А@*
dtype0*

seed *
seed2 
О
;Conv3d_4d_3b_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4d_3b_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_4d_3b_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4d_3b_1x1_conv/kernel*
_output_shapes
: 
≠
;Conv3d_4d_3b_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4d_3b_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4d_3b_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4d_3b_1x1_conv/kernel*+
_output_shapes
:А@
Я
7Conv3d_4d_3b_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_4d_3b_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_4d_3b_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4d_3b_1x1_conv/kernel*+
_output_shapes
:А@
ъ
Conv3d_4d_3b_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4d_3b_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:А@*-
shared_nameConv3d_4d_3b_1x1_conv/kernel
Й
=Conv3d_4d_3b_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4d_3b_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4d_3b_1x1_conv/kernel/AssignAssignVariableOpConv3d_4d_3b_1x1_conv/kernel7Conv3d_4d_3b_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_4d_3b_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4d_3b_1x1_conv/kernel*+
_output_shapes
:А@*
dtype0
Х
+Conv3d_4d_3b_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4d_3b_1x1_conv/kernel*+
_output_shapes
:А@*
dtype0
Й
Conv3d_4d_3b_1x1_conv/Conv3DConv3DMaxPool2d_4d_3a_3x3/MaxPool3D+Conv3d_4d_3b_1x1_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€@*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

¶
*Conv3d_4d_0a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4d_0a_1x1_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
ё
Conv3d_4d_0a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4d_0a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*)
shared_nameConv3d_4d_0a_1x1_bn/beta
Б
9Conv3d_4d_0a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4d_0a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_4d_0a_1x1_bn/beta/AssignAssignVariableOpConv3d_4d_0a_1x1_bn/beta*Conv3d_4d_0a_1x1_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_4d_0a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4d_0a_1x1_bn/beta*
_output_shapes	
:А*
dtype0
і
1Conv3d_4d_0a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4d_0a_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0*
valueBА*    
у
Conv3d_4d_0a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4d_0a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*0
shared_name!Conv3d_4d_0a_1x1_bn/moving_mean
П
@Conv3d_4d_0a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4d_0a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4d_0a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_4d_0a_1x1_bn/moving_mean1Conv3d_4d_0a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_4d_0a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4d_0a_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0
ї
4Conv3d_4d_0a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4d_0a_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0*
valueBА*  А?
€
#Conv3d_4d_0a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4d_0a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*4
shared_name%#Conv3d_4d_0a_1x1_bn/moving_variance
Ч
DConv3d_4d_0a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4d_0a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4d_0a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_4d_0a_1x1_bn/moving_variance4Conv3d_4d_0a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_4d_0a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4d_0a_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0
Н
,Conv3d_4d_0a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4d_0a_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0
h
#Conv3d_4d_0a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_4d_0a_1x1_bn/batchnorm/addAddV2,Conv3d_4d_0a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_4d_0a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes	
:А
u
#Conv3d_4d_0a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_4d_0a_1x1_bn/batchnorm/add*
T0*
_output_shapes	
:А
™
!Conv3d_4d_0a_1x1_bn/batchnorm/mulMulConv3d_4d_0a_1x1_conv/Conv3D#Conv3d_4d_0a_1x1_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€А
Л
.Conv3d_4d_0a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4d_0a_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0
•
#Conv3d_4d_0a_1x1_bn/batchnorm/mul_1Mul.Conv3d_4d_0a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_4d_0a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:А
Д
.Conv3d_4d_0a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4d_0a_1x1_bn/beta*
_output_shapes	
:А*
dtype0
£
!Conv3d_4d_0a_1x1_bn/batchnorm/subSub.Conv3d_4d_0a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_4d_0a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes	
:А
±
#Conv3d_4d_0a_1x1_bn/batchnorm/add_1AddV2!Conv3d_4d_0a_1x1_bn/batchnorm/mul!Conv3d_4d_0a_1x1_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€А
¶
*Conv3d_4d_1b_3x3_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4d_1b_3x3_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
ё
Conv3d_4d_1b_3x3_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4d_1b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*)
shared_nameConv3d_4d_1b_3x3_bn/beta
Б
9Conv3d_4d_1b_3x3_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4d_1b_3x3_bn/beta*
_output_shapes
: 
Ж
Conv3d_4d_1b_3x3_bn/beta/AssignAssignVariableOpConv3d_4d_1b_3x3_bn/beta*Conv3d_4d_1b_3x3_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_4d_1b_3x3_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4d_1b_3x3_bn/beta*
_output_shapes	
:А*
dtype0
і
1Conv3d_4d_1b_3x3_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4d_1b_3x3_bn/moving_mean*
_output_shapes	
:А*
dtype0*
valueBА*    
у
Conv3d_4d_1b_3x3_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4d_1b_3x3_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*0
shared_name!Conv3d_4d_1b_3x3_bn/moving_mean
П
@Conv3d_4d_1b_3x3_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4d_1b_3x3_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4d_1b_3x3_bn/moving_mean/AssignAssignVariableOpConv3d_4d_1b_3x3_bn/moving_mean1Conv3d_4d_1b_3x3_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_4d_1b_3x3_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4d_1b_3x3_bn/moving_mean*
_output_shapes	
:А*
dtype0
ї
4Conv3d_4d_1b_3x3_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4d_1b_3x3_bn/moving_variance*
_output_shapes	
:А*
dtype0*
valueBА*  А?
€
#Conv3d_4d_1b_3x3_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4d_1b_3x3_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*4
shared_name%#Conv3d_4d_1b_3x3_bn/moving_variance
Ч
DConv3d_4d_1b_3x3_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4d_1b_3x3_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4d_1b_3x3_bn/moving_variance/AssignAssignVariableOp#Conv3d_4d_1b_3x3_bn/moving_variance4Conv3d_4d_1b_3x3_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_4d_1b_3x3_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4d_1b_3x3_bn/moving_variance*
_output_shapes	
:А*
dtype0
Н
,Conv3d_4d_1b_3x3_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4d_1b_3x3_bn/moving_variance*
_output_shapes	
:А*
dtype0
h
#Conv3d_4d_1b_3x3_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_4d_1b_3x3_bn/batchnorm/addAddV2,Conv3d_4d_1b_3x3_bn/batchnorm/ReadVariableOp#Conv3d_4d_1b_3x3_bn/batchnorm/add/y*
T0*
_output_shapes	
:А
u
#Conv3d_4d_1b_3x3_bn/batchnorm/RsqrtRsqrt!Conv3d_4d_1b_3x3_bn/batchnorm/add*
T0*
_output_shapes	
:А
™
!Conv3d_4d_1b_3x3_bn/batchnorm/mulMulConv3d_4d_1b_3x3_conv/Conv3D#Conv3d_4d_1b_3x3_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€А
Л
.Conv3d_4d_1b_3x3_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4d_1b_3x3_bn/moving_mean*
_output_shapes	
:А*
dtype0
•
#Conv3d_4d_1b_3x3_bn/batchnorm/mul_1Mul.Conv3d_4d_1b_3x3_bn/batchnorm/ReadVariableOp_1#Conv3d_4d_1b_3x3_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:А
Д
.Conv3d_4d_1b_3x3_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4d_1b_3x3_bn/beta*
_output_shapes	
:А*
dtype0
£
!Conv3d_4d_1b_3x3_bn/batchnorm/subSub.Conv3d_4d_1b_3x3_bn/batchnorm/ReadVariableOp_2#Conv3d_4d_1b_3x3_bn/batchnorm/mul_1*
T0*
_output_shapes	
:А
±
#Conv3d_4d_1b_3x3_bn/batchnorm/add_1AddV2!Conv3d_4d_1b_3x3_bn/batchnorm/mul!Conv3d_4d_1b_3x3_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€А
§
*Conv3d_4d_2b_3x3_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4d_2b_3x3_bn/beta*
_output_shapes
:@*
dtype0*
valueB@*    
Ё
Conv3d_4d_2b_3x3_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4d_2b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*)
shared_nameConv3d_4d_2b_3x3_bn/beta
Б
9Conv3d_4d_2b_3x3_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4d_2b_3x3_bn/beta*
_output_shapes
: 
Ж
Conv3d_4d_2b_3x3_bn/beta/AssignAssignVariableOpConv3d_4d_2b_3x3_bn/beta*Conv3d_4d_2b_3x3_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_4d_2b_3x3_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4d_2b_3x3_bn/beta*
_output_shapes
:@*
dtype0
≤
1Conv3d_4d_2b_3x3_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4d_2b_3x3_bn/moving_mean*
_output_shapes
:@*
dtype0*
valueB@*    
т
Conv3d_4d_2b_3x3_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4d_2b_3x3_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*0
shared_name!Conv3d_4d_2b_3x3_bn/moving_mean
П
@Conv3d_4d_2b_3x3_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4d_2b_3x3_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4d_2b_3x3_bn/moving_mean/AssignAssignVariableOpConv3d_4d_2b_3x3_bn/moving_mean1Conv3d_4d_2b_3x3_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_4d_2b_3x3_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4d_2b_3x3_bn/moving_mean*
_output_shapes
:@*
dtype0
є
4Conv3d_4d_2b_3x3_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4d_2b_3x3_bn/moving_variance*
_output_shapes
:@*
dtype0*
valueB@*  А?
ю
#Conv3d_4d_2b_3x3_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4d_2b_3x3_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*4
shared_name%#Conv3d_4d_2b_3x3_bn/moving_variance
Ч
DConv3d_4d_2b_3x3_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4d_2b_3x3_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4d_2b_3x3_bn/moving_variance/AssignAssignVariableOp#Conv3d_4d_2b_3x3_bn/moving_variance4Conv3d_4d_2b_3x3_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_4d_2b_3x3_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4d_2b_3x3_bn/moving_variance*
_output_shapes
:@*
dtype0
М
,Conv3d_4d_2b_3x3_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4d_2b_3x3_bn/moving_variance*
_output_shapes
:@*
dtype0
h
#Conv3d_4d_2b_3x3_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_4d_2b_3x3_bn/batchnorm/addAddV2,Conv3d_4d_2b_3x3_bn/batchnorm/ReadVariableOp#Conv3d_4d_2b_3x3_bn/batchnorm/add/y*
T0*
_output_shapes
:@
t
#Conv3d_4d_2b_3x3_bn/batchnorm/RsqrtRsqrt!Conv3d_4d_2b_3x3_bn/batchnorm/add*
T0*
_output_shapes
:@
©
!Conv3d_4d_2b_3x3_bn/batchnorm/mulMulConv3d_4d_2b_3x3_conv/Conv3D#Conv3d_4d_2b_3x3_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€@
К
.Conv3d_4d_2b_3x3_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4d_2b_3x3_bn/moving_mean*
_output_shapes
:@*
dtype0
§
#Conv3d_4d_2b_3x3_bn/batchnorm/mul_1Mul.Conv3d_4d_2b_3x3_bn/batchnorm/ReadVariableOp_1#Conv3d_4d_2b_3x3_bn/batchnorm/Rsqrt*
T0*
_output_shapes
:@
Г
.Conv3d_4d_2b_3x3_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4d_2b_3x3_bn/beta*
_output_shapes
:@*
dtype0
Ґ
!Conv3d_4d_2b_3x3_bn/batchnorm/subSub.Conv3d_4d_2b_3x3_bn/batchnorm/ReadVariableOp_2#Conv3d_4d_2b_3x3_bn/batchnorm/mul_1*
T0*
_output_shapes
:@
∞
#Conv3d_4d_2b_3x3_bn/batchnorm/add_1AddV2!Conv3d_4d_2b_3x3_bn/batchnorm/mul!Conv3d_4d_2b_3x3_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€@
§
*Conv3d_4d_3b_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4d_3b_1x1_bn/beta*
_output_shapes
:@*
dtype0*
valueB@*    
Ё
Conv3d_4d_3b_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4d_3b_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*)
shared_nameConv3d_4d_3b_1x1_bn/beta
Б
9Conv3d_4d_3b_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4d_3b_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_4d_3b_1x1_bn/beta/AssignAssignVariableOpConv3d_4d_3b_1x1_bn/beta*Conv3d_4d_3b_1x1_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_4d_3b_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4d_3b_1x1_bn/beta*
_output_shapes
:@*
dtype0
≤
1Conv3d_4d_3b_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4d_3b_1x1_bn/moving_mean*
_output_shapes
:@*
dtype0*
valueB@*    
т
Conv3d_4d_3b_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4d_3b_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*0
shared_name!Conv3d_4d_3b_1x1_bn/moving_mean
П
@Conv3d_4d_3b_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4d_3b_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4d_3b_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_4d_3b_1x1_bn/moving_mean1Conv3d_4d_3b_1x1_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_4d_3b_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4d_3b_1x1_bn/moving_mean*
_output_shapes
:@*
dtype0
є
4Conv3d_4d_3b_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4d_3b_1x1_bn/moving_variance*
_output_shapes
:@*
dtype0*
valueB@*  А?
ю
#Conv3d_4d_3b_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4d_3b_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*4
shared_name%#Conv3d_4d_3b_1x1_bn/moving_variance
Ч
DConv3d_4d_3b_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4d_3b_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4d_3b_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_4d_3b_1x1_bn/moving_variance4Conv3d_4d_3b_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_4d_3b_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4d_3b_1x1_bn/moving_variance*
_output_shapes
:@*
dtype0
М
,Conv3d_4d_3b_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4d_3b_1x1_bn/moving_variance*
_output_shapes
:@*
dtype0
h
#Conv3d_4d_3b_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_4d_3b_1x1_bn/batchnorm/addAddV2,Conv3d_4d_3b_1x1_bn/batchnorm/ReadVariableOp#Conv3d_4d_3b_1x1_bn/batchnorm/add/y*
T0*
_output_shapes
:@
t
#Conv3d_4d_3b_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_4d_3b_1x1_bn/batchnorm/add*
T0*
_output_shapes
:@
©
!Conv3d_4d_3b_1x1_bn/batchnorm/mulMulConv3d_4d_3b_1x1_conv/Conv3D#Conv3d_4d_3b_1x1_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€@
К
.Conv3d_4d_3b_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4d_3b_1x1_bn/moving_mean*
_output_shapes
:@*
dtype0
§
#Conv3d_4d_3b_1x1_bn/batchnorm/mul_1Mul.Conv3d_4d_3b_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_4d_3b_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes
:@
Г
.Conv3d_4d_3b_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4d_3b_1x1_bn/beta*
_output_shapes
:@*
dtype0
Ґ
!Conv3d_4d_3b_1x1_bn/batchnorm/subSub.Conv3d_4d_3b_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_4d_3b_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes
:@
∞
#Conv3d_4d_3b_1x1_bn/batchnorm/add_1AddV2!Conv3d_4d_3b_1x1_bn/batchnorm/mul!Conv3d_4d_3b_1x1_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€@
Б
Conv3d_4d_0a_1x1/ReluRelu#Conv3d_4d_0a_1x1_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€А
Б
Conv3d_4d_1b_3x3/ReluRelu#Conv3d_4d_1b_3x3_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€А
А
Conv3d_4d_2b_3x3/ReluRelu#Conv3d_4d_2b_3x3_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€@
А
Conv3d_4d_3b_1x1/ReluRelu#Conv3d_4d_3b_1x1_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€@
V
Mixed_4d/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
б
Mixed_4d/concatConcatV2Conv3d_4d_0a_1x1/ReluConv3d_4d_1b_3x3/ReluConv3d_4d_2b_3x3/ReluConv3d_4d_3b_1x1/ReluMixed_4d/concat/axis*
N*
T0*

Tidx0*4
_output_shapes"
 :€€€€€€€€€А
Ћ
=Conv3d_4e_1a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4e_1a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            Р   
±
;Conv3d_4e_1a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4e_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *Ё√љ
±
;Conv3d_4e_1a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4e_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *Ё√=
£
EConv3d_4e_1a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4e_1a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4e_1a_1x1_conv/kernel*,
_output_shapes
:АР*
dtype0*

seed *
seed2 
О
;Conv3d_4e_1a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4e_1a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_4e_1a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4e_1a_1x1_conv/kernel*
_output_shapes
: 
Ѓ
;Conv3d_4e_1a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4e_1a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4e_1a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4e_1a_1x1_conv/kernel*,
_output_shapes
:АР
†
7Conv3d_4e_1a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_4e_1a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_4e_1a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4e_1a_1x1_conv/kernel*,
_output_shapes
:АР
ы
Conv3d_4e_1a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4e_1a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:АР*-
shared_nameConv3d_4e_1a_1x1_conv/kernel
Й
=Conv3d_4e_1a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4e_1a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4e_1a_1x1_conv/kernel/AssignAssignVariableOpConv3d_4e_1a_1x1_conv/kernel7Conv3d_4e_1a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ы
0Conv3d_4e_1a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4e_1a_1x1_conv/kernel*,
_output_shapes
:АР*
dtype0
Ц
+Conv3d_4e_1a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4e_1a_1x1_conv/kernel*,
_output_shapes
:АР*
dtype0
ь
Conv3d_4e_1a_1x1_conv/Conv3DConv3DMixed_4d/concat+Conv3d_4e_1a_1x1_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€Р*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_4e_2a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4e_2a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"                
±
;Conv3d_4e_2a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4e_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *A„љ
±
;Conv3d_4e_2a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4e_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *A„=
Ґ
EConv3d_4e_2a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4e_2a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4e_2a_1x1_conv/kernel*+
_output_shapes
:А *
dtype0*

seed *
seed2 
О
;Conv3d_4e_2a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4e_2a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_4e_2a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4e_2a_1x1_conv/kernel*
_output_shapes
: 
≠
;Conv3d_4e_2a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4e_2a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4e_2a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4e_2a_1x1_conv/kernel*+
_output_shapes
:А 
Я
7Conv3d_4e_2a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_4e_2a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_4e_2a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4e_2a_1x1_conv/kernel*+
_output_shapes
:А 
ъ
Conv3d_4e_2a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4e_2a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:А *-
shared_nameConv3d_4e_2a_1x1_conv/kernel
Й
=Conv3d_4e_2a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4e_2a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4e_2a_1x1_conv/kernel/AssignAssignVariableOpConv3d_4e_2a_1x1_conv/kernel7Conv3d_4e_2a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_4e_2a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4e_2a_1x1_conv/kernel*+
_output_shapes
:А *
dtype0
Х
+Conv3d_4e_2a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4e_2a_1x1_conv/kernel*+
_output_shapes
:А *
dtype0
ы
Conv3d_4e_2a_1x1_conv/Conv3DConv3DMixed_4d/concat+Conv3d_4e_2a_1x1_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€ *
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

¶
*Conv3d_4e_1a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4e_1a_1x1_bn/beta*
_output_shapes	
:Р*
dtype0*
valueBР*    
ё
Conv3d_4e_1a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4e_1a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:Р*)
shared_nameConv3d_4e_1a_1x1_bn/beta
Б
9Conv3d_4e_1a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4e_1a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_4e_1a_1x1_bn/beta/AssignAssignVariableOpConv3d_4e_1a_1x1_bn/beta*Conv3d_4e_1a_1x1_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_4e_1a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4e_1a_1x1_bn/beta*
_output_shapes	
:Р*
dtype0
і
1Conv3d_4e_1a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4e_1a_1x1_bn/moving_mean*
_output_shapes	
:Р*
dtype0*
valueBР*    
у
Conv3d_4e_1a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4e_1a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:Р*0
shared_name!Conv3d_4e_1a_1x1_bn/moving_mean
П
@Conv3d_4e_1a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4e_1a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4e_1a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_4e_1a_1x1_bn/moving_mean1Conv3d_4e_1a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_4e_1a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4e_1a_1x1_bn/moving_mean*
_output_shapes	
:Р*
dtype0
ї
4Conv3d_4e_1a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4e_1a_1x1_bn/moving_variance*
_output_shapes	
:Р*
dtype0*
valueBР*  А?
€
#Conv3d_4e_1a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4e_1a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:Р*4
shared_name%#Conv3d_4e_1a_1x1_bn/moving_variance
Ч
DConv3d_4e_1a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4e_1a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4e_1a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_4e_1a_1x1_bn/moving_variance4Conv3d_4e_1a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_4e_1a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4e_1a_1x1_bn/moving_variance*
_output_shapes	
:Р*
dtype0
Н
,Conv3d_4e_1a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4e_1a_1x1_bn/moving_variance*
_output_shapes	
:Р*
dtype0
h
#Conv3d_4e_1a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_4e_1a_1x1_bn/batchnorm/addAddV2,Conv3d_4e_1a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_4e_1a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes	
:Р
u
#Conv3d_4e_1a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_4e_1a_1x1_bn/batchnorm/add*
T0*
_output_shapes	
:Р
™
!Conv3d_4e_1a_1x1_bn/batchnorm/mulMulConv3d_4e_1a_1x1_conv/Conv3D#Conv3d_4e_1a_1x1_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€Р
Л
.Conv3d_4e_1a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4e_1a_1x1_bn/moving_mean*
_output_shapes	
:Р*
dtype0
•
#Conv3d_4e_1a_1x1_bn/batchnorm/mul_1Mul.Conv3d_4e_1a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_4e_1a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:Р
Д
.Conv3d_4e_1a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4e_1a_1x1_bn/beta*
_output_shapes	
:Р*
dtype0
£
!Conv3d_4e_1a_1x1_bn/batchnorm/subSub.Conv3d_4e_1a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_4e_1a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes	
:Р
±
#Conv3d_4e_1a_1x1_bn/batchnorm/add_1AddV2!Conv3d_4e_1a_1x1_bn/batchnorm/mul!Conv3d_4e_1a_1x1_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€Р
§
*Conv3d_4e_2a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4e_2a_1x1_bn/beta*
_output_shapes
: *
dtype0*
valueB *    
Ё
Conv3d_4e_2a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4e_2a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *)
shared_nameConv3d_4e_2a_1x1_bn/beta
Б
9Conv3d_4e_2a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4e_2a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_4e_2a_1x1_bn/beta/AssignAssignVariableOpConv3d_4e_2a_1x1_bn/beta*Conv3d_4e_2a_1x1_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_4e_2a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4e_2a_1x1_bn/beta*
_output_shapes
: *
dtype0
≤
1Conv3d_4e_2a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4e_2a_1x1_bn/moving_mean*
_output_shapes
: *
dtype0*
valueB *    
т
Conv3d_4e_2a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4e_2a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *0
shared_name!Conv3d_4e_2a_1x1_bn/moving_mean
П
@Conv3d_4e_2a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4e_2a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4e_2a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_4e_2a_1x1_bn/moving_mean1Conv3d_4e_2a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_4e_2a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4e_2a_1x1_bn/moving_mean*
_output_shapes
: *
dtype0
є
4Conv3d_4e_2a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4e_2a_1x1_bn/moving_variance*
_output_shapes
: *
dtype0*
valueB *  А?
ю
#Conv3d_4e_2a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4e_2a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *4
shared_name%#Conv3d_4e_2a_1x1_bn/moving_variance
Ч
DConv3d_4e_2a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4e_2a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4e_2a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_4e_2a_1x1_bn/moving_variance4Conv3d_4e_2a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_4e_2a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4e_2a_1x1_bn/moving_variance*
_output_shapes
: *
dtype0
М
,Conv3d_4e_2a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4e_2a_1x1_bn/moving_variance*
_output_shapes
: *
dtype0
h
#Conv3d_4e_2a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_4e_2a_1x1_bn/batchnorm/addAddV2,Conv3d_4e_2a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_4e_2a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes
: 
t
#Conv3d_4e_2a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_4e_2a_1x1_bn/batchnorm/add*
T0*
_output_shapes
: 
©
!Conv3d_4e_2a_1x1_bn/batchnorm/mulMulConv3d_4e_2a_1x1_conv/Conv3D#Conv3d_4e_2a_1x1_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€ 
К
.Conv3d_4e_2a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4e_2a_1x1_bn/moving_mean*
_output_shapes
: *
dtype0
§
#Conv3d_4e_2a_1x1_bn/batchnorm/mul_1Mul.Conv3d_4e_2a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_4e_2a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes
: 
Г
.Conv3d_4e_2a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4e_2a_1x1_bn/beta*
_output_shapes
: *
dtype0
Ґ
!Conv3d_4e_2a_1x1_bn/batchnorm/subSub.Conv3d_4e_2a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_4e_2a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes
: 
∞
#Conv3d_4e_2a_1x1_bn/batchnorm/add_1AddV2!Conv3d_4e_2a_1x1_bn/batchnorm/mul!Conv3d_4e_2a_1x1_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€ 
Б
Conv3d_4e_1a_1x1/ReluRelu#Conv3d_4e_1a_1x1_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€Р
А
Conv3d_4e_2a_1x1/ReluRelu#Conv3d_4e_2a_1x1_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€ 
ѕ
MaxPool2d_4e_3a_3x3/MaxPool3D	MaxPool3DMixed_4d/concat*
T0*4
_output_shapes"
 :€€€€€€€€€А*
data_formatNDHWC*
ksize	
*
paddingSAME*
strides	

Ћ
=Conv3d_4e_0a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4e_0a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            p   
±
;Conv3d_4e_0a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4e_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *Ђ“»љ
±
;Conv3d_4e_0a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4e_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *Ђ“»=
Ґ
EConv3d_4e_0a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4e_0a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4e_0a_1x1_conv/kernel*+
_output_shapes
:Аp*
dtype0*

seed *
seed2 
О
;Conv3d_4e_0a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4e_0a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_4e_0a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4e_0a_1x1_conv/kernel*
_output_shapes
: 
≠
;Conv3d_4e_0a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4e_0a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4e_0a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4e_0a_1x1_conv/kernel*+
_output_shapes
:Аp
Я
7Conv3d_4e_0a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_4e_0a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_4e_0a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4e_0a_1x1_conv/kernel*+
_output_shapes
:Аp
ъ
Conv3d_4e_0a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4e_0a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:Аp*-
shared_nameConv3d_4e_0a_1x1_conv/kernel
Й
=Conv3d_4e_0a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4e_0a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4e_0a_1x1_conv/kernel/AssignAssignVariableOpConv3d_4e_0a_1x1_conv/kernel7Conv3d_4e_0a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_4e_0a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4e_0a_1x1_conv/kernel*+
_output_shapes
:Аp*
dtype0
Х
+Conv3d_4e_0a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4e_0a_1x1_conv/kernel*+
_output_shapes
:Аp*
dtype0
ы
Conv3d_4e_0a_1x1_conv/Conv3DConv3DMixed_4d/concat+Conv3d_4e_0a_1x1_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€p*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_4e_1b_3x3_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4e_1b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         Р      
±
;Conv3d_4e_1b_3x3_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4e_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *`ћєЉ
±
;Conv3d_4e_1b_3x3_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4e_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *`ћє<
£
EConv3d_4e_1b_3x3_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4e_1b_3x3_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4e_1b_3x3_conv/kernel*,
_output_shapes
:Р†*
dtype0*

seed *
seed2 
О
;Conv3d_4e_1b_3x3_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4e_1b_3x3_conv/kernel/Initializer/random_uniform/max;Conv3d_4e_1b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4e_1b_3x3_conv/kernel*
_output_shapes
: 
Ѓ
;Conv3d_4e_1b_3x3_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4e_1b_3x3_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4e_1b_3x3_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4e_1b_3x3_conv/kernel*,
_output_shapes
:Р†
†
7Conv3d_4e_1b_3x3_conv/kernel/Initializer/random_uniformAdd;Conv3d_4e_1b_3x3_conv/kernel/Initializer/random_uniform/mul;Conv3d_4e_1b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4e_1b_3x3_conv/kernel*,
_output_shapes
:Р†
ы
Conv3d_4e_1b_3x3_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4e_1b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:Р†*-
shared_nameConv3d_4e_1b_3x3_conv/kernel
Й
=Conv3d_4e_1b_3x3_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4e_1b_3x3_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4e_1b_3x3_conv/kernel/AssignAssignVariableOpConv3d_4e_1b_3x3_conv/kernel7Conv3d_4e_1b_3x3_conv/kernel/Initializer/random_uniform*
dtype0
Ы
0Conv3d_4e_1b_3x3_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4e_1b_3x3_conv/kernel*,
_output_shapes
:Р†*
dtype0
Ц
+Conv3d_4e_1b_3x3_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4e_1b_3x3_conv/kernel*,
_output_shapes
:Р†*
dtype0
В
Conv3d_4e_1b_3x3_conv/Conv3DConv3DConv3d_4e_1a_1x1/Relu+Conv3d_4e_1b_3x3_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€†*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_4e_2b_3x3_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4e_2b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"             @   
±
;Conv3d_4e_2b_3x3_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4e_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *£Eљ
±
;Conv3d_4e_2b_3x3_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4e_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *£E=
°
EConv3d_4e_2b_3x3_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4e_2b_3x3_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4e_2b_3x3_conv/kernel**
_output_shapes
: @*
dtype0*

seed *
seed2 
О
;Conv3d_4e_2b_3x3_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4e_2b_3x3_conv/kernel/Initializer/random_uniform/max;Conv3d_4e_2b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4e_2b_3x3_conv/kernel*
_output_shapes
: 
ђ
;Conv3d_4e_2b_3x3_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4e_2b_3x3_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4e_2b_3x3_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4e_2b_3x3_conv/kernel**
_output_shapes
: @
Ю
7Conv3d_4e_2b_3x3_conv/kernel/Initializer/random_uniformAdd;Conv3d_4e_2b_3x3_conv/kernel/Initializer/random_uniform/mul;Conv3d_4e_2b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4e_2b_3x3_conv/kernel**
_output_shapes
: @
щ
Conv3d_4e_2b_3x3_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4e_2b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: @*-
shared_nameConv3d_4e_2b_3x3_conv/kernel
Й
=Conv3d_4e_2b_3x3_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4e_2b_3x3_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4e_2b_3x3_conv/kernel/AssignAssignVariableOpConv3d_4e_2b_3x3_conv/kernel7Conv3d_4e_2b_3x3_conv/kernel/Initializer/random_uniform*
dtype0
Щ
0Conv3d_4e_2b_3x3_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4e_2b_3x3_conv/kernel**
_output_shapes
: @*
dtype0
Ф
+Conv3d_4e_2b_3x3_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4e_2b_3x3_conv/kernel**
_output_shapes
: @*
dtype0
Б
Conv3d_4e_2b_3x3_conv/Conv3DConv3DConv3d_4e_2a_1x1/Relu+Conv3d_4e_2b_3x3_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€@*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_4e_3b_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4e_3b_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            @   
±
;Conv3d_4e_3b_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4e_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *м—љ
±
;Conv3d_4e_3b_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4e_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *м—=
Ґ
EConv3d_4e_3b_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4e_3b_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4e_3b_1x1_conv/kernel*+
_output_shapes
:А@*
dtype0*

seed *
seed2 
О
;Conv3d_4e_3b_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4e_3b_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_4e_3b_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4e_3b_1x1_conv/kernel*
_output_shapes
: 
≠
;Conv3d_4e_3b_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4e_3b_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4e_3b_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4e_3b_1x1_conv/kernel*+
_output_shapes
:А@
Я
7Conv3d_4e_3b_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_4e_3b_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_4e_3b_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4e_3b_1x1_conv/kernel*+
_output_shapes
:А@
ъ
Conv3d_4e_3b_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4e_3b_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:А@*-
shared_nameConv3d_4e_3b_1x1_conv/kernel
Й
=Conv3d_4e_3b_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4e_3b_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4e_3b_1x1_conv/kernel/AssignAssignVariableOpConv3d_4e_3b_1x1_conv/kernel7Conv3d_4e_3b_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_4e_3b_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4e_3b_1x1_conv/kernel*+
_output_shapes
:А@*
dtype0
Х
+Conv3d_4e_3b_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4e_3b_1x1_conv/kernel*+
_output_shapes
:А@*
dtype0
Й
Conv3d_4e_3b_1x1_conv/Conv3DConv3DMaxPool2d_4e_3a_3x3/MaxPool3D+Conv3d_4e_3b_1x1_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€@*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

§
*Conv3d_4e_0a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4e_0a_1x1_bn/beta*
_output_shapes
:p*
dtype0*
valueBp*    
Ё
Conv3d_4e_0a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4e_0a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:p*)
shared_nameConv3d_4e_0a_1x1_bn/beta
Б
9Conv3d_4e_0a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4e_0a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_4e_0a_1x1_bn/beta/AssignAssignVariableOpConv3d_4e_0a_1x1_bn/beta*Conv3d_4e_0a_1x1_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_4e_0a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4e_0a_1x1_bn/beta*
_output_shapes
:p*
dtype0
≤
1Conv3d_4e_0a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4e_0a_1x1_bn/moving_mean*
_output_shapes
:p*
dtype0*
valueBp*    
т
Conv3d_4e_0a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4e_0a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:p*0
shared_name!Conv3d_4e_0a_1x1_bn/moving_mean
П
@Conv3d_4e_0a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4e_0a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4e_0a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_4e_0a_1x1_bn/moving_mean1Conv3d_4e_0a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_4e_0a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4e_0a_1x1_bn/moving_mean*
_output_shapes
:p*
dtype0
є
4Conv3d_4e_0a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4e_0a_1x1_bn/moving_variance*
_output_shapes
:p*
dtype0*
valueBp*  А?
ю
#Conv3d_4e_0a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4e_0a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:p*4
shared_name%#Conv3d_4e_0a_1x1_bn/moving_variance
Ч
DConv3d_4e_0a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4e_0a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4e_0a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_4e_0a_1x1_bn/moving_variance4Conv3d_4e_0a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_4e_0a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4e_0a_1x1_bn/moving_variance*
_output_shapes
:p*
dtype0
М
,Conv3d_4e_0a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4e_0a_1x1_bn/moving_variance*
_output_shapes
:p*
dtype0
h
#Conv3d_4e_0a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_4e_0a_1x1_bn/batchnorm/addAddV2,Conv3d_4e_0a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_4e_0a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes
:p
t
#Conv3d_4e_0a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_4e_0a_1x1_bn/batchnorm/add*
T0*
_output_shapes
:p
©
!Conv3d_4e_0a_1x1_bn/batchnorm/mulMulConv3d_4e_0a_1x1_conv/Conv3D#Conv3d_4e_0a_1x1_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€p
К
.Conv3d_4e_0a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4e_0a_1x1_bn/moving_mean*
_output_shapes
:p*
dtype0
§
#Conv3d_4e_0a_1x1_bn/batchnorm/mul_1Mul.Conv3d_4e_0a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_4e_0a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes
:p
Г
.Conv3d_4e_0a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4e_0a_1x1_bn/beta*
_output_shapes
:p*
dtype0
Ґ
!Conv3d_4e_0a_1x1_bn/batchnorm/subSub.Conv3d_4e_0a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_4e_0a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes
:p
∞
#Conv3d_4e_0a_1x1_bn/batchnorm/add_1AddV2!Conv3d_4e_0a_1x1_bn/batchnorm/mul!Conv3d_4e_0a_1x1_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€p
¶
*Conv3d_4e_1b_3x3_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4e_1b_3x3_bn/beta*
_output_shapes	
:†*
dtype0*
valueB†*    
ё
Conv3d_4e_1b_3x3_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4e_1b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:†*)
shared_nameConv3d_4e_1b_3x3_bn/beta
Б
9Conv3d_4e_1b_3x3_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4e_1b_3x3_bn/beta*
_output_shapes
: 
Ж
Conv3d_4e_1b_3x3_bn/beta/AssignAssignVariableOpConv3d_4e_1b_3x3_bn/beta*Conv3d_4e_1b_3x3_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_4e_1b_3x3_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4e_1b_3x3_bn/beta*
_output_shapes	
:†*
dtype0
і
1Conv3d_4e_1b_3x3_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4e_1b_3x3_bn/moving_mean*
_output_shapes	
:†*
dtype0*
valueB†*    
у
Conv3d_4e_1b_3x3_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4e_1b_3x3_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:†*0
shared_name!Conv3d_4e_1b_3x3_bn/moving_mean
П
@Conv3d_4e_1b_3x3_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4e_1b_3x3_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4e_1b_3x3_bn/moving_mean/AssignAssignVariableOpConv3d_4e_1b_3x3_bn/moving_mean1Conv3d_4e_1b_3x3_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_4e_1b_3x3_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4e_1b_3x3_bn/moving_mean*
_output_shapes	
:†*
dtype0
ї
4Conv3d_4e_1b_3x3_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4e_1b_3x3_bn/moving_variance*
_output_shapes	
:†*
dtype0*
valueB†*  А?
€
#Conv3d_4e_1b_3x3_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4e_1b_3x3_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:†*4
shared_name%#Conv3d_4e_1b_3x3_bn/moving_variance
Ч
DConv3d_4e_1b_3x3_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4e_1b_3x3_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4e_1b_3x3_bn/moving_variance/AssignAssignVariableOp#Conv3d_4e_1b_3x3_bn/moving_variance4Conv3d_4e_1b_3x3_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_4e_1b_3x3_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4e_1b_3x3_bn/moving_variance*
_output_shapes	
:†*
dtype0
Н
,Conv3d_4e_1b_3x3_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4e_1b_3x3_bn/moving_variance*
_output_shapes	
:†*
dtype0
h
#Conv3d_4e_1b_3x3_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_4e_1b_3x3_bn/batchnorm/addAddV2,Conv3d_4e_1b_3x3_bn/batchnorm/ReadVariableOp#Conv3d_4e_1b_3x3_bn/batchnorm/add/y*
T0*
_output_shapes	
:†
u
#Conv3d_4e_1b_3x3_bn/batchnorm/RsqrtRsqrt!Conv3d_4e_1b_3x3_bn/batchnorm/add*
T0*
_output_shapes	
:†
™
!Conv3d_4e_1b_3x3_bn/batchnorm/mulMulConv3d_4e_1b_3x3_conv/Conv3D#Conv3d_4e_1b_3x3_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€†
Л
.Conv3d_4e_1b_3x3_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4e_1b_3x3_bn/moving_mean*
_output_shapes	
:†*
dtype0
•
#Conv3d_4e_1b_3x3_bn/batchnorm/mul_1Mul.Conv3d_4e_1b_3x3_bn/batchnorm/ReadVariableOp_1#Conv3d_4e_1b_3x3_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:†
Д
.Conv3d_4e_1b_3x3_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4e_1b_3x3_bn/beta*
_output_shapes	
:†*
dtype0
£
!Conv3d_4e_1b_3x3_bn/batchnorm/subSub.Conv3d_4e_1b_3x3_bn/batchnorm/ReadVariableOp_2#Conv3d_4e_1b_3x3_bn/batchnorm/mul_1*
T0*
_output_shapes	
:†
±
#Conv3d_4e_1b_3x3_bn/batchnorm/add_1AddV2!Conv3d_4e_1b_3x3_bn/batchnorm/mul!Conv3d_4e_1b_3x3_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€†
§
*Conv3d_4e_2b_3x3_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4e_2b_3x3_bn/beta*
_output_shapes
:@*
dtype0*
valueB@*    
Ё
Conv3d_4e_2b_3x3_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4e_2b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*)
shared_nameConv3d_4e_2b_3x3_bn/beta
Б
9Conv3d_4e_2b_3x3_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4e_2b_3x3_bn/beta*
_output_shapes
: 
Ж
Conv3d_4e_2b_3x3_bn/beta/AssignAssignVariableOpConv3d_4e_2b_3x3_bn/beta*Conv3d_4e_2b_3x3_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_4e_2b_3x3_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4e_2b_3x3_bn/beta*
_output_shapes
:@*
dtype0
≤
1Conv3d_4e_2b_3x3_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4e_2b_3x3_bn/moving_mean*
_output_shapes
:@*
dtype0*
valueB@*    
т
Conv3d_4e_2b_3x3_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4e_2b_3x3_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*0
shared_name!Conv3d_4e_2b_3x3_bn/moving_mean
П
@Conv3d_4e_2b_3x3_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4e_2b_3x3_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4e_2b_3x3_bn/moving_mean/AssignAssignVariableOpConv3d_4e_2b_3x3_bn/moving_mean1Conv3d_4e_2b_3x3_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_4e_2b_3x3_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4e_2b_3x3_bn/moving_mean*
_output_shapes
:@*
dtype0
є
4Conv3d_4e_2b_3x3_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4e_2b_3x3_bn/moving_variance*
_output_shapes
:@*
dtype0*
valueB@*  А?
ю
#Conv3d_4e_2b_3x3_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4e_2b_3x3_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*4
shared_name%#Conv3d_4e_2b_3x3_bn/moving_variance
Ч
DConv3d_4e_2b_3x3_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4e_2b_3x3_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4e_2b_3x3_bn/moving_variance/AssignAssignVariableOp#Conv3d_4e_2b_3x3_bn/moving_variance4Conv3d_4e_2b_3x3_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_4e_2b_3x3_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4e_2b_3x3_bn/moving_variance*
_output_shapes
:@*
dtype0
М
,Conv3d_4e_2b_3x3_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4e_2b_3x3_bn/moving_variance*
_output_shapes
:@*
dtype0
h
#Conv3d_4e_2b_3x3_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_4e_2b_3x3_bn/batchnorm/addAddV2,Conv3d_4e_2b_3x3_bn/batchnorm/ReadVariableOp#Conv3d_4e_2b_3x3_bn/batchnorm/add/y*
T0*
_output_shapes
:@
t
#Conv3d_4e_2b_3x3_bn/batchnorm/RsqrtRsqrt!Conv3d_4e_2b_3x3_bn/batchnorm/add*
T0*
_output_shapes
:@
©
!Conv3d_4e_2b_3x3_bn/batchnorm/mulMulConv3d_4e_2b_3x3_conv/Conv3D#Conv3d_4e_2b_3x3_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€@
К
.Conv3d_4e_2b_3x3_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4e_2b_3x3_bn/moving_mean*
_output_shapes
:@*
dtype0
§
#Conv3d_4e_2b_3x3_bn/batchnorm/mul_1Mul.Conv3d_4e_2b_3x3_bn/batchnorm/ReadVariableOp_1#Conv3d_4e_2b_3x3_bn/batchnorm/Rsqrt*
T0*
_output_shapes
:@
Г
.Conv3d_4e_2b_3x3_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4e_2b_3x3_bn/beta*
_output_shapes
:@*
dtype0
Ґ
!Conv3d_4e_2b_3x3_bn/batchnorm/subSub.Conv3d_4e_2b_3x3_bn/batchnorm/ReadVariableOp_2#Conv3d_4e_2b_3x3_bn/batchnorm/mul_1*
T0*
_output_shapes
:@
∞
#Conv3d_4e_2b_3x3_bn/batchnorm/add_1AddV2!Conv3d_4e_2b_3x3_bn/batchnorm/mul!Conv3d_4e_2b_3x3_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€@
§
*Conv3d_4e_3b_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4e_3b_1x1_bn/beta*
_output_shapes
:@*
dtype0*
valueB@*    
Ё
Conv3d_4e_3b_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4e_3b_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*)
shared_nameConv3d_4e_3b_1x1_bn/beta
Б
9Conv3d_4e_3b_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4e_3b_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_4e_3b_1x1_bn/beta/AssignAssignVariableOpConv3d_4e_3b_1x1_bn/beta*Conv3d_4e_3b_1x1_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_4e_3b_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4e_3b_1x1_bn/beta*
_output_shapes
:@*
dtype0
≤
1Conv3d_4e_3b_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4e_3b_1x1_bn/moving_mean*
_output_shapes
:@*
dtype0*
valueB@*    
т
Conv3d_4e_3b_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4e_3b_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*0
shared_name!Conv3d_4e_3b_1x1_bn/moving_mean
П
@Conv3d_4e_3b_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4e_3b_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4e_3b_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_4e_3b_1x1_bn/moving_mean1Conv3d_4e_3b_1x1_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_4e_3b_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4e_3b_1x1_bn/moving_mean*
_output_shapes
:@*
dtype0
є
4Conv3d_4e_3b_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4e_3b_1x1_bn/moving_variance*
_output_shapes
:@*
dtype0*
valueB@*  А?
ю
#Conv3d_4e_3b_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4e_3b_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*4
shared_name%#Conv3d_4e_3b_1x1_bn/moving_variance
Ч
DConv3d_4e_3b_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4e_3b_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4e_3b_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_4e_3b_1x1_bn/moving_variance4Conv3d_4e_3b_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_4e_3b_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4e_3b_1x1_bn/moving_variance*
_output_shapes
:@*
dtype0
М
,Conv3d_4e_3b_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4e_3b_1x1_bn/moving_variance*
_output_shapes
:@*
dtype0
h
#Conv3d_4e_3b_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_4e_3b_1x1_bn/batchnorm/addAddV2,Conv3d_4e_3b_1x1_bn/batchnorm/ReadVariableOp#Conv3d_4e_3b_1x1_bn/batchnorm/add/y*
T0*
_output_shapes
:@
t
#Conv3d_4e_3b_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_4e_3b_1x1_bn/batchnorm/add*
T0*
_output_shapes
:@
©
!Conv3d_4e_3b_1x1_bn/batchnorm/mulMulConv3d_4e_3b_1x1_conv/Conv3D#Conv3d_4e_3b_1x1_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€@
К
.Conv3d_4e_3b_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4e_3b_1x1_bn/moving_mean*
_output_shapes
:@*
dtype0
§
#Conv3d_4e_3b_1x1_bn/batchnorm/mul_1Mul.Conv3d_4e_3b_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_4e_3b_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes
:@
Г
.Conv3d_4e_3b_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4e_3b_1x1_bn/beta*
_output_shapes
:@*
dtype0
Ґ
!Conv3d_4e_3b_1x1_bn/batchnorm/subSub.Conv3d_4e_3b_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_4e_3b_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes
:@
∞
#Conv3d_4e_3b_1x1_bn/batchnorm/add_1AddV2!Conv3d_4e_3b_1x1_bn/batchnorm/mul!Conv3d_4e_3b_1x1_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€@
А
Conv3d_4e_0a_1x1/ReluRelu#Conv3d_4e_0a_1x1_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€p
Б
Conv3d_4e_1b_3x3/ReluRelu#Conv3d_4e_1b_3x3_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€†
А
Conv3d_4e_2b_3x3/ReluRelu#Conv3d_4e_2b_3x3_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€@
А
Conv3d_4e_3b_1x1/ReluRelu#Conv3d_4e_3b_1x1_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€@
V
Mixed_4e/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
б
Mixed_4e/concatConcatV2Conv3d_4e_0a_1x1/ReluConv3d_4e_1b_3x3/ReluConv3d_4e_2b_3x3/ReluConv3d_4e_3b_1x1/ReluMixed_4e/concat/axis*
N*
T0*

Tidx0*4
_output_shapes"
 :€€€€€€€€€Р
Ћ
=Conv3d_4f_1a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4f_1a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"           †   
±
;Conv3d_4f_1a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4f_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *Aњљ
±
;Conv3d_4f_1a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4f_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *Aњ=
£
EConv3d_4f_1a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4f_1a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4f_1a_1x1_conv/kernel*,
_output_shapes
:Р†*
dtype0*

seed *
seed2 
О
;Conv3d_4f_1a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4f_1a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_4f_1a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4f_1a_1x1_conv/kernel*
_output_shapes
: 
Ѓ
;Conv3d_4f_1a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4f_1a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4f_1a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4f_1a_1x1_conv/kernel*,
_output_shapes
:Р†
†
7Conv3d_4f_1a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_4f_1a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_4f_1a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4f_1a_1x1_conv/kernel*,
_output_shapes
:Р†
ы
Conv3d_4f_1a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4f_1a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:Р†*-
shared_nameConv3d_4f_1a_1x1_conv/kernel
Й
=Conv3d_4f_1a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4f_1a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4f_1a_1x1_conv/kernel/AssignAssignVariableOpConv3d_4f_1a_1x1_conv/kernel7Conv3d_4f_1a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ы
0Conv3d_4f_1a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4f_1a_1x1_conv/kernel*,
_output_shapes
:Р†*
dtype0
Ц
+Conv3d_4f_1a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4f_1a_1x1_conv/kernel*,
_output_shapes
:Р†*
dtype0
ь
Conv3d_4f_1a_1x1_conv/Conv3DConv3DMixed_4e/concat+Conv3d_4f_1a_1x1_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€†*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_4f_2a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4f_2a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"               
±
;Conv3d_4f_2a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4f_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *чь”љ
±
;Conv3d_4f_2a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4f_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *чь”=
Ґ
EConv3d_4f_2a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4f_2a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4f_2a_1x1_conv/kernel*+
_output_shapes
:Р *
dtype0*

seed *
seed2 
О
;Conv3d_4f_2a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4f_2a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_4f_2a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4f_2a_1x1_conv/kernel*
_output_shapes
: 
≠
;Conv3d_4f_2a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4f_2a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4f_2a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4f_2a_1x1_conv/kernel*+
_output_shapes
:Р 
Я
7Conv3d_4f_2a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_4f_2a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_4f_2a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4f_2a_1x1_conv/kernel*+
_output_shapes
:Р 
ъ
Conv3d_4f_2a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4f_2a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:Р *-
shared_nameConv3d_4f_2a_1x1_conv/kernel
Й
=Conv3d_4f_2a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4f_2a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4f_2a_1x1_conv/kernel/AssignAssignVariableOpConv3d_4f_2a_1x1_conv/kernel7Conv3d_4f_2a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_4f_2a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4f_2a_1x1_conv/kernel*+
_output_shapes
:Р *
dtype0
Х
+Conv3d_4f_2a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4f_2a_1x1_conv/kernel*+
_output_shapes
:Р *
dtype0
ы
Conv3d_4f_2a_1x1_conv/Conv3DConv3DMixed_4e/concat+Conv3d_4f_2a_1x1_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€ *
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

¶
*Conv3d_4f_1a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4f_1a_1x1_bn/beta*
_output_shapes	
:†*
dtype0*
valueB†*    
ё
Conv3d_4f_1a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4f_1a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:†*)
shared_nameConv3d_4f_1a_1x1_bn/beta
Б
9Conv3d_4f_1a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4f_1a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_4f_1a_1x1_bn/beta/AssignAssignVariableOpConv3d_4f_1a_1x1_bn/beta*Conv3d_4f_1a_1x1_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_4f_1a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4f_1a_1x1_bn/beta*
_output_shapes	
:†*
dtype0
і
1Conv3d_4f_1a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4f_1a_1x1_bn/moving_mean*
_output_shapes	
:†*
dtype0*
valueB†*    
у
Conv3d_4f_1a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4f_1a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:†*0
shared_name!Conv3d_4f_1a_1x1_bn/moving_mean
П
@Conv3d_4f_1a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4f_1a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4f_1a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_4f_1a_1x1_bn/moving_mean1Conv3d_4f_1a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_4f_1a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4f_1a_1x1_bn/moving_mean*
_output_shapes	
:†*
dtype0
ї
4Conv3d_4f_1a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4f_1a_1x1_bn/moving_variance*
_output_shapes	
:†*
dtype0*
valueB†*  А?
€
#Conv3d_4f_1a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4f_1a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:†*4
shared_name%#Conv3d_4f_1a_1x1_bn/moving_variance
Ч
DConv3d_4f_1a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4f_1a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4f_1a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_4f_1a_1x1_bn/moving_variance4Conv3d_4f_1a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_4f_1a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4f_1a_1x1_bn/moving_variance*
_output_shapes	
:†*
dtype0
Н
,Conv3d_4f_1a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4f_1a_1x1_bn/moving_variance*
_output_shapes	
:†*
dtype0
h
#Conv3d_4f_1a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_4f_1a_1x1_bn/batchnorm/addAddV2,Conv3d_4f_1a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_4f_1a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes	
:†
u
#Conv3d_4f_1a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_4f_1a_1x1_bn/batchnorm/add*
T0*
_output_shapes	
:†
™
!Conv3d_4f_1a_1x1_bn/batchnorm/mulMulConv3d_4f_1a_1x1_conv/Conv3D#Conv3d_4f_1a_1x1_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€†
Л
.Conv3d_4f_1a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4f_1a_1x1_bn/moving_mean*
_output_shapes	
:†*
dtype0
•
#Conv3d_4f_1a_1x1_bn/batchnorm/mul_1Mul.Conv3d_4f_1a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_4f_1a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:†
Д
.Conv3d_4f_1a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4f_1a_1x1_bn/beta*
_output_shapes	
:†*
dtype0
£
!Conv3d_4f_1a_1x1_bn/batchnorm/subSub.Conv3d_4f_1a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_4f_1a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes	
:†
±
#Conv3d_4f_1a_1x1_bn/batchnorm/add_1AddV2!Conv3d_4f_1a_1x1_bn/batchnorm/mul!Conv3d_4f_1a_1x1_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€†
§
*Conv3d_4f_2a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4f_2a_1x1_bn/beta*
_output_shapes
: *
dtype0*
valueB *    
Ё
Conv3d_4f_2a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4f_2a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *)
shared_nameConv3d_4f_2a_1x1_bn/beta
Б
9Conv3d_4f_2a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4f_2a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_4f_2a_1x1_bn/beta/AssignAssignVariableOpConv3d_4f_2a_1x1_bn/beta*Conv3d_4f_2a_1x1_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_4f_2a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4f_2a_1x1_bn/beta*
_output_shapes
: *
dtype0
≤
1Conv3d_4f_2a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4f_2a_1x1_bn/moving_mean*
_output_shapes
: *
dtype0*
valueB *    
т
Conv3d_4f_2a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4f_2a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *0
shared_name!Conv3d_4f_2a_1x1_bn/moving_mean
П
@Conv3d_4f_2a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4f_2a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4f_2a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_4f_2a_1x1_bn/moving_mean1Conv3d_4f_2a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_4f_2a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4f_2a_1x1_bn/moving_mean*
_output_shapes
: *
dtype0
є
4Conv3d_4f_2a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4f_2a_1x1_bn/moving_variance*
_output_shapes
: *
dtype0*
valueB *  А?
ю
#Conv3d_4f_2a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4f_2a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *4
shared_name%#Conv3d_4f_2a_1x1_bn/moving_variance
Ч
DConv3d_4f_2a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4f_2a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4f_2a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_4f_2a_1x1_bn/moving_variance4Conv3d_4f_2a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_4f_2a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4f_2a_1x1_bn/moving_variance*
_output_shapes
: *
dtype0
М
,Conv3d_4f_2a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4f_2a_1x1_bn/moving_variance*
_output_shapes
: *
dtype0
h
#Conv3d_4f_2a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_4f_2a_1x1_bn/batchnorm/addAddV2,Conv3d_4f_2a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_4f_2a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes
: 
t
#Conv3d_4f_2a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_4f_2a_1x1_bn/batchnorm/add*
T0*
_output_shapes
: 
©
!Conv3d_4f_2a_1x1_bn/batchnorm/mulMulConv3d_4f_2a_1x1_conv/Conv3D#Conv3d_4f_2a_1x1_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€ 
К
.Conv3d_4f_2a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4f_2a_1x1_bn/moving_mean*
_output_shapes
: *
dtype0
§
#Conv3d_4f_2a_1x1_bn/batchnorm/mul_1Mul.Conv3d_4f_2a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_4f_2a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes
: 
Г
.Conv3d_4f_2a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4f_2a_1x1_bn/beta*
_output_shapes
: *
dtype0
Ґ
!Conv3d_4f_2a_1x1_bn/batchnorm/subSub.Conv3d_4f_2a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_4f_2a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes
: 
∞
#Conv3d_4f_2a_1x1_bn/batchnorm/add_1AddV2!Conv3d_4f_2a_1x1_bn/batchnorm/mul!Conv3d_4f_2a_1x1_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€ 
Б
Conv3d_4f_1a_1x1/ReluRelu#Conv3d_4f_1a_1x1_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€†
А
Conv3d_4f_2a_1x1/ReluRelu#Conv3d_4f_2a_1x1_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€ 
ѕ
MaxPool2d_4f_3a_3x3/MaxPool3D	MaxPool3DMixed_4e/concat*
T0*4
_output_shapes"
 :€€€€€€€€€Р*
data_formatNDHWC*
ksize	
*
paddingSAME*
strides	

Ћ
=Conv3d_4f_0a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4f_0a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"              
±
;Conv3d_4f_0a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4f_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *•)≥љ
±
;Conv3d_4f_0a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4f_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *•)≥=
£
EConv3d_4f_0a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4f_0a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4f_0a_1x1_conv/kernel*,
_output_shapes
:РА*
dtype0*

seed *
seed2 
О
;Conv3d_4f_0a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4f_0a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_4f_0a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4f_0a_1x1_conv/kernel*
_output_shapes
: 
Ѓ
;Conv3d_4f_0a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4f_0a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4f_0a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4f_0a_1x1_conv/kernel*,
_output_shapes
:РА
†
7Conv3d_4f_0a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_4f_0a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_4f_0a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4f_0a_1x1_conv/kernel*,
_output_shapes
:РА
ы
Conv3d_4f_0a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4f_0a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:РА*-
shared_nameConv3d_4f_0a_1x1_conv/kernel
Й
=Conv3d_4f_0a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4f_0a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4f_0a_1x1_conv/kernel/AssignAssignVariableOpConv3d_4f_0a_1x1_conv/kernel7Conv3d_4f_0a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ы
0Conv3d_4f_0a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4f_0a_1x1_conv/kernel*,
_output_shapes
:РА*
dtype0
Ц
+Conv3d_4f_0a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4f_0a_1x1_conv/kernel*,
_output_shapes
:РА*
dtype0
ь
Conv3d_4f_0a_1x1_conv/Conv3DConv3DMixed_4e/concat+Conv3d_4f_0a_1x1_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€А*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_4f_1b_3x3_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4f_1b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         †   @  
±
;Conv3d_4f_1b_3x3_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4f_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *ЗC∞Љ
±
;Conv3d_4f_1b_3x3_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4f_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *ЗC∞<
£
EConv3d_4f_1b_3x3_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4f_1b_3x3_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4f_1b_3x3_conv/kernel*,
_output_shapes
:†ј*
dtype0*

seed *
seed2 
О
;Conv3d_4f_1b_3x3_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4f_1b_3x3_conv/kernel/Initializer/random_uniform/max;Conv3d_4f_1b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4f_1b_3x3_conv/kernel*
_output_shapes
: 
Ѓ
;Conv3d_4f_1b_3x3_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4f_1b_3x3_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4f_1b_3x3_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4f_1b_3x3_conv/kernel*,
_output_shapes
:†ј
†
7Conv3d_4f_1b_3x3_conv/kernel/Initializer/random_uniformAdd;Conv3d_4f_1b_3x3_conv/kernel/Initializer/random_uniform/mul;Conv3d_4f_1b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4f_1b_3x3_conv/kernel*,
_output_shapes
:†ј
ы
Conv3d_4f_1b_3x3_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4f_1b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:†ј*-
shared_nameConv3d_4f_1b_3x3_conv/kernel
Й
=Conv3d_4f_1b_3x3_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4f_1b_3x3_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4f_1b_3x3_conv/kernel/AssignAssignVariableOpConv3d_4f_1b_3x3_conv/kernel7Conv3d_4f_1b_3x3_conv/kernel/Initializer/random_uniform*
dtype0
Ы
0Conv3d_4f_1b_3x3_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4f_1b_3x3_conv/kernel*,
_output_shapes
:†ј*
dtype0
Ц
+Conv3d_4f_1b_3x3_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4f_1b_3x3_conv/kernel*,
_output_shapes
:†ј*
dtype0
В
Conv3d_4f_1b_3x3_conv/Conv3DConv3DConv3d_4f_1a_1x1/Relu+Conv3d_4f_1b_3x3_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€ј*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_4f_2b_3x3_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4f_2b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"             А   
±
;Conv3d_4f_2b_3x3_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4f_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *¶љ
±
;Conv3d_4f_2b_3x3_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4f_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *¶=
Ґ
EConv3d_4f_2b_3x3_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4f_2b_3x3_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4f_2b_3x3_conv/kernel*+
_output_shapes
: А*
dtype0*

seed *
seed2 
О
;Conv3d_4f_2b_3x3_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4f_2b_3x3_conv/kernel/Initializer/random_uniform/max;Conv3d_4f_2b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4f_2b_3x3_conv/kernel*
_output_shapes
: 
≠
;Conv3d_4f_2b_3x3_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4f_2b_3x3_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4f_2b_3x3_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4f_2b_3x3_conv/kernel*+
_output_shapes
: А
Я
7Conv3d_4f_2b_3x3_conv/kernel/Initializer/random_uniformAdd;Conv3d_4f_2b_3x3_conv/kernel/Initializer/random_uniform/mul;Conv3d_4f_2b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4f_2b_3x3_conv/kernel*+
_output_shapes
: А
ъ
Conv3d_4f_2b_3x3_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4f_2b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape: А*-
shared_nameConv3d_4f_2b_3x3_conv/kernel
Й
=Conv3d_4f_2b_3x3_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4f_2b_3x3_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4f_2b_3x3_conv/kernel/AssignAssignVariableOpConv3d_4f_2b_3x3_conv/kernel7Conv3d_4f_2b_3x3_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_4f_2b_3x3_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4f_2b_3x3_conv/kernel*+
_output_shapes
: А*
dtype0
Х
+Conv3d_4f_2b_3x3_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4f_2b_3x3_conv/kernel*+
_output_shapes
: А*
dtype0
В
Conv3d_4f_2b_3x3_conv/Conv3DConv3DConv3d_4f_2a_1x1/Relu+Conv3d_4f_2b_3x3_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€А*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_4f_3b_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_4f_3b_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"           А   
±
;Conv3d_4f_3b_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_4f_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *Ё√љ
±
;Conv3d_4f_3b_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_4f_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *Ё√=
£
EConv3d_4f_3b_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_4f_3b_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_4f_3b_1x1_conv/kernel*,
_output_shapes
:РА*
dtype0*

seed *
seed2 
О
;Conv3d_4f_3b_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_4f_3b_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_4f_3b_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4f_3b_1x1_conv/kernel*
_output_shapes
: 
Ѓ
;Conv3d_4f_3b_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_4f_3b_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_4f_3b_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_4f_3b_1x1_conv/kernel*,
_output_shapes
:РА
†
7Conv3d_4f_3b_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_4f_3b_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_4f_3b_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_4f_3b_1x1_conv/kernel*,
_output_shapes
:РА
ы
Conv3d_4f_3b_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_4f_3b_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:РА*-
shared_nameConv3d_4f_3b_1x1_conv/kernel
Й
=Conv3d_4f_3b_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4f_3b_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_4f_3b_1x1_conv/kernel/AssignAssignVariableOpConv3d_4f_3b_1x1_conv/kernel7Conv3d_4f_3b_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ы
0Conv3d_4f_3b_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_4f_3b_1x1_conv/kernel*,
_output_shapes
:РА*
dtype0
Ц
+Conv3d_4f_3b_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_4f_3b_1x1_conv/kernel*,
_output_shapes
:РА*
dtype0
К
Conv3d_4f_3b_1x1_conv/Conv3DConv3DMaxPool2d_4f_3a_3x3/MaxPool3D+Conv3d_4f_3b_1x1_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€А*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

¶
*Conv3d_4f_0a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4f_0a_1x1_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
ё
Conv3d_4f_0a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4f_0a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*)
shared_nameConv3d_4f_0a_1x1_bn/beta
Б
9Conv3d_4f_0a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4f_0a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_4f_0a_1x1_bn/beta/AssignAssignVariableOpConv3d_4f_0a_1x1_bn/beta*Conv3d_4f_0a_1x1_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_4f_0a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4f_0a_1x1_bn/beta*
_output_shapes	
:А*
dtype0
і
1Conv3d_4f_0a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4f_0a_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0*
valueBА*    
у
Conv3d_4f_0a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4f_0a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*0
shared_name!Conv3d_4f_0a_1x1_bn/moving_mean
П
@Conv3d_4f_0a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4f_0a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4f_0a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_4f_0a_1x1_bn/moving_mean1Conv3d_4f_0a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_4f_0a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4f_0a_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0
ї
4Conv3d_4f_0a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4f_0a_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0*
valueBА*  А?
€
#Conv3d_4f_0a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4f_0a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*4
shared_name%#Conv3d_4f_0a_1x1_bn/moving_variance
Ч
DConv3d_4f_0a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4f_0a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4f_0a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_4f_0a_1x1_bn/moving_variance4Conv3d_4f_0a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_4f_0a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4f_0a_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0
Н
,Conv3d_4f_0a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4f_0a_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0
h
#Conv3d_4f_0a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_4f_0a_1x1_bn/batchnorm/addAddV2,Conv3d_4f_0a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_4f_0a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes	
:А
u
#Conv3d_4f_0a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_4f_0a_1x1_bn/batchnorm/add*
T0*
_output_shapes	
:А
™
!Conv3d_4f_0a_1x1_bn/batchnorm/mulMulConv3d_4f_0a_1x1_conv/Conv3D#Conv3d_4f_0a_1x1_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€А
Л
.Conv3d_4f_0a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4f_0a_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0
•
#Conv3d_4f_0a_1x1_bn/batchnorm/mul_1Mul.Conv3d_4f_0a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_4f_0a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:А
Д
.Conv3d_4f_0a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4f_0a_1x1_bn/beta*
_output_shapes	
:А*
dtype0
£
!Conv3d_4f_0a_1x1_bn/batchnorm/subSub.Conv3d_4f_0a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_4f_0a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes	
:А
±
#Conv3d_4f_0a_1x1_bn/batchnorm/add_1AddV2!Conv3d_4f_0a_1x1_bn/batchnorm/mul!Conv3d_4f_0a_1x1_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€А
¶
*Conv3d_4f_1b_3x3_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4f_1b_3x3_bn/beta*
_output_shapes	
:ј*
dtype0*
valueBј*    
ё
Conv3d_4f_1b_3x3_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4f_1b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:ј*)
shared_nameConv3d_4f_1b_3x3_bn/beta
Б
9Conv3d_4f_1b_3x3_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4f_1b_3x3_bn/beta*
_output_shapes
: 
Ж
Conv3d_4f_1b_3x3_bn/beta/AssignAssignVariableOpConv3d_4f_1b_3x3_bn/beta*Conv3d_4f_1b_3x3_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_4f_1b_3x3_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4f_1b_3x3_bn/beta*
_output_shapes	
:ј*
dtype0
і
1Conv3d_4f_1b_3x3_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4f_1b_3x3_bn/moving_mean*
_output_shapes	
:ј*
dtype0*
valueBј*    
у
Conv3d_4f_1b_3x3_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4f_1b_3x3_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:ј*0
shared_name!Conv3d_4f_1b_3x3_bn/moving_mean
П
@Conv3d_4f_1b_3x3_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4f_1b_3x3_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4f_1b_3x3_bn/moving_mean/AssignAssignVariableOpConv3d_4f_1b_3x3_bn/moving_mean1Conv3d_4f_1b_3x3_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_4f_1b_3x3_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4f_1b_3x3_bn/moving_mean*
_output_shapes	
:ј*
dtype0
ї
4Conv3d_4f_1b_3x3_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4f_1b_3x3_bn/moving_variance*
_output_shapes	
:ј*
dtype0*
valueBј*  А?
€
#Conv3d_4f_1b_3x3_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4f_1b_3x3_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:ј*4
shared_name%#Conv3d_4f_1b_3x3_bn/moving_variance
Ч
DConv3d_4f_1b_3x3_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4f_1b_3x3_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4f_1b_3x3_bn/moving_variance/AssignAssignVariableOp#Conv3d_4f_1b_3x3_bn/moving_variance4Conv3d_4f_1b_3x3_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_4f_1b_3x3_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4f_1b_3x3_bn/moving_variance*
_output_shapes	
:ј*
dtype0
Н
,Conv3d_4f_1b_3x3_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4f_1b_3x3_bn/moving_variance*
_output_shapes	
:ј*
dtype0
h
#Conv3d_4f_1b_3x3_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_4f_1b_3x3_bn/batchnorm/addAddV2,Conv3d_4f_1b_3x3_bn/batchnorm/ReadVariableOp#Conv3d_4f_1b_3x3_bn/batchnorm/add/y*
T0*
_output_shapes	
:ј
u
#Conv3d_4f_1b_3x3_bn/batchnorm/RsqrtRsqrt!Conv3d_4f_1b_3x3_bn/batchnorm/add*
T0*
_output_shapes	
:ј
™
!Conv3d_4f_1b_3x3_bn/batchnorm/mulMulConv3d_4f_1b_3x3_conv/Conv3D#Conv3d_4f_1b_3x3_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€ј
Л
.Conv3d_4f_1b_3x3_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4f_1b_3x3_bn/moving_mean*
_output_shapes	
:ј*
dtype0
•
#Conv3d_4f_1b_3x3_bn/batchnorm/mul_1Mul.Conv3d_4f_1b_3x3_bn/batchnorm/ReadVariableOp_1#Conv3d_4f_1b_3x3_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:ј
Д
.Conv3d_4f_1b_3x3_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4f_1b_3x3_bn/beta*
_output_shapes	
:ј*
dtype0
£
!Conv3d_4f_1b_3x3_bn/batchnorm/subSub.Conv3d_4f_1b_3x3_bn/batchnorm/ReadVariableOp_2#Conv3d_4f_1b_3x3_bn/batchnorm/mul_1*
T0*
_output_shapes	
:ј
±
#Conv3d_4f_1b_3x3_bn/batchnorm/add_1AddV2!Conv3d_4f_1b_3x3_bn/batchnorm/mul!Conv3d_4f_1b_3x3_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€ј
¶
*Conv3d_4f_2b_3x3_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4f_2b_3x3_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
ё
Conv3d_4f_2b_3x3_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4f_2b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*)
shared_nameConv3d_4f_2b_3x3_bn/beta
Б
9Conv3d_4f_2b_3x3_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4f_2b_3x3_bn/beta*
_output_shapes
: 
Ж
Conv3d_4f_2b_3x3_bn/beta/AssignAssignVariableOpConv3d_4f_2b_3x3_bn/beta*Conv3d_4f_2b_3x3_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_4f_2b_3x3_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4f_2b_3x3_bn/beta*
_output_shapes	
:А*
dtype0
і
1Conv3d_4f_2b_3x3_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4f_2b_3x3_bn/moving_mean*
_output_shapes	
:А*
dtype0*
valueBА*    
у
Conv3d_4f_2b_3x3_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4f_2b_3x3_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*0
shared_name!Conv3d_4f_2b_3x3_bn/moving_mean
П
@Conv3d_4f_2b_3x3_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4f_2b_3x3_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4f_2b_3x3_bn/moving_mean/AssignAssignVariableOpConv3d_4f_2b_3x3_bn/moving_mean1Conv3d_4f_2b_3x3_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_4f_2b_3x3_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4f_2b_3x3_bn/moving_mean*
_output_shapes	
:А*
dtype0
ї
4Conv3d_4f_2b_3x3_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4f_2b_3x3_bn/moving_variance*
_output_shapes	
:А*
dtype0*
valueBА*  А?
€
#Conv3d_4f_2b_3x3_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4f_2b_3x3_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*4
shared_name%#Conv3d_4f_2b_3x3_bn/moving_variance
Ч
DConv3d_4f_2b_3x3_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4f_2b_3x3_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4f_2b_3x3_bn/moving_variance/AssignAssignVariableOp#Conv3d_4f_2b_3x3_bn/moving_variance4Conv3d_4f_2b_3x3_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_4f_2b_3x3_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4f_2b_3x3_bn/moving_variance*
_output_shapes	
:А*
dtype0
Н
,Conv3d_4f_2b_3x3_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4f_2b_3x3_bn/moving_variance*
_output_shapes	
:А*
dtype0
h
#Conv3d_4f_2b_3x3_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_4f_2b_3x3_bn/batchnorm/addAddV2,Conv3d_4f_2b_3x3_bn/batchnorm/ReadVariableOp#Conv3d_4f_2b_3x3_bn/batchnorm/add/y*
T0*
_output_shapes	
:А
u
#Conv3d_4f_2b_3x3_bn/batchnorm/RsqrtRsqrt!Conv3d_4f_2b_3x3_bn/batchnorm/add*
T0*
_output_shapes	
:А
™
!Conv3d_4f_2b_3x3_bn/batchnorm/mulMulConv3d_4f_2b_3x3_conv/Conv3D#Conv3d_4f_2b_3x3_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€А
Л
.Conv3d_4f_2b_3x3_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4f_2b_3x3_bn/moving_mean*
_output_shapes	
:А*
dtype0
•
#Conv3d_4f_2b_3x3_bn/batchnorm/mul_1Mul.Conv3d_4f_2b_3x3_bn/batchnorm/ReadVariableOp_1#Conv3d_4f_2b_3x3_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:А
Д
.Conv3d_4f_2b_3x3_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4f_2b_3x3_bn/beta*
_output_shapes	
:А*
dtype0
£
!Conv3d_4f_2b_3x3_bn/batchnorm/subSub.Conv3d_4f_2b_3x3_bn/batchnorm/ReadVariableOp_2#Conv3d_4f_2b_3x3_bn/batchnorm/mul_1*
T0*
_output_shapes	
:А
±
#Conv3d_4f_2b_3x3_bn/batchnorm/add_1AddV2!Conv3d_4f_2b_3x3_bn/batchnorm/mul!Conv3d_4f_2b_3x3_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€А
¶
*Conv3d_4f_3b_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_4f_3b_1x1_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
ё
Conv3d_4f_3b_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_4f_3b_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*)
shared_nameConv3d_4f_3b_1x1_bn/beta
Б
9Conv3d_4f_3b_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4f_3b_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_4f_3b_1x1_bn/beta/AssignAssignVariableOpConv3d_4f_3b_1x1_bn/beta*Conv3d_4f_3b_1x1_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_4f_3b_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_4f_3b_1x1_bn/beta*
_output_shapes	
:А*
dtype0
і
1Conv3d_4f_3b_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_4f_3b_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0*
valueBА*    
у
Conv3d_4f_3b_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_4f_3b_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*0
shared_name!Conv3d_4f_3b_1x1_bn/moving_mean
П
@Conv3d_4f_3b_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_4f_3b_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_4f_3b_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_4f_3b_1x1_bn/moving_mean1Conv3d_4f_3b_1x1_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_4f_3b_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_4f_3b_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0
ї
4Conv3d_4f_3b_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_4f_3b_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0*
valueBА*  А?
€
#Conv3d_4f_3b_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_4f_3b_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*4
shared_name%#Conv3d_4f_3b_1x1_bn/moving_variance
Ч
DConv3d_4f_3b_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_4f_3b_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_4f_3b_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_4f_3b_1x1_bn/moving_variance4Conv3d_4f_3b_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_4f_3b_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_4f_3b_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0
Н
,Conv3d_4f_3b_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_4f_3b_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0
h
#Conv3d_4f_3b_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_4f_3b_1x1_bn/batchnorm/addAddV2,Conv3d_4f_3b_1x1_bn/batchnorm/ReadVariableOp#Conv3d_4f_3b_1x1_bn/batchnorm/add/y*
T0*
_output_shapes	
:А
u
#Conv3d_4f_3b_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_4f_3b_1x1_bn/batchnorm/add*
T0*
_output_shapes	
:А
™
!Conv3d_4f_3b_1x1_bn/batchnorm/mulMulConv3d_4f_3b_1x1_conv/Conv3D#Conv3d_4f_3b_1x1_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€А
Л
.Conv3d_4f_3b_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_4f_3b_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0
•
#Conv3d_4f_3b_1x1_bn/batchnorm/mul_1Mul.Conv3d_4f_3b_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_4f_3b_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:А
Д
.Conv3d_4f_3b_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_4f_3b_1x1_bn/beta*
_output_shapes	
:А*
dtype0
£
!Conv3d_4f_3b_1x1_bn/batchnorm/subSub.Conv3d_4f_3b_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_4f_3b_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes	
:А
±
#Conv3d_4f_3b_1x1_bn/batchnorm/add_1AddV2!Conv3d_4f_3b_1x1_bn/batchnorm/mul!Conv3d_4f_3b_1x1_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€А
Б
Conv3d_4f_0a_1x1/ReluRelu#Conv3d_4f_0a_1x1_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€А
Б
Conv3d_4f_1b_3x3/ReluRelu#Conv3d_4f_1b_3x3_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€ј
Б
Conv3d_4f_2b_3x3/ReluRelu#Conv3d_4f_2b_3x3_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€А
Б
Conv3d_4f_3b_1x1/ReluRelu#Conv3d_4f_3b_1x1_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€А
V
Mixed_4f/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
б
Mixed_4f/concatConcatV2Conv3d_4f_0a_1x1/ReluConv3d_4f_1b_3x3/ReluConv3d_4f_2b_3x3/ReluConv3d_4f_3b_1x1/ReluMixed_4f/concat/axis*
N*
T0*

Tidx0*4
_output_shapes"
 :€€€€€€€€€ј
ћ
MaxPool2d_5a_2x2/MaxPool3D	MaxPool3DMixed_4f/concat*
T0*4
_output_shapes"
 :€€€€€€€€€ј*
data_formatNDHWC*
ksize	
*
paddingSAME*
strides	

Ћ
=Conv3d_5b_1a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_5b_1a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         @  †   
±
;Conv3d_5b_1a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_5b_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *ЪFЯљ
±
;Conv3d_5b_1a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_5b_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *ЪFЯ=
£
EConv3d_5b_1a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_5b_1a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_5b_1a_1x1_conv/kernel*,
_output_shapes
:ј†*
dtype0*

seed *
seed2 
О
;Conv3d_5b_1a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_5b_1a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_5b_1a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_5b_1a_1x1_conv/kernel*
_output_shapes
: 
Ѓ
;Conv3d_5b_1a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_5b_1a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_5b_1a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_5b_1a_1x1_conv/kernel*,
_output_shapes
:ј†
†
7Conv3d_5b_1a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_5b_1a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_5b_1a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_5b_1a_1x1_conv/kernel*,
_output_shapes
:ј†
ы
Conv3d_5b_1a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_5b_1a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:ј†*-
shared_nameConv3d_5b_1a_1x1_conv/kernel
Й
=Conv3d_5b_1a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5b_1a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_5b_1a_1x1_conv/kernel/AssignAssignVariableOpConv3d_5b_1a_1x1_conv/kernel7Conv3d_5b_1a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ы
0Conv3d_5b_1a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_5b_1a_1x1_conv/kernel*,
_output_shapes
:ј†*
dtype0
Ц
+Conv3d_5b_1a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_5b_1a_1x1_conv/kernel*,
_output_shapes
:ј†*
dtype0
З
Conv3d_5b_1a_1x1_conv/Conv3DConv3DMaxPool2d_5a_2x2/MaxPool3D+Conv3d_5b_1a_1x1_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€†*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_5b_2a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_5b_2a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         @      
±
;Conv3d_5b_2a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_5b_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *Ђ™™љ
±
;Conv3d_5b_2a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_5b_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *Ђ™™=
Ґ
EConv3d_5b_2a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_5b_2a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_5b_2a_1x1_conv/kernel*+
_output_shapes
:ј *
dtype0*

seed *
seed2 
О
;Conv3d_5b_2a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_5b_2a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_5b_2a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_5b_2a_1x1_conv/kernel*
_output_shapes
: 
≠
;Conv3d_5b_2a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_5b_2a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_5b_2a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_5b_2a_1x1_conv/kernel*+
_output_shapes
:ј 
Я
7Conv3d_5b_2a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_5b_2a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_5b_2a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_5b_2a_1x1_conv/kernel*+
_output_shapes
:ј 
ъ
Conv3d_5b_2a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_5b_2a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:ј *-
shared_nameConv3d_5b_2a_1x1_conv/kernel
Й
=Conv3d_5b_2a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5b_2a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_5b_2a_1x1_conv/kernel/AssignAssignVariableOpConv3d_5b_2a_1x1_conv/kernel7Conv3d_5b_2a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_5b_2a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_5b_2a_1x1_conv/kernel*+
_output_shapes
:ј *
dtype0
Х
+Conv3d_5b_2a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_5b_2a_1x1_conv/kernel*+
_output_shapes
:ј *
dtype0
Ж
Conv3d_5b_2a_1x1_conv/Conv3DConv3DMaxPool2d_5a_2x2/MaxPool3D+Conv3d_5b_2a_1x1_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€ *
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

¶
*Conv3d_5b_1a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_5b_1a_1x1_bn/beta*
_output_shapes	
:†*
dtype0*
valueB†*    
ё
Conv3d_5b_1a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_5b_1a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:†*)
shared_nameConv3d_5b_1a_1x1_bn/beta
Б
9Conv3d_5b_1a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5b_1a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_5b_1a_1x1_bn/beta/AssignAssignVariableOpConv3d_5b_1a_1x1_bn/beta*Conv3d_5b_1a_1x1_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_5b_1a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_5b_1a_1x1_bn/beta*
_output_shapes	
:†*
dtype0
і
1Conv3d_5b_1a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_5b_1a_1x1_bn/moving_mean*
_output_shapes	
:†*
dtype0*
valueB†*    
у
Conv3d_5b_1a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_5b_1a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:†*0
shared_name!Conv3d_5b_1a_1x1_bn/moving_mean
П
@Conv3d_5b_1a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5b_1a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_5b_1a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_5b_1a_1x1_bn/moving_mean1Conv3d_5b_1a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_5b_1a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_5b_1a_1x1_bn/moving_mean*
_output_shapes	
:†*
dtype0
ї
4Conv3d_5b_1a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_5b_1a_1x1_bn/moving_variance*
_output_shapes	
:†*
dtype0*
valueB†*  А?
€
#Conv3d_5b_1a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_5b_1a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:†*4
shared_name%#Conv3d_5b_1a_1x1_bn/moving_variance
Ч
DConv3d_5b_1a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_5b_1a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_5b_1a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_5b_1a_1x1_bn/moving_variance4Conv3d_5b_1a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_5b_1a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_5b_1a_1x1_bn/moving_variance*
_output_shapes	
:†*
dtype0
Н
,Conv3d_5b_1a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_5b_1a_1x1_bn/moving_variance*
_output_shapes	
:†*
dtype0
h
#Conv3d_5b_1a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_5b_1a_1x1_bn/batchnorm/addAddV2,Conv3d_5b_1a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_5b_1a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes	
:†
u
#Conv3d_5b_1a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_5b_1a_1x1_bn/batchnorm/add*
T0*
_output_shapes	
:†
™
!Conv3d_5b_1a_1x1_bn/batchnorm/mulMulConv3d_5b_1a_1x1_conv/Conv3D#Conv3d_5b_1a_1x1_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€†
Л
.Conv3d_5b_1a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_5b_1a_1x1_bn/moving_mean*
_output_shapes	
:†*
dtype0
•
#Conv3d_5b_1a_1x1_bn/batchnorm/mul_1Mul.Conv3d_5b_1a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_5b_1a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:†
Д
.Conv3d_5b_1a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_5b_1a_1x1_bn/beta*
_output_shapes	
:†*
dtype0
£
!Conv3d_5b_1a_1x1_bn/batchnorm/subSub.Conv3d_5b_1a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_5b_1a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes	
:†
±
#Conv3d_5b_1a_1x1_bn/batchnorm/add_1AddV2!Conv3d_5b_1a_1x1_bn/batchnorm/mul!Conv3d_5b_1a_1x1_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€†
§
*Conv3d_5b_2a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_5b_2a_1x1_bn/beta*
_output_shapes
: *
dtype0*
valueB *    
Ё
Conv3d_5b_2a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_5b_2a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *)
shared_nameConv3d_5b_2a_1x1_bn/beta
Б
9Conv3d_5b_2a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5b_2a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_5b_2a_1x1_bn/beta/AssignAssignVariableOpConv3d_5b_2a_1x1_bn/beta*Conv3d_5b_2a_1x1_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_5b_2a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_5b_2a_1x1_bn/beta*
_output_shapes
: *
dtype0
≤
1Conv3d_5b_2a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_5b_2a_1x1_bn/moving_mean*
_output_shapes
: *
dtype0*
valueB *    
т
Conv3d_5b_2a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_5b_2a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *0
shared_name!Conv3d_5b_2a_1x1_bn/moving_mean
П
@Conv3d_5b_2a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5b_2a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_5b_2a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_5b_2a_1x1_bn/moving_mean1Conv3d_5b_2a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_5b_2a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_5b_2a_1x1_bn/moving_mean*
_output_shapes
: *
dtype0
є
4Conv3d_5b_2a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_5b_2a_1x1_bn/moving_variance*
_output_shapes
: *
dtype0*
valueB *  А?
ю
#Conv3d_5b_2a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_5b_2a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *4
shared_name%#Conv3d_5b_2a_1x1_bn/moving_variance
Ч
DConv3d_5b_2a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_5b_2a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_5b_2a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_5b_2a_1x1_bn/moving_variance4Conv3d_5b_2a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_5b_2a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_5b_2a_1x1_bn/moving_variance*
_output_shapes
: *
dtype0
М
,Conv3d_5b_2a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_5b_2a_1x1_bn/moving_variance*
_output_shapes
: *
dtype0
h
#Conv3d_5b_2a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_5b_2a_1x1_bn/batchnorm/addAddV2,Conv3d_5b_2a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_5b_2a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes
: 
t
#Conv3d_5b_2a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_5b_2a_1x1_bn/batchnorm/add*
T0*
_output_shapes
: 
©
!Conv3d_5b_2a_1x1_bn/batchnorm/mulMulConv3d_5b_2a_1x1_conv/Conv3D#Conv3d_5b_2a_1x1_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€ 
К
.Conv3d_5b_2a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_5b_2a_1x1_bn/moving_mean*
_output_shapes
: *
dtype0
§
#Conv3d_5b_2a_1x1_bn/batchnorm/mul_1Mul.Conv3d_5b_2a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_5b_2a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes
: 
Г
.Conv3d_5b_2a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_5b_2a_1x1_bn/beta*
_output_shapes
: *
dtype0
Ґ
!Conv3d_5b_2a_1x1_bn/batchnorm/subSub.Conv3d_5b_2a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_5b_2a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes
: 
∞
#Conv3d_5b_2a_1x1_bn/batchnorm/add_1AddV2!Conv3d_5b_2a_1x1_bn/batchnorm/mul!Conv3d_5b_2a_1x1_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€ 
Б
Conv3d_5b_1a_1x1/ReluRelu#Conv3d_5b_1a_1x1_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€†
А
Conv3d_5b_2a_1x1/ReluRelu#Conv3d_5b_2a_1x1_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€ 
Џ
MaxPool2d_5b_3a_3x3/MaxPool3D	MaxPool3DMaxPool2d_5a_2x2/MaxPool3D*
T0*4
_output_shapes"
 :€€€€€€€€€ј*
data_formatNDHWC*
ksize	
*
paddingSAME*
strides	

Ћ
=Conv3d_5b_0a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_5b_0a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         @     
±
;Conv3d_5b_0a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_5b_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *0Шљ
±
;Conv3d_5b_0a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_5b_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *0Ш=
£
EConv3d_5b_0a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_5b_0a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_5b_0a_1x1_conv/kernel*,
_output_shapes
:јА*
dtype0*

seed *
seed2 
О
;Conv3d_5b_0a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_5b_0a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_5b_0a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_5b_0a_1x1_conv/kernel*
_output_shapes
: 
Ѓ
;Conv3d_5b_0a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_5b_0a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_5b_0a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_5b_0a_1x1_conv/kernel*,
_output_shapes
:јА
†
7Conv3d_5b_0a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_5b_0a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_5b_0a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_5b_0a_1x1_conv/kernel*,
_output_shapes
:јА
ы
Conv3d_5b_0a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_5b_0a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:јА*-
shared_nameConv3d_5b_0a_1x1_conv/kernel
Й
=Conv3d_5b_0a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5b_0a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_5b_0a_1x1_conv/kernel/AssignAssignVariableOpConv3d_5b_0a_1x1_conv/kernel7Conv3d_5b_0a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ы
0Conv3d_5b_0a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_5b_0a_1x1_conv/kernel*,
_output_shapes
:јА*
dtype0
Ц
+Conv3d_5b_0a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_5b_0a_1x1_conv/kernel*,
_output_shapes
:јА*
dtype0
З
Conv3d_5b_0a_1x1_conv/Conv3DConv3DMaxPool2d_5a_2x2/MaxPool3D+Conv3d_5b_0a_1x1_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€А*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_5b_1b_3x3_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_5b_1b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         †   @  
±
;Conv3d_5b_1b_3x3_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_5b_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *ЗC∞Љ
±
;Conv3d_5b_1b_3x3_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_5b_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *ЗC∞<
£
EConv3d_5b_1b_3x3_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_5b_1b_3x3_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_5b_1b_3x3_conv/kernel*,
_output_shapes
:†ј*
dtype0*

seed *
seed2 
О
;Conv3d_5b_1b_3x3_conv/kernel/Initializer/random_uniform/subSub;Conv3d_5b_1b_3x3_conv/kernel/Initializer/random_uniform/max;Conv3d_5b_1b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_5b_1b_3x3_conv/kernel*
_output_shapes
: 
Ѓ
;Conv3d_5b_1b_3x3_conv/kernel/Initializer/random_uniform/mulMulEConv3d_5b_1b_3x3_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_5b_1b_3x3_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_5b_1b_3x3_conv/kernel*,
_output_shapes
:†ј
†
7Conv3d_5b_1b_3x3_conv/kernel/Initializer/random_uniformAdd;Conv3d_5b_1b_3x3_conv/kernel/Initializer/random_uniform/mul;Conv3d_5b_1b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_5b_1b_3x3_conv/kernel*,
_output_shapes
:†ј
ы
Conv3d_5b_1b_3x3_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_5b_1b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:†ј*-
shared_nameConv3d_5b_1b_3x3_conv/kernel
Й
=Conv3d_5b_1b_3x3_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5b_1b_3x3_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_5b_1b_3x3_conv/kernel/AssignAssignVariableOpConv3d_5b_1b_3x3_conv/kernel7Conv3d_5b_1b_3x3_conv/kernel/Initializer/random_uniform*
dtype0
Ы
0Conv3d_5b_1b_3x3_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_5b_1b_3x3_conv/kernel*,
_output_shapes
:†ј*
dtype0
Ц
+Conv3d_5b_1b_3x3_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_5b_1b_3x3_conv/kernel*,
_output_shapes
:†ј*
dtype0
В
Conv3d_5b_1b_3x3_conv/Conv3DConv3DConv3d_5b_1a_1x1/Relu+Conv3d_5b_1b_3x3_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€ј*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_5b_2b_3x3_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_5b_2b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"             А   
±
;Conv3d_5b_2b_3x3_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_5b_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *¶љ
±
;Conv3d_5b_2b_3x3_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_5b_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *¶=
Ґ
EConv3d_5b_2b_3x3_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_5b_2b_3x3_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_5b_2b_3x3_conv/kernel*+
_output_shapes
: А*
dtype0*

seed *
seed2 
О
;Conv3d_5b_2b_3x3_conv/kernel/Initializer/random_uniform/subSub;Conv3d_5b_2b_3x3_conv/kernel/Initializer/random_uniform/max;Conv3d_5b_2b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_5b_2b_3x3_conv/kernel*
_output_shapes
: 
≠
;Conv3d_5b_2b_3x3_conv/kernel/Initializer/random_uniform/mulMulEConv3d_5b_2b_3x3_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_5b_2b_3x3_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_5b_2b_3x3_conv/kernel*+
_output_shapes
: А
Я
7Conv3d_5b_2b_3x3_conv/kernel/Initializer/random_uniformAdd;Conv3d_5b_2b_3x3_conv/kernel/Initializer/random_uniform/mul;Conv3d_5b_2b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_5b_2b_3x3_conv/kernel*+
_output_shapes
: А
ъ
Conv3d_5b_2b_3x3_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_5b_2b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape: А*-
shared_nameConv3d_5b_2b_3x3_conv/kernel
Й
=Conv3d_5b_2b_3x3_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5b_2b_3x3_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_5b_2b_3x3_conv/kernel/AssignAssignVariableOpConv3d_5b_2b_3x3_conv/kernel7Conv3d_5b_2b_3x3_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_5b_2b_3x3_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_5b_2b_3x3_conv/kernel*+
_output_shapes
: А*
dtype0
Х
+Conv3d_5b_2b_3x3_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_5b_2b_3x3_conv/kernel*+
_output_shapes
: А*
dtype0
В
Conv3d_5b_2b_3x3_conv/Conv3DConv3DConv3d_5b_2a_1x1/Relu+Conv3d_5b_2b_3x3_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€А*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_5b_3b_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_5b_3b_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         @  А   
±
;Conv3d_5b_3b_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_5b_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *Ыи°љ
±
;Conv3d_5b_3b_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_5b_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *Ыи°=
£
EConv3d_5b_3b_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_5b_3b_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_5b_3b_1x1_conv/kernel*,
_output_shapes
:јА*
dtype0*

seed *
seed2 
О
;Conv3d_5b_3b_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_5b_3b_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_5b_3b_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_5b_3b_1x1_conv/kernel*
_output_shapes
: 
Ѓ
;Conv3d_5b_3b_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_5b_3b_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_5b_3b_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_5b_3b_1x1_conv/kernel*,
_output_shapes
:јА
†
7Conv3d_5b_3b_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_5b_3b_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_5b_3b_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_5b_3b_1x1_conv/kernel*,
_output_shapes
:јА
ы
Conv3d_5b_3b_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_5b_3b_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:јА*-
shared_nameConv3d_5b_3b_1x1_conv/kernel
Й
=Conv3d_5b_3b_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5b_3b_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_5b_3b_1x1_conv/kernel/AssignAssignVariableOpConv3d_5b_3b_1x1_conv/kernel7Conv3d_5b_3b_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ы
0Conv3d_5b_3b_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_5b_3b_1x1_conv/kernel*,
_output_shapes
:јА*
dtype0
Ц
+Conv3d_5b_3b_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_5b_3b_1x1_conv/kernel*,
_output_shapes
:јА*
dtype0
К
Conv3d_5b_3b_1x1_conv/Conv3DConv3DMaxPool2d_5b_3a_3x3/MaxPool3D+Conv3d_5b_3b_1x1_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€А*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

¶
*Conv3d_5b_0a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_5b_0a_1x1_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
ё
Conv3d_5b_0a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_5b_0a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*)
shared_nameConv3d_5b_0a_1x1_bn/beta
Б
9Conv3d_5b_0a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5b_0a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_5b_0a_1x1_bn/beta/AssignAssignVariableOpConv3d_5b_0a_1x1_bn/beta*Conv3d_5b_0a_1x1_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_5b_0a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_5b_0a_1x1_bn/beta*
_output_shapes	
:А*
dtype0
і
1Conv3d_5b_0a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_5b_0a_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0*
valueBА*    
у
Conv3d_5b_0a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_5b_0a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*0
shared_name!Conv3d_5b_0a_1x1_bn/moving_mean
П
@Conv3d_5b_0a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5b_0a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_5b_0a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_5b_0a_1x1_bn/moving_mean1Conv3d_5b_0a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_5b_0a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_5b_0a_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0
ї
4Conv3d_5b_0a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_5b_0a_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0*
valueBА*  А?
€
#Conv3d_5b_0a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_5b_0a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*4
shared_name%#Conv3d_5b_0a_1x1_bn/moving_variance
Ч
DConv3d_5b_0a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_5b_0a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_5b_0a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_5b_0a_1x1_bn/moving_variance4Conv3d_5b_0a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_5b_0a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_5b_0a_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0
Н
,Conv3d_5b_0a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_5b_0a_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0
h
#Conv3d_5b_0a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_5b_0a_1x1_bn/batchnorm/addAddV2,Conv3d_5b_0a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_5b_0a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes	
:А
u
#Conv3d_5b_0a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_5b_0a_1x1_bn/batchnorm/add*
T0*
_output_shapes	
:А
™
!Conv3d_5b_0a_1x1_bn/batchnorm/mulMulConv3d_5b_0a_1x1_conv/Conv3D#Conv3d_5b_0a_1x1_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€А
Л
.Conv3d_5b_0a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_5b_0a_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0
•
#Conv3d_5b_0a_1x1_bn/batchnorm/mul_1Mul.Conv3d_5b_0a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_5b_0a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:А
Д
.Conv3d_5b_0a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_5b_0a_1x1_bn/beta*
_output_shapes	
:А*
dtype0
£
!Conv3d_5b_0a_1x1_bn/batchnorm/subSub.Conv3d_5b_0a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_5b_0a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes	
:А
±
#Conv3d_5b_0a_1x1_bn/batchnorm/add_1AddV2!Conv3d_5b_0a_1x1_bn/batchnorm/mul!Conv3d_5b_0a_1x1_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€А
¶
*Conv3d_5b_1b_3x3_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_5b_1b_3x3_bn/beta*
_output_shapes	
:ј*
dtype0*
valueBј*    
ё
Conv3d_5b_1b_3x3_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_5b_1b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:ј*)
shared_nameConv3d_5b_1b_3x3_bn/beta
Б
9Conv3d_5b_1b_3x3_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5b_1b_3x3_bn/beta*
_output_shapes
: 
Ж
Conv3d_5b_1b_3x3_bn/beta/AssignAssignVariableOpConv3d_5b_1b_3x3_bn/beta*Conv3d_5b_1b_3x3_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_5b_1b_3x3_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_5b_1b_3x3_bn/beta*
_output_shapes	
:ј*
dtype0
і
1Conv3d_5b_1b_3x3_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_5b_1b_3x3_bn/moving_mean*
_output_shapes	
:ј*
dtype0*
valueBј*    
у
Conv3d_5b_1b_3x3_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_5b_1b_3x3_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:ј*0
shared_name!Conv3d_5b_1b_3x3_bn/moving_mean
П
@Conv3d_5b_1b_3x3_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5b_1b_3x3_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_5b_1b_3x3_bn/moving_mean/AssignAssignVariableOpConv3d_5b_1b_3x3_bn/moving_mean1Conv3d_5b_1b_3x3_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_5b_1b_3x3_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_5b_1b_3x3_bn/moving_mean*
_output_shapes	
:ј*
dtype0
ї
4Conv3d_5b_1b_3x3_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_5b_1b_3x3_bn/moving_variance*
_output_shapes	
:ј*
dtype0*
valueBј*  А?
€
#Conv3d_5b_1b_3x3_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_5b_1b_3x3_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:ј*4
shared_name%#Conv3d_5b_1b_3x3_bn/moving_variance
Ч
DConv3d_5b_1b_3x3_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_5b_1b_3x3_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_5b_1b_3x3_bn/moving_variance/AssignAssignVariableOp#Conv3d_5b_1b_3x3_bn/moving_variance4Conv3d_5b_1b_3x3_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_5b_1b_3x3_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_5b_1b_3x3_bn/moving_variance*
_output_shapes	
:ј*
dtype0
Н
,Conv3d_5b_1b_3x3_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_5b_1b_3x3_bn/moving_variance*
_output_shapes	
:ј*
dtype0
h
#Conv3d_5b_1b_3x3_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_5b_1b_3x3_bn/batchnorm/addAddV2,Conv3d_5b_1b_3x3_bn/batchnorm/ReadVariableOp#Conv3d_5b_1b_3x3_bn/batchnorm/add/y*
T0*
_output_shapes	
:ј
u
#Conv3d_5b_1b_3x3_bn/batchnorm/RsqrtRsqrt!Conv3d_5b_1b_3x3_bn/batchnorm/add*
T0*
_output_shapes	
:ј
™
!Conv3d_5b_1b_3x3_bn/batchnorm/mulMulConv3d_5b_1b_3x3_conv/Conv3D#Conv3d_5b_1b_3x3_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€ј
Л
.Conv3d_5b_1b_3x3_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_5b_1b_3x3_bn/moving_mean*
_output_shapes	
:ј*
dtype0
•
#Conv3d_5b_1b_3x3_bn/batchnorm/mul_1Mul.Conv3d_5b_1b_3x3_bn/batchnorm/ReadVariableOp_1#Conv3d_5b_1b_3x3_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:ј
Д
.Conv3d_5b_1b_3x3_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_5b_1b_3x3_bn/beta*
_output_shapes	
:ј*
dtype0
£
!Conv3d_5b_1b_3x3_bn/batchnorm/subSub.Conv3d_5b_1b_3x3_bn/batchnorm/ReadVariableOp_2#Conv3d_5b_1b_3x3_bn/batchnorm/mul_1*
T0*
_output_shapes	
:ј
±
#Conv3d_5b_1b_3x3_bn/batchnorm/add_1AddV2!Conv3d_5b_1b_3x3_bn/batchnorm/mul!Conv3d_5b_1b_3x3_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€ј
¶
*Conv3d_5b_2b_3x3_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_5b_2b_3x3_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
ё
Conv3d_5b_2b_3x3_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_5b_2b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*)
shared_nameConv3d_5b_2b_3x3_bn/beta
Б
9Conv3d_5b_2b_3x3_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5b_2b_3x3_bn/beta*
_output_shapes
: 
Ж
Conv3d_5b_2b_3x3_bn/beta/AssignAssignVariableOpConv3d_5b_2b_3x3_bn/beta*Conv3d_5b_2b_3x3_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_5b_2b_3x3_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_5b_2b_3x3_bn/beta*
_output_shapes	
:А*
dtype0
і
1Conv3d_5b_2b_3x3_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_5b_2b_3x3_bn/moving_mean*
_output_shapes	
:А*
dtype0*
valueBА*    
у
Conv3d_5b_2b_3x3_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_5b_2b_3x3_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*0
shared_name!Conv3d_5b_2b_3x3_bn/moving_mean
П
@Conv3d_5b_2b_3x3_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5b_2b_3x3_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_5b_2b_3x3_bn/moving_mean/AssignAssignVariableOpConv3d_5b_2b_3x3_bn/moving_mean1Conv3d_5b_2b_3x3_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_5b_2b_3x3_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_5b_2b_3x3_bn/moving_mean*
_output_shapes	
:А*
dtype0
ї
4Conv3d_5b_2b_3x3_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_5b_2b_3x3_bn/moving_variance*
_output_shapes	
:А*
dtype0*
valueBА*  А?
€
#Conv3d_5b_2b_3x3_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_5b_2b_3x3_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*4
shared_name%#Conv3d_5b_2b_3x3_bn/moving_variance
Ч
DConv3d_5b_2b_3x3_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_5b_2b_3x3_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_5b_2b_3x3_bn/moving_variance/AssignAssignVariableOp#Conv3d_5b_2b_3x3_bn/moving_variance4Conv3d_5b_2b_3x3_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_5b_2b_3x3_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_5b_2b_3x3_bn/moving_variance*
_output_shapes	
:А*
dtype0
Н
,Conv3d_5b_2b_3x3_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_5b_2b_3x3_bn/moving_variance*
_output_shapes	
:А*
dtype0
h
#Conv3d_5b_2b_3x3_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_5b_2b_3x3_bn/batchnorm/addAddV2,Conv3d_5b_2b_3x3_bn/batchnorm/ReadVariableOp#Conv3d_5b_2b_3x3_bn/batchnorm/add/y*
T0*
_output_shapes	
:А
u
#Conv3d_5b_2b_3x3_bn/batchnorm/RsqrtRsqrt!Conv3d_5b_2b_3x3_bn/batchnorm/add*
T0*
_output_shapes	
:А
™
!Conv3d_5b_2b_3x3_bn/batchnorm/mulMulConv3d_5b_2b_3x3_conv/Conv3D#Conv3d_5b_2b_3x3_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€А
Л
.Conv3d_5b_2b_3x3_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_5b_2b_3x3_bn/moving_mean*
_output_shapes	
:А*
dtype0
•
#Conv3d_5b_2b_3x3_bn/batchnorm/mul_1Mul.Conv3d_5b_2b_3x3_bn/batchnorm/ReadVariableOp_1#Conv3d_5b_2b_3x3_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:А
Д
.Conv3d_5b_2b_3x3_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_5b_2b_3x3_bn/beta*
_output_shapes	
:А*
dtype0
£
!Conv3d_5b_2b_3x3_bn/batchnorm/subSub.Conv3d_5b_2b_3x3_bn/batchnorm/ReadVariableOp_2#Conv3d_5b_2b_3x3_bn/batchnorm/mul_1*
T0*
_output_shapes	
:А
±
#Conv3d_5b_2b_3x3_bn/batchnorm/add_1AddV2!Conv3d_5b_2b_3x3_bn/batchnorm/mul!Conv3d_5b_2b_3x3_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€А
¶
*Conv3d_5b_3b_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_5b_3b_1x1_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
ё
Conv3d_5b_3b_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_5b_3b_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*)
shared_nameConv3d_5b_3b_1x1_bn/beta
Б
9Conv3d_5b_3b_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5b_3b_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_5b_3b_1x1_bn/beta/AssignAssignVariableOpConv3d_5b_3b_1x1_bn/beta*Conv3d_5b_3b_1x1_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_5b_3b_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_5b_3b_1x1_bn/beta*
_output_shapes	
:А*
dtype0
і
1Conv3d_5b_3b_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_5b_3b_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0*
valueBА*    
у
Conv3d_5b_3b_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_5b_3b_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*0
shared_name!Conv3d_5b_3b_1x1_bn/moving_mean
П
@Conv3d_5b_3b_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5b_3b_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_5b_3b_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_5b_3b_1x1_bn/moving_mean1Conv3d_5b_3b_1x1_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_5b_3b_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_5b_3b_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0
ї
4Conv3d_5b_3b_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_5b_3b_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0*
valueBА*  А?
€
#Conv3d_5b_3b_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_5b_3b_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*4
shared_name%#Conv3d_5b_3b_1x1_bn/moving_variance
Ч
DConv3d_5b_3b_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_5b_3b_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_5b_3b_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_5b_3b_1x1_bn/moving_variance4Conv3d_5b_3b_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_5b_3b_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_5b_3b_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0
Н
,Conv3d_5b_3b_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_5b_3b_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0
h
#Conv3d_5b_3b_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_5b_3b_1x1_bn/batchnorm/addAddV2,Conv3d_5b_3b_1x1_bn/batchnorm/ReadVariableOp#Conv3d_5b_3b_1x1_bn/batchnorm/add/y*
T0*
_output_shapes	
:А
u
#Conv3d_5b_3b_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_5b_3b_1x1_bn/batchnorm/add*
T0*
_output_shapes	
:А
™
!Conv3d_5b_3b_1x1_bn/batchnorm/mulMulConv3d_5b_3b_1x1_conv/Conv3D#Conv3d_5b_3b_1x1_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€А
Л
.Conv3d_5b_3b_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_5b_3b_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0
•
#Conv3d_5b_3b_1x1_bn/batchnorm/mul_1Mul.Conv3d_5b_3b_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_5b_3b_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:А
Д
.Conv3d_5b_3b_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_5b_3b_1x1_bn/beta*
_output_shapes	
:А*
dtype0
£
!Conv3d_5b_3b_1x1_bn/batchnorm/subSub.Conv3d_5b_3b_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_5b_3b_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes	
:А
±
#Conv3d_5b_3b_1x1_bn/batchnorm/add_1AddV2!Conv3d_5b_3b_1x1_bn/batchnorm/mul!Conv3d_5b_3b_1x1_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€А
Б
Conv3d_5b_0a_1x1/ReluRelu#Conv3d_5b_0a_1x1_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€А
Б
Conv3d_5b_1b_3x3/ReluRelu#Conv3d_5b_1b_3x3_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€ј
Б
Conv3d_5b_2b_3x3/ReluRelu#Conv3d_5b_2b_3x3_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€А
Б
Conv3d_5b_3b_1x1/ReluRelu#Conv3d_5b_3b_1x1_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€А
V
Mixed_5b/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
б
Mixed_5b/concatConcatV2Conv3d_5b_0a_1x1/ReluConv3d_5b_1b_3x3/ReluConv3d_5b_2b_3x3/ReluConv3d_5b_3b_1x1/ReluMixed_5b/concat/axis*
N*
T0*

Tidx0*4
_output_shapes"
 :€€€€€€€€€ј
Ћ
=Conv3d_5c_1a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_5c_1a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         @  ј   
±
;Conv3d_5c_1a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_5c_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *qƒЬљ
±
;Conv3d_5c_1a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_5c_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *qƒЬ=
£
EConv3d_5c_1a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_5c_1a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_5c_1a_1x1_conv/kernel*,
_output_shapes
:јј*
dtype0*

seed *
seed2 
О
;Conv3d_5c_1a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_5c_1a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_5c_1a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_5c_1a_1x1_conv/kernel*
_output_shapes
: 
Ѓ
;Conv3d_5c_1a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_5c_1a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_5c_1a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_5c_1a_1x1_conv/kernel*,
_output_shapes
:јј
†
7Conv3d_5c_1a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_5c_1a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_5c_1a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_5c_1a_1x1_conv/kernel*,
_output_shapes
:јј
ы
Conv3d_5c_1a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_5c_1a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:јј*-
shared_nameConv3d_5c_1a_1x1_conv/kernel
Й
=Conv3d_5c_1a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5c_1a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_5c_1a_1x1_conv/kernel/AssignAssignVariableOpConv3d_5c_1a_1x1_conv/kernel7Conv3d_5c_1a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ы
0Conv3d_5c_1a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_5c_1a_1x1_conv/kernel*,
_output_shapes
:јј*
dtype0
Ц
+Conv3d_5c_1a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_5c_1a_1x1_conv/kernel*,
_output_shapes
:јј*
dtype0
ь
Conv3d_5c_1a_1x1_conv/Conv3DConv3DMixed_5b/concat+Conv3d_5c_1a_1x1_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€ј*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_5c_2a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_5c_2a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         @  0   
±
;Conv3d_5c_2a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_5c_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *®©љ
±
;Conv3d_5c_2a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_5c_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *®©=
Ґ
EConv3d_5c_2a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_5c_2a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_5c_2a_1x1_conv/kernel*+
_output_shapes
:ј0*
dtype0*

seed *
seed2 
О
;Conv3d_5c_2a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_5c_2a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_5c_2a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_5c_2a_1x1_conv/kernel*
_output_shapes
: 
≠
;Conv3d_5c_2a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_5c_2a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_5c_2a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_5c_2a_1x1_conv/kernel*+
_output_shapes
:ј0
Я
7Conv3d_5c_2a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_5c_2a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_5c_2a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_5c_2a_1x1_conv/kernel*+
_output_shapes
:ј0
ъ
Conv3d_5c_2a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_5c_2a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:ј0*-
shared_nameConv3d_5c_2a_1x1_conv/kernel
Й
=Conv3d_5c_2a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5c_2a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_5c_2a_1x1_conv/kernel/AssignAssignVariableOpConv3d_5c_2a_1x1_conv/kernel7Conv3d_5c_2a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_5c_2a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_5c_2a_1x1_conv/kernel*+
_output_shapes
:ј0*
dtype0
Х
+Conv3d_5c_2a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_5c_2a_1x1_conv/kernel*+
_output_shapes
:ј0*
dtype0
ы
Conv3d_5c_2a_1x1_conv/Conv3DConv3DMixed_5b/concat+Conv3d_5c_2a_1x1_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€0*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

¶
*Conv3d_5c_1a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_5c_1a_1x1_bn/beta*
_output_shapes	
:ј*
dtype0*
valueBј*    
ё
Conv3d_5c_1a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_5c_1a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:ј*)
shared_nameConv3d_5c_1a_1x1_bn/beta
Б
9Conv3d_5c_1a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5c_1a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_5c_1a_1x1_bn/beta/AssignAssignVariableOpConv3d_5c_1a_1x1_bn/beta*Conv3d_5c_1a_1x1_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_5c_1a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_5c_1a_1x1_bn/beta*
_output_shapes	
:ј*
dtype0
і
1Conv3d_5c_1a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_5c_1a_1x1_bn/moving_mean*
_output_shapes	
:ј*
dtype0*
valueBј*    
у
Conv3d_5c_1a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_5c_1a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:ј*0
shared_name!Conv3d_5c_1a_1x1_bn/moving_mean
П
@Conv3d_5c_1a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5c_1a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_5c_1a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_5c_1a_1x1_bn/moving_mean1Conv3d_5c_1a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_5c_1a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_5c_1a_1x1_bn/moving_mean*
_output_shapes	
:ј*
dtype0
ї
4Conv3d_5c_1a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_5c_1a_1x1_bn/moving_variance*
_output_shapes	
:ј*
dtype0*
valueBј*  А?
€
#Conv3d_5c_1a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_5c_1a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:ј*4
shared_name%#Conv3d_5c_1a_1x1_bn/moving_variance
Ч
DConv3d_5c_1a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_5c_1a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_5c_1a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_5c_1a_1x1_bn/moving_variance4Conv3d_5c_1a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_5c_1a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_5c_1a_1x1_bn/moving_variance*
_output_shapes	
:ј*
dtype0
Н
,Conv3d_5c_1a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_5c_1a_1x1_bn/moving_variance*
_output_shapes	
:ј*
dtype0
h
#Conv3d_5c_1a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_5c_1a_1x1_bn/batchnorm/addAddV2,Conv3d_5c_1a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_5c_1a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes	
:ј
u
#Conv3d_5c_1a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_5c_1a_1x1_bn/batchnorm/add*
T0*
_output_shapes	
:ј
™
!Conv3d_5c_1a_1x1_bn/batchnorm/mulMulConv3d_5c_1a_1x1_conv/Conv3D#Conv3d_5c_1a_1x1_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€ј
Л
.Conv3d_5c_1a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_5c_1a_1x1_bn/moving_mean*
_output_shapes	
:ј*
dtype0
•
#Conv3d_5c_1a_1x1_bn/batchnorm/mul_1Mul.Conv3d_5c_1a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_5c_1a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:ј
Д
.Conv3d_5c_1a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_5c_1a_1x1_bn/beta*
_output_shapes	
:ј*
dtype0
£
!Conv3d_5c_1a_1x1_bn/batchnorm/subSub.Conv3d_5c_1a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_5c_1a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes	
:ј
±
#Conv3d_5c_1a_1x1_bn/batchnorm/add_1AddV2!Conv3d_5c_1a_1x1_bn/batchnorm/mul!Conv3d_5c_1a_1x1_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€ј
§
*Conv3d_5c_2a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_5c_2a_1x1_bn/beta*
_output_shapes
:0*
dtype0*
valueB0*    
Ё
Conv3d_5c_2a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_5c_2a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:0*)
shared_nameConv3d_5c_2a_1x1_bn/beta
Б
9Conv3d_5c_2a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5c_2a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_5c_2a_1x1_bn/beta/AssignAssignVariableOpConv3d_5c_2a_1x1_bn/beta*Conv3d_5c_2a_1x1_bn/beta/Initializer/zeros*
dtype0
Б
,Conv3d_5c_2a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_5c_2a_1x1_bn/beta*
_output_shapes
:0*
dtype0
≤
1Conv3d_5c_2a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_5c_2a_1x1_bn/moving_mean*
_output_shapes
:0*
dtype0*
valueB0*    
т
Conv3d_5c_2a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_5c_2a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:0*0
shared_name!Conv3d_5c_2a_1x1_bn/moving_mean
П
@Conv3d_5c_2a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5c_2a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_5c_2a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_5c_2a_1x1_bn/moving_mean1Conv3d_5c_2a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
П
3Conv3d_5c_2a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_5c_2a_1x1_bn/moving_mean*
_output_shapes
:0*
dtype0
є
4Conv3d_5c_2a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_5c_2a_1x1_bn/moving_variance*
_output_shapes
:0*
dtype0*
valueB0*  А?
ю
#Conv3d_5c_2a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_5c_2a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:0*4
shared_name%#Conv3d_5c_2a_1x1_bn/moving_variance
Ч
DConv3d_5c_2a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_5c_2a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_5c_2a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_5c_2a_1x1_bn/moving_variance4Conv3d_5c_2a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ч
7Conv3d_5c_2a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_5c_2a_1x1_bn/moving_variance*
_output_shapes
:0*
dtype0
М
,Conv3d_5c_2a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_5c_2a_1x1_bn/moving_variance*
_output_shapes
:0*
dtype0
h
#Conv3d_5c_2a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
Ґ
!Conv3d_5c_2a_1x1_bn/batchnorm/addAddV2,Conv3d_5c_2a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_5c_2a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes
:0
t
#Conv3d_5c_2a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_5c_2a_1x1_bn/batchnorm/add*
T0*
_output_shapes
:0
©
!Conv3d_5c_2a_1x1_bn/batchnorm/mulMulConv3d_5c_2a_1x1_conv/Conv3D#Conv3d_5c_2a_1x1_bn/batchnorm/Rsqrt*
T0*3
_output_shapes!
:€€€€€€€€€0
К
.Conv3d_5c_2a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_5c_2a_1x1_bn/moving_mean*
_output_shapes
:0*
dtype0
§
#Conv3d_5c_2a_1x1_bn/batchnorm/mul_1Mul.Conv3d_5c_2a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_5c_2a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes
:0
Г
.Conv3d_5c_2a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_5c_2a_1x1_bn/beta*
_output_shapes
:0*
dtype0
Ґ
!Conv3d_5c_2a_1x1_bn/batchnorm/subSub.Conv3d_5c_2a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_5c_2a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes
:0
∞
#Conv3d_5c_2a_1x1_bn/batchnorm/add_1AddV2!Conv3d_5c_2a_1x1_bn/batchnorm/mul!Conv3d_5c_2a_1x1_bn/batchnorm/sub*
T0*3
_output_shapes!
:€€€€€€€€€0
Б
Conv3d_5c_1a_1x1/ReluRelu#Conv3d_5c_1a_1x1_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€ј
А
Conv3d_5c_2a_1x1/ReluRelu#Conv3d_5c_2a_1x1_bn/batchnorm/add_1*
T0*3
_output_shapes!
:€€€€€€€€€0
ѕ
MaxPool2d_5c_3a_3x3/MaxPool3D	MaxPool3DMixed_5b/concat*
T0*4
_output_shapes"
 :€€€€€€€€€ј*
data_formatNDHWC*
ksize	
*
paddingSAME*
strides	

Ћ
=Conv3d_5c_0a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_5c_0a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         @  А  
±
;Conv3d_5c_0a_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_5c_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *№Пљ
±
;Conv3d_5c_0a_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_5c_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *№П=
£
EConv3d_5c_0a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_5c_0a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_5c_0a_1x1_conv/kernel*,
_output_shapes
:јА*
dtype0*

seed *
seed2 
О
;Conv3d_5c_0a_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_5c_0a_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_5c_0a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_5c_0a_1x1_conv/kernel*
_output_shapes
: 
Ѓ
;Conv3d_5c_0a_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_5c_0a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_5c_0a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_5c_0a_1x1_conv/kernel*,
_output_shapes
:јА
†
7Conv3d_5c_0a_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_5c_0a_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_5c_0a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_5c_0a_1x1_conv/kernel*,
_output_shapes
:јА
ы
Conv3d_5c_0a_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_5c_0a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:јА*-
shared_nameConv3d_5c_0a_1x1_conv/kernel
Й
=Conv3d_5c_0a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5c_0a_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_5c_0a_1x1_conv/kernel/AssignAssignVariableOpConv3d_5c_0a_1x1_conv/kernel7Conv3d_5c_0a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ы
0Conv3d_5c_0a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_5c_0a_1x1_conv/kernel*,
_output_shapes
:јА*
dtype0
Ц
+Conv3d_5c_0a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_5c_0a_1x1_conv/kernel*,
_output_shapes
:јА*
dtype0
ь
Conv3d_5c_0a_1x1_conv/Conv3DConv3DMixed_5b/concat+Conv3d_5c_0a_1x1_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€А*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_5c_1b_3x3_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_5c_1b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         ј   А  
±
;Conv3d_5c_1b_3x3_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_5c_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *хз†Љ
±
;Conv3d_5c_1b_3x3_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_5c_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *хз†<
£
EConv3d_5c_1b_3x3_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_5c_1b_3x3_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_5c_1b_3x3_conv/kernel*,
_output_shapes
:јА*
dtype0*

seed *
seed2 
О
;Conv3d_5c_1b_3x3_conv/kernel/Initializer/random_uniform/subSub;Conv3d_5c_1b_3x3_conv/kernel/Initializer/random_uniform/max;Conv3d_5c_1b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_5c_1b_3x3_conv/kernel*
_output_shapes
: 
Ѓ
;Conv3d_5c_1b_3x3_conv/kernel/Initializer/random_uniform/mulMulEConv3d_5c_1b_3x3_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_5c_1b_3x3_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_5c_1b_3x3_conv/kernel*,
_output_shapes
:јА
†
7Conv3d_5c_1b_3x3_conv/kernel/Initializer/random_uniformAdd;Conv3d_5c_1b_3x3_conv/kernel/Initializer/random_uniform/mul;Conv3d_5c_1b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_5c_1b_3x3_conv/kernel*,
_output_shapes
:јА
ы
Conv3d_5c_1b_3x3_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_5c_1b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:јА*-
shared_nameConv3d_5c_1b_3x3_conv/kernel
Й
=Conv3d_5c_1b_3x3_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5c_1b_3x3_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_5c_1b_3x3_conv/kernel/AssignAssignVariableOpConv3d_5c_1b_3x3_conv/kernel7Conv3d_5c_1b_3x3_conv/kernel/Initializer/random_uniform*
dtype0
Ы
0Conv3d_5c_1b_3x3_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_5c_1b_3x3_conv/kernel*,
_output_shapes
:јА*
dtype0
Ц
+Conv3d_5c_1b_3x3_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_5c_1b_3x3_conv/kernel*,
_output_shapes
:јА*
dtype0
В
Conv3d_5c_1b_3x3_conv/Conv3DConv3DConv3d_5c_1a_1x1/Relu+Conv3d_5c_1b_3x3_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€А*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_5c_2b_3x3_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_5c_2b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         0   А   
±
;Conv3d_5c_2b_3x3_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_5c_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *ЗЛљ
±
;Conv3d_5c_2b_3x3_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_5c_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *ЗЛ=
Ґ
EConv3d_5c_2b_3x3_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_5c_2b_3x3_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_5c_2b_3x3_conv/kernel*+
_output_shapes
:0А*
dtype0*

seed *
seed2 
О
;Conv3d_5c_2b_3x3_conv/kernel/Initializer/random_uniform/subSub;Conv3d_5c_2b_3x3_conv/kernel/Initializer/random_uniform/max;Conv3d_5c_2b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_5c_2b_3x3_conv/kernel*
_output_shapes
: 
≠
;Conv3d_5c_2b_3x3_conv/kernel/Initializer/random_uniform/mulMulEConv3d_5c_2b_3x3_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_5c_2b_3x3_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_5c_2b_3x3_conv/kernel*+
_output_shapes
:0А
Я
7Conv3d_5c_2b_3x3_conv/kernel/Initializer/random_uniformAdd;Conv3d_5c_2b_3x3_conv/kernel/Initializer/random_uniform/mul;Conv3d_5c_2b_3x3_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_5c_2b_3x3_conv/kernel*+
_output_shapes
:0А
ъ
Conv3d_5c_2b_3x3_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_5c_2b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:0А*-
shared_nameConv3d_5c_2b_3x3_conv/kernel
Й
=Conv3d_5c_2b_3x3_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5c_2b_3x3_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_5c_2b_3x3_conv/kernel/AssignAssignVariableOpConv3d_5c_2b_3x3_conv/kernel7Conv3d_5c_2b_3x3_conv/kernel/Initializer/random_uniform*
dtype0
Ъ
0Conv3d_5c_2b_3x3_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_5c_2b_3x3_conv/kernel*+
_output_shapes
:0А*
dtype0
Х
+Conv3d_5c_2b_3x3_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_5c_2b_3x3_conv/kernel*+
_output_shapes
:0А*
dtype0
В
Conv3d_5c_2b_3x3_conv/Conv3DConv3DConv3d_5c_2a_1x1/Relu+Conv3d_5c_2b_3x3_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€А*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

Ћ
=Conv3d_5c_3b_1x1_conv/kernel/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@Conv3d_5c_3b_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         @  А   
±
;Conv3d_5c_3b_1x1_conv/kernel/Initializer/random_uniform/minConst*/
_class%
#!loc:@Conv3d_5c_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *Ыи°љ
±
;Conv3d_5c_3b_1x1_conv/kernel/Initializer/random_uniform/maxConst*/
_class%
#!loc:@Conv3d_5c_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *Ыи°=
£
EConv3d_5c_3b_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform=Conv3d_5c_3b_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@Conv3d_5c_3b_1x1_conv/kernel*,
_output_shapes
:јА*
dtype0*

seed *
seed2 
О
;Conv3d_5c_3b_1x1_conv/kernel/Initializer/random_uniform/subSub;Conv3d_5c_3b_1x1_conv/kernel/Initializer/random_uniform/max;Conv3d_5c_3b_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_5c_3b_1x1_conv/kernel*
_output_shapes
: 
Ѓ
;Conv3d_5c_3b_1x1_conv/kernel/Initializer/random_uniform/mulMulEConv3d_5c_3b_1x1_conv/kernel/Initializer/random_uniform/RandomUniform;Conv3d_5c_3b_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@Conv3d_5c_3b_1x1_conv/kernel*,
_output_shapes
:јА
†
7Conv3d_5c_3b_1x1_conv/kernel/Initializer/random_uniformAdd;Conv3d_5c_3b_1x1_conv/kernel/Initializer/random_uniform/mul;Conv3d_5c_3b_1x1_conv/kernel/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@Conv3d_5c_3b_1x1_conv/kernel*,
_output_shapes
:јА
ы
Conv3d_5c_3b_1x1_conv/kernelVarHandleOp*/
_class%
#!loc:@Conv3d_5c_3b_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:јА*-
shared_nameConv3d_5c_3b_1x1_conv/kernel
Й
=Conv3d_5c_3b_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5c_3b_1x1_conv/kernel*
_output_shapes
: 
Ы
#Conv3d_5c_3b_1x1_conv/kernel/AssignAssignVariableOpConv3d_5c_3b_1x1_conv/kernel7Conv3d_5c_3b_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ы
0Conv3d_5c_3b_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_5c_3b_1x1_conv/kernel*,
_output_shapes
:јА*
dtype0
Ц
+Conv3d_5c_3b_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_5c_3b_1x1_conv/kernel*,
_output_shapes
:јА*
dtype0
К
Conv3d_5c_3b_1x1_conv/Conv3DConv3DMaxPool2d_5c_3a_3x3/MaxPool3D+Conv3d_5c_3b_1x1_conv/Conv3D/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€А*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

¶
*Conv3d_5c_0a_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_5c_0a_1x1_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
ё
Conv3d_5c_0a_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_5c_0a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*)
shared_nameConv3d_5c_0a_1x1_bn/beta
Б
9Conv3d_5c_0a_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5c_0a_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_5c_0a_1x1_bn/beta/AssignAssignVariableOpConv3d_5c_0a_1x1_bn/beta*Conv3d_5c_0a_1x1_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_5c_0a_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_5c_0a_1x1_bn/beta*
_output_shapes	
:А*
dtype0
і
1Conv3d_5c_0a_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_5c_0a_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0*
valueBА*    
у
Conv3d_5c_0a_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_5c_0a_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*0
shared_name!Conv3d_5c_0a_1x1_bn/moving_mean
П
@Conv3d_5c_0a_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5c_0a_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_5c_0a_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_5c_0a_1x1_bn/moving_mean1Conv3d_5c_0a_1x1_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_5c_0a_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_5c_0a_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0
ї
4Conv3d_5c_0a_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_5c_0a_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0*
valueBА*  А?
€
#Conv3d_5c_0a_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_5c_0a_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*4
shared_name%#Conv3d_5c_0a_1x1_bn/moving_variance
Ч
DConv3d_5c_0a_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_5c_0a_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_5c_0a_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_5c_0a_1x1_bn/moving_variance4Conv3d_5c_0a_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_5c_0a_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_5c_0a_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0
Н
,Conv3d_5c_0a_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_5c_0a_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0
h
#Conv3d_5c_0a_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_5c_0a_1x1_bn/batchnorm/addAddV2,Conv3d_5c_0a_1x1_bn/batchnorm/ReadVariableOp#Conv3d_5c_0a_1x1_bn/batchnorm/add/y*
T0*
_output_shapes	
:А
u
#Conv3d_5c_0a_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_5c_0a_1x1_bn/batchnorm/add*
T0*
_output_shapes	
:А
™
!Conv3d_5c_0a_1x1_bn/batchnorm/mulMulConv3d_5c_0a_1x1_conv/Conv3D#Conv3d_5c_0a_1x1_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€А
Л
.Conv3d_5c_0a_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_5c_0a_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0
•
#Conv3d_5c_0a_1x1_bn/batchnorm/mul_1Mul.Conv3d_5c_0a_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_5c_0a_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:А
Д
.Conv3d_5c_0a_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_5c_0a_1x1_bn/beta*
_output_shapes	
:А*
dtype0
£
!Conv3d_5c_0a_1x1_bn/batchnorm/subSub.Conv3d_5c_0a_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_5c_0a_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes	
:А
±
#Conv3d_5c_0a_1x1_bn/batchnorm/add_1AddV2!Conv3d_5c_0a_1x1_bn/batchnorm/mul!Conv3d_5c_0a_1x1_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€А
¶
*Conv3d_5c_1b_3x3_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_5c_1b_3x3_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
ё
Conv3d_5c_1b_3x3_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_5c_1b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*)
shared_nameConv3d_5c_1b_3x3_bn/beta
Б
9Conv3d_5c_1b_3x3_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5c_1b_3x3_bn/beta*
_output_shapes
: 
Ж
Conv3d_5c_1b_3x3_bn/beta/AssignAssignVariableOpConv3d_5c_1b_3x3_bn/beta*Conv3d_5c_1b_3x3_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_5c_1b_3x3_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_5c_1b_3x3_bn/beta*
_output_shapes	
:А*
dtype0
і
1Conv3d_5c_1b_3x3_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_5c_1b_3x3_bn/moving_mean*
_output_shapes	
:А*
dtype0*
valueBА*    
у
Conv3d_5c_1b_3x3_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_5c_1b_3x3_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*0
shared_name!Conv3d_5c_1b_3x3_bn/moving_mean
П
@Conv3d_5c_1b_3x3_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5c_1b_3x3_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_5c_1b_3x3_bn/moving_mean/AssignAssignVariableOpConv3d_5c_1b_3x3_bn/moving_mean1Conv3d_5c_1b_3x3_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_5c_1b_3x3_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_5c_1b_3x3_bn/moving_mean*
_output_shapes	
:А*
dtype0
ї
4Conv3d_5c_1b_3x3_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_5c_1b_3x3_bn/moving_variance*
_output_shapes	
:А*
dtype0*
valueBА*  А?
€
#Conv3d_5c_1b_3x3_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_5c_1b_3x3_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*4
shared_name%#Conv3d_5c_1b_3x3_bn/moving_variance
Ч
DConv3d_5c_1b_3x3_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_5c_1b_3x3_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_5c_1b_3x3_bn/moving_variance/AssignAssignVariableOp#Conv3d_5c_1b_3x3_bn/moving_variance4Conv3d_5c_1b_3x3_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_5c_1b_3x3_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_5c_1b_3x3_bn/moving_variance*
_output_shapes	
:А*
dtype0
Н
,Conv3d_5c_1b_3x3_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_5c_1b_3x3_bn/moving_variance*
_output_shapes	
:А*
dtype0
h
#Conv3d_5c_1b_3x3_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_5c_1b_3x3_bn/batchnorm/addAddV2,Conv3d_5c_1b_3x3_bn/batchnorm/ReadVariableOp#Conv3d_5c_1b_3x3_bn/batchnorm/add/y*
T0*
_output_shapes	
:А
u
#Conv3d_5c_1b_3x3_bn/batchnorm/RsqrtRsqrt!Conv3d_5c_1b_3x3_bn/batchnorm/add*
T0*
_output_shapes	
:А
™
!Conv3d_5c_1b_3x3_bn/batchnorm/mulMulConv3d_5c_1b_3x3_conv/Conv3D#Conv3d_5c_1b_3x3_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€А
Л
.Conv3d_5c_1b_3x3_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_5c_1b_3x3_bn/moving_mean*
_output_shapes	
:А*
dtype0
•
#Conv3d_5c_1b_3x3_bn/batchnorm/mul_1Mul.Conv3d_5c_1b_3x3_bn/batchnorm/ReadVariableOp_1#Conv3d_5c_1b_3x3_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:А
Д
.Conv3d_5c_1b_3x3_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_5c_1b_3x3_bn/beta*
_output_shapes	
:А*
dtype0
£
!Conv3d_5c_1b_3x3_bn/batchnorm/subSub.Conv3d_5c_1b_3x3_bn/batchnorm/ReadVariableOp_2#Conv3d_5c_1b_3x3_bn/batchnorm/mul_1*
T0*
_output_shapes	
:А
±
#Conv3d_5c_1b_3x3_bn/batchnorm/add_1AddV2!Conv3d_5c_1b_3x3_bn/batchnorm/mul!Conv3d_5c_1b_3x3_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€А
¶
*Conv3d_5c_2b_3x3_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_5c_2b_3x3_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
ё
Conv3d_5c_2b_3x3_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_5c_2b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*)
shared_nameConv3d_5c_2b_3x3_bn/beta
Б
9Conv3d_5c_2b_3x3_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5c_2b_3x3_bn/beta*
_output_shapes
: 
Ж
Conv3d_5c_2b_3x3_bn/beta/AssignAssignVariableOpConv3d_5c_2b_3x3_bn/beta*Conv3d_5c_2b_3x3_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_5c_2b_3x3_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_5c_2b_3x3_bn/beta*
_output_shapes	
:А*
dtype0
і
1Conv3d_5c_2b_3x3_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_5c_2b_3x3_bn/moving_mean*
_output_shapes	
:А*
dtype0*
valueBА*    
у
Conv3d_5c_2b_3x3_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_5c_2b_3x3_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*0
shared_name!Conv3d_5c_2b_3x3_bn/moving_mean
П
@Conv3d_5c_2b_3x3_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5c_2b_3x3_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_5c_2b_3x3_bn/moving_mean/AssignAssignVariableOpConv3d_5c_2b_3x3_bn/moving_mean1Conv3d_5c_2b_3x3_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_5c_2b_3x3_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_5c_2b_3x3_bn/moving_mean*
_output_shapes	
:А*
dtype0
ї
4Conv3d_5c_2b_3x3_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_5c_2b_3x3_bn/moving_variance*
_output_shapes	
:А*
dtype0*
valueBА*  А?
€
#Conv3d_5c_2b_3x3_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_5c_2b_3x3_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*4
shared_name%#Conv3d_5c_2b_3x3_bn/moving_variance
Ч
DConv3d_5c_2b_3x3_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_5c_2b_3x3_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_5c_2b_3x3_bn/moving_variance/AssignAssignVariableOp#Conv3d_5c_2b_3x3_bn/moving_variance4Conv3d_5c_2b_3x3_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_5c_2b_3x3_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_5c_2b_3x3_bn/moving_variance*
_output_shapes	
:А*
dtype0
Н
,Conv3d_5c_2b_3x3_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_5c_2b_3x3_bn/moving_variance*
_output_shapes	
:А*
dtype0
h
#Conv3d_5c_2b_3x3_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_5c_2b_3x3_bn/batchnorm/addAddV2,Conv3d_5c_2b_3x3_bn/batchnorm/ReadVariableOp#Conv3d_5c_2b_3x3_bn/batchnorm/add/y*
T0*
_output_shapes	
:А
u
#Conv3d_5c_2b_3x3_bn/batchnorm/RsqrtRsqrt!Conv3d_5c_2b_3x3_bn/batchnorm/add*
T0*
_output_shapes	
:А
™
!Conv3d_5c_2b_3x3_bn/batchnorm/mulMulConv3d_5c_2b_3x3_conv/Conv3D#Conv3d_5c_2b_3x3_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€А
Л
.Conv3d_5c_2b_3x3_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_5c_2b_3x3_bn/moving_mean*
_output_shapes	
:А*
dtype0
•
#Conv3d_5c_2b_3x3_bn/batchnorm/mul_1Mul.Conv3d_5c_2b_3x3_bn/batchnorm/ReadVariableOp_1#Conv3d_5c_2b_3x3_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:А
Д
.Conv3d_5c_2b_3x3_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_5c_2b_3x3_bn/beta*
_output_shapes	
:А*
dtype0
£
!Conv3d_5c_2b_3x3_bn/batchnorm/subSub.Conv3d_5c_2b_3x3_bn/batchnorm/ReadVariableOp_2#Conv3d_5c_2b_3x3_bn/batchnorm/mul_1*
T0*
_output_shapes	
:А
±
#Conv3d_5c_2b_3x3_bn/batchnorm/add_1AddV2!Conv3d_5c_2b_3x3_bn/batchnorm/mul!Conv3d_5c_2b_3x3_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€А
¶
*Conv3d_5c_3b_1x1_bn/beta/Initializer/zerosConst*+
_class!
loc:@Conv3d_5c_3b_1x1_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
ё
Conv3d_5c_3b_1x1_bn/betaVarHandleOp*+
_class!
loc:@Conv3d_5c_3b_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*)
shared_nameConv3d_5c_3b_1x1_bn/beta
Б
9Conv3d_5c_3b_1x1_bn/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5c_3b_1x1_bn/beta*
_output_shapes
: 
Ж
Conv3d_5c_3b_1x1_bn/beta/AssignAssignVariableOpConv3d_5c_3b_1x1_bn/beta*Conv3d_5c_3b_1x1_bn/beta/Initializer/zeros*
dtype0
В
,Conv3d_5c_3b_1x1_bn/beta/Read/ReadVariableOpReadVariableOpConv3d_5c_3b_1x1_bn/beta*
_output_shapes	
:А*
dtype0
і
1Conv3d_5c_3b_1x1_bn/moving_mean/Initializer/zerosConst*2
_class(
&$loc:@Conv3d_5c_3b_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0*
valueBА*    
у
Conv3d_5c_3b_1x1_bn/moving_meanVarHandleOp*2
_class(
&$loc:@Conv3d_5c_3b_1x1_bn/moving_mean*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*0
shared_name!Conv3d_5c_3b_1x1_bn/moving_mean
П
@Conv3d_5c_3b_1x1_bn/moving_mean/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_5c_3b_1x1_bn/moving_mean*
_output_shapes
: 
Ы
&Conv3d_5c_3b_1x1_bn/moving_mean/AssignAssignVariableOpConv3d_5c_3b_1x1_bn/moving_mean1Conv3d_5c_3b_1x1_bn/moving_mean/Initializer/zeros*
dtype0
Р
3Conv3d_5c_3b_1x1_bn/moving_mean/Read/ReadVariableOpReadVariableOpConv3d_5c_3b_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0
ї
4Conv3d_5c_3b_1x1_bn/moving_variance/Initializer/onesConst*6
_class,
*(loc:@Conv3d_5c_3b_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0*
valueBА*  А?
€
#Conv3d_5c_3b_1x1_bn/moving_varianceVarHandleOp*6
_class,
*(loc:@Conv3d_5c_3b_1x1_bn/moving_variance*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*4
shared_name%#Conv3d_5c_3b_1x1_bn/moving_variance
Ч
DConv3d_5c_3b_1x1_bn/moving_variance/IsInitialized/VarIsInitializedOpVarIsInitializedOp#Conv3d_5c_3b_1x1_bn/moving_variance*
_output_shapes
: 
¶
*Conv3d_5c_3b_1x1_bn/moving_variance/AssignAssignVariableOp#Conv3d_5c_3b_1x1_bn/moving_variance4Conv3d_5c_3b_1x1_bn/moving_variance/Initializer/ones*
dtype0
Ш
7Conv3d_5c_3b_1x1_bn/moving_variance/Read/ReadVariableOpReadVariableOp#Conv3d_5c_3b_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0
Н
,Conv3d_5c_3b_1x1_bn/batchnorm/ReadVariableOpReadVariableOp#Conv3d_5c_3b_1x1_bn/moving_variance*
_output_shapes	
:А*
dtype0
h
#Conv3d_5c_3b_1x1_bn/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:
£
!Conv3d_5c_3b_1x1_bn/batchnorm/addAddV2,Conv3d_5c_3b_1x1_bn/batchnorm/ReadVariableOp#Conv3d_5c_3b_1x1_bn/batchnorm/add/y*
T0*
_output_shapes	
:А
u
#Conv3d_5c_3b_1x1_bn/batchnorm/RsqrtRsqrt!Conv3d_5c_3b_1x1_bn/batchnorm/add*
T0*
_output_shapes	
:А
™
!Conv3d_5c_3b_1x1_bn/batchnorm/mulMulConv3d_5c_3b_1x1_conv/Conv3D#Conv3d_5c_3b_1x1_bn/batchnorm/Rsqrt*
T0*4
_output_shapes"
 :€€€€€€€€€А
Л
.Conv3d_5c_3b_1x1_bn/batchnorm/ReadVariableOp_1ReadVariableOpConv3d_5c_3b_1x1_bn/moving_mean*
_output_shapes	
:А*
dtype0
•
#Conv3d_5c_3b_1x1_bn/batchnorm/mul_1Mul.Conv3d_5c_3b_1x1_bn/batchnorm/ReadVariableOp_1#Conv3d_5c_3b_1x1_bn/batchnorm/Rsqrt*
T0*
_output_shapes	
:А
Д
.Conv3d_5c_3b_1x1_bn/batchnorm/ReadVariableOp_2ReadVariableOpConv3d_5c_3b_1x1_bn/beta*
_output_shapes	
:А*
dtype0
£
!Conv3d_5c_3b_1x1_bn/batchnorm/subSub.Conv3d_5c_3b_1x1_bn/batchnorm/ReadVariableOp_2#Conv3d_5c_3b_1x1_bn/batchnorm/mul_1*
T0*
_output_shapes	
:А
±
#Conv3d_5c_3b_1x1_bn/batchnorm/add_1AddV2!Conv3d_5c_3b_1x1_bn/batchnorm/mul!Conv3d_5c_3b_1x1_bn/batchnorm/sub*
T0*4
_output_shapes"
 :€€€€€€€€€А
Б
Conv3d_5c_0a_1x1/ReluRelu#Conv3d_5c_0a_1x1_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€А
Б
Conv3d_5c_1b_3x3/ReluRelu#Conv3d_5c_1b_3x3_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€А
Б
Conv3d_5c_2b_3x3/ReluRelu#Conv3d_5c_2b_3x3_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€А
Б
Conv3d_5c_3b_1x1/ReluRelu#Conv3d_5c_3b_1x1_bn/batchnorm/add_1*
T0*4
_output_shapes"
 :€€€€€€€€€А
V
Mixed_5c/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
б
Mixed_5c/concatConcatV2Conv3d_5c_0a_1x1/ReluConv3d_5c_1b_3x3/ReluConv3d_5c_2b_3x3/ReluConv3d_5c_3b_1x1/ReluMixed_5c/concat/axis*
N*
T0*

Tidx0*4
_output_shapes"
 :€€€€€€€€€А
ћ
global_avg_pool/AvgPool3D	AvgPool3DMixed_5c/concat*
T0*4
_output_shapes"
 :€€€€€€€€€А*
data_formatNDHWC*
ksize	
*
paddingVALID*
strides	

v
dropout/IdentityIdentityglobal_avg_pool/AvgPool3D*
T0*4
_output_shapes"
 :€€€€€€€€€А
≈
:Conv3d_6a_1x1_conv/kernel/Initializer/random_uniform/shapeConst*,
_class"
 loc:@Conv3d_6a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            2   
Ђ
8Conv3d_6a_1x1_conv/kernel/Initializer/random_uniform/minConst*,
_class"
 loc:@Conv3d_6a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 * Щљ
Ђ
8Conv3d_6a_1x1_conv/kernel/Initializer/random_uniform/maxConst*,
_class"
 loc:@Conv3d_6a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 * Щ=
Щ
BConv3d_6a_1x1_conv/kernel/Initializer/random_uniform/RandomUniformRandomUniform:Conv3d_6a_1x1_conv/kernel/Initializer/random_uniform/shape*
T0*,
_class"
 loc:@Conv3d_6a_1x1_conv/kernel*+
_output_shapes
:А2*
dtype0*

seed *
seed2 
В
8Conv3d_6a_1x1_conv/kernel/Initializer/random_uniform/subSub8Conv3d_6a_1x1_conv/kernel/Initializer/random_uniform/max8Conv3d_6a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@Conv3d_6a_1x1_conv/kernel*
_output_shapes
: 
°
8Conv3d_6a_1x1_conv/kernel/Initializer/random_uniform/mulMulBConv3d_6a_1x1_conv/kernel/Initializer/random_uniform/RandomUniform8Conv3d_6a_1x1_conv/kernel/Initializer/random_uniform/sub*
T0*,
_class"
 loc:@Conv3d_6a_1x1_conv/kernel*+
_output_shapes
:А2
У
4Conv3d_6a_1x1_conv/kernel/Initializer/random_uniformAdd8Conv3d_6a_1x1_conv/kernel/Initializer/random_uniform/mul8Conv3d_6a_1x1_conv/kernel/Initializer/random_uniform/min*
T0*,
_class"
 loc:@Conv3d_6a_1x1_conv/kernel*+
_output_shapes
:А2
с
Conv3d_6a_1x1_conv/kernelVarHandleOp*,
_class"
 loc:@Conv3d_6a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:А2**
shared_nameConv3d_6a_1x1_conv/kernel
Г
:Conv3d_6a_1x1_conv/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_6a_1x1_conv/kernel*
_output_shapes
: 
Т
 Conv3d_6a_1x1_conv/kernel/AssignAssignVariableOpConv3d_6a_1x1_conv/kernel4Conv3d_6a_1x1_conv/kernel/Initializer/random_uniform*
dtype0
Ф
-Conv3d_6a_1x1_conv/kernel/Read/ReadVariableOpReadVariableOpConv3d_6a_1x1_conv/kernel*+
_output_shapes
:А2*
dtype0
Ґ
)Conv3d_6a_1x1_conv/bias/Initializer/zerosConst**
_class 
loc:@Conv3d_6a_1x1_conv/bias*
_output_shapes
:2*
dtype0*
valueB2*    
Џ
Conv3d_6a_1x1_conv/biasVarHandleOp**
_class 
loc:@Conv3d_6a_1x1_conv/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:2*(
shared_nameConv3d_6a_1x1_conv/bias

8Conv3d_6a_1x1_conv/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_6a_1x1_conv/bias*
_output_shapes
: 
Г
Conv3d_6a_1x1_conv/bias/AssignAssignVariableOpConv3d_6a_1x1_conv/bias)Conv3d_6a_1x1_conv/bias/Initializer/zeros*
dtype0

+Conv3d_6a_1x1_conv/bias/Read/ReadVariableOpReadVariableOpConv3d_6a_1x1_conv/bias*
_output_shapes
:2*
dtype0
П
(Conv3d_6a_1x1_conv/Conv3D/ReadVariableOpReadVariableOpConv3d_6a_1x1_conv/kernel*+
_output_shapes
:А2*
dtype0
ц
Conv3d_6a_1x1_conv/Conv3DConv3Ddropout/Identity(Conv3d_6a_1x1_conv/Conv3D/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€2*
data_formatNDHWC*
	dilations	
*
paddingSAME*
strides	

}
)Conv3d_6a_1x1_conv/BiasAdd/ReadVariableOpReadVariableOpConv3d_6a_1x1_conv/bias*
_output_shapes
:2*
dtype0
ј
Conv3d_6a_1x1_conv/BiasAddBiasAddConv3d_6a_1x1_conv/Conv3D)Conv3d_6a_1x1_conv/BiasAdd/ReadVariableOp*
T0*3
_output_shapes!
:€€€€€€€€€2*
data_formatNHWC
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€d   
Е
flatten/ReshapeReshapeConv3d_6a_1x1_conv/BiasAddflatten/Const*
T0*
Tshape0*'
_output_shapes
:€€€€€€€€€d
Я
-dense/kernel/Initializer/random_uniform/shapeConst*
_class
loc:@dense/kernel*
_output_shapes
:*
dtype0*
valueB"d   2   
С
+dense/kernel/Initializer/random_uniform/minConst*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *ЌћLЊ
С
+dense/kernel/Initializer/random_uniform/maxConst*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>
е
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@dense/kernel*
_output_shapes

:d2*
dtype0*

seed *
seed2 
ќ
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes
: 
а
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel*
_output_shapes

:d2
“
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel*
_output_shapes

:d2
љ
dense/kernelVarHandleOp*
_class
loc:@dense/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape
:d2*
shared_namedense/kernel
i
-dense/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel*
_output_shapes
: 
k
dense/kernel/AssignAssignVariableOpdense/kernel'dense/kernel/Initializer/random_uniform*
dtype0
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:d2*
dtype0
И
dense/bias/Initializer/zerosConst*
_class
loc:@dense/bias*
_output_shapes
:2*
dtype0*
valueB2*    
≥

dense/biasVarHandleOp*
_class
loc:@dense/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:2*
shared_name
dense/bias
e
+dense/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOp
dense/bias*
_output_shapes
: 
\
dense/bias/AssignAssignVariableOp
dense/biasdense/bias/Initializer/zeros*
dtype0
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:2*
dtype0
h
dense/MatMul/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:d2*
dtype0
Ь
dense/MatMulMatMulflatten/Reshapedense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2*
transpose_a( *
transpose_b( 
c
dense/BiasAdd/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:2*
dtype0
Н
dense/BiasAddBiasAdddense/MatMuldense/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2*
data_formatNHWC
Y
dense/SoftmaxSoftmaxdense/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€2
ќ
PlaceholderPlaceholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Y
AssignVariableOpAssignVariableOpConv3d_1a_7x7_conv/kernelPlaceholder*
dtype0
З
ReadVariableOpReadVariableOpConv3d_1a_7x7_conv/kernel^AssignVariableOp**
_output_shapes
:@*
dtype0
h
Placeholder_1Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
Y
AssignVariableOp_1AssignVariableOpConv3d_1a_7x7_bn/betaPlaceholder_1*
dtype0
w
ReadVariableOp_1ReadVariableOpConv3d_1a_7x7_bn/beta^AssignVariableOp_1*
_output_shapes
:@*
dtype0
h
Placeholder_2Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_2AssignVariableOpConv3d_1a_7x7_bn/moving_meanPlaceholder_2*
dtype0
~
ReadVariableOp_2ReadVariableOpConv3d_1a_7x7_bn/moving_mean^AssignVariableOp_2*
_output_shapes
:@*
dtype0
h
Placeholder_3Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
d
AssignVariableOp_3AssignVariableOp Conv3d_1a_7x7_bn/moving_variancePlaceholder_3*
dtype0
В
ReadVariableOp_3ReadVariableOp Conv3d_1a_7x7_bn/moving_variance^AssignVariableOp_3*
_output_shapes
:@*
dtype0
–
Placeholder_4Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
]
AssignVariableOp_4AssignVariableOpConv3d_2b_1x1_conv/kernelPlaceholder_4*
dtype0
Л
ReadVariableOp_4ReadVariableOpConv3d_2b_1x1_conv/kernel^AssignVariableOp_4**
_output_shapes
:@@*
dtype0
h
Placeholder_5Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
Y
AssignVariableOp_5AssignVariableOpConv3d_2b_1x1_bn/betaPlaceholder_5*
dtype0
w
ReadVariableOp_5ReadVariableOpConv3d_2b_1x1_bn/beta^AssignVariableOp_5*
_output_shapes
:@*
dtype0
h
Placeholder_6Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_6AssignVariableOpConv3d_2b_1x1_bn/moving_meanPlaceholder_6*
dtype0
~
ReadVariableOp_6ReadVariableOpConv3d_2b_1x1_bn/moving_mean^AssignVariableOp_6*
_output_shapes
:@*
dtype0
h
Placeholder_7Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
d
AssignVariableOp_7AssignVariableOp Conv3d_2b_1x1_bn/moving_variancePlaceholder_7*
dtype0
В
ReadVariableOp_7ReadVariableOp Conv3d_2b_1x1_bn/moving_variance^AssignVariableOp_7*
_output_shapes
:@*
dtype0
–
Placeholder_8Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
]
AssignVariableOp_8AssignVariableOpConv3d_2c_3x3_conv/kernelPlaceholder_8*
dtype0
М
ReadVariableOp_8ReadVariableOpConv3d_2c_3x3_conv/kernel^AssignVariableOp_8*+
_output_shapes
:@ј*
dtype0
h
Placeholder_9Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
Y
AssignVariableOp_9AssignVariableOpConv3d_2c_3x3_bn/betaPlaceholder_9*
dtype0
x
ReadVariableOp_9ReadVariableOpConv3d_2c_3x3_bn/beta^AssignVariableOp_9*
_output_shapes	
:ј*
dtype0
i
Placeholder_10Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
b
AssignVariableOp_10AssignVariableOpConv3d_2c_3x3_bn/moving_meanPlaceholder_10*
dtype0
Б
ReadVariableOp_10ReadVariableOpConv3d_2c_3x3_bn/moving_mean^AssignVariableOp_10*
_output_shapes	
:ј*
dtype0
i
Placeholder_11Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
f
AssignVariableOp_11AssignVariableOp Conv3d_2c_3x3_bn/moving_variancePlaceholder_11*
dtype0
Е
ReadVariableOp_11ReadVariableOp Conv3d_2c_3x3_bn/moving_variance^AssignVariableOp_11*
_output_shapes	
:ј*
dtype0
—
Placeholder_12Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
b
AssignVariableOp_12AssignVariableOpConv3d_3b_1a_1x1_conv/kernelPlaceholder_12*
dtype0
С
ReadVariableOp_12ReadVariableOpConv3d_3b_1a_1x1_conv/kernel^AssignVariableOp_12*+
_output_shapes
:ј`*
dtype0
—
Placeholder_13Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
b
AssignVariableOp_13AssignVariableOpConv3d_3b_2a_1x1_conv/kernelPlaceholder_13*
dtype0
С
ReadVariableOp_13ReadVariableOpConv3d_3b_2a_1x1_conv/kernel^AssignVariableOp_13*+
_output_shapes
:ј*
dtype0
i
Placeholder_14Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
^
AssignVariableOp_14AssignVariableOpConv3d_3b_1a_1x1_bn/betaPlaceholder_14*
dtype0
|
ReadVariableOp_14ReadVariableOpConv3d_3b_1a_1x1_bn/beta^AssignVariableOp_14*
_output_shapes
:`*
dtype0
i
Placeholder_15Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
e
AssignVariableOp_15AssignVariableOpConv3d_3b_1a_1x1_bn/moving_meanPlaceholder_15*
dtype0
Г
ReadVariableOp_15ReadVariableOpConv3d_3b_1a_1x1_bn/moving_mean^AssignVariableOp_15*
_output_shapes
:`*
dtype0
i
Placeholder_16Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_16AssignVariableOp#Conv3d_3b_1a_1x1_bn/moving_variancePlaceholder_16*
dtype0
З
ReadVariableOp_16ReadVariableOp#Conv3d_3b_1a_1x1_bn/moving_variance^AssignVariableOp_16*
_output_shapes
:`*
dtype0
i
Placeholder_17Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
^
AssignVariableOp_17AssignVariableOpConv3d_3b_2a_1x1_bn/betaPlaceholder_17*
dtype0
|
ReadVariableOp_17ReadVariableOpConv3d_3b_2a_1x1_bn/beta^AssignVariableOp_17*
_output_shapes
:*
dtype0
i
Placeholder_18Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
e
AssignVariableOp_18AssignVariableOpConv3d_3b_2a_1x1_bn/moving_meanPlaceholder_18*
dtype0
Г
ReadVariableOp_18ReadVariableOpConv3d_3b_2a_1x1_bn/moving_mean^AssignVariableOp_18*
_output_shapes
:*
dtype0
i
Placeholder_19Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_19AssignVariableOp#Conv3d_3b_2a_1x1_bn/moving_variancePlaceholder_19*
dtype0
З
ReadVariableOp_19ReadVariableOp#Conv3d_3b_2a_1x1_bn/moving_variance^AssignVariableOp_19*
_output_shapes
:*
dtype0
—
Placeholder_20Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
b
AssignVariableOp_20AssignVariableOpConv3d_3b_0a_1x1_conv/kernelPlaceholder_20*
dtype0
С
ReadVariableOp_20ReadVariableOpConv3d_3b_0a_1x1_conv/kernel^AssignVariableOp_20*+
_output_shapes
:ј@*
dtype0
—
Placeholder_21Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
b
AssignVariableOp_21AssignVariableOpConv3d_3b_1b_3x3_conv/kernelPlaceholder_21*
dtype0
С
ReadVariableOp_21ReadVariableOpConv3d_3b_1b_3x3_conv/kernel^AssignVariableOp_21*+
_output_shapes
:`А*
dtype0
—
Placeholder_22Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
b
AssignVariableOp_22AssignVariableOpConv3d_3b_2b_3x3_conv/kernelPlaceholder_22*
dtype0
Р
ReadVariableOp_22ReadVariableOpConv3d_3b_2b_3x3_conv/kernel^AssignVariableOp_22**
_output_shapes
: *
dtype0
—
Placeholder_23Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
b
AssignVariableOp_23AssignVariableOpConv3d_3b_3b_1x1_conv/kernelPlaceholder_23*
dtype0
С
ReadVariableOp_23ReadVariableOpConv3d_3b_3b_1x1_conv/kernel^AssignVariableOp_23*+
_output_shapes
:ј *
dtype0
i
Placeholder_24Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
^
AssignVariableOp_24AssignVariableOpConv3d_3b_0a_1x1_bn/betaPlaceholder_24*
dtype0
|
ReadVariableOp_24ReadVariableOpConv3d_3b_0a_1x1_bn/beta^AssignVariableOp_24*
_output_shapes
:@*
dtype0
i
Placeholder_25Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
e
AssignVariableOp_25AssignVariableOpConv3d_3b_0a_1x1_bn/moving_meanPlaceholder_25*
dtype0
Г
ReadVariableOp_25ReadVariableOpConv3d_3b_0a_1x1_bn/moving_mean^AssignVariableOp_25*
_output_shapes
:@*
dtype0
i
Placeholder_26Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_26AssignVariableOp#Conv3d_3b_0a_1x1_bn/moving_variancePlaceholder_26*
dtype0
З
ReadVariableOp_26ReadVariableOp#Conv3d_3b_0a_1x1_bn/moving_variance^AssignVariableOp_26*
_output_shapes
:@*
dtype0
i
Placeholder_27Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
^
AssignVariableOp_27AssignVariableOpConv3d_3b_1b_3x3_bn/betaPlaceholder_27*
dtype0
}
ReadVariableOp_27ReadVariableOpConv3d_3b_1b_3x3_bn/beta^AssignVariableOp_27*
_output_shapes	
:А*
dtype0
i
Placeholder_28Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
e
AssignVariableOp_28AssignVariableOpConv3d_3b_1b_3x3_bn/moving_meanPlaceholder_28*
dtype0
Д
ReadVariableOp_28ReadVariableOpConv3d_3b_1b_3x3_bn/moving_mean^AssignVariableOp_28*
_output_shapes	
:А*
dtype0
i
Placeholder_29Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_29AssignVariableOp#Conv3d_3b_1b_3x3_bn/moving_variancePlaceholder_29*
dtype0
И
ReadVariableOp_29ReadVariableOp#Conv3d_3b_1b_3x3_bn/moving_variance^AssignVariableOp_29*
_output_shapes	
:А*
dtype0
i
Placeholder_30Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
^
AssignVariableOp_30AssignVariableOpConv3d_3b_2b_3x3_bn/betaPlaceholder_30*
dtype0
|
ReadVariableOp_30ReadVariableOpConv3d_3b_2b_3x3_bn/beta^AssignVariableOp_30*
_output_shapes
: *
dtype0
i
Placeholder_31Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
e
AssignVariableOp_31AssignVariableOpConv3d_3b_2b_3x3_bn/moving_meanPlaceholder_31*
dtype0
Г
ReadVariableOp_31ReadVariableOpConv3d_3b_2b_3x3_bn/moving_mean^AssignVariableOp_31*
_output_shapes
: *
dtype0
i
Placeholder_32Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_32AssignVariableOp#Conv3d_3b_2b_3x3_bn/moving_variancePlaceholder_32*
dtype0
З
ReadVariableOp_32ReadVariableOp#Conv3d_3b_2b_3x3_bn/moving_variance^AssignVariableOp_32*
_output_shapes
: *
dtype0
i
Placeholder_33Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
^
AssignVariableOp_33AssignVariableOpConv3d_3b_3b_1x1_bn/betaPlaceholder_33*
dtype0
|
ReadVariableOp_33ReadVariableOpConv3d_3b_3b_1x1_bn/beta^AssignVariableOp_33*
_output_shapes
: *
dtype0
i
Placeholder_34Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
e
AssignVariableOp_34AssignVariableOpConv3d_3b_3b_1x1_bn/moving_meanPlaceholder_34*
dtype0
Г
ReadVariableOp_34ReadVariableOpConv3d_3b_3b_1x1_bn/moving_mean^AssignVariableOp_34*
_output_shapes
: *
dtype0
i
Placeholder_35Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_35AssignVariableOp#Conv3d_3b_3b_1x1_bn/moving_variancePlaceholder_35*
dtype0
З
ReadVariableOp_35ReadVariableOp#Conv3d_3b_3b_1x1_bn/moving_variance^AssignVariableOp_35*
_output_shapes
: *
dtype0
—
Placeholder_36Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
b
AssignVariableOp_36AssignVariableOpConv3d_3c_1a_1x1_conv/kernelPlaceholder_36*
dtype0
Т
ReadVariableOp_36ReadVariableOpConv3d_3c_1a_1x1_conv/kernel^AssignVariableOp_36*,
_output_shapes
:АА*
dtype0
—
Placeholder_37Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
b
AssignVariableOp_37AssignVariableOpConv3d_3c_2a_1x1_conv/kernelPlaceholder_37*
dtype0
С
ReadVariableOp_37ReadVariableOpConv3d_3c_2a_1x1_conv/kernel^AssignVariableOp_37*+
_output_shapes
:А *
dtype0
i
Placeholder_38Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
^
AssignVariableOp_38AssignVariableOpConv3d_3c_1a_1x1_bn/betaPlaceholder_38*
dtype0
}
ReadVariableOp_38ReadVariableOpConv3d_3c_1a_1x1_bn/beta^AssignVariableOp_38*
_output_shapes	
:А*
dtype0
i
Placeholder_39Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
e
AssignVariableOp_39AssignVariableOpConv3d_3c_1a_1x1_bn/moving_meanPlaceholder_39*
dtype0
Д
ReadVariableOp_39ReadVariableOpConv3d_3c_1a_1x1_bn/moving_mean^AssignVariableOp_39*
_output_shapes	
:А*
dtype0
i
Placeholder_40Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_40AssignVariableOp#Conv3d_3c_1a_1x1_bn/moving_variancePlaceholder_40*
dtype0
И
ReadVariableOp_40ReadVariableOp#Conv3d_3c_1a_1x1_bn/moving_variance^AssignVariableOp_40*
_output_shapes	
:А*
dtype0
i
Placeholder_41Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
^
AssignVariableOp_41AssignVariableOpConv3d_3c_2a_1x1_bn/betaPlaceholder_41*
dtype0
|
ReadVariableOp_41ReadVariableOpConv3d_3c_2a_1x1_bn/beta^AssignVariableOp_41*
_output_shapes
: *
dtype0
i
Placeholder_42Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
e
AssignVariableOp_42AssignVariableOpConv3d_3c_2a_1x1_bn/moving_meanPlaceholder_42*
dtype0
Г
ReadVariableOp_42ReadVariableOpConv3d_3c_2a_1x1_bn/moving_mean^AssignVariableOp_42*
_output_shapes
: *
dtype0
i
Placeholder_43Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_43AssignVariableOp#Conv3d_3c_2a_1x1_bn/moving_variancePlaceholder_43*
dtype0
З
ReadVariableOp_43ReadVariableOp#Conv3d_3c_2a_1x1_bn/moving_variance^AssignVariableOp_43*
_output_shapes
: *
dtype0
—
Placeholder_44Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
b
AssignVariableOp_44AssignVariableOpConv3d_3c_0a_1x1_conv/kernelPlaceholder_44*
dtype0
Т
ReadVariableOp_44ReadVariableOpConv3d_3c_0a_1x1_conv/kernel^AssignVariableOp_44*,
_output_shapes
:АА*
dtype0
—
Placeholder_45Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
b
AssignVariableOp_45AssignVariableOpConv3d_3c_1b_3x3_conv/kernelPlaceholder_45*
dtype0
Т
ReadVariableOp_45ReadVariableOpConv3d_3c_1b_3x3_conv/kernel^AssignVariableOp_45*,
_output_shapes
:Ај*
dtype0
—
Placeholder_46Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
b
AssignVariableOp_46AssignVariableOpConv3d_3c_2b_3x3_conv/kernelPlaceholder_46*
dtype0
Р
ReadVariableOp_46ReadVariableOpConv3d_3c_2b_3x3_conv/kernel^AssignVariableOp_46**
_output_shapes
: `*
dtype0
—
Placeholder_47Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
b
AssignVariableOp_47AssignVariableOpConv3d_3c_3b_1x1_conv/kernelPlaceholder_47*
dtype0
С
ReadVariableOp_47ReadVariableOpConv3d_3c_3b_1x1_conv/kernel^AssignVariableOp_47*+
_output_shapes
:А@*
dtype0
i
Placeholder_48Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
^
AssignVariableOp_48AssignVariableOpConv3d_3c_0a_1x1_bn/betaPlaceholder_48*
dtype0
}
ReadVariableOp_48ReadVariableOpConv3d_3c_0a_1x1_bn/beta^AssignVariableOp_48*
_output_shapes	
:А*
dtype0
i
Placeholder_49Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
e
AssignVariableOp_49AssignVariableOpConv3d_3c_0a_1x1_bn/moving_meanPlaceholder_49*
dtype0
Д
ReadVariableOp_49ReadVariableOpConv3d_3c_0a_1x1_bn/moving_mean^AssignVariableOp_49*
_output_shapes	
:А*
dtype0
i
Placeholder_50Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_50AssignVariableOp#Conv3d_3c_0a_1x1_bn/moving_variancePlaceholder_50*
dtype0
И
ReadVariableOp_50ReadVariableOp#Conv3d_3c_0a_1x1_bn/moving_variance^AssignVariableOp_50*
_output_shapes	
:А*
dtype0
i
Placeholder_51Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
^
AssignVariableOp_51AssignVariableOpConv3d_3c_1b_3x3_bn/betaPlaceholder_51*
dtype0
}
ReadVariableOp_51ReadVariableOpConv3d_3c_1b_3x3_bn/beta^AssignVariableOp_51*
_output_shapes	
:ј*
dtype0
i
Placeholder_52Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
e
AssignVariableOp_52AssignVariableOpConv3d_3c_1b_3x3_bn/moving_meanPlaceholder_52*
dtype0
Д
ReadVariableOp_52ReadVariableOpConv3d_3c_1b_3x3_bn/moving_mean^AssignVariableOp_52*
_output_shapes	
:ј*
dtype0
i
Placeholder_53Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_53AssignVariableOp#Conv3d_3c_1b_3x3_bn/moving_variancePlaceholder_53*
dtype0
И
ReadVariableOp_53ReadVariableOp#Conv3d_3c_1b_3x3_bn/moving_variance^AssignVariableOp_53*
_output_shapes	
:ј*
dtype0
i
Placeholder_54Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
^
AssignVariableOp_54AssignVariableOpConv3d_3c_2b_3x3_bn/betaPlaceholder_54*
dtype0
|
ReadVariableOp_54ReadVariableOpConv3d_3c_2b_3x3_bn/beta^AssignVariableOp_54*
_output_shapes
:`*
dtype0
i
Placeholder_55Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
e
AssignVariableOp_55AssignVariableOpConv3d_3c_2b_3x3_bn/moving_meanPlaceholder_55*
dtype0
Г
ReadVariableOp_55ReadVariableOpConv3d_3c_2b_3x3_bn/moving_mean^AssignVariableOp_55*
_output_shapes
:`*
dtype0
i
Placeholder_56Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_56AssignVariableOp#Conv3d_3c_2b_3x3_bn/moving_variancePlaceholder_56*
dtype0
З
ReadVariableOp_56ReadVariableOp#Conv3d_3c_2b_3x3_bn/moving_variance^AssignVariableOp_56*
_output_shapes
:`*
dtype0
i
Placeholder_57Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
^
AssignVariableOp_57AssignVariableOpConv3d_3c_3b_1x1_bn/betaPlaceholder_57*
dtype0
|
ReadVariableOp_57ReadVariableOpConv3d_3c_3b_1x1_bn/beta^AssignVariableOp_57*
_output_shapes
:@*
dtype0
i
Placeholder_58Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
e
AssignVariableOp_58AssignVariableOpConv3d_3c_3b_1x1_bn/moving_meanPlaceholder_58*
dtype0
Г
ReadVariableOp_58ReadVariableOpConv3d_3c_3b_1x1_bn/moving_mean^AssignVariableOp_58*
_output_shapes
:@*
dtype0
i
Placeholder_59Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_59AssignVariableOp#Conv3d_3c_3b_1x1_bn/moving_variancePlaceholder_59*
dtype0
З
ReadVariableOp_59ReadVariableOp#Conv3d_3c_3b_1x1_bn/moving_variance^AssignVariableOp_59*
_output_shapes
:@*
dtype0
—
Placeholder_60Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
b
AssignVariableOp_60AssignVariableOpConv3d_4b_1a_1x1_conv/kernelPlaceholder_60*
dtype0
С
ReadVariableOp_60ReadVariableOpConv3d_4b_1a_1x1_conv/kernel^AssignVariableOp_60*+
_output_shapes
:а`*
dtype0
—
Placeholder_61Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
b
AssignVariableOp_61AssignVariableOpConv3d_4b_2a_1x1_conv/kernelPlaceholder_61*
dtype0
С
ReadVariableOp_61ReadVariableOpConv3d_4b_2a_1x1_conv/kernel^AssignVariableOp_61*+
_output_shapes
:а*
dtype0
i
Placeholder_62Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
^
AssignVariableOp_62AssignVariableOpConv3d_4b_1a_1x1_bn/betaPlaceholder_62*
dtype0
|
ReadVariableOp_62ReadVariableOpConv3d_4b_1a_1x1_bn/beta^AssignVariableOp_62*
_output_shapes
:`*
dtype0
i
Placeholder_63Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
e
AssignVariableOp_63AssignVariableOpConv3d_4b_1a_1x1_bn/moving_meanPlaceholder_63*
dtype0
Г
ReadVariableOp_63ReadVariableOpConv3d_4b_1a_1x1_bn/moving_mean^AssignVariableOp_63*
_output_shapes
:`*
dtype0
i
Placeholder_64Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_64AssignVariableOp#Conv3d_4b_1a_1x1_bn/moving_variancePlaceholder_64*
dtype0
З
ReadVariableOp_64ReadVariableOp#Conv3d_4b_1a_1x1_bn/moving_variance^AssignVariableOp_64*
_output_shapes
:`*
dtype0
i
Placeholder_65Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
^
AssignVariableOp_65AssignVariableOpConv3d_4b_2a_1x1_bn/betaPlaceholder_65*
dtype0
|
ReadVariableOp_65ReadVariableOpConv3d_4b_2a_1x1_bn/beta^AssignVariableOp_65*
_output_shapes
:*
dtype0
i
Placeholder_66Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
e
AssignVariableOp_66AssignVariableOpConv3d_4b_2a_1x1_bn/moving_meanPlaceholder_66*
dtype0
Г
ReadVariableOp_66ReadVariableOpConv3d_4b_2a_1x1_bn/moving_mean^AssignVariableOp_66*
_output_shapes
:*
dtype0
i
Placeholder_67Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_67AssignVariableOp#Conv3d_4b_2a_1x1_bn/moving_variancePlaceholder_67*
dtype0
З
ReadVariableOp_67ReadVariableOp#Conv3d_4b_2a_1x1_bn/moving_variance^AssignVariableOp_67*
_output_shapes
:*
dtype0
—
Placeholder_68Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
b
AssignVariableOp_68AssignVariableOpConv3d_4b_0a_1x1_conv/kernelPlaceholder_68*
dtype0
Т
ReadVariableOp_68ReadVariableOpConv3d_4b_0a_1x1_conv/kernel^AssignVariableOp_68*,
_output_shapes
:ај*
dtype0
—
Placeholder_69Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
b
AssignVariableOp_69AssignVariableOpConv3d_4b_1b_3x3_conv/kernelPlaceholder_69*
dtype0
С
ReadVariableOp_69ReadVariableOpConv3d_4b_1b_3x3_conv/kernel^AssignVariableOp_69*+
_output_shapes
:`–*
dtype0
—
Placeholder_70Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
b
AssignVariableOp_70AssignVariableOpConv3d_4b_2b_3x3_conv/kernelPlaceholder_70*
dtype0
Р
ReadVariableOp_70ReadVariableOpConv3d_4b_2b_3x3_conv/kernel^AssignVariableOp_70**
_output_shapes
:0*
dtype0
—
Placeholder_71Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
b
AssignVariableOp_71AssignVariableOpConv3d_4b_3b_1x1_conv/kernelPlaceholder_71*
dtype0
С
ReadVariableOp_71ReadVariableOpConv3d_4b_3b_1x1_conv/kernel^AssignVariableOp_71*+
_output_shapes
:а@*
dtype0
i
Placeholder_72Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
^
AssignVariableOp_72AssignVariableOpConv3d_4b_0a_1x1_bn/betaPlaceholder_72*
dtype0
}
ReadVariableOp_72ReadVariableOpConv3d_4b_0a_1x1_bn/beta^AssignVariableOp_72*
_output_shapes	
:ј*
dtype0
i
Placeholder_73Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
e
AssignVariableOp_73AssignVariableOpConv3d_4b_0a_1x1_bn/moving_meanPlaceholder_73*
dtype0
Д
ReadVariableOp_73ReadVariableOpConv3d_4b_0a_1x1_bn/moving_mean^AssignVariableOp_73*
_output_shapes	
:ј*
dtype0
i
Placeholder_74Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_74AssignVariableOp#Conv3d_4b_0a_1x1_bn/moving_variancePlaceholder_74*
dtype0
И
ReadVariableOp_74ReadVariableOp#Conv3d_4b_0a_1x1_bn/moving_variance^AssignVariableOp_74*
_output_shapes	
:ј*
dtype0
i
Placeholder_75Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
^
AssignVariableOp_75AssignVariableOpConv3d_4b_1b_3x3_bn/betaPlaceholder_75*
dtype0
}
ReadVariableOp_75ReadVariableOpConv3d_4b_1b_3x3_bn/beta^AssignVariableOp_75*
_output_shapes	
:–*
dtype0
i
Placeholder_76Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
e
AssignVariableOp_76AssignVariableOpConv3d_4b_1b_3x3_bn/moving_meanPlaceholder_76*
dtype0
Д
ReadVariableOp_76ReadVariableOpConv3d_4b_1b_3x3_bn/moving_mean^AssignVariableOp_76*
_output_shapes	
:–*
dtype0
i
Placeholder_77Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_77AssignVariableOp#Conv3d_4b_1b_3x3_bn/moving_variancePlaceholder_77*
dtype0
И
ReadVariableOp_77ReadVariableOp#Conv3d_4b_1b_3x3_bn/moving_variance^AssignVariableOp_77*
_output_shapes	
:–*
dtype0
i
Placeholder_78Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
^
AssignVariableOp_78AssignVariableOpConv3d_4b_2b_3x3_bn/betaPlaceholder_78*
dtype0
|
ReadVariableOp_78ReadVariableOpConv3d_4b_2b_3x3_bn/beta^AssignVariableOp_78*
_output_shapes
:0*
dtype0
i
Placeholder_79Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
e
AssignVariableOp_79AssignVariableOpConv3d_4b_2b_3x3_bn/moving_meanPlaceholder_79*
dtype0
Г
ReadVariableOp_79ReadVariableOpConv3d_4b_2b_3x3_bn/moving_mean^AssignVariableOp_79*
_output_shapes
:0*
dtype0
i
Placeholder_80Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_80AssignVariableOp#Conv3d_4b_2b_3x3_bn/moving_variancePlaceholder_80*
dtype0
З
ReadVariableOp_80ReadVariableOp#Conv3d_4b_2b_3x3_bn/moving_variance^AssignVariableOp_80*
_output_shapes
:0*
dtype0
i
Placeholder_81Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
^
AssignVariableOp_81AssignVariableOpConv3d_4b_3b_1x1_bn/betaPlaceholder_81*
dtype0
|
ReadVariableOp_81ReadVariableOpConv3d_4b_3b_1x1_bn/beta^AssignVariableOp_81*
_output_shapes
:@*
dtype0
i
Placeholder_82Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
e
AssignVariableOp_82AssignVariableOpConv3d_4b_3b_1x1_bn/moving_meanPlaceholder_82*
dtype0
Г
ReadVariableOp_82ReadVariableOpConv3d_4b_3b_1x1_bn/moving_mean^AssignVariableOp_82*
_output_shapes
:@*
dtype0
i
Placeholder_83Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_83AssignVariableOp#Conv3d_4b_3b_1x1_bn/moving_variancePlaceholder_83*
dtype0
З
ReadVariableOp_83ReadVariableOp#Conv3d_4b_3b_1x1_bn/moving_variance^AssignVariableOp_83*
_output_shapes
:@*
dtype0
—
Placeholder_84Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
b
AssignVariableOp_84AssignVariableOpConv3d_4c_1a_1x1_conv/kernelPlaceholder_84*
dtype0
С
ReadVariableOp_84ReadVariableOpConv3d_4c_1a_1x1_conv/kernel^AssignVariableOp_84*+
_output_shapes
:Аp*
dtype0
—
Placeholder_85Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
b
AssignVariableOp_85AssignVariableOpConv3d_4c_2a_1x1_conv/kernelPlaceholder_85*
dtype0
С
ReadVariableOp_85ReadVariableOpConv3d_4c_2a_1x1_conv/kernel^AssignVariableOp_85*+
_output_shapes
:А*
dtype0
i
Placeholder_86Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
^
AssignVariableOp_86AssignVariableOpConv3d_4c_1a_1x1_bn/betaPlaceholder_86*
dtype0
|
ReadVariableOp_86ReadVariableOpConv3d_4c_1a_1x1_bn/beta^AssignVariableOp_86*
_output_shapes
:p*
dtype0
i
Placeholder_87Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
e
AssignVariableOp_87AssignVariableOpConv3d_4c_1a_1x1_bn/moving_meanPlaceholder_87*
dtype0
Г
ReadVariableOp_87ReadVariableOpConv3d_4c_1a_1x1_bn/moving_mean^AssignVariableOp_87*
_output_shapes
:p*
dtype0
i
Placeholder_88Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_88AssignVariableOp#Conv3d_4c_1a_1x1_bn/moving_variancePlaceholder_88*
dtype0
З
ReadVariableOp_88ReadVariableOp#Conv3d_4c_1a_1x1_bn/moving_variance^AssignVariableOp_88*
_output_shapes
:p*
dtype0
i
Placeholder_89Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
^
AssignVariableOp_89AssignVariableOpConv3d_4c_2a_1x1_bn/betaPlaceholder_89*
dtype0
|
ReadVariableOp_89ReadVariableOpConv3d_4c_2a_1x1_bn/beta^AssignVariableOp_89*
_output_shapes
:*
dtype0
i
Placeholder_90Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
e
AssignVariableOp_90AssignVariableOpConv3d_4c_2a_1x1_bn/moving_meanPlaceholder_90*
dtype0
Г
ReadVariableOp_90ReadVariableOpConv3d_4c_2a_1x1_bn/moving_mean^AssignVariableOp_90*
_output_shapes
:*
dtype0
i
Placeholder_91Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_91AssignVariableOp#Conv3d_4c_2a_1x1_bn/moving_variancePlaceholder_91*
dtype0
З
ReadVariableOp_91ReadVariableOp#Conv3d_4c_2a_1x1_bn/moving_variance^AssignVariableOp_91*
_output_shapes
:*
dtype0
—
Placeholder_92Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
b
AssignVariableOp_92AssignVariableOpConv3d_4c_0a_1x1_conv/kernelPlaceholder_92*
dtype0
Т
ReadVariableOp_92ReadVariableOpConv3d_4c_0a_1x1_conv/kernel^AssignVariableOp_92*,
_output_shapes
:А†*
dtype0
—
Placeholder_93Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
b
AssignVariableOp_93AssignVariableOpConv3d_4c_1b_3x3_conv/kernelPlaceholder_93*
dtype0
С
ReadVariableOp_93ReadVariableOpConv3d_4c_1b_3x3_conv/kernel^AssignVariableOp_93*+
_output_shapes
:pа*
dtype0
—
Placeholder_94Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
b
AssignVariableOp_94AssignVariableOpConv3d_4c_2b_3x3_conv/kernelPlaceholder_94*
dtype0
Р
ReadVariableOp_94ReadVariableOpConv3d_4c_2b_3x3_conv/kernel^AssignVariableOp_94**
_output_shapes
:@*
dtype0
—
Placeholder_95Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
b
AssignVariableOp_95AssignVariableOpConv3d_4c_3b_1x1_conv/kernelPlaceholder_95*
dtype0
С
ReadVariableOp_95ReadVariableOpConv3d_4c_3b_1x1_conv/kernel^AssignVariableOp_95*+
_output_shapes
:А@*
dtype0
i
Placeholder_96Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
^
AssignVariableOp_96AssignVariableOpConv3d_4c_0a_1x1_bn/betaPlaceholder_96*
dtype0
}
ReadVariableOp_96ReadVariableOpConv3d_4c_0a_1x1_bn/beta^AssignVariableOp_96*
_output_shapes	
:†*
dtype0
i
Placeholder_97Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
e
AssignVariableOp_97AssignVariableOpConv3d_4c_0a_1x1_bn/moving_meanPlaceholder_97*
dtype0
Д
ReadVariableOp_97ReadVariableOpConv3d_4c_0a_1x1_bn/moving_mean^AssignVariableOp_97*
_output_shapes	
:†*
dtype0
i
Placeholder_98Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_98AssignVariableOp#Conv3d_4c_0a_1x1_bn/moving_variancePlaceholder_98*
dtype0
И
ReadVariableOp_98ReadVariableOp#Conv3d_4c_0a_1x1_bn/moving_variance^AssignVariableOp_98*
_output_shapes	
:†*
dtype0
i
Placeholder_99Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
^
AssignVariableOp_99AssignVariableOpConv3d_4c_1b_3x3_bn/betaPlaceholder_99*
dtype0
}
ReadVariableOp_99ReadVariableOpConv3d_4c_1b_3x3_bn/beta^AssignVariableOp_99*
_output_shapes	
:а*
dtype0
j
Placeholder_100Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_100AssignVariableOpConv3d_4c_1b_3x3_bn/moving_meanPlaceholder_100*
dtype0
Ж
ReadVariableOp_100ReadVariableOpConv3d_4c_1b_3x3_bn/moving_mean^AssignVariableOp_100*
_output_shapes	
:а*
dtype0
j
Placeholder_101Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_101AssignVariableOp#Conv3d_4c_1b_3x3_bn/moving_variancePlaceholder_101*
dtype0
К
ReadVariableOp_101ReadVariableOp#Conv3d_4c_1b_3x3_bn/moving_variance^AssignVariableOp_101*
_output_shapes	
:а*
dtype0
j
Placeholder_102Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_102AssignVariableOpConv3d_4c_2b_3x3_bn/betaPlaceholder_102*
dtype0
~
ReadVariableOp_102ReadVariableOpConv3d_4c_2b_3x3_bn/beta^AssignVariableOp_102*
_output_shapes
:@*
dtype0
j
Placeholder_103Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_103AssignVariableOpConv3d_4c_2b_3x3_bn/moving_meanPlaceholder_103*
dtype0
Е
ReadVariableOp_103ReadVariableOpConv3d_4c_2b_3x3_bn/moving_mean^AssignVariableOp_103*
_output_shapes
:@*
dtype0
j
Placeholder_104Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_104AssignVariableOp#Conv3d_4c_2b_3x3_bn/moving_variancePlaceholder_104*
dtype0
Й
ReadVariableOp_104ReadVariableOp#Conv3d_4c_2b_3x3_bn/moving_variance^AssignVariableOp_104*
_output_shapes
:@*
dtype0
j
Placeholder_105Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_105AssignVariableOpConv3d_4c_3b_1x1_bn/betaPlaceholder_105*
dtype0
~
ReadVariableOp_105ReadVariableOpConv3d_4c_3b_1x1_bn/beta^AssignVariableOp_105*
_output_shapes
:@*
dtype0
j
Placeholder_106Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_106AssignVariableOpConv3d_4c_3b_1x1_bn/moving_meanPlaceholder_106*
dtype0
Е
ReadVariableOp_106ReadVariableOpConv3d_4c_3b_1x1_bn/moving_mean^AssignVariableOp_106*
_output_shapes
:@*
dtype0
j
Placeholder_107Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_107AssignVariableOp#Conv3d_4c_3b_1x1_bn/moving_variancePlaceholder_107*
dtype0
Й
ReadVariableOp_107ReadVariableOp#Conv3d_4c_3b_1x1_bn/moving_variance^AssignVariableOp_107*
_output_shapes
:@*
dtype0
“
Placeholder_108Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_108AssignVariableOpConv3d_4d_1a_1x1_conv/kernelPlaceholder_108*
dtype0
Ф
ReadVariableOp_108ReadVariableOpConv3d_4d_1a_1x1_conv/kernel^AssignVariableOp_108*,
_output_shapes
:АА*
dtype0
“
Placeholder_109Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_109AssignVariableOpConv3d_4d_2a_1x1_conv/kernelPlaceholder_109*
dtype0
У
ReadVariableOp_109ReadVariableOpConv3d_4d_2a_1x1_conv/kernel^AssignVariableOp_109*+
_output_shapes
:А*
dtype0
j
Placeholder_110Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_110AssignVariableOpConv3d_4d_1a_1x1_bn/betaPlaceholder_110*
dtype0

ReadVariableOp_110ReadVariableOpConv3d_4d_1a_1x1_bn/beta^AssignVariableOp_110*
_output_shapes	
:А*
dtype0
j
Placeholder_111Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_111AssignVariableOpConv3d_4d_1a_1x1_bn/moving_meanPlaceholder_111*
dtype0
Ж
ReadVariableOp_111ReadVariableOpConv3d_4d_1a_1x1_bn/moving_mean^AssignVariableOp_111*
_output_shapes	
:А*
dtype0
j
Placeholder_112Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_112AssignVariableOp#Conv3d_4d_1a_1x1_bn/moving_variancePlaceholder_112*
dtype0
К
ReadVariableOp_112ReadVariableOp#Conv3d_4d_1a_1x1_bn/moving_variance^AssignVariableOp_112*
_output_shapes	
:А*
dtype0
j
Placeholder_113Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_113AssignVariableOpConv3d_4d_2a_1x1_bn/betaPlaceholder_113*
dtype0
~
ReadVariableOp_113ReadVariableOpConv3d_4d_2a_1x1_bn/beta^AssignVariableOp_113*
_output_shapes
:*
dtype0
j
Placeholder_114Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_114AssignVariableOpConv3d_4d_2a_1x1_bn/moving_meanPlaceholder_114*
dtype0
Е
ReadVariableOp_114ReadVariableOpConv3d_4d_2a_1x1_bn/moving_mean^AssignVariableOp_114*
_output_shapes
:*
dtype0
j
Placeholder_115Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_115AssignVariableOp#Conv3d_4d_2a_1x1_bn/moving_variancePlaceholder_115*
dtype0
Й
ReadVariableOp_115ReadVariableOp#Conv3d_4d_2a_1x1_bn/moving_variance^AssignVariableOp_115*
_output_shapes
:*
dtype0
“
Placeholder_116Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_116AssignVariableOpConv3d_4d_0a_1x1_conv/kernelPlaceholder_116*
dtype0
Ф
ReadVariableOp_116ReadVariableOpConv3d_4d_0a_1x1_conv/kernel^AssignVariableOp_116*,
_output_shapes
:АА*
dtype0
“
Placeholder_117Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_117AssignVariableOpConv3d_4d_1b_3x3_conv/kernelPlaceholder_117*
dtype0
Ф
ReadVariableOp_117ReadVariableOpConv3d_4d_1b_3x3_conv/kernel^AssignVariableOp_117*,
_output_shapes
:АА*
dtype0
“
Placeholder_118Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_118AssignVariableOpConv3d_4d_2b_3x3_conv/kernelPlaceholder_118*
dtype0
Т
ReadVariableOp_118ReadVariableOpConv3d_4d_2b_3x3_conv/kernel^AssignVariableOp_118**
_output_shapes
:@*
dtype0
“
Placeholder_119Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_119AssignVariableOpConv3d_4d_3b_1x1_conv/kernelPlaceholder_119*
dtype0
У
ReadVariableOp_119ReadVariableOpConv3d_4d_3b_1x1_conv/kernel^AssignVariableOp_119*+
_output_shapes
:А@*
dtype0
j
Placeholder_120Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_120AssignVariableOpConv3d_4d_0a_1x1_bn/betaPlaceholder_120*
dtype0

ReadVariableOp_120ReadVariableOpConv3d_4d_0a_1x1_bn/beta^AssignVariableOp_120*
_output_shapes	
:А*
dtype0
j
Placeholder_121Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_121AssignVariableOpConv3d_4d_0a_1x1_bn/moving_meanPlaceholder_121*
dtype0
Ж
ReadVariableOp_121ReadVariableOpConv3d_4d_0a_1x1_bn/moving_mean^AssignVariableOp_121*
_output_shapes	
:А*
dtype0
j
Placeholder_122Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_122AssignVariableOp#Conv3d_4d_0a_1x1_bn/moving_variancePlaceholder_122*
dtype0
К
ReadVariableOp_122ReadVariableOp#Conv3d_4d_0a_1x1_bn/moving_variance^AssignVariableOp_122*
_output_shapes	
:А*
dtype0
j
Placeholder_123Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_123AssignVariableOpConv3d_4d_1b_3x3_bn/betaPlaceholder_123*
dtype0

ReadVariableOp_123ReadVariableOpConv3d_4d_1b_3x3_bn/beta^AssignVariableOp_123*
_output_shapes	
:А*
dtype0
j
Placeholder_124Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_124AssignVariableOpConv3d_4d_1b_3x3_bn/moving_meanPlaceholder_124*
dtype0
Ж
ReadVariableOp_124ReadVariableOpConv3d_4d_1b_3x3_bn/moving_mean^AssignVariableOp_124*
_output_shapes	
:А*
dtype0
j
Placeholder_125Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_125AssignVariableOp#Conv3d_4d_1b_3x3_bn/moving_variancePlaceholder_125*
dtype0
К
ReadVariableOp_125ReadVariableOp#Conv3d_4d_1b_3x3_bn/moving_variance^AssignVariableOp_125*
_output_shapes	
:А*
dtype0
j
Placeholder_126Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_126AssignVariableOpConv3d_4d_2b_3x3_bn/betaPlaceholder_126*
dtype0
~
ReadVariableOp_126ReadVariableOpConv3d_4d_2b_3x3_bn/beta^AssignVariableOp_126*
_output_shapes
:@*
dtype0
j
Placeholder_127Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_127AssignVariableOpConv3d_4d_2b_3x3_bn/moving_meanPlaceholder_127*
dtype0
Е
ReadVariableOp_127ReadVariableOpConv3d_4d_2b_3x3_bn/moving_mean^AssignVariableOp_127*
_output_shapes
:@*
dtype0
j
Placeholder_128Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_128AssignVariableOp#Conv3d_4d_2b_3x3_bn/moving_variancePlaceholder_128*
dtype0
Й
ReadVariableOp_128ReadVariableOp#Conv3d_4d_2b_3x3_bn/moving_variance^AssignVariableOp_128*
_output_shapes
:@*
dtype0
j
Placeholder_129Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_129AssignVariableOpConv3d_4d_3b_1x1_bn/betaPlaceholder_129*
dtype0
~
ReadVariableOp_129ReadVariableOpConv3d_4d_3b_1x1_bn/beta^AssignVariableOp_129*
_output_shapes
:@*
dtype0
j
Placeholder_130Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_130AssignVariableOpConv3d_4d_3b_1x1_bn/moving_meanPlaceholder_130*
dtype0
Е
ReadVariableOp_130ReadVariableOpConv3d_4d_3b_1x1_bn/moving_mean^AssignVariableOp_130*
_output_shapes
:@*
dtype0
j
Placeholder_131Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_131AssignVariableOp#Conv3d_4d_3b_1x1_bn/moving_variancePlaceholder_131*
dtype0
Й
ReadVariableOp_131ReadVariableOp#Conv3d_4d_3b_1x1_bn/moving_variance^AssignVariableOp_131*
_output_shapes
:@*
dtype0
“
Placeholder_132Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_132AssignVariableOpConv3d_4e_1a_1x1_conv/kernelPlaceholder_132*
dtype0
Ф
ReadVariableOp_132ReadVariableOpConv3d_4e_1a_1x1_conv/kernel^AssignVariableOp_132*,
_output_shapes
:АР*
dtype0
“
Placeholder_133Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_133AssignVariableOpConv3d_4e_2a_1x1_conv/kernelPlaceholder_133*
dtype0
У
ReadVariableOp_133ReadVariableOpConv3d_4e_2a_1x1_conv/kernel^AssignVariableOp_133*+
_output_shapes
:А *
dtype0
j
Placeholder_134Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_134AssignVariableOpConv3d_4e_1a_1x1_bn/betaPlaceholder_134*
dtype0

ReadVariableOp_134ReadVariableOpConv3d_4e_1a_1x1_bn/beta^AssignVariableOp_134*
_output_shapes	
:Р*
dtype0
j
Placeholder_135Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_135AssignVariableOpConv3d_4e_1a_1x1_bn/moving_meanPlaceholder_135*
dtype0
Ж
ReadVariableOp_135ReadVariableOpConv3d_4e_1a_1x1_bn/moving_mean^AssignVariableOp_135*
_output_shapes	
:Р*
dtype0
j
Placeholder_136Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_136AssignVariableOp#Conv3d_4e_1a_1x1_bn/moving_variancePlaceholder_136*
dtype0
К
ReadVariableOp_136ReadVariableOp#Conv3d_4e_1a_1x1_bn/moving_variance^AssignVariableOp_136*
_output_shapes	
:Р*
dtype0
j
Placeholder_137Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_137AssignVariableOpConv3d_4e_2a_1x1_bn/betaPlaceholder_137*
dtype0
~
ReadVariableOp_137ReadVariableOpConv3d_4e_2a_1x1_bn/beta^AssignVariableOp_137*
_output_shapes
: *
dtype0
j
Placeholder_138Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_138AssignVariableOpConv3d_4e_2a_1x1_bn/moving_meanPlaceholder_138*
dtype0
Е
ReadVariableOp_138ReadVariableOpConv3d_4e_2a_1x1_bn/moving_mean^AssignVariableOp_138*
_output_shapes
: *
dtype0
j
Placeholder_139Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_139AssignVariableOp#Conv3d_4e_2a_1x1_bn/moving_variancePlaceholder_139*
dtype0
Й
ReadVariableOp_139ReadVariableOp#Conv3d_4e_2a_1x1_bn/moving_variance^AssignVariableOp_139*
_output_shapes
: *
dtype0
“
Placeholder_140Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_140AssignVariableOpConv3d_4e_0a_1x1_conv/kernelPlaceholder_140*
dtype0
У
ReadVariableOp_140ReadVariableOpConv3d_4e_0a_1x1_conv/kernel^AssignVariableOp_140*+
_output_shapes
:Аp*
dtype0
“
Placeholder_141Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_141AssignVariableOpConv3d_4e_1b_3x3_conv/kernelPlaceholder_141*
dtype0
Ф
ReadVariableOp_141ReadVariableOpConv3d_4e_1b_3x3_conv/kernel^AssignVariableOp_141*,
_output_shapes
:Р†*
dtype0
“
Placeholder_142Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_142AssignVariableOpConv3d_4e_2b_3x3_conv/kernelPlaceholder_142*
dtype0
Т
ReadVariableOp_142ReadVariableOpConv3d_4e_2b_3x3_conv/kernel^AssignVariableOp_142**
_output_shapes
: @*
dtype0
“
Placeholder_143Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_143AssignVariableOpConv3d_4e_3b_1x1_conv/kernelPlaceholder_143*
dtype0
У
ReadVariableOp_143ReadVariableOpConv3d_4e_3b_1x1_conv/kernel^AssignVariableOp_143*+
_output_shapes
:А@*
dtype0
j
Placeholder_144Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_144AssignVariableOpConv3d_4e_0a_1x1_bn/betaPlaceholder_144*
dtype0
~
ReadVariableOp_144ReadVariableOpConv3d_4e_0a_1x1_bn/beta^AssignVariableOp_144*
_output_shapes
:p*
dtype0
j
Placeholder_145Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_145AssignVariableOpConv3d_4e_0a_1x1_bn/moving_meanPlaceholder_145*
dtype0
Е
ReadVariableOp_145ReadVariableOpConv3d_4e_0a_1x1_bn/moving_mean^AssignVariableOp_145*
_output_shapes
:p*
dtype0
j
Placeholder_146Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_146AssignVariableOp#Conv3d_4e_0a_1x1_bn/moving_variancePlaceholder_146*
dtype0
Й
ReadVariableOp_146ReadVariableOp#Conv3d_4e_0a_1x1_bn/moving_variance^AssignVariableOp_146*
_output_shapes
:p*
dtype0
j
Placeholder_147Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_147AssignVariableOpConv3d_4e_1b_3x3_bn/betaPlaceholder_147*
dtype0

ReadVariableOp_147ReadVariableOpConv3d_4e_1b_3x3_bn/beta^AssignVariableOp_147*
_output_shapes	
:†*
dtype0
j
Placeholder_148Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_148AssignVariableOpConv3d_4e_1b_3x3_bn/moving_meanPlaceholder_148*
dtype0
Ж
ReadVariableOp_148ReadVariableOpConv3d_4e_1b_3x3_bn/moving_mean^AssignVariableOp_148*
_output_shapes	
:†*
dtype0
j
Placeholder_149Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_149AssignVariableOp#Conv3d_4e_1b_3x3_bn/moving_variancePlaceholder_149*
dtype0
К
ReadVariableOp_149ReadVariableOp#Conv3d_4e_1b_3x3_bn/moving_variance^AssignVariableOp_149*
_output_shapes	
:†*
dtype0
j
Placeholder_150Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_150AssignVariableOpConv3d_4e_2b_3x3_bn/betaPlaceholder_150*
dtype0
~
ReadVariableOp_150ReadVariableOpConv3d_4e_2b_3x3_bn/beta^AssignVariableOp_150*
_output_shapes
:@*
dtype0
j
Placeholder_151Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_151AssignVariableOpConv3d_4e_2b_3x3_bn/moving_meanPlaceholder_151*
dtype0
Е
ReadVariableOp_151ReadVariableOpConv3d_4e_2b_3x3_bn/moving_mean^AssignVariableOp_151*
_output_shapes
:@*
dtype0
j
Placeholder_152Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_152AssignVariableOp#Conv3d_4e_2b_3x3_bn/moving_variancePlaceholder_152*
dtype0
Й
ReadVariableOp_152ReadVariableOp#Conv3d_4e_2b_3x3_bn/moving_variance^AssignVariableOp_152*
_output_shapes
:@*
dtype0
j
Placeholder_153Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_153AssignVariableOpConv3d_4e_3b_1x1_bn/betaPlaceholder_153*
dtype0
~
ReadVariableOp_153ReadVariableOpConv3d_4e_3b_1x1_bn/beta^AssignVariableOp_153*
_output_shapes
:@*
dtype0
j
Placeholder_154Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_154AssignVariableOpConv3d_4e_3b_1x1_bn/moving_meanPlaceholder_154*
dtype0
Е
ReadVariableOp_154ReadVariableOpConv3d_4e_3b_1x1_bn/moving_mean^AssignVariableOp_154*
_output_shapes
:@*
dtype0
j
Placeholder_155Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_155AssignVariableOp#Conv3d_4e_3b_1x1_bn/moving_variancePlaceholder_155*
dtype0
Й
ReadVariableOp_155ReadVariableOp#Conv3d_4e_3b_1x1_bn/moving_variance^AssignVariableOp_155*
_output_shapes
:@*
dtype0
“
Placeholder_156Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_156AssignVariableOpConv3d_4f_1a_1x1_conv/kernelPlaceholder_156*
dtype0
Ф
ReadVariableOp_156ReadVariableOpConv3d_4f_1a_1x1_conv/kernel^AssignVariableOp_156*,
_output_shapes
:Р†*
dtype0
“
Placeholder_157Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_157AssignVariableOpConv3d_4f_2a_1x1_conv/kernelPlaceholder_157*
dtype0
У
ReadVariableOp_157ReadVariableOpConv3d_4f_2a_1x1_conv/kernel^AssignVariableOp_157*+
_output_shapes
:Р *
dtype0
j
Placeholder_158Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_158AssignVariableOpConv3d_4f_1a_1x1_bn/betaPlaceholder_158*
dtype0

ReadVariableOp_158ReadVariableOpConv3d_4f_1a_1x1_bn/beta^AssignVariableOp_158*
_output_shapes	
:†*
dtype0
j
Placeholder_159Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_159AssignVariableOpConv3d_4f_1a_1x1_bn/moving_meanPlaceholder_159*
dtype0
Ж
ReadVariableOp_159ReadVariableOpConv3d_4f_1a_1x1_bn/moving_mean^AssignVariableOp_159*
_output_shapes	
:†*
dtype0
j
Placeholder_160Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_160AssignVariableOp#Conv3d_4f_1a_1x1_bn/moving_variancePlaceholder_160*
dtype0
К
ReadVariableOp_160ReadVariableOp#Conv3d_4f_1a_1x1_bn/moving_variance^AssignVariableOp_160*
_output_shapes	
:†*
dtype0
j
Placeholder_161Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_161AssignVariableOpConv3d_4f_2a_1x1_bn/betaPlaceholder_161*
dtype0
~
ReadVariableOp_161ReadVariableOpConv3d_4f_2a_1x1_bn/beta^AssignVariableOp_161*
_output_shapes
: *
dtype0
j
Placeholder_162Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_162AssignVariableOpConv3d_4f_2a_1x1_bn/moving_meanPlaceholder_162*
dtype0
Е
ReadVariableOp_162ReadVariableOpConv3d_4f_2a_1x1_bn/moving_mean^AssignVariableOp_162*
_output_shapes
: *
dtype0
j
Placeholder_163Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_163AssignVariableOp#Conv3d_4f_2a_1x1_bn/moving_variancePlaceholder_163*
dtype0
Й
ReadVariableOp_163ReadVariableOp#Conv3d_4f_2a_1x1_bn/moving_variance^AssignVariableOp_163*
_output_shapes
: *
dtype0
“
Placeholder_164Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_164AssignVariableOpConv3d_4f_0a_1x1_conv/kernelPlaceholder_164*
dtype0
Ф
ReadVariableOp_164ReadVariableOpConv3d_4f_0a_1x1_conv/kernel^AssignVariableOp_164*,
_output_shapes
:РА*
dtype0
“
Placeholder_165Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_165AssignVariableOpConv3d_4f_1b_3x3_conv/kernelPlaceholder_165*
dtype0
Ф
ReadVariableOp_165ReadVariableOpConv3d_4f_1b_3x3_conv/kernel^AssignVariableOp_165*,
_output_shapes
:†ј*
dtype0
“
Placeholder_166Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_166AssignVariableOpConv3d_4f_2b_3x3_conv/kernelPlaceholder_166*
dtype0
У
ReadVariableOp_166ReadVariableOpConv3d_4f_2b_3x3_conv/kernel^AssignVariableOp_166*+
_output_shapes
: А*
dtype0
“
Placeholder_167Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_167AssignVariableOpConv3d_4f_3b_1x1_conv/kernelPlaceholder_167*
dtype0
Ф
ReadVariableOp_167ReadVariableOpConv3d_4f_3b_1x1_conv/kernel^AssignVariableOp_167*,
_output_shapes
:РА*
dtype0
j
Placeholder_168Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_168AssignVariableOpConv3d_4f_0a_1x1_bn/betaPlaceholder_168*
dtype0

ReadVariableOp_168ReadVariableOpConv3d_4f_0a_1x1_bn/beta^AssignVariableOp_168*
_output_shapes	
:А*
dtype0
j
Placeholder_169Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_169AssignVariableOpConv3d_4f_0a_1x1_bn/moving_meanPlaceholder_169*
dtype0
Ж
ReadVariableOp_169ReadVariableOpConv3d_4f_0a_1x1_bn/moving_mean^AssignVariableOp_169*
_output_shapes	
:А*
dtype0
j
Placeholder_170Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_170AssignVariableOp#Conv3d_4f_0a_1x1_bn/moving_variancePlaceholder_170*
dtype0
К
ReadVariableOp_170ReadVariableOp#Conv3d_4f_0a_1x1_bn/moving_variance^AssignVariableOp_170*
_output_shapes	
:А*
dtype0
j
Placeholder_171Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_171AssignVariableOpConv3d_4f_1b_3x3_bn/betaPlaceholder_171*
dtype0

ReadVariableOp_171ReadVariableOpConv3d_4f_1b_3x3_bn/beta^AssignVariableOp_171*
_output_shapes	
:ј*
dtype0
j
Placeholder_172Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_172AssignVariableOpConv3d_4f_1b_3x3_bn/moving_meanPlaceholder_172*
dtype0
Ж
ReadVariableOp_172ReadVariableOpConv3d_4f_1b_3x3_bn/moving_mean^AssignVariableOp_172*
_output_shapes	
:ј*
dtype0
j
Placeholder_173Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_173AssignVariableOp#Conv3d_4f_1b_3x3_bn/moving_variancePlaceholder_173*
dtype0
К
ReadVariableOp_173ReadVariableOp#Conv3d_4f_1b_3x3_bn/moving_variance^AssignVariableOp_173*
_output_shapes	
:ј*
dtype0
j
Placeholder_174Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_174AssignVariableOpConv3d_4f_2b_3x3_bn/betaPlaceholder_174*
dtype0

ReadVariableOp_174ReadVariableOpConv3d_4f_2b_3x3_bn/beta^AssignVariableOp_174*
_output_shapes	
:А*
dtype0
j
Placeholder_175Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_175AssignVariableOpConv3d_4f_2b_3x3_bn/moving_meanPlaceholder_175*
dtype0
Ж
ReadVariableOp_175ReadVariableOpConv3d_4f_2b_3x3_bn/moving_mean^AssignVariableOp_175*
_output_shapes	
:А*
dtype0
j
Placeholder_176Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_176AssignVariableOp#Conv3d_4f_2b_3x3_bn/moving_variancePlaceholder_176*
dtype0
К
ReadVariableOp_176ReadVariableOp#Conv3d_4f_2b_3x3_bn/moving_variance^AssignVariableOp_176*
_output_shapes	
:А*
dtype0
j
Placeholder_177Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_177AssignVariableOpConv3d_4f_3b_1x1_bn/betaPlaceholder_177*
dtype0

ReadVariableOp_177ReadVariableOpConv3d_4f_3b_1x1_bn/beta^AssignVariableOp_177*
_output_shapes	
:А*
dtype0
j
Placeholder_178Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_178AssignVariableOpConv3d_4f_3b_1x1_bn/moving_meanPlaceholder_178*
dtype0
Ж
ReadVariableOp_178ReadVariableOpConv3d_4f_3b_1x1_bn/moving_mean^AssignVariableOp_178*
_output_shapes	
:А*
dtype0
j
Placeholder_179Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_179AssignVariableOp#Conv3d_4f_3b_1x1_bn/moving_variancePlaceholder_179*
dtype0
К
ReadVariableOp_179ReadVariableOp#Conv3d_4f_3b_1x1_bn/moving_variance^AssignVariableOp_179*
_output_shapes	
:А*
dtype0
“
Placeholder_180Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_180AssignVariableOpConv3d_5b_1a_1x1_conv/kernelPlaceholder_180*
dtype0
Ф
ReadVariableOp_180ReadVariableOpConv3d_5b_1a_1x1_conv/kernel^AssignVariableOp_180*,
_output_shapes
:ј†*
dtype0
“
Placeholder_181Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_181AssignVariableOpConv3d_5b_2a_1x1_conv/kernelPlaceholder_181*
dtype0
У
ReadVariableOp_181ReadVariableOpConv3d_5b_2a_1x1_conv/kernel^AssignVariableOp_181*+
_output_shapes
:ј *
dtype0
j
Placeholder_182Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_182AssignVariableOpConv3d_5b_1a_1x1_bn/betaPlaceholder_182*
dtype0

ReadVariableOp_182ReadVariableOpConv3d_5b_1a_1x1_bn/beta^AssignVariableOp_182*
_output_shapes	
:†*
dtype0
j
Placeholder_183Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_183AssignVariableOpConv3d_5b_1a_1x1_bn/moving_meanPlaceholder_183*
dtype0
Ж
ReadVariableOp_183ReadVariableOpConv3d_5b_1a_1x1_bn/moving_mean^AssignVariableOp_183*
_output_shapes	
:†*
dtype0
j
Placeholder_184Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_184AssignVariableOp#Conv3d_5b_1a_1x1_bn/moving_variancePlaceholder_184*
dtype0
К
ReadVariableOp_184ReadVariableOp#Conv3d_5b_1a_1x1_bn/moving_variance^AssignVariableOp_184*
_output_shapes	
:†*
dtype0
j
Placeholder_185Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_185AssignVariableOpConv3d_5b_2a_1x1_bn/betaPlaceholder_185*
dtype0
~
ReadVariableOp_185ReadVariableOpConv3d_5b_2a_1x1_bn/beta^AssignVariableOp_185*
_output_shapes
: *
dtype0
j
Placeholder_186Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_186AssignVariableOpConv3d_5b_2a_1x1_bn/moving_meanPlaceholder_186*
dtype0
Е
ReadVariableOp_186ReadVariableOpConv3d_5b_2a_1x1_bn/moving_mean^AssignVariableOp_186*
_output_shapes
: *
dtype0
j
Placeholder_187Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_187AssignVariableOp#Conv3d_5b_2a_1x1_bn/moving_variancePlaceholder_187*
dtype0
Й
ReadVariableOp_187ReadVariableOp#Conv3d_5b_2a_1x1_bn/moving_variance^AssignVariableOp_187*
_output_shapes
: *
dtype0
“
Placeholder_188Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_188AssignVariableOpConv3d_5b_0a_1x1_conv/kernelPlaceholder_188*
dtype0
Ф
ReadVariableOp_188ReadVariableOpConv3d_5b_0a_1x1_conv/kernel^AssignVariableOp_188*,
_output_shapes
:јА*
dtype0
“
Placeholder_189Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_189AssignVariableOpConv3d_5b_1b_3x3_conv/kernelPlaceholder_189*
dtype0
Ф
ReadVariableOp_189ReadVariableOpConv3d_5b_1b_3x3_conv/kernel^AssignVariableOp_189*,
_output_shapes
:†ј*
dtype0
“
Placeholder_190Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_190AssignVariableOpConv3d_5b_2b_3x3_conv/kernelPlaceholder_190*
dtype0
У
ReadVariableOp_190ReadVariableOpConv3d_5b_2b_3x3_conv/kernel^AssignVariableOp_190*+
_output_shapes
: А*
dtype0
“
Placeholder_191Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_191AssignVariableOpConv3d_5b_3b_1x1_conv/kernelPlaceholder_191*
dtype0
Ф
ReadVariableOp_191ReadVariableOpConv3d_5b_3b_1x1_conv/kernel^AssignVariableOp_191*,
_output_shapes
:јА*
dtype0
j
Placeholder_192Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_192AssignVariableOpConv3d_5b_0a_1x1_bn/betaPlaceholder_192*
dtype0

ReadVariableOp_192ReadVariableOpConv3d_5b_0a_1x1_bn/beta^AssignVariableOp_192*
_output_shapes	
:А*
dtype0
j
Placeholder_193Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_193AssignVariableOpConv3d_5b_0a_1x1_bn/moving_meanPlaceholder_193*
dtype0
Ж
ReadVariableOp_193ReadVariableOpConv3d_5b_0a_1x1_bn/moving_mean^AssignVariableOp_193*
_output_shapes	
:А*
dtype0
j
Placeholder_194Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_194AssignVariableOp#Conv3d_5b_0a_1x1_bn/moving_variancePlaceholder_194*
dtype0
К
ReadVariableOp_194ReadVariableOp#Conv3d_5b_0a_1x1_bn/moving_variance^AssignVariableOp_194*
_output_shapes	
:А*
dtype0
j
Placeholder_195Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_195AssignVariableOpConv3d_5b_1b_3x3_bn/betaPlaceholder_195*
dtype0

ReadVariableOp_195ReadVariableOpConv3d_5b_1b_3x3_bn/beta^AssignVariableOp_195*
_output_shapes	
:ј*
dtype0
j
Placeholder_196Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_196AssignVariableOpConv3d_5b_1b_3x3_bn/moving_meanPlaceholder_196*
dtype0
Ж
ReadVariableOp_196ReadVariableOpConv3d_5b_1b_3x3_bn/moving_mean^AssignVariableOp_196*
_output_shapes	
:ј*
dtype0
j
Placeholder_197Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_197AssignVariableOp#Conv3d_5b_1b_3x3_bn/moving_variancePlaceholder_197*
dtype0
К
ReadVariableOp_197ReadVariableOp#Conv3d_5b_1b_3x3_bn/moving_variance^AssignVariableOp_197*
_output_shapes	
:ј*
dtype0
j
Placeholder_198Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_198AssignVariableOpConv3d_5b_2b_3x3_bn/betaPlaceholder_198*
dtype0

ReadVariableOp_198ReadVariableOpConv3d_5b_2b_3x3_bn/beta^AssignVariableOp_198*
_output_shapes	
:А*
dtype0
j
Placeholder_199Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_199AssignVariableOpConv3d_5b_2b_3x3_bn/moving_meanPlaceholder_199*
dtype0
Ж
ReadVariableOp_199ReadVariableOpConv3d_5b_2b_3x3_bn/moving_mean^AssignVariableOp_199*
_output_shapes	
:А*
dtype0
j
Placeholder_200Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_200AssignVariableOp#Conv3d_5b_2b_3x3_bn/moving_variancePlaceholder_200*
dtype0
К
ReadVariableOp_200ReadVariableOp#Conv3d_5b_2b_3x3_bn/moving_variance^AssignVariableOp_200*
_output_shapes	
:А*
dtype0
j
Placeholder_201Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_201AssignVariableOpConv3d_5b_3b_1x1_bn/betaPlaceholder_201*
dtype0

ReadVariableOp_201ReadVariableOpConv3d_5b_3b_1x1_bn/beta^AssignVariableOp_201*
_output_shapes	
:А*
dtype0
j
Placeholder_202Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_202AssignVariableOpConv3d_5b_3b_1x1_bn/moving_meanPlaceholder_202*
dtype0
Ж
ReadVariableOp_202ReadVariableOpConv3d_5b_3b_1x1_bn/moving_mean^AssignVariableOp_202*
_output_shapes	
:А*
dtype0
j
Placeholder_203Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_203AssignVariableOp#Conv3d_5b_3b_1x1_bn/moving_variancePlaceholder_203*
dtype0
К
ReadVariableOp_203ReadVariableOp#Conv3d_5b_3b_1x1_bn/moving_variance^AssignVariableOp_203*
_output_shapes	
:А*
dtype0
“
Placeholder_204Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_204AssignVariableOpConv3d_5c_1a_1x1_conv/kernelPlaceholder_204*
dtype0
Ф
ReadVariableOp_204ReadVariableOpConv3d_5c_1a_1x1_conv/kernel^AssignVariableOp_204*,
_output_shapes
:јј*
dtype0
“
Placeholder_205Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_205AssignVariableOpConv3d_5c_2a_1x1_conv/kernelPlaceholder_205*
dtype0
У
ReadVariableOp_205ReadVariableOpConv3d_5c_2a_1x1_conv/kernel^AssignVariableOp_205*+
_output_shapes
:ј0*
dtype0
j
Placeholder_206Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_206AssignVariableOpConv3d_5c_1a_1x1_bn/betaPlaceholder_206*
dtype0

ReadVariableOp_206ReadVariableOpConv3d_5c_1a_1x1_bn/beta^AssignVariableOp_206*
_output_shapes	
:ј*
dtype0
j
Placeholder_207Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_207AssignVariableOpConv3d_5c_1a_1x1_bn/moving_meanPlaceholder_207*
dtype0
Ж
ReadVariableOp_207ReadVariableOpConv3d_5c_1a_1x1_bn/moving_mean^AssignVariableOp_207*
_output_shapes	
:ј*
dtype0
j
Placeholder_208Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_208AssignVariableOp#Conv3d_5c_1a_1x1_bn/moving_variancePlaceholder_208*
dtype0
К
ReadVariableOp_208ReadVariableOp#Conv3d_5c_1a_1x1_bn/moving_variance^AssignVariableOp_208*
_output_shapes	
:ј*
dtype0
j
Placeholder_209Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_209AssignVariableOpConv3d_5c_2a_1x1_bn/betaPlaceholder_209*
dtype0
~
ReadVariableOp_209ReadVariableOpConv3d_5c_2a_1x1_bn/beta^AssignVariableOp_209*
_output_shapes
:0*
dtype0
j
Placeholder_210Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_210AssignVariableOpConv3d_5c_2a_1x1_bn/moving_meanPlaceholder_210*
dtype0
Е
ReadVariableOp_210ReadVariableOpConv3d_5c_2a_1x1_bn/moving_mean^AssignVariableOp_210*
_output_shapes
:0*
dtype0
j
Placeholder_211Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_211AssignVariableOp#Conv3d_5c_2a_1x1_bn/moving_variancePlaceholder_211*
dtype0
Й
ReadVariableOp_211ReadVariableOp#Conv3d_5c_2a_1x1_bn/moving_variance^AssignVariableOp_211*
_output_shapes
:0*
dtype0
“
Placeholder_212Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_212AssignVariableOpConv3d_5c_0a_1x1_conv/kernelPlaceholder_212*
dtype0
Ф
ReadVariableOp_212ReadVariableOpConv3d_5c_0a_1x1_conv/kernel^AssignVariableOp_212*,
_output_shapes
:јА*
dtype0
“
Placeholder_213Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_213AssignVariableOpConv3d_5c_1b_3x3_conv/kernelPlaceholder_213*
dtype0
Ф
ReadVariableOp_213ReadVariableOpConv3d_5c_1b_3x3_conv/kernel^AssignVariableOp_213*,
_output_shapes
:јА*
dtype0
“
Placeholder_214Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_214AssignVariableOpConv3d_5c_2b_3x3_conv/kernelPlaceholder_214*
dtype0
У
ReadVariableOp_214ReadVariableOpConv3d_5c_2b_3x3_conv/kernel^AssignVariableOp_214*+
_output_shapes
:0А*
dtype0
“
Placeholder_215Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
d
AssignVariableOp_215AssignVariableOpConv3d_5c_3b_1x1_conv/kernelPlaceholder_215*
dtype0
Ф
ReadVariableOp_215ReadVariableOpConv3d_5c_3b_1x1_conv/kernel^AssignVariableOp_215*,
_output_shapes
:јА*
dtype0
j
Placeholder_216Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_216AssignVariableOpConv3d_5c_0a_1x1_bn/betaPlaceholder_216*
dtype0

ReadVariableOp_216ReadVariableOpConv3d_5c_0a_1x1_bn/beta^AssignVariableOp_216*
_output_shapes	
:А*
dtype0
j
Placeholder_217Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_217AssignVariableOpConv3d_5c_0a_1x1_bn/moving_meanPlaceholder_217*
dtype0
Ж
ReadVariableOp_217ReadVariableOpConv3d_5c_0a_1x1_bn/moving_mean^AssignVariableOp_217*
_output_shapes	
:А*
dtype0
j
Placeholder_218Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_218AssignVariableOp#Conv3d_5c_0a_1x1_bn/moving_variancePlaceholder_218*
dtype0
К
ReadVariableOp_218ReadVariableOp#Conv3d_5c_0a_1x1_bn/moving_variance^AssignVariableOp_218*
_output_shapes	
:А*
dtype0
j
Placeholder_219Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_219AssignVariableOpConv3d_5c_1b_3x3_bn/betaPlaceholder_219*
dtype0

ReadVariableOp_219ReadVariableOpConv3d_5c_1b_3x3_bn/beta^AssignVariableOp_219*
_output_shapes	
:А*
dtype0
j
Placeholder_220Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_220AssignVariableOpConv3d_5c_1b_3x3_bn/moving_meanPlaceholder_220*
dtype0
Ж
ReadVariableOp_220ReadVariableOpConv3d_5c_1b_3x3_bn/moving_mean^AssignVariableOp_220*
_output_shapes	
:А*
dtype0
j
Placeholder_221Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_221AssignVariableOp#Conv3d_5c_1b_3x3_bn/moving_variancePlaceholder_221*
dtype0
К
ReadVariableOp_221ReadVariableOp#Conv3d_5c_1b_3x3_bn/moving_variance^AssignVariableOp_221*
_output_shapes	
:А*
dtype0
j
Placeholder_222Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_222AssignVariableOpConv3d_5c_2b_3x3_bn/betaPlaceholder_222*
dtype0

ReadVariableOp_222ReadVariableOpConv3d_5c_2b_3x3_bn/beta^AssignVariableOp_222*
_output_shapes	
:А*
dtype0
j
Placeholder_223Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_223AssignVariableOpConv3d_5c_2b_3x3_bn/moving_meanPlaceholder_223*
dtype0
Ж
ReadVariableOp_223ReadVariableOpConv3d_5c_2b_3x3_bn/moving_mean^AssignVariableOp_223*
_output_shapes	
:А*
dtype0
j
Placeholder_224Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_224AssignVariableOp#Conv3d_5c_2b_3x3_bn/moving_variancePlaceholder_224*
dtype0
К
ReadVariableOp_224ReadVariableOp#Conv3d_5c_2b_3x3_bn/moving_variance^AssignVariableOp_224*
_output_shapes	
:А*
dtype0
j
Placeholder_225Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
`
AssignVariableOp_225AssignVariableOpConv3d_5c_3b_1x1_bn/betaPlaceholder_225*
dtype0

ReadVariableOp_225ReadVariableOpConv3d_5c_3b_1x1_bn/beta^AssignVariableOp_225*
_output_shapes	
:А*
dtype0
j
Placeholder_226Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
g
AssignVariableOp_226AssignVariableOpConv3d_5c_3b_1x1_bn/moving_meanPlaceholder_226*
dtype0
Ж
ReadVariableOp_226ReadVariableOpConv3d_5c_3b_1x1_bn/moving_mean^AssignVariableOp_226*
_output_shapes	
:А*
dtype0
j
Placeholder_227Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
k
AssignVariableOp_227AssignVariableOp#Conv3d_5c_3b_1x1_bn/moving_variancePlaceholder_227*
dtype0
К
ReadVariableOp_227ReadVariableOp#Conv3d_5c_3b_1x1_bn/moving_variance^AssignVariableOp_227*
_output_shapes	
:А*
dtype0
“
Placeholder_228Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
a
AssignVariableOp_228AssignVariableOpConv3d_6a_1x1_conv/kernelPlaceholder_228*
dtype0
Р
ReadVariableOp_228ReadVariableOpConv3d_6a_1x1_conv/kernel^AssignVariableOp_228*+
_output_shapes
:А2*
dtype0
j
Placeholder_229Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
_
AssignVariableOp_229AssignVariableOpConv3d_6a_1x1_conv/biasPlaceholder_229*
dtype0
}
ReadVariableOp_229ReadVariableOpConv3d_6a_1x1_conv/bias^AssignVariableOp_229*
_output_shapes
:2*
dtype0
Д
Placeholder_230Placeholder*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
dtype0*%
shape:€€€€€€€€€€€€€€€€€€
T
AssignVariableOp_230AssignVariableOpdense/kernelPlaceholder_230*
dtype0
v
ReadVariableOp_230ReadVariableOpdense/kernel^AssignVariableOp_230*
_output_shapes

:d2*
dtype0
j
Placeholder_231Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
R
AssignVariableOp_231AssignVariableOp
dense/biasPlaceholder_231*
dtype0
p
ReadVariableOp_231ReadVariableOp
dense/bias^AssignVariableOp_231*
_output_shapes
:2*
dtype0
^
VarIsInitializedOpVarIsInitializedOpConv3d_3c_2b_3x3_conv/kernel*
_output_shapes
: 
c
VarIsInitializedOp_1VarIsInitializedOpConv3d_4f_3b_1x1_bn/moving_mean*
_output_shapes
: 
c
VarIsInitializedOp_2VarIsInitializedOpConv3d_5b_1a_1x1_bn/moving_mean*
_output_shapes
: 
g
VarIsInitializedOp_3VarIsInitializedOp#Conv3d_5b_0a_1x1_bn/moving_variance*
_output_shapes
: 
\
VarIsInitializedOp_4VarIsInitializedOpConv3d_5b_1b_3x3_bn/beta*
_output_shapes
: 
`
VarIsInitializedOp_5VarIsInitializedOpConv3d_3b_0a_1x1_conv/kernel*
_output_shapes
: 
c
VarIsInitializedOp_6VarIsInitializedOpConv3d_3b_1b_3x3_bn/moving_mean*
_output_shapes
: 
c
VarIsInitializedOp_7VarIsInitializedOpConv3d_4b_1b_3x3_bn/moving_mean*
_output_shapes
: 
`
VarIsInitializedOp_8VarIsInitializedOpConv3d_4d_2a_1x1_conv/kernel*
_output_shapes
: 
c
VarIsInitializedOp_9VarIsInitializedOpConv3d_4d_2a_1x1_bn/moving_mean*
_output_shapes
: 
d
VarIsInitializedOp_10VarIsInitializedOpConv3d_4e_1a_1x1_bn/moving_mean*
_output_shapes
: 
d
VarIsInitializedOp_11VarIsInitializedOpConv3d_4e_2b_3x3_bn/moving_mean*
_output_shapes
: 
d
VarIsInitializedOp_12VarIsInitializedOpConv3d_4f_2b_3x3_bn/moving_mean*
_output_shapes
: 
]
VarIsInitializedOp_13VarIsInitializedOpConv3d_3b_3b_1x1_bn/beta*
_output_shapes
: 
h
VarIsInitializedOp_14VarIsInitializedOp#Conv3d_4b_3b_1x1_bn/moving_variance*
_output_shapes
: 
a
VarIsInitializedOp_15VarIsInitializedOpConv3d_4c_0a_1x1_conv/kernel*
_output_shapes
: 
h
VarIsInitializedOp_16VarIsInitializedOp#Conv3d_5b_1a_1x1_bn/moving_variance*
_output_shapes
: 
d
VarIsInitializedOp_17VarIsInitializedOpConv3d_5b_3b_1x1_bn/moving_mean*
_output_shapes
: 
d
VarIsInitializedOp_18VarIsInitializedOpConv3d_5c_0a_1x1_bn/moving_mean*
_output_shapes
: 
]
VarIsInitializedOp_19VarIsInitializedOpConv3d_5c_3b_1x1_bn/beta*
_output_shapes
: 
a
VarIsInitializedOp_20VarIsInitializedOpConv3d_3b_2a_1x1_conv/kernel*
_output_shapes
: 
a
VarIsInitializedOp_21VarIsInitializedOpConv3d_3c_1a_1x1_conv/kernel*
_output_shapes
: 
h
VarIsInitializedOp_22VarIsInitializedOp#Conv3d_4c_2a_1x1_bn/moving_variance*
_output_shapes
: 
h
VarIsInitializedOp_23VarIsInitializedOp#Conv3d_4d_0a_1x1_bn/moving_variance*
_output_shapes
: 
]
VarIsInitializedOp_24VarIsInitializedOpConv3d_4e_1a_1x1_bn/beta*
_output_shapes
: 
]
VarIsInitializedOp_25VarIsInitializedOpConv3d_4e_2a_1x1_bn/beta*
_output_shapes
: 
a
VarIsInitializedOp_26VarIsInitializedOpConv3d_4e_0a_1x1_conv/kernel*
_output_shapes
: 
a
VarIsInitializedOp_27VarIsInitializedOpConv3d_4f_1a_1x1_conv/kernel*
_output_shapes
: 
^
VarIsInitializedOp_28VarIsInitializedOpConv3d_6a_1x1_conv/kernel*
_output_shapes
: 
h
VarIsInitializedOp_29VarIsInitializedOp#Conv3d_3c_1b_3x3_bn/moving_variance*
_output_shapes
: 
d
VarIsInitializedOp_30VarIsInitializedOpConv3d_4e_0a_1x1_bn/moving_mean*
_output_shapes
: 
h
VarIsInitializedOp_31VarIsInitializedOp#Conv3d_4f_2a_1x1_bn/moving_variance*
_output_shapes
: 
a
VarIsInitializedOp_32VarIsInitializedOpConv3d_5c_1a_1x1_conv/kernel*
_output_shapes
: 
h
VarIsInitializedOp_33VarIsInitializedOp#Conv3d_5c_0a_1x1_bn/moving_variance*
_output_shapes
: 
]
VarIsInitializedOp_34VarIsInitializedOpConv3d_3b_1a_1x1_bn/beta*
_output_shapes
: 
e
VarIsInitializedOp_35VarIsInitializedOp Conv3d_1a_7x7_bn/moving_variance*
_output_shapes
: 
h
VarIsInitializedOp_36VarIsInitializedOp#Conv3d_3b_1b_3x3_bn/moving_variance*
_output_shapes
: 
d
VarIsInitializedOp_37VarIsInitializedOpConv3d_3b_3b_1x1_bn/moving_mean*
_output_shapes
: 
d
VarIsInitializedOp_38VarIsInitializedOpConv3d_3c_1a_1x1_bn/moving_mean*
_output_shapes
: 
]
VarIsInitializedOp_39VarIsInitializedOpConv3d_4b_1b_3x3_bn/beta*
_output_shapes
: 
a
VarIsInitializedOp_40VarIsInitializedOpConv3d_4c_3b_1x1_conv/kernel*
_output_shapes
: 
d
VarIsInitializedOp_41VarIsInitializedOpConv3d_4c_2b_3x3_bn/moving_mean*
_output_shapes
: 
h
VarIsInitializedOp_42VarIsInitializedOp#Conv3d_4d_2a_1x1_bn/moving_variance*
_output_shapes
: 
h
VarIsInitializedOp_43VarIsInitializedOp#Conv3d_4d_3b_1x1_bn/moving_variance*
_output_shapes
: 
a
VarIsInitializedOp_44VarIsInitializedOpConv3d_5c_2a_1x1_conv/kernel*
_output_shapes
: 
h
VarIsInitializedOp_45VarIsInitializedOp#Conv3d_5c_1b_3x3_bn/moving_variance*
_output_shapes
: 
d
VarIsInitializedOp_46VarIsInitializedOpConv3d_3b_1a_1x1_bn/moving_mean*
_output_shapes
: 
]
VarIsInitializedOp_47VarIsInitializedOpConv3d_4d_0a_1x1_bn/beta*
_output_shapes
: 
h
VarIsInitializedOp_48VarIsInitializedOp#Conv3d_5b_2a_1x1_bn/moving_variance*
_output_shapes
: 
d
VarIsInitializedOp_49VarIsInitializedOpConv3d_4b_2a_1x1_bn/moving_mean*
_output_shapes
: 
h
VarIsInitializedOp_50VarIsInitializedOp#Conv3d_3c_1a_1x1_bn/moving_variance*
_output_shapes
: 
d
VarIsInitializedOp_51VarIsInitializedOpConv3d_3c_0a_1x1_bn/moving_mean*
_output_shapes
: 
d
VarIsInitializedOp_52VarIsInitializedOpConv3d_3c_3b_1x1_bn/moving_mean*
_output_shapes
: 
d
VarIsInitializedOp_53VarIsInitializedOpConv3d_4b_2b_3x3_bn/moving_mean*
_output_shapes
: 
h
VarIsInitializedOp_54VarIsInitializedOp#Conv3d_4d_2b_3x3_bn/moving_variance*
_output_shapes
: 
d
VarIsInitializedOp_55VarIsInitializedOpConv3d_4e_3b_1x1_bn/moving_mean*
_output_shapes
: 
d
VarIsInitializedOp_56VarIsInitializedOpConv3d_4f_1a_1x1_bn/moving_mean*
_output_shapes
: 
a
VarIsInitializedOp_57VarIsInitializedOpConv3d_5b_1a_1x1_conv/kernel*
_output_shapes
: 
a
VarIsInitializedOp_58VarIsInitializedOpConv3d_4d_2b_3x3_conv/kernel*
_output_shapes
: 
h
VarIsInitializedOp_59VarIsInitializedOp#Conv3d_5c_2a_1x1_bn/moving_variance*
_output_shapes
: 
d
VarIsInitializedOp_60VarIsInitializedOpConv3d_4e_1b_3x3_bn/moving_mean*
_output_shapes
: 
]
VarIsInitializedOp_61VarIsInitializedOpConv3d_3b_2b_3x3_bn/beta*
_output_shapes
: 
]
VarIsInitializedOp_62VarIsInitializedOpConv3d_3c_2a_1x1_bn/beta*
_output_shapes
: 
a
VarIsInitializedOp_63VarIsInitializedOpConv3d_4c_2a_1x1_conv/kernel*
_output_shapes
: 
]
VarIsInitializedOp_64VarIsInitializedOpConv3d_4c_0a_1x1_bn/beta*
_output_shapes
: 
]
VarIsInitializedOp_65VarIsInitializedOpConv3d_5b_2a_1x1_bn/beta*
_output_shapes
: 
d
VarIsInitializedOp_66VarIsInitializedOpConv3d_5c_1a_1x1_bn/moving_mean*
_output_shapes
: 
a
VarIsInitializedOp_67VarIsInitializedOpConv3d_5c_2b_3x3_conv/kernel*
_output_shapes
: 
]
VarIsInitializedOp_68VarIsInitializedOpConv3d_3c_0a_1x1_bn/beta*
_output_shapes
: 
]
VarIsInitializedOp_69VarIsInitializedOpConv3d_3c_2b_3x3_bn/beta*
_output_shapes
: 
d
VarIsInitializedOp_70VarIsInitializedOpConv3d_4b_0a_1x1_bn/moving_mean*
_output_shapes
: 
]
VarIsInitializedOp_71VarIsInitializedOpConv3d_4b_3b_1x1_bn/beta*
_output_shapes
: 
a
VarIsInitializedOp_72VarIsInitializedOpConv3d_4c_1b_3x3_conv/kernel*
_output_shapes
: 
a
VarIsInitializedOp_73VarIsInitializedOpConv3d_4d_3b_1x1_conv/kernel*
_output_shapes
: 
a
VarIsInitializedOp_74VarIsInitializedOpConv3d_4e_2a_1x1_conv/kernel*
_output_shapes
: 
h
VarIsInitializedOp_75VarIsInitializedOp#Conv3d_4e_0a_1x1_bn/moving_variance*
_output_shapes
: 
]
VarIsInitializedOp_76VarIsInitializedOpConv3d_4f_1a_1x1_bn/beta*
_output_shapes
: 
]
VarIsInitializedOp_77VarIsInitializedOpConv3d_4f_0a_1x1_bn/beta*
_output_shapes
: 
d
VarIsInitializedOp_78VarIsInitializedOpConv3d_5c_2b_3x3_bn/moving_mean*
_output_shapes
: 
a
VarIsInitializedOp_79VarIsInitializedOpConv3d_3b_1b_3x3_conv/kernel*
_output_shapes
: 
h
VarIsInitializedOp_80VarIsInitializedOp#Conv3d_3c_2a_1x1_bn/moving_variance*
_output_shapes
: 
]
VarIsInitializedOp_81VarIsInitializedOpConv3d_4d_1b_3x3_bn/beta*
_output_shapes
: 
d
VarIsInitializedOp_82VarIsInitializedOpConv3d_4d_3b_1x1_bn/moving_mean*
_output_shapes
: 
h
VarIsInitializedOp_83VarIsInitializedOp#Conv3d_5c_1a_1x1_bn/moving_variance*
_output_shapes
: 
d
VarIsInitializedOp_84VarIsInitializedOpConv3d_5c_3b_1x1_bn/moving_mean*
_output_shapes
: 
e
VarIsInitializedOp_85VarIsInitializedOp Conv3d_2c_3x3_bn/moving_variance*
_output_shapes
: 
d
VarIsInitializedOp_86VarIsInitializedOpConv3d_3b_0a_1x1_bn/moving_mean*
_output_shapes
: 
a
VarIsInitializedOp_87VarIsInitializedOpConv3d_4b_2b_3x3_conv/kernel*
_output_shapes
: 
h
VarIsInitializedOp_88VarIsInitializedOp#Conv3d_4b_0a_1x1_bn/moving_variance*
_output_shapes
: 
d
VarIsInitializedOp_89VarIsInitializedOpConv3d_4c_1b_3x3_bn/moving_mean*
_output_shapes
: 
a
VarIsInitializedOp_90VarIsInitializedOpConv3d_4d_1b_3x3_conv/kernel*
_output_shapes
: 
d
VarIsInitializedOp_91VarIsInitializedOpConv3d_4d_1b_3x3_bn/moving_mean*
_output_shapes
: 
d
VarIsInitializedOp_92VarIsInitializedOpConv3d_4e_2a_1x1_bn/moving_mean*
_output_shapes
: 
a
VarIsInitializedOp_93VarIsInitializedOpConv3d_4f_2a_1x1_conv/kernel*
_output_shapes
: 
]
VarIsInitializedOp_94VarIsInitializedOpConv3d_5b_1a_1x1_bn/beta*
_output_shapes
: 
a
VarIsInitializedOp_95VarIsInitializedOpConv3d_4e_1b_3x3_conv/kernel*
_output_shapes
: 
h
VarIsInitializedOp_96VarIsInitializedOp#Conv3d_3b_2b_3x3_bn/moving_variance*
_output_shapes
: 
a
VarIsInitializedOp_97VarIsInitializedOpConv3d_4b_3b_1x1_conv/kernel*
_output_shapes
: 
]
VarIsInitializedOp_98VarIsInitializedOpConv3d_4c_1b_3x3_bn/beta*
_output_shapes
: 
a
VarIsInitializedOp_99VarIsInitializedOpConv3d_4d_1a_1x1_conv/kernel*
_output_shapes
: 
i
VarIsInitializedOp_100VarIsInitializedOp#Conv3d_4f_0a_1x1_bn/moving_variance*
_output_shapes
: 
e
VarIsInitializedOp_101VarIsInitializedOpConv3d_4f_1b_3x3_bn/moving_mean*
_output_shapes
: 
b
VarIsInitializedOp_102VarIsInitializedOpConv3d_5b_3b_1x1_conv/kernel*
_output_shapes
: 
^
VarIsInitializedOp_103VarIsInitializedOpConv3d_5c_0a_1x1_bn/beta*
_output_shapes
: 
^
VarIsInitializedOp_104VarIsInitializedOpConv3d_5c_2b_3x3_bn/beta*
_output_shapes
: 
e
VarIsInitializedOp_105VarIsInitializedOpConv3d_3b_2a_1x1_bn/moving_mean*
_output_shapes
: 
_
VarIsInitializedOp_106VarIsInitializedOpConv3d_1a_7x7_conv/kernel*
_output_shapes
: 
i
VarIsInitializedOp_107VarIsInitializedOp#Conv3d_3b_0a_1x1_bn/moving_variance*
_output_shapes
: 
b
VarIsInitializedOp_108VarIsInitializedOpConv3d_3c_0a_1x1_conv/kernel*
_output_shapes
: 
b
VarIsInitializedOp_109VarIsInitializedOpConv3d_4c_1a_1x1_conv/kernel*
_output_shapes
: 
e
VarIsInitializedOp_110VarIsInitializedOpConv3d_4d_1a_1x1_bn/moving_mean*
_output_shapes
: 
i
VarIsInitializedOp_111VarIsInitializedOp#Conv3d_4d_1a_1x1_bn/moving_variance*
_output_shapes
: 
^
VarIsInitializedOp_112VarIsInitializedOpConv3d_4d_2b_3x3_bn/beta*
_output_shapes
: 
i
VarIsInitializedOp_113VarIsInitializedOp#Conv3d_4f_3b_1x1_bn/moving_variance*
_output_shapes
: 
e
VarIsInitializedOp_114VarIsInitializedOpConv3d_5c_2a_1x1_bn/moving_mean*
_output_shapes
: 
_
VarIsInitializedOp_115VarIsInitializedOpConv3d_2b_1x1_conv/kernel*
_output_shapes
: 
^
VarIsInitializedOp_116VarIsInitializedOpConv3d_4b_2a_1x1_bn/beta*
_output_shapes
: 
i
VarIsInitializedOp_117VarIsInitializedOp#Conv3d_4b_1b_3x3_bn/moving_variance*
_output_shapes
: 
^
VarIsInitializedOp_118VarIsInitializedOpConv3d_4c_1a_1x1_bn/beta*
_output_shapes
: 
^
VarIsInitializedOp_119VarIsInitializedOpConv3d_4c_2a_1x1_bn/beta*
_output_shapes
: 
i
VarIsInitializedOp_120VarIsInitializedOp#Conv3d_4e_2b_3x3_bn/moving_variance*
_output_shapes
: 
b
VarIsInitializedOp_121VarIsInitializedOpConv3d_4f_3b_1x1_conv/kernel*
_output_shapes
: 
^
VarIsInitializedOp_122VarIsInitializedOpConv3d_5b_0a_1x1_bn/beta*
_output_shapes
: 
e
VarIsInitializedOp_123VarIsInitializedOpConv3d_5b_1b_3x3_bn/moving_mean*
_output_shapes
: 
b
VarIsInitializedOp_124VarIsInitializedOpConv3d_4e_3b_1x1_conv/kernel*
_output_shapes
: 
b
VarIsInitializedOp_125VarIsInitializedOpConv3d_3c_2a_1x1_conv/kernel*
_output_shapes
: 
^
VarIsInitializedOp_126VarIsInitializedOpConv3d_3c_1a_1x1_bn/beta*
_output_shapes
: 
i
VarIsInitializedOp_127VarIsInitializedOp#Conv3d_3c_0a_1x1_bn/moving_variance*
_output_shapes
: 
^
VarIsInitializedOp_128VarIsInitializedOpConv3d_3c_1b_3x3_bn/beta*
_output_shapes
: 
e
VarIsInitializedOp_129VarIsInitializedOpConv3d_4b_1a_1x1_bn/moving_mean*
_output_shapes
: 
i
VarIsInitializedOp_130VarIsInitializedOp#Conv3d_4f_1a_1x1_bn/moving_variance*
_output_shapes
: 
^
VarIsInitializedOp_131VarIsInitializedOpConv3d_4f_2a_1x1_bn/beta*
_output_shapes
: 
b
VarIsInitializedOp_132VarIsInitializedOpConv3d_4f_0a_1x1_conv/kernel*
_output_shapes
: 
i
VarIsInitializedOp_133VarIsInitializedOp#Conv3d_4f_2b_3x3_bn/moving_variance*
_output_shapes
: 
i
VarIsInitializedOp_134VarIsInitializedOp#Conv3d_5b_3b_1x1_bn/moving_variance*
_output_shapes
: 
^
VarIsInitializedOp_135VarIsInitializedOpConv3d_3b_1b_3x3_bn/beta*
_output_shapes
: 
i
VarIsInitializedOp_136VarIsInitializedOp#Conv3d_3b_3b_1x1_bn/moving_variance*
_output_shapes
: 
i
VarIsInitializedOp_137VarIsInitializedOp#Conv3d_4c_1a_1x1_bn/moving_variance*
_output_shapes
: 
e
VarIsInitializedOp_138VarIsInitializedOpConv3d_4c_3b_1x1_bn/moving_mean*
_output_shapes
: 
^
VarIsInitializedOp_139VarIsInitializedOpConv3d_4d_2a_1x1_bn/beta*
_output_shapes
: 
i
VarIsInitializedOp_140VarIsInitializedOp#Conv3d_5c_2b_3x3_bn/moving_variance*
_output_shapes
: 
R
VarIsInitializedOp_141VarIsInitializedOpdense/kernel*
_output_shapes
: 
b
VarIsInitializedOp_142VarIsInitializedOpConv3d_2b_1x1_bn/moving_mean*
_output_shapes
: 
b
VarIsInitializedOp_143VarIsInitializedOpConv3d_4b_1a_1x1_conv/kernel*
_output_shapes
: 
i
VarIsInitializedOp_144VarIsInitializedOp#Conv3d_4b_1a_1x1_bn/moving_variance*
_output_shapes
: 
^
VarIsInitializedOp_145VarIsInitializedOpConv3d_4b_2b_3x3_bn/beta*
_output_shapes
: 
e
VarIsInitializedOp_146VarIsInitializedOpConv3d_4b_3b_1x1_bn/moving_mean*
_output_shapes
: 
i
VarIsInitializedOp_147VarIsInitializedOp#Conv3d_4e_1a_1x1_bn/moving_variance*
_output_shapes
: 
^
VarIsInitializedOp_148VarIsInitializedOpConv3d_4e_3b_1x1_bn/beta*
_output_shapes
: 
^
VarIsInitializedOp_149VarIsInitializedOpConv3d_4f_1b_3x3_bn/beta*
_output_shapes
: 
b
VarIsInitializedOp_150VarIsInitializedOpConv3d_5b_0a_1x1_conv/kernel*
_output_shapes
: 
b
VarIsInitializedOp_151VarIsInitializedOpConv3d_5c_0a_1x1_conv/kernel*
_output_shapes
: 
^
VarIsInitializedOp_152VarIsInitializedOpConv3d_3b_0a_1x1_bn/beta*
_output_shapes
: 
e
VarIsInitializedOp_153VarIsInitializedOpConv3d_3c_2b_3x3_bn/moving_mean*
_output_shapes
: 
b
VarIsInitializedOp_154VarIsInitializedOpConv3d_4b_1b_3x3_conv/kernel*
_output_shapes
: 
e
VarIsInitializedOp_155VarIsInitializedOpConv3d_4c_2a_1x1_bn/moving_mean*
_output_shapes
: 
i
VarIsInitializedOp_156VarIsInitializedOp#Conv3d_4c_2b_3x3_bn/moving_variance*
_output_shapes
: 
^
VarIsInitializedOp_157VarIsInitializedOpConv3d_4d_1a_1x1_bn/beta*
_output_shapes
: 
i
VarIsInitializedOp_158VarIsInitializedOp#Conv3d_4e_1b_3x3_bn/moving_variance*
_output_shapes
: 
b
VarIsInitializedOp_159VarIsInitializedOpConv3d_4f_1b_3x3_conv/kernel*
_output_shapes
: 
e
VarIsInitializedOp_160VarIsInitializedOpConv3d_4f_0a_1x1_bn/moving_mean*
_output_shapes
: 
e
VarIsInitializedOp_161VarIsInitializedOpConv3d_5c_1b_3x3_bn/moving_mean*
_output_shapes
: 
i
VarIsInitializedOp_162VarIsInitializedOp#Conv3d_3b_1a_1x1_bn/moving_variance*
_output_shapes
: 
e
VarIsInitializedOp_163VarIsInitializedOpConv3d_3c_1b_3x3_bn/moving_mean*
_output_shapes
: 
e
VarIsInitializedOp_164VarIsInitializedOpConv3d_4f_2a_1x1_bn/moving_mean*
_output_shapes
: 
^
VarIsInitializedOp_165VarIsInitializedOpConv3d_5c_1b_3x3_bn/beta*
_output_shapes
: 
b
VarIsInitializedOp_166VarIsInitializedOpConv3d_5b_2a_1x1_conv/kernel*
_output_shapes
: 
i
VarIsInitializedOp_167VarIsInitializedOp#Conv3d_3c_3b_1x1_bn/moving_variance*
_output_shapes
: 
^
VarIsInitializedOp_168VarIsInitializedOpConv3d_4b_0a_1x1_bn/beta*
_output_shapes
: 
^
VarIsInitializedOp_169VarIsInitializedOpConv3d_4e_0a_1x1_bn/beta*
_output_shapes
: 
b
VarIsInitializedOp_170VarIsInitializedOpConv3d_5b_1b_3x3_conv/kernel*
_output_shapes
: 
e
VarIsInitializedOp_171VarIsInitializedOpConv3d_5b_2b_3x3_bn/moving_mean*
_output_shapes
: 
i
VarIsInitializedOp_172VarIsInitializedOp#Conv3d_4b_2a_1x1_bn/moving_variance*
_output_shapes
: 
e
VarIsInitializedOp_173VarIsInitializedOpConv3d_5b_2a_1x1_bn/moving_mean*
_output_shapes
: 
i
VarIsInitializedOp_174VarIsInitializedOp#Conv3d_3c_2b_3x3_bn/moving_variance*
_output_shapes
: 
e
VarIsInitializedOp_175VarIsInitializedOpConv3d_4c_0a_1x1_bn/moving_mean*
_output_shapes
: 
^
VarIsInitializedOp_176VarIsInitializedOpConv3d_4c_2b_3x3_bn/beta*
_output_shapes
: 
^
VarIsInitializedOp_177VarIsInitializedOpConv3d_4c_3b_1x1_bn/beta*
_output_shapes
: 
e
VarIsInitializedOp_178VarIsInitializedOpConv3d_4d_0a_1x1_bn/moving_mean*
_output_shapes
: 
e
VarIsInitializedOp_179VarIsInitializedOpConv3d_4d_2b_3x3_bn/moving_mean*
_output_shapes
: 
^
VarIsInitializedOp_180VarIsInitializedOpConv3d_4d_3b_1x1_bn/beta*
_output_shapes
: 
b
VarIsInitializedOp_181VarIsInitializedOpConv3d_4e_2b_3x3_conv/kernel*
_output_shapes
: 
^
VarIsInitializedOp_182VarIsInitializedOpConv3d_4e_2b_3x3_bn/beta*
_output_shapes
: 
^
VarIsInitializedOp_183VarIsInitializedOpConv3d_4f_2b_3x3_bn/beta*
_output_shapes
: 
]
VarIsInitializedOp_184VarIsInitializedOpConv3d_6a_1x1_conv/bias*
_output_shapes
: 
^
VarIsInitializedOp_185VarIsInitializedOpConv3d_4f_3b_1x1_bn/beta*
_output_shapes
: 
b
VarIsInitializedOp_186VarIsInitializedOpConv3d_5b_2b_3x3_conv/kernel*
_output_shapes
: 
b
VarIsInitializedOp_187VarIsInitializedOpConv3d_1a_7x7_bn/moving_mean*
_output_shapes
: 
b
VarIsInitializedOp_188VarIsInitializedOpConv3d_3b_2b_3x3_conv/kernel*
_output_shapes
: 
b
VarIsInitializedOp_189VarIsInitializedOpConv3d_4b_0a_1x1_conv/kernel*
_output_shapes
: 
i
VarIsInitializedOp_190VarIsInitializedOp#Conv3d_4c_1b_3x3_bn/moving_variance*
_output_shapes
: 
i
VarIsInitializedOp_191VarIsInitializedOp#Conv3d_4c_3b_1x1_bn/moving_variance*
_output_shapes
: 
^
VarIsInitializedOp_192VarIsInitializedOpConv3d_4e_1b_3x3_bn/beta*
_output_shapes
: 
b
VarIsInitializedOp_193VarIsInitializedOpConv3d_4f_2b_3x3_conv/kernel*
_output_shapes
: 
^
VarIsInitializedOp_194VarIsInitializedOpConv3d_5b_3b_1x1_bn/beta*
_output_shapes
: 
b
VarIsInitializedOp_195VarIsInitializedOpConv3d_5c_1b_3x3_conv/kernel*
_output_shapes
: 
b
VarIsInitializedOp_196VarIsInitializedOpConv3d_2c_3x3_bn/moving_mean*
_output_shapes
: 
i
VarIsInitializedOp_197VarIsInitializedOp#Conv3d_4b_2b_3x3_bn/moving_variance*
_output_shapes
: 
e
VarIsInitializedOp_198VarIsInitializedOpConv3d_4c_1a_1x1_bn/moving_mean*
_output_shapes
: 
i
VarIsInitializedOp_199VarIsInitializedOp#Conv3d_4c_0a_1x1_bn/moving_variance*
_output_shapes
: 
b
VarIsInitializedOp_200VarIsInitializedOpConv3d_4d_0a_1x1_conv/kernel*
_output_shapes
: 
b
VarIsInitializedOp_201VarIsInitializedOpConv3d_4e_1a_1x1_conv/kernel*
_output_shapes
: 
i
VarIsInitializedOp_202VarIsInitializedOp#Conv3d_4e_3b_1x1_bn/moving_variance*
_output_shapes
: 
i
VarIsInitializedOp_203VarIsInitializedOp#Conv3d_5b_2b_3x3_bn/moving_variance*
_output_shapes
: 
i
VarIsInitializedOp_204VarIsInitializedOp#Conv3d_5c_3b_1x1_bn/moving_variance*
_output_shapes
: 
b
VarIsInitializedOp_205VarIsInitializedOpConv3d_3c_1b_3x3_conv/kernel*
_output_shapes
: 
^
VarIsInitializedOp_206VarIsInitializedOpConv3d_3b_2a_1x1_bn/beta*
_output_shapes
: 
[
VarIsInitializedOp_207VarIsInitializedOpConv3d_2b_1x1_bn/beta*
_output_shapes
: 
[
VarIsInitializedOp_208VarIsInitializedOpConv3d_2c_3x3_bn/beta*
_output_shapes
: 
b
VarIsInitializedOp_209VarIsInitializedOpConv3d_3b_1a_1x1_conv/kernel*
_output_shapes
: 
b
VarIsInitializedOp_210VarIsInitializedOpConv3d_3b_3b_1x1_conv/kernel*
_output_shapes
: 
b
VarIsInitializedOp_211VarIsInitializedOpConv3d_3c_3b_1x1_conv/kernel*
_output_shapes
: 
b
VarIsInitializedOp_212VarIsInitializedOpConv3d_4b_2a_1x1_conv/kernel*
_output_shapes
: 
i
VarIsInitializedOp_213VarIsInitializedOp#Conv3d_4d_1b_3x3_bn/moving_variance*
_output_shapes
: 
i
VarIsInitializedOp_214VarIsInitializedOp#Conv3d_4e_2a_1x1_bn/moving_variance*
_output_shapes
: 
_
VarIsInitializedOp_215VarIsInitializedOpConv3d_2c_3x3_conv/kernel*
_output_shapes
: 
e
VarIsInitializedOp_216VarIsInitializedOpConv3d_3c_2a_1x1_bn/moving_mean*
_output_shapes
: 
f
VarIsInitializedOp_217VarIsInitializedOp Conv3d_2b_1x1_bn/moving_variance*
_output_shapes
: 
^
VarIsInitializedOp_218VarIsInitializedOpConv3d_4b_1a_1x1_bn/beta*
_output_shapes
: 
b
VarIsInitializedOp_219VarIsInitializedOpConv3d_4c_2b_3x3_conv/kernel*
_output_shapes
: 
i
VarIsInitializedOp_220VarIsInitializedOp#Conv3d_4f_1b_3x3_bn/moving_variance*
_output_shapes
: 
^
VarIsInitializedOp_221VarIsInitializedOpConv3d_5b_2b_3x3_bn/beta*
_output_shapes
: 
b
VarIsInitializedOp_222VarIsInitializedOpConv3d_5c_3b_1x1_conv/kernel*
_output_shapes
: 
e
VarIsInitializedOp_223VarIsInitializedOpConv3d_5b_0a_1x1_bn/moving_mean*
_output_shapes
: 
^
VarIsInitializedOp_224VarIsInitializedOpConv3d_3c_3b_1x1_bn/beta*
_output_shapes
: 
P
VarIsInitializedOp_225VarIsInitializedOp
dense/bias*
_output_shapes
: 
[
VarIsInitializedOp_226VarIsInitializedOpConv3d_1a_7x7_bn/beta*
_output_shapes
: 
i
VarIsInitializedOp_227VarIsInitializedOp#Conv3d_3b_2a_1x1_bn/moving_variance*
_output_shapes
: 
e
VarIsInitializedOp_228VarIsInitializedOpConv3d_3b_2b_3x3_bn/moving_mean*
_output_shapes
: 
i
VarIsInitializedOp_229VarIsInitializedOp#Conv3d_5b_1b_3x3_bn/moving_variance*
_output_shapes
: 
^
VarIsInitializedOp_230VarIsInitializedOpConv3d_5c_1a_1x1_bn/beta*
_output_shapes
: 
^
VarIsInitializedOp_231VarIsInitializedOpConv3d_5c_2a_1x1_bn/beta*
_output_shapes
: 
ДG
initNoOp^Conv3d_1a_7x7_bn/beta/Assign$^Conv3d_1a_7x7_bn/moving_mean/Assign(^Conv3d_1a_7x7_bn/moving_variance/Assign!^Conv3d_1a_7x7_conv/kernel/Assign^Conv3d_2b_1x1_bn/beta/Assign$^Conv3d_2b_1x1_bn/moving_mean/Assign(^Conv3d_2b_1x1_bn/moving_variance/Assign!^Conv3d_2b_1x1_conv/kernel/Assign^Conv3d_2c_3x3_bn/beta/Assign$^Conv3d_2c_3x3_bn/moving_mean/Assign(^Conv3d_2c_3x3_bn/moving_variance/Assign!^Conv3d_2c_3x3_conv/kernel/Assign ^Conv3d_3b_0a_1x1_bn/beta/Assign'^Conv3d_3b_0a_1x1_bn/moving_mean/Assign+^Conv3d_3b_0a_1x1_bn/moving_variance/Assign$^Conv3d_3b_0a_1x1_conv/kernel/Assign ^Conv3d_3b_1a_1x1_bn/beta/Assign'^Conv3d_3b_1a_1x1_bn/moving_mean/Assign+^Conv3d_3b_1a_1x1_bn/moving_variance/Assign$^Conv3d_3b_1a_1x1_conv/kernel/Assign ^Conv3d_3b_1b_3x3_bn/beta/Assign'^Conv3d_3b_1b_3x3_bn/moving_mean/Assign+^Conv3d_3b_1b_3x3_bn/moving_variance/Assign$^Conv3d_3b_1b_3x3_conv/kernel/Assign ^Conv3d_3b_2a_1x1_bn/beta/Assign'^Conv3d_3b_2a_1x1_bn/moving_mean/Assign+^Conv3d_3b_2a_1x1_bn/moving_variance/Assign$^Conv3d_3b_2a_1x1_conv/kernel/Assign ^Conv3d_3b_2b_3x3_bn/beta/Assign'^Conv3d_3b_2b_3x3_bn/moving_mean/Assign+^Conv3d_3b_2b_3x3_bn/moving_variance/Assign$^Conv3d_3b_2b_3x3_conv/kernel/Assign ^Conv3d_3b_3b_1x1_bn/beta/Assign'^Conv3d_3b_3b_1x1_bn/moving_mean/Assign+^Conv3d_3b_3b_1x1_bn/moving_variance/Assign$^Conv3d_3b_3b_1x1_conv/kernel/Assign ^Conv3d_3c_0a_1x1_bn/beta/Assign'^Conv3d_3c_0a_1x1_bn/moving_mean/Assign+^Conv3d_3c_0a_1x1_bn/moving_variance/Assign$^Conv3d_3c_0a_1x1_conv/kernel/Assign ^Conv3d_3c_1a_1x1_bn/beta/Assign'^Conv3d_3c_1a_1x1_bn/moving_mean/Assign+^Conv3d_3c_1a_1x1_bn/moving_variance/Assign$^Conv3d_3c_1a_1x1_conv/kernel/Assign ^Conv3d_3c_1b_3x3_bn/beta/Assign'^Conv3d_3c_1b_3x3_bn/moving_mean/Assign+^Conv3d_3c_1b_3x3_bn/moving_variance/Assign$^Conv3d_3c_1b_3x3_conv/kernel/Assign ^Conv3d_3c_2a_1x1_bn/beta/Assign'^Conv3d_3c_2a_1x1_bn/moving_mean/Assign+^Conv3d_3c_2a_1x1_bn/moving_variance/Assign$^Conv3d_3c_2a_1x1_conv/kernel/Assign ^Conv3d_3c_2b_3x3_bn/beta/Assign'^Conv3d_3c_2b_3x3_bn/moving_mean/Assign+^Conv3d_3c_2b_3x3_bn/moving_variance/Assign$^Conv3d_3c_2b_3x3_conv/kernel/Assign ^Conv3d_3c_3b_1x1_bn/beta/Assign'^Conv3d_3c_3b_1x1_bn/moving_mean/Assign+^Conv3d_3c_3b_1x1_bn/moving_variance/Assign$^Conv3d_3c_3b_1x1_conv/kernel/Assign ^Conv3d_4b_0a_1x1_bn/beta/Assign'^Conv3d_4b_0a_1x1_bn/moving_mean/Assign+^Conv3d_4b_0a_1x1_bn/moving_variance/Assign$^Conv3d_4b_0a_1x1_conv/kernel/Assign ^Conv3d_4b_1a_1x1_bn/beta/Assign'^Conv3d_4b_1a_1x1_bn/moving_mean/Assign+^Conv3d_4b_1a_1x1_bn/moving_variance/Assign$^Conv3d_4b_1a_1x1_conv/kernel/Assign ^Conv3d_4b_1b_3x3_bn/beta/Assign'^Conv3d_4b_1b_3x3_bn/moving_mean/Assign+^Conv3d_4b_1b_3x3_bn/moving_variance/Assign$^Conv3d_4b_1b_3x3_conv/kernel/Assign ^Conv3d_4b_2a_1x1_bn/beta/Assign'^Conv3d_4b_2a_1x1_bn/moving_mean/Assign+^Conv3d_4b_2a_1x1_bn/moving_variance/Assign$^Conv3d_4b_2a_1x1_conv/kernel/Assign ^Conv3d_4b_2b_3x3_bn/beta/Assign'^Conv3d_4b_2b_3x3_bn/moving_mean/Assign+^Conv3d_4b_2b_3x3_bn/moving_variance/Assign$^Conv3d_4b_2b_3x3_conv/kernel/Assign ^Conv3d_4b_3b_1x1_bn/beta/Assign'^Conv3d_4b_3b_1x1_bn/moving_mean/Assign+^Conv3d_4b_3b_1x1_bn/moving_variance/Assign$^Conv3d_4b_3b_1x1_conv/kernel/Assign ^Conv3d_4c_0a_1x1_bn/beta/Assign'^Conv3d_4c_0a_1x1_bn/moving_mean/Assign+^Conv3d_4c_0a_1x1_bn/moving_variance/Assign$^Conv3d_4c_0a_1x1_conv/kernel/Assign ^Conv3d_4c_1a_1x1_bn/beta/Assign'^Conv3d_4c_1a_1x1_bn/moving_mean/Assign+^Conv3d_4c_1a_1x1_bn/moving_variance/Assign$^Conv3d_4c_1a_1x1_conv/kernel/Assign ^Conv3d_4c_1b_3x3_bn/beta/Assign'^Conv3d_4c_1b_3x3_bn/moving_mean/Assign+^Conv3d_4c_1b_3x3_bn/moving_variance/Assign$^Conv3d_4c_1b_3x3_conv/kernel/Assign ^Conv3d_4c_2a_1x1_bn/beta/Assign'^Conv3d_4c_2a_1x1_bn/moving_mean/Assign+^Conv3d_4c_2a_1x1_bn/moving_variance/Assign$^Conv3d_4c_2a_1x1_conv/kernel/Assign ^Conv3d_4c_2b_3x3_bn/beta/Assign'^Conv3d_4c_2b_3x3_bn/moving_mean/Assign+^Conv3d_4c_2b_3x3_bn/moving_variance/Assign$^Conv3d_4c_2b_3x3_conv/kernel/Assign ^Conv3d_4c_3b_1x1_bn/beta/Assign'^Conv3d_4c_3b_1x1_bn/moving_mean/Assign+^Conv3d_4c_3b_1x1_bn/moving_variance/Assign$^Conv3d_4c_3b_1x1_conv/kernel/Assign ^Conv3d_4d_0a_1x1_bn/beta/Assign'^Conv3d_4d_0a_1x1_bn/moving_mean/Assign+^Conv3d_4d_0a_1x1_bn/moving_variance/Assign$^Conv3d_4d_0a_1x1_conv/kernel/Assign ^Conv3d_4d_1a_1x1_bn/beta/Assign'^Conv3d_4d_1a_1x1_bn/moving_mean/Assign+^Conv3d_4d_1a_1x1_bn/moving_variance/Assign$^Conv3d_4d_1a_1x1_conv/kernel/Assign ^Conv3d_4d_1b_3x3_bn/beta/Assign'^Conv3d_4d_1b_3x3_bn/moving_mean/Assign+^Conv3d_4d_1b_3x3_bn/moving_variance/Assign$^Conv3d_4d_1b_3x3_conv/kernel/Assign ^Conv3d_4d_2a_1x1_bn/beta/Assign'^Conv3d_4d_2a_1x1_bn/moving_mean/Assign+^Conv3d_4d_2a_1x1_bn/moving_variance/Assign$^Conv3d_4d_2a_1x1_conv/kernel/Assign ^Conv3d_4d_2b_3x3_bn/beta/Assign'^Conv3d_4d_2b_3x3_bn/moving_mean/Assign+^Conv3d_4d_2b_3x3_bn/moving_variance/Assign$^Conv3d_4d_2b_3x3_conv/kernel/Assign ^Conv3d_4d_3b_1x1_bn/beta/Assign'^Conv3d_4d_3b_1x1_bn/moving_mean/Assign+^Conv3d_4d_3b_1x1_bn/moving_variance/Assign$^Conv3d_4d_3b_1x1_conv/kernel/Assign ^Conv3d_4e_0a_1x1_bn/beta/Assign'^Conv3d_4e_0a_1x1_bn/moving_mean/Assign+^Conv3d_4e_0a_1x1_bn/moving_variance/Assign$^Conv3d_4e_0a_1x1_conv/kernel/Assign ^Conv3d_4e_1a_1x1_bn/beta/Assign'^Conv3d_4e_1a_1x1_bn/moving_mean/Assign+^Conv3d_4e_1a_1x1_bn/moving_variance/Assign$^Conv3d_4e_1a_1x1_conv/kernel/Assign ^Conv3d_4e_1b_3x3_bn/beta/Assign'^Conv3d_4e_1b_3x3_bn/moving_mean/Assign+^Conv3d_4e_1b_3x3_bn/moving_variance/Assign$^Conv3d_4e_1b_3x3_conv/kernel/Assign ^Conv3d_4e_2a_1x1_bn/beta/Assign'^Conv3d_4e_2a_1x1_bn/moving_mean/Assign+^Conv3d_4e_2a_1x1_bn/moving_variance/Assign$^Conv3d_4e_2a_1x1_conv/kernel/Assign ^Conv3d_4e_2b_3x3_bn/beta/Assign'^Conv3d_4e_2b_3x3_bn/moving_mean/Assign+^Conv3d_4e_2b_3x3_bn/moving_variance/Assign$^Conv3d_4e_2b_3x3_conv/kernel/Assign ^Conv3d_4e_3b_1x1_bn/beta/Assign'^Conv3d_4e_3b_1x1_bn/moving_mean/Assign+^Conv3d_4e_3b_1x1_bn/moving_variance/Assign$^Conv3d_4e_3b_1x1_conv/kernel/Assign ^Conv3d_4f_0a_1x1_bn/beta/Assign'^Conv3d_4f_0a_1x1_bn/moving_mean/Assign+^Conv3d_4f_0a_1x1_bn/moving_variance/Assign$^Conv3d_4f_0a_1x1_conv/kernel/Assign ^Conv3d_4f_1a_1x1_bn/beta/Assign'^Conv3d_4f_1a_1x1_bn/moving_mean/Assign+^Conv3d_4f_1a_1x1_bn/moving_variance/Assign$^Conv3d_4f_1a_1x1_conv/kernel/Assign ^Conv3d_4f_1b_3x3_bn/beta/Assign'^Conv3d_4f_1b_3x3_bn/moving_mean/Assign+^Conv3d_4f_1b_3x3_bn/moving_variance/Assign$^Conv3d_4f_1b_3x3_conv/kernel/Assign ^Conv3d_4f_2a_1x1_bn/beta/Assign'^Conv3d_4f_2a_1x1_bn/moving_mean/Assign+^Conv3d_4f_2a_1x1_bn/moving_variance/Assign$^Conv3d_4f_2a_1x1_conv/kernel/Assign ^Conv3d_4f_2b_3x3_bn/beta/Assign'^Conv3d_4f_2b_3x3_bn/moving_mean/Assign+^Conv3d_4f_2b_3x3_bn/moving_variance/Assign$^Conv3d_4f_2b_3x3_conv/kernel/Assign ^Conv3d_4f_3b_1x1_bn/beta/Assign'^Conv3d_4f_3b_1x1_bn/moving_mean/Assign+^Conv3d_4f_3b_1x1_bn/moving_variance/Assign$^Conv3d_4f_3b_1x1_conv/kernel/Assign ^Conv3d_5b_0a_1x1_bn/beta/Assign'^Conv3d_5b_0a_1x1_bn/moving_mean/Assign+^Conv3d_5b_0a_1x1_bn/moving_variance/Assign$^Conv3d_5b_0a_1x1_conv/kernel/Assign ^Conv3d_5b_1a_1x1_bn/beta/Assign'^Conv3d_5b_1a_1x1_bn/moving_mean/Assign+^Conv3d_5b_1a_1x1_bn/moving_variance/Assign$^Conv3d_5b_1a_1x1_conv/kernel/Assign ^Conv3d_5b_1b_3x3_bn/beta/Assign'^Conv3d_5b_1b_3x3_bn/moving_mean/Assign+^Conv3d_5b_1b_3x3_bn/moving_variance/Assign$^Conv3d_5b_1b_3x3_conv/kernel/Assign ^Conv3d_5b_2a_1x1_bn/beta/Assign'^Conv3d_5b_2a_1x1_bn/moving_mean/Assign+^Conv3d_5b_2a_1x1_bn/moving_variance/Assign$^Conv3d_5b_2a_1x1_conv/kernel/Assign ^Conv3d_5b_2b_3x3_bn/beta/Assign'^Conv3d_5b_2b_3x3_bn/moving_mean/Assign+^Conv3d_5b_2b_3x3_bn/moving_variance/Assign$^Conv3d_5b_2b_3x3_conv/kernel/Assign ^Conv3d_5b_3b_1x1_bn/beta/Assign'^Conv3d_5b_3b_1x1_bn/moving_mean/Assign+^Conv3d_5b_3b_1x1_bn/moving_variance/Assign$^Conv3d_5b_3b_1x1_conv/kernel/Assign ^Conv3d_5c_0a_1x1_bn/beta/Assign'^Conv3d_5c_0a_1x1_bn/moving_mean/Assign+^Conv3d_5c_0a_1x1_bn/moving_variance/Assign$^Conv3d_5c_0a_1x1_conv/kernel/Assign ^Conv3d_5c_1a_1x1_bn/beta/Assign'^Conv3d_5c_1a_1x1_bn/moving_mean/Assign+^Conv3d_5c_1a_1x1_bn/moving_variance/Assign$^Conv3d_5c_1a_1x1_conv/kernel/Assign ^Conv3d_5c_1b_3x3_bn/beta/Assign'^Conv3d_5c_1b_3x3_bn/moving_mean/Assign+^Conv3d_5c_1b_3x3_bn/moving_variance/Assign$^Conv3d_5c_1b_3x3_conv/kernel/Assign ^Conv3d_5c_2a_1x1_bn/beta/Assign'^Conv3d_5c_2a_1x1_bn/moving_mean/Assign+^Conv3d_5c_2a_1x1_bn/moving_variance/Assign$^Conv3d_5c_2a_1x1_conv/kernel/Assign ^Conv3d_5c_2b_3x3_bn/beta/Assign'^Conv3d_5c_2b_3x3_bn/moving_mean/Assign+^Conv3d_5c_2b_3x3_bn/moving_variance/Assign$^Conv3d_5c_2b_3x3_conv/kernel/Assign ^Conv3d_5c_3b_1x1_bn/beta/Assign'^Conv3d_5c_3b_1x1_bn/moving_mean/Assign+^Conv3d_5c_3b_1x1_bn/moving_variance/Assign$^Conv3d_5c_3b_1x1_conv/kernel/Assign^Conv3d_6a_1x1_conv/bias/Assign!^Conv3d_6a_1x1_conv/kernel/Assign^dense/bias/Assign^dense/kernel/Assign
Б
dense_targetPlaceholder*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
dtype0*%
shape:€€€€€€€€€€€€€€€€€€
v
total/Initializer/zerosConst*
_class

loc:@total*
_output_shapes
: *
dtype0*
valueB
 *    
†
totalVarHandleOp*
_class

loc:@total*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *
shared_nametotal
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
M
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
dtype0
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
v
count/Initializer/zerosConst*
_class

loc:@count*
_output_shapes
: *
dtype0*
valueB
 *    
†
countVarHandleOp*
_class

loc:@count*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *
shared_namecount
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
M
count/AssignAssignVariableOpcountcount/Initializer/zeros*
dtype0
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
l
!metrics/accuracy/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€
Я
metrics/accuracy/ArgMaxArgMaxdense_target!metrics/accuracy/ArgMax/dimension*
T0*

Tidx0*#
_output_shapes
:€€€€€€€€€*
output_type0	
n
#metrics/accuracy/ArgMax_1/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€
§
metrics/accuracy/ArgMax_1ArgMaxdense/Softmax#metrics/accuracy/ArgMax_1/dimension*
T0*

Tidx0*#
_output_shapes
:€€€€€€€€€*
output_type0	
°
metrics/accuracy/EqualEqualmetrics/accuracy/ArgMaxmetrics/accuracy/ArgMax_1*
T0	*#
_output_shapes
:€€€€€€€€€*
incompatible_shape_error(
В
metrics/accuracy/CastCastmetrics/accuracy/Equal*

DstT0*

SrcT0
*
Truncate( *#
_output_shapes
:€€€€€€€€€
`
metrics/accuracy/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
И
metrics/accuracy/SumSummetrics/accuracy/Castmetrics/accuracy/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
e
$metrics/accuracy/AssignAddVariableOpAssignAddVariableOptotalmetrics/accuracy/Sum*
dtype0
Ы
metrics/accuracy/ReadVariableOpReadVariableOptotal%^metrics/accuracy/AssignAddVariableOp^metrics/accuracy/Sum*
_output_shapes
: *
dtype0
e
metrics/accuracy/SizeSizemetrics/accuracy/Cast*
T0*
_output_shapes
: *
out_type0
v
metrics/accuracy/Cast_1Castmetrics/accuracy/Size*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
С
&metrics/accuracy/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/accuracy/Cast_1%^metrics/accuracy/AssignAddVariableOp*
dtype0
ѓ
!metrics/accuracy/ReadVariableOp_1ReadVariableOpcount%^metrics/accuracy/AssignAddVariableOp'^metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
С
*metrics/accuracy/div_no_nan/ReadVariableOpReadVariableOptotal'^metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
У
,metrics/accuracy/div_no_nan/ReadVariableOp_1ReadVariableOpcount'^metrics/accuracy/AssignAddVariableOp_1*
_output_shapes
: *
dtype0
Ґ
metrics/accuracy/div_no_nanDivNoNan*metrics/accuracy/div_no_nan/ReadVariableOp,metrics/accuracy/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
c
metrics/accuracy/IdentityIdentitymetrics/accuracy/div_no_nan*
T0*
_output_shapes
: 
Z
loss/dense_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
p
%loss/dense_loss/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€
Я
loss/dense_loss/SumSumdense/Softmax%loss/dense_loss/Sum/reduction_indices*
T0*

Tidx0*'
_output_shapes
:€€€€€€€€€*
	keep_dims(
x
loss/dense_loss/truedivRealDivdense/Softmaxloss/dense_loss/Sum*
T0*'
_output_shapes
:€€€€€€€€€2
\
loss/dense_loss/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *Хњ÷3
Z
loss/dense_loss/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
k
loss/dense_loss/subSubloss/dense_loss/sub/xloss/dense_loss/Const_1*
T0*
_output_shapes
: 
Р
%loss/dense_loss/clip_by_value/MinimumMinimumloss/dense_loss/truedivloss/dense_loss/sub*
T0*'
_output_shapes
:€€€€€€€€€2
Ъ
loss/dense_loss/clip_by_valueMaximum%loss/dense_loss/clip_by_value/Minimumloss/dense_loss/Const_1*
T0*'
_output_shapes
:€€€€€€€€€2
k
loss/dense_loss/LogLogloss/dense_loss/clip_by_value*
T0*'
_output_shapes
:€€€€€€€€€2
o
loss/dense_loss/mulMuldense_targetloss/dense_loss/Log*
T0*'
_output_shapes
:€€€€€€€€€2
r
'loss/dense_loss/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€
•
loss/dense_loss/Sum_1Sumloss/dense_loss/mul'loss/dense_loss/Sum_1/reduction_indices*
T0*

Tidx0*#
_output_shapes
:€€€€€€€€€*
	keep_dims( 
_
loss/dense_loss/NegNegloss/dense_loss/Sum_1*
T0*#
_output_shapes
:€€€€€€€€€
h
#loss/dense_loss/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
Р
!loss/dense_loss/weighted_loss/MulMulloss/dense_loss/Neg#loss/dense_loss/weighted_loss/Const*
T0*#
_output_shapes
:€€€€€€€€€
a
loss/dense_loss/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 
Ц
loss/dense_loss/Sum_2Sum!loss/dense_loss/weighted_loss/Mulloss/dense_loss/Const_2*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
x
loss/dense_loss/num_elementsSize!loss/dense_loss/weighted_loss/Mul*
T0*
_output_shapes
: *
out_type0
З
!loss/dense_loss/num_elements/CastCastloss/dense_loss/num_elements*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
Z
loss/dense_loss/Const_3Const*
_output_shapes
: *
dtype0*
valueB 
К
loss/dense_loss/Sum_3Sumloss/dense_loss/Sum_2loss/dense_loss/Const_3*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
|
loss/dense_loss/valueDivNoNanloss/dense_loss/Sum_3!loss/dense_loss/num_elements/Cast*
T0*
_output_shapes
: 
O

loss/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?
S
loss/mulMul
loss/mul/xloss/dense_loss/value*
T0*
_output_shapes
: 
q
iter/Initializer/zerosConst*
_class
	loc:@iter*
_output_shapes
: *
dtype0	*
value	B	 R 
Э
iterVarHandleOp*
_class
	loc:@iter*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0	*
shape: *
shared_nameiter
Y
%iter/IsInitialized/VarIsInitializedOpVarIsInitializedOpiter*
_output_shapes
: 
J
iter/AssignAssignVariableOpiteriter/Initializer/zeros*
dtype0	
U
iter/Read/ReadVariableOpReadVariableOpiter*
_output_shapes
: *
dtype0	
~
decay/Initializer/initial_valueConst*
_class

loc:@decay*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5
†
decayVarHandleOp*
_class

loc:@decay*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *
shared_namedecay
[
&decay/IsInitialized/VarIsInitializedOpVarIsInitializedOpdecay*
_output_shapes
: 
U
decay/AssignAssignVariableOpdecaydecay/Initializer/initial_value*
dtype0
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
О
'learning_rate/Initializer/initial_valueConst* 
_class
loc:@learning_rate*
_output_shapes
: *
dtype0*
valueB
 *
„#<
Є
learning_rateVarHandleOp* 
_class
loc:@learning_rate*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *
shared_namelearning_rate
k
.learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOplearning_rate*
_output_shapes
: 
m
learning_rate/AssignAssignVariableOplearning_rate'learning_rate/Initializer/initial_value*
dtype0
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
Д
"momentum/Initializer/initial_valueConst*
_class
loc:@momentum*
_output_shapes
: *
dtype0*
valueB
 *fff?
©
momentumVarHandleOp*
_class
loc:@momentum*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *
shared_name
momentum
a
)momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOpmomentum*
_output_shapes
: 
^
momentum/AssignAssignVariableOpmomentum"momentum/Initializer/initial_value*
dtype0
]
momentum/Read/ReadVariableOpReadVariableOpmomentum*
_output_shapes
: *
dtype0
ѕ
DConv3d_1a_7x7_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@Conv3d_1a_7x7_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            @   
≠
:Conv3d_1a_7x7_conv/kernel/momentum/Initializer/zeros/ConstConst*,
_class"
 loc:@Conv3d_1a_7x7_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
≥
4Conv3d_1a_7x7_conv/kernel/momentum/Initializer/zerosFillDConv3d_1a_7x7_conv/kernel/momentum/Initializer/zeros/shape_as_tensor:Conv3d_1a_7x7_conv/kernel/momentum/Initializer/zeros/Const*
T0*,
_class"
 loc:@Conv3d_1a_7x7_conv/kernel**
_output_shapes
:@*

index_type0
В
"Conv3d_1a_7x7_conv/kernel/momentumVarHandleOp*,
_class"
 loc:@Conv3d_1a_7x7_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*3
shared_name$"Conv3d_1a_7x7_conv/kernel/momentum
√
CConv3d_1a_7x7_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp"Conv3d_1a_7x7_conv/kernel/momentum*,
_class"
 loc:@Conv3d_1a_7x7_conv/kernel*
_output_shapes
: 
§
)Conv3d_1a_7x7_conv/kernel/momentum/AssignAssignVariableOp"Conv3d_1a_7x7_conv/kernel/momentum4Conv3d_1a_7x7_conv/kernel/momentum/Initializer/zeros*
dtype0
”
6Conv3d_1a_7x7_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp"Conv3d_1a_7x7_conv/kernel/momentum*,
_class"
 loc:@Conv3d_1a_7x7_conv/kernel**
_output_shapes
:@*
dtype0
І
0Conv3d_1a_7x7_bn/beta/momentum/Initializer/zerosConst*(
_class
loc:@Conv3d_1a_7x7_bn/beta*
_output_shapes
:@*
dtype0*
valueB@*    
ж
Conv3d_1a_7x7_bn/beta/momentumVarHandleOp*(
_class
loc:@Conv3d_1a_7x7_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*/
shared_name Conv3d_1a_7x7_bn/beta/momentum
Ј
?Conv3d_1a_7x7_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_1a_7x7_bn/beta/momentum*(
_class
loc:@Conv3d_1a_7x7_bn/beta*
_output_shapes
: 
Ш
%Conv3d_1a_7x7_bn/beta/momentum/AssignAssignVariableOpConv3d_1a_7x7_bn/beta/momentum0Conv3d_1a_7x7_bn/beta/momentum/Initializer/zeros*
dtype0
Ј
2Conv3d_1a_7x7_bn/beta/momentum/Read/ReadVariableOpReadVariableOpConv3d_1a_7x7_bn/beta/momentum*(
_class
loc:@Conv3d_1a_7x7_bn/beta*
_output_shapes
:@*
dtype0
ѕ
DConv3d_2b_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@Conv3d_2b_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         @   @   
≠
:Conv3d_2b_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*,
_class"
 loc:@Conv3d_2b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
≥
4Conv3d_2b_1x1_conv/kernel/momentum/Initializer/zerosFillDConv3d_2b_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor:Conv3d_2b_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*,
_class"
 loc:@Conv3d_2b_1x1_conv/kernel**
_output_shapes
:@@*

index_type0
В
"Conv3d_2b_1x1_conv/kernel/momentumVarHandleOp*,
_class"
 loc:@Conv3d_2b_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@@*3
shared_name$"Conv3d_2b_1x1_conv/kernel/momentum
√
CConv3d_2b_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp"Conv3d_2b_1x1_conv/kernel/momentum*,
_class"
 loc:@Conv3d_2b_1x1_conv/kernel*
_output_shapes
: 
§
)Conv3d_2b_1x1_conv/kernel/momentum/AssignAssignVariableOp"Conv3d_2b_1x1_conv/kernel/momentum4Conv3d_2b_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
”
6Conv3d_2b_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp"Conv3d_2b_1x1_conv/kernel/momentum*,
_class"
 loc:@Conv3d_2b_1x1_conv/kernel**
_output_shapes
:@@*
dtype0
І
0Conv3d_2b_1x1_bn/beta/momentum/Initializer/zerosConst*(
_class
loc:@Conv3d_2b_1x1_bn/beta*
_output_shapes
:@*
dtype0*
valueB@*    
ж
Conv3d_2b_1x1_bn/beta/momentumVarHandleOp*(
_class
loc:@Conv3d_2b_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*/
shared_name Conv3d_2b_1x1_bn/beta/momentum
Ј
?Conv3d_2b_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_2b_1x1_bn/beta/momentum*(
_class
loc:@Conv3d_2b_1x1_bn/beta*
_output_shapes
: 
Ш
%Conv3d_2b_1x1_bn/beta/momentum/AssignAssignVariableOpConv3d_2b_1x1_bn/beta/momentum0Conv3d_2b_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
Ј
2Conv3d_2b_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOpConv3d_2b_1x1_bn/beta/momentum*(
_class
loc:@Conv3d_2b_1x1_bn/beta*
_output_shapes
:@*
dtype0
ѕ
DConv3d_2c_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@Conv3d_2c_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         @   ј   
≠
:Conv3d_2c_3x3_conv/kernel/momentum/Initializer/zeros/ConstConst*,
_class"
 loc:@Conv3d_2c_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
і
4Conv3d_2c_3x3_conv/kernel/momentum/Initializer/zerosFillDConv3d_2c_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensor:Conv3d_2c_3x3_conv/kernel/momentum/Initializer/zeros/Const*
T0*,
_class"
 loc:@Conv3d_2c_3x3_conv/kernel*+
_output_shapes
:@ј*

index_type0
Г
"Conv3d_2c_3x3_conv/kernel/momentumVarHandleOp*,
_class"
 loc:@Conv3d_2c_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:@ј*3
shared_name$"Conv3d_2c_3x3_conv/kernel/momentum
√
CConv3d_2c_3x3_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp"Conv3d_2c_3x3_conv/kernel/momentum*,
_class"
 loc:@Conv3d_2c_3x3_conv/kernel*
_output_shapes
: 
§
)Conv3d_2c_3x3_conv/kernel/momentum/AssignAssignVariableOp"Conv3d_2c_3x3_conv/kernel/momentum4Conv3d_2c_3x3_conv/kernel/momentum/Initializer/zeros*
dtype0
‘
6Conv3d_2c_3x3_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp"Conv3d_2c_3x3_conv/kernel/momentum*,
_class"
 loc:@Conv3d_2c_3x3_conv/kernel*+
_output_shapes
:@ј*
dtype0
©
0Conv3d_2c_3x3_bn/beta/momentum/Initializer/zerosConst*(
_class
loc:@Conv3d_2c_3x3_bn/beta*
_output_shapes	
:ј*
dtype0*
valueBј*    
з
Conv3d_2c_3x3_bn/beta/momentumVarHandleOp*(
_class
loc:@Conv3d_2c_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:ј*/
shared_name Conv3d_2c_3x3_bn/beta/momentum
Ј
?Conv3d_2c_3x3_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOpConv3d_2c_3x3_bn/beta/momentum*(
_class
loc:@Conv3d_2c_3x3_bn/beta*
_output_shapes
: 
Ш
%Conv3d_2c_3x3_bn/beta/momentum/AssignAssignVariableOpConv3d_2c_3x3_bn/beta/momentum0Conv3d_2c_3x3_bn/beta/momentum/Initializer/zeros*
dtype0
Є
2Conv3d_2c_3x3_bn/beta/momentum/Read/ReadVariableOpReadVariableOpConv3d_2c_3x3_bn/beta/momentum*(
_class
loc:@Conv3d_2c_3x3_bn/beta*
_output_shapes	
:ј*
dtype0
’
GConv3d_3b_1a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_3b_1a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         ј   `   
≥
=Conv3d_3b_1a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_3b_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_3b_1a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_3b_1a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_3b_1a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_3b_1a_1x1_conv/kernel*+
_output_shapes
:ј`*

index_type0
М
%Conv3d_3b_1a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_3b_1a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:ј`*6
shared_name'%Conv3d_3b_1a_1x1_conv/kernel/momentum
ћ
FConv3d_3b_1a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_3b_1a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_3b_1a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_3b_1a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_3b_1a_1x1_conv/kernel/momentum7Conv3d_3b_1a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_3b_1a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_3b_1a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_3b_1a_1x1_conv/kernel*+
_output_shapes
:ј`*
dtype0
’
GConv3d_3b_2a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_3b_2a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         ј      
≥
=Conv3d_3b_2a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_3b_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_3b_2a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_3b_2a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_3b_2a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_3b_2a_1x1_conv/kernel*+
_output_shapes
:ј*

index_type0
М
%Conv3d_3b_2a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_3b_2a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:ј*6
shared_name'%Conv3d_3b_2a_1x1_conv/kernel/momentum
ћ
FConv3d_3b_2a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_3b_2a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_3b_2a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_3b_2a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_3b_2a_1x1_conv/kernel/momentum7Conv3d_3b_2a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_3b_2a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_3b_2a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_3b_2a_1x1_conv/kernel*+
_output_shapes
:ј*
dtype0
≠
3Conv3d_3b_1a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_3b_1a_1x1_bn/beta*
_output_shapes
:`*
dtype0*
valueB`*    
п
!Conv3d_3b_1a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_3b_1a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:`*2
shared_name#!Conv3d_3b_1a_1x1_bn/beta/momentum
ј
BConv3d_3b_1a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_3b_1a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_3b_1a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_3b_1a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_3b_1a_1x1_bn/beta/momentum3Conv3d_3b_1a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_3b_1a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_3b_1a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_3b_1a_1x1_bn/beta*
_output_shapes
:`*
dtype0
≠
3Conv3d_3b_2a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_3b_2a_1x1_bn/beta*
_output_shapes
:*
dtype0*
valueB*    
п
!Conv3d_3b_2a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_3b_2a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*2
shared_name#!Conv3d_3b_2a_1x1_bn/beta/momentum
ј
BConv3d_3b_2a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_3b_2a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_3b_2a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_3b_2a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_3b_2a_1x1_bn/beta/momentum3Conv3d_3b_2a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_3b_2a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_3b_2a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_3b_2a_1x1_bn/beta*
_output_shapes
:*
dtype0
’
GConv3d_3b_0a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_3b_0a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         ј   @   
≥
=Conv3d_3b_0a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_3b_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_3b_0a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_3b_0a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_3b_0a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_3b_0a_1x1_conv/kernel*+
_output_shapes
:ј@*

index_type0
М
%Conv3d_3b_0a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_3b_0a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:ј@*6
shared_name'%Conv3d_3b_0a_1x1_conv/kernel/momentum
ћ
FConv3d_3b_0a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_3b_0a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_3b_0a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_3b_0a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_3b_0a_1x1_conv/kernel/momentum7Conv3d_3b_0a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_3b_0a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_3b_0a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_3b_0a_1x1_conv/kernel*+
_output_shapes
:ј@*
dtype0
’
GConv3d_3b_1b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_3b_1b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         `   А   
≥
=Conv3d_3b_1b_3x3_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_3b_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_3b_1b_3x3_conv/kernel/momentum/Initializer/zerosFillGConv3d_3b_1b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_3b_1b_3x3_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_3b_1b_3x3_conv/kernel*+
_output_shapes
:`А*

index_type0
М
%Conv3d_3b_1b_3x3_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_3b_1b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:`А*6
shared_name'%Conv3d_3b_1b_3x3_conv/kernel/momentum
ћ
FConv3d_3b_1b_3x3_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_3b_1b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_3b_1b_3x3_conv/kernel*
_output_shapes
: 
≠
,Conv3d_3b_1b_3x3_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_3b_1b_3x3_conv/kernel/momentum7Conv3d_3b_1b_3x3_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_3b_1b_3x3_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_3b_1b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_3b_1b_3x3_conv/kernel*+
_output_shapes
:`А*
dtype0
’
GConv3d_3b_2b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_3b_2b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"                
≥
=Conv3d_3b_2b_3x3_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_3b_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
њ
7Conv3d_3b_2b_3x3_conv/kernel/momentum/Initializer/zerosFillGConv3d_3b_2b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_3b_2b_3x3_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_3b_2b_3x3_conv/kernel**
_output_shapes
: *

index_type0
Л
%Conv3d_3b_2b_3x3_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_3b_2b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *6
shared_name'%Conv3d_3b_2b_3x3_conv/kernel/momentum
ћ
FConv3d_3b_2b_3x3_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_3b_2b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_3b_2b_3x3_conv/kernel*
_output_shapes
: 
≠
,Conv3d_3b_2b_3x3_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_3b_2b_3x3_conv/kernel/momentum7Conv3d_3b_2b_3x3_conv/kernel/momentum/Initializer/zeros*
dtype0
№
9Conv3d_3b_2b_3x3_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_3b_2b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_3b_2b_3x3_conv/kernel**
_output_shapes
: *
dtype0
’
GConv3d_3b_3b_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_3b_3b_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         ј       
≥
=Conv3d_3b_3b_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_3b_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_3b_3b_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_3b_3b_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_3b_3b_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_3b_3b_1x1_conv/kernel*+
_output_shapes
:ј *

index_type0
М
%Conv3d_3b_3b_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_3b_3b_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:ј *6
shared_name'%Conv3d_3b_3b_1x1_conv/kernel/momentum
ћ
FConv3d_3b_3b_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_3b_3b_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_3b_3b_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_3b_3b_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_3b_3b_1x1_conv/kernel/momentum7Conv3d_3b_3b_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_3b_3b_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_3b_3b_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_3b_3b_1x1_conv/kernel*+
_output_shapes
:ј *
dtype0
≠
3Conv3d_3b_0a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_3b_0a_1x1_bn/beta*
_output_shapes
:@*
dtype0*
valueB@*    
п
!Conv3d_3b_0a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_3b_0a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*2
shared_name#!Conv3d_3b_0a_1x1_bn/beta/momentum
ј
BConv3d_3b_0a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_3b_0a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_3b_0a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_3b_0a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_3b_0a_1x1_bn/beta/momentum3Conv3d_3b_0a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_3b_0a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_3b_0a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_3b_0a_1x1_bn/beta*
_output_shapes
:@*
dtype0
ѓ
3Conv3d_3b_1b_3x3_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_3b_1b_3x3_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
р
!Conv3d_3b_1b_3x3_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_3b_1b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*2
shared_name#!Conv3d_3b_1b_3x3_bn/beta/momentum
ј
BConv3d_3b_1b_3x3_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_3b_1b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_3b_1b_3x3_bn/beta*
_output_shapes
: 
°
(Conv3d_3b_1b_3x3_bn/beta/momentum/AssignAssignVariableOp!Conv3d_3b_1b_3x3_bn/beta/momentum3Conv3d_3b_1b_3x3_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_3b_1b_3x3_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_3b_1b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_3b_1b_3x3_bn/beta*
_output_shapes	
:А*
dtype0
≠
3Conv3d_3b_2b_3x3_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_3b_2b_3x3_bn/beta*
_output_shapes
: *
dtype0*
valueB *    
п
!Conv3d_3b_2b_3x3_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_3b_2b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *2
shared_name#!Conv3d_3b_2b_3x3_bn/beta/momentum
ј
BConv3d_3b_2b_3x3_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_3b_2b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_3b_2b_3x3_bn/beta*
_output_shapes
: 
°
(Conv3d_3b_2b_3x3_bn/beta/momentum/AssignAssignVariableOp!Conv3d_3b_2b_3x3_bn/beta/momentum3Conv3d_3b_2b_3x3_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_3b_2b_3x3_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_3b_2b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_3b_2b_3x3_bn/beta*
_output_shapes
: *
dtype0
≠
3Conv3d_3b_3b_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_3b_3b_1x1_bn/beta*
_output_shapes
: *
dtype0*
valueB *    
п
!Conv3d_3b_3b_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_3b_3b_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *2
shared_name#!Conv3d_3b_3b_1x1_bn/beta/momentum
ј
BConv3d_3b_3b_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_3b_3b_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_3b_3b_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_3b_3b_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_3b_3b_1x1_bn/beta/momentum3Conv3d_3b_3b_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_3b_3b_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_3b_3b_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_3b_3b_1x1_bn/beta*
_output_shapes
: *
dtype0
’
GConv3d_3c_1a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_3c_1a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            А   
≥
=Conv3d_3c_1a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_3c_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
7Conv3d_3c_1a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_3c_1a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_3c_1a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_3c_1a_1x1_conv/kernel*,
_output_shapes
:АА*

index_type0
Н
%Conv3d_3c_1a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_3c_1a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:АА*6
shared_name'%Conv3d_3c_1a_1x1_conv/kernel/momentum
ћ
FConv3d_3c_1a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_3c_1a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_3c_1a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_3c_1a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_3c_1a_1x1_conv/kernel/momentum7Conv3d_3c_1a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
ё
9Conv3d_3c_1a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_3c_1a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_3c_1a_1x1_conv/kernel*,
_output_shapes
:АА*
dtype0
’
GConv3d_3c_2a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_3c_2a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"                
≥
=Conv3d_3c_2a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_3c_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_3c_2a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_3c_2a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_3c_2a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_3c_2a_1x1_conv/kernel*+
_output_shapes
:А *

index_type0
М
%Conv3d_3c_2a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_3c_2a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:А *6
shared_name'%Conv3d_3c_2a_1x1_conv/kernel/momentum
ћ
FConv3d_3c_2a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_3c_2a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_3c_2a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_3c_2a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_3c_2a_1x1_conv/kernel/momentum7Conv3d_3c_2a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_3c_2a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_3c_2a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_3c_2a_1x1_conv/kernel*+
_output_shapes
:А *
dtype0
ѓ
3Conv3d_3c_1a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_3c_1a_1x1_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
р
!Conv3d_3c_1a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_3c_1a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*2
shared_name#!Conv3d_3c_1a_1x1_bn/beta/momentum
ј
BConv3d_3c_1a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_3c_1a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_3c_1a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_3c_1a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_3c_1a_1x1_bn/beta/momentum3Conv3d_3c_1a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_3c_1a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_3c_1a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_3c_1a_1x1_bn/beta*
_output_shapes	
:А*
dtype0
≠
3Conv3d_3c_2a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_3c_2a_1x1_bn/beta*
_output_shapes
: *
dtype0*
valueB *    
п
!Conv3d_3c_2a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_3c_2a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *2
shared_name#!Conv3d_3c_2a_1x1_bn/beta/momentum
ј
BConv3d_3c_2a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_3c_2a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_3c_2a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_3c_2a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_3c_2a_1x1_bn/beta/momentum3Conv3d_3c_2a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_3c_2a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_3c_2a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_3c_2a_1x1_bn/beta*
_output_shapes
: *
dtype0
’
GConv3d_3c_0a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_3c_0a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            А   
≥
=Conv3d_3c_0a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_3c_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
7Conv3d_3c_0a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_3c_0a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_3c_0a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_3c_0a_1x1_conv/kernel*,
_output_shapes
:АА*

index_type0
Н
%Conv3d_3c_0a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_3c_0a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:АА*6
shared_name'%Conv3d_3c_0a_1x1_conv/kernel/momentum
ћ
FConv3d_3c_0a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_3c_0a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_3c_0a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_3c_0a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_3c_0a_1x1_conv/kernel/momentum7Conv3d_3c_0a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
ё
9Conv3d_3c_0a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_3c_0a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_3c_0a_1x1_conv/kernel*,
_output_shapes
:АА*
dtype0
’
GConv3d_3c_1b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_3c_1b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         А   ј   
≥
=Conv3d_3c_1b_3x3_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_3c_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
7Conv3d_3c_1b_3x3_conv/kernel/momentum/Initializer/zerosFillGConv3d_3c_1b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_3c_1b_3x3_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_3c_1b_3x3_conv/kernel*,
_output_shapes
:Ај*

index_type0
Н
%Conv3d_3c_1b_3x3_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_3c_1b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:Ај*6
shared_name'%Conv3d_3c_1b_3x3_conv/kernel/momentum
ћ
FConv3d_3c_1b_3x3_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_3c_1b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_3c_1b_3x3_conv/kernel*
_output_shapes
: 
≠
,Conv3d_3c_1b_3x3_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_3c_1b_3x3_conv/kernel/momentum7Conv3d_3c_1b_3x3_conv/kernel/momentum/Initializer/zeros*
dtype0
ё
9Conv3d_3c_1b_3x3_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_3c_1b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_3c_1b_3x3_conv/kernel*,
_output_shapes
:Ај*
dtype0
’
GConv3d_3c_2b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_3c_2b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"             `   
≥
=Conv3d_3c_2b_3x3_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_3c_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
њ
7Conv3d_3c_2b_3x3_conv/kernel/momentum/Initializer/zerosFillGConv3d_3c_2b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_3c_2b_3x3_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_3c_2b_3x3_conv/kernel**
_output_shapes
: `*

index_type0
Л
%Conv3d_3c_2b_3x3_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_3c_2b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: `*6
shared_name'%Conv3d_3c_2b_3x3_conv/kernel/momentum
ћ
FConv3d_3c_2b_3x3_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_3c_2b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_3c_2b_3x3_conv/kernel*
_output_shapes
: 
≠
,Conv3d_3c_2b_3x3_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_3c_2b_3x3_conv/kernel/momentum7Conv3d_3c_2b_3x3_conv/kernel/momentum/Initializer/zeros*
dtype0
№
9Conv3d_3c_2b_3x3_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_3c_2b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_3c_2b_3x3_conv/kernel**
_output_shapes
: `*
dtype0
’
GConv3d_3c_3b_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_3c_3b_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            @   
≥
=Conv3d_3c_3b_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_3c_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_3c_3b_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_3c_3b_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_3c_3b_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_3c_3b_1x1_conv/kernel*+
_output_shapes
:А@*

index_type0
М
%Conv3d_3c_3b_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_3c_3b_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:А@*6
shared_name'%Conv3d_3c_3b_1x1_conv/kernel/momentum
ћ
FConv3d_3c_3b_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_3c_3b_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_3c_3b_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_3c_3b_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_3c_3b_1x1_conv/kernel/momentum7Conv3d_3c_3b_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_3c_3b_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_3c_3b_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_3c_3b_1x1_conv/kernel*+
_output_shapes
:А@*
dtype0
ѓ
3Conv3d_3c_0a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_3c_0a_1x1_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
р
!Conv3d_3c_0a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_3c_0a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*2
shared_name#!Conv3d_3c_0a_1x1_bn/beta/momentum
ј
BConv3d_3c_0a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_3c_0a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_3c_0a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_3c_0a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_3c_0a_1x1_bn/beta/momentum3Conv3d_3c_0a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_3c_0a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_3c_0a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_3c_0a_1x1_bn/beta*
_output_shapes	
:А*
dtype0
ѓ
3Conv3d_3c_1b_3x3_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_3c_1b_3x3_bn/beta*
_output_shapes	
:ј*
dtype0*
valueBј*    
р
!Conv3d_3c_1b_3x3_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_3c_1b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:ј*2
shared_name#!Conv3d_3c_1b_3x3_bn/beta/momentum
ј
BConv3d_3c_1b_3x3_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_3c_1b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_3c_1b_3x3_bn/beta*
_output_shapes
: 
°
(Conv3d_3c_1b_3x3_bn/beta/momentum/AssignAssignVariableOp!Conv3d_3c_1b_3x3_bn/beta/momentum3Conv3d_3c_1b_3x3_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_3c_1b_3x3_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_3c_1b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_3c_1b_3x3_bn/beta*
_output_shapes	
:ј*
dtype0
≠
3Conv3d_3c_2b_3x3_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_3c_2b_3x3_bn/beta*
_output_shapes
:`*
dtype0*
valueB`*    
п
!Conv3d_3c_2b_3x3_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_3c_2b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:`*2
shared_name#!Conv3d_3c_2b_3x3_bn/beta/momentum
ј
BConv3d_3c_2b_3x3_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_3c_2b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_3c_2b_3x3_bn/beta*
_output_shapes
: 
°
(Conv3d_3c_2b_3x3_bn/beta/momentum/AssignAssignVariableOp!Conv3d_3c_2b_3x3_bn/beta/momentum3Conv3d_3c_2b_3x3_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_3c_2b_3x3_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_3c_2b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_3c_2b_3x3_bn/beta*
_output_shapes
:`*
dtype0
≠
3Conv3d_3c_3b_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_3c_3b_1x1_bn/beta*
_output_shapes
:@*
dtype0*
valueB@*    
п
!Conv3d_3c_3b_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_3c_3b_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*2
shared_name#!Conv3d_3c_3b_1x1_bn/beta/momentum
ј
BConv3d_3c_3b_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_3c_3b_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_3c_3b_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_3c_3b_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_3c_3b_1x1_bn/beta/momentum3Conv3d_3c_3b_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_3c_3b_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_3c_3b_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_3c_3b_1x1_bn/beta*
_output_shapes
:@*
dtype0
’
GConv3d_4b_1a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4b_1a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         а  `   
≥
=Conv3d_4b_1a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4b_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_4b_1a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_4b_1a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4b_1a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4b_1a_1x1_conv/kernel*+
_output_shapes
:а`*

index_type0
М
%Conv3d_4b_1a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4b_1a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:а`*6
shared_name'%Conv3d_4b_1a_1x1_conv/kernel/momentum
ћ
FConv3d_4b_1a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4b_1a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4b_1a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4b_1a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4b_1a_1x1_conv/kernel/momentum7Conv3d_4b_1a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_4b_1a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4b_1a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4b_1a_1x1_conv/kernel*+
_output_shapes
:а`*
dtype0
’
GConv3d_4b_2a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4b_2a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         а     
≥
=Conv3d_4b_2a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4b_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_4b_2a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_4b_2a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4b_2a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4b_2a_1x1_conv/kernel*+
_output_shapes
:а*

index_type0
М
%Conv3d_4b_2a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4b_2a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:а*6
shared_name'%Conv3d_4b_2a_1x1_conv/kernel/momentum
ћ
FConv3d_4b_2a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4b_2a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4b_2a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4b_2a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4b_2a_1x1_conv/kernel/momentum7Conv3d_4b_2a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_4b_2a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4b_2a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4b_2a_1x1_conv/kernel*+
_output_shapes
:а*
dtype0
≠
3Conv3d_4b_1a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4b_1a_1x1_bn/beta*
_output_shapes
:`*
dtype0*
valueB`*    
п
!Conv3d_4b_1a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4b_1a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:`*2
shared_name#!Conv3d_4b_1a_1x1_bn/beta/momentum
ј
BConv3d_4b_1a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4b_1a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4b_1a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_4b_1a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4b_1a_1x1_bn/beta/momentum3Conv3d_4b_1a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_4b_1a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4b_1a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4b_1a_1x1_bn/beta*
_output_shapes
:`*
dtype0
≠
3Conv3d_4b_2a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4b_2a_1x1_bn/beta*
_output_shapes
:*
dtype0*
valueB*    
п
!Conv3d_4b_2a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4b_2a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*2
shared_name#!Conv3d_4b_2a_1x1_bn/beta/momentum
ј
BConv3d_4b_2a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4b_2a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4b_2a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_4b_2a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4b_2a_1x1_bn/beta/momentum3Conv3d_4b_2a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_4b_2a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4b_2a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4b_2a_1x1_bn/beta*
_output_shapes
:*
dtype0
’
GConv3d_4b_0a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4b_0a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         а  ј   
≥
=Conv3d_4b_0a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4b_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
7Conv3d_4b_0a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_4b_0a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4b_0a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4b_0a_1x1_conv/kernel*,
_output_shapes
:ај*

index_type0
Н
%Conv3d_4b_0a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4b_0a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:ај*6
shared_name'%Conv3d_4b_0a_1x1_conv/kernel/momentum
ћ
FConv3d_4b_0a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4b_0a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4b_0a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4b_0a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4b_0a_1x1_conv/kernel/momentum7Conv3d_4b_0a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
ё
9Conv3d_4b_0a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4b_0a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4b_0a_1x1_conv/kernel*,
_output_shapes
:ај*
dtype0
’
GConv3d_4b_1b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4b_1b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         `   –   
≥
=Conv3d_4b_1b_3x3_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4b_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_4b_1b_3x3_conv/kernel/momentum/Initializer/zerosFillGConv3d_4b_1b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4b_1b_3x3_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4b_1b_3x3_conv/kernel*+
_output_shapes
:`–*

index_type0
М
%Conv3d_4b_1b_3x3_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4b_1b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:`–*6
shared_name'%Conv3d_4b_1b_3x3_conv/kernel/momentum
ћ
FConv3d_4b_1b_3x3_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4b_1b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4b_1b_3x3_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4b_1b_3x3_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4b_1b_3x3_conv/kernel/momentum7Conv3d_4b_1b_3x3_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_4b_1b_3x3_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4b_1b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4b_1b_3x3_conv/kernel*+
_output_shapes
:`–*
dtype0
’
GConv3d_4b_2b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4b_2b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            0   
≥
=Conv3d_4b_2b_3x3_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4b_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
њ
7Conv3d_4b_2b_3x3_conv/kernel/momentum/Initializer/zerosFillGConv3d_4b_2b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4b_2b_3x3_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4b_2b_3x3_conv/kernel**
_output_shapes
:0*

index_type0
Л
%Conv3d_4b_2b_3x3_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4b_2b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:0*6
shared_name'%Conv3d_4b_2b_3x3_conv/kernel/momentum
ћ
FConv3d_4b_2b_3x3_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4b_2b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4b_2b_3x3_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4b_2b_3x3_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4b_2b_3x3_conv/kernel/momentum7Conv3d_4b_2b_3x3_conv/kernel/momentum/Initializer/zeros*
dtype0
№
9Conv3d_4b_2b_3x3_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4b_2b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4b_2b_3x3_conv/kernel**
_output_shapes
:0*
dtype0
’
GConv3d_4b_3b_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4b_3b_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         а  @   
≥
=Conv3d_4b_3b_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4b_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_4b_3b_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_4b_3b_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4b_3b_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4b_3b_1x1_conv/kernel*+
_output_shapes
:а@*

index_type0
М
%Conv3d_4b_3b_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4b_3b_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:а@*6
shared_name'%Conv3d_4b_3b_1x1_conv/kernel/momentum
ћ
FConv3d_4b_3b_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4b_3b_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4b_3b_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4b_3b_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4b_3b_1x1_conv/kernel/momentum7Conv3d_4b_3b_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_4b_3b_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4b_3b_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4b_3b_1x1_conv/kernel*+
_output_shapes
:а@*
dtype0
ѓ
3Conv3d_4b_0a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4b_0a_1x1_bn/beta*
_output_shapes	
:ј*
dtype0*
valueBј*    
р
!Conv3d_4b_0a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4b_0a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:ј*2
shared_name#!Conv3d_4b_0a_1x1_bn/beta/momentum
ј
BConv3d_4b_0a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4b_0a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4b_0a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_4b_0a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4b_0a_1x1_bn/beta/momentum3Conv3d_4b_0a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_4b_0a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4b_0a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4b_0a_1x1_bn/beta*
_output_shapes	
:ј*
dtype0
ѓ
3Conv3d_4b_1b_3x3_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4b_1b_3x3_bn/beta*
_output_shapes	
:–*
dtype0*
valueB–*    
р
!Conv3d_4b_1b_3x3_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4b_1b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:–*2
shared_name#!Conv3d_4b_1b_3x3_bn/beta/momentum
ј
BConv3d_4b_1b_3x3_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4b_1b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_4b_1b_3x3_bn/beta*
_output_shapes
: 
°
(Conv3d_4b_1b_3x3_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4b_1b_3x3_bn/beta/momentum3Conv3d_4b_1b_3x3_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_4b_1b_3x3_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4b_1b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_4b_1b_3x3_bn/beta*
_output_shapes	
:–*
dtype0
≠
3Conv3d_4b_2b_3x3_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4b_2b_3x3_bn/beta*
_output_shapes
:0*
dtype0*
valueB0*    
п
!Conv3d_4b_2b_3x3_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4b_2b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:0*2
shared_name#!Conv3d_4b_2b_3x3_bn/beta/momentum
ј
BConv3d_4b_2b_3x3_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4b_2b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_4b_2b_3x3_bn/beta*
_output_shapes
: 
°
(Conv3d_4b_2b_3x3_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4b_2b_3x3_bn/beta/momentum3Conv3d_4b_2b_3x3_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_4b_2b_3x3_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4b_2b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_4b_2b_3x3_bn/beta*
_output_shapes
:0*
dtype0
≠
3Conv3d_4b_3b_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4b_3b_1x1_bn/beta*
_output_shapes
:@*
dtype0*
valueB@*    
п
!Conv3d_4b_3b_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4b_3b_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*2
shared_name#!Conv3d_4b_3b_1x1_bn/beta/momentum
ј
BConv3d_4b_3b_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4b_3b_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4b_3b_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_4b_3b_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4b_3b_1x1_bn/beta/momentum3Conv3d_4b_3b_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_4b_3b_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4b_3b_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4b_3b_1x1_bn/beta*
_output_shapes
:@*
dtype0
’
GConv3d_4c_1a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4c_1a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            p   
≥
=Conv3d_4c_1a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4c_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_4c_1a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_4c_1a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4c_1a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4c_1a_1x1_conv/kernel*+
_output_shapes
:Аp*

index_type0
М
%Conv3d_4c_1a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4c_1a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:Аp*6
shared_name'%Conv3d_4c_1a_1x1_conv/kernel/momentum
ћ
FConv3d_4c_1a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4c_1a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4c_1a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4c_1a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4c_1a_1x1_conv/kernel/momentum7Conv3d_4c_1a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_4c_1a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4c_1a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4c_1a_1x1_conv/kernel*+
_output_shapes
:Аp*
dtype0
’
GConv3d_4c_2a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4c_2a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"               
≥
=Conv3d_4c_2a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4c_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_4c_2a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_4c_2a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4c_2a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4c_2a_1x1_conv/kernel*+
_output_shapes
:А*

index_type0
М
%Conv3d_4c_2a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4c_2a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:А*6
shared_name'%Conv3d_4c_2a_1x1_conv/kernel/momentum
ћ
FConv3d_4c_2a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4c_2a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4c_2a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4c_2a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4c_2a_1x1_conv/kernel/momentum7Conv3d_4c_2a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_4c_2a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4c_2a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4c_2a_1x1_conv/kernel*+
_output_shapes
:А*
dtype0
≠
3Conv3d_4c_1a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4c_1a_1x1_bn/beta*
_output_shapes
:p*
dtype0*
valueBp*    
п
!Conv3d_4c_1a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4c_1a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:p*2
shared_name#!Conv3d_4c_1a_1x1_bn/beta/momentum
ј
BConv3d_4c_1a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4c_1a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4c_1a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_4c_1a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4c_1a_1x1_bn/beta/momentum3Conv3d_4c_1a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_4c_1a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4c_1a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4c_1a_1x1_bn/beta*
_output_shapes
:p*
dtype0
≠
3Conv3d_4c_2a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4c_2a_1x1_bn/beta*
_output_shapes
:*
dtype0*
valueB*    
п
!Conv3d_4c_2a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4c_2a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*2
shared_name#!Conv3d_4c_2a_1x1_bn/beta/momentum
ј
BConv3d_4c_2a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4c_2a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4c_2a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_4c_2a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4c_2a_1x1_bn/beta/momentum3Conv3d_4c_2a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_4c_2a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4c_2a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4c_2a_1x1_bn/beta*
_output_shapes
:*
dtype0
’
GConv3d_4c_0a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4c_0a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            †   
≥
=Conv3d_4c_0a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4c_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
7Conv3d_4c_0a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_4c_0a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4c_0a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4c_0a_1x1_conv/kernel*,
_output_shapes
:А†*

index_type0
Н
%Conv3d_4c_0a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4c_0a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:А†*6
shared_name'%Conv3d_4c_0a_1x1_conv/kernel/momentum
ћ
FConv3d_4c_0a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4c_0a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4c_0a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4c_0a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4c_0a_1x1_conv/kernel/momentum7Conv3d_4c_0a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
ё
9Conv3d_4c_0a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4c_0a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4c_0a_1x1_conv/kernel*,
_output_shapes
:А†*
dtype0
’
GConv3d_4c_1b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4c_1b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         p   а   
≥
=Conv3d_4c_1b_3x3_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4c_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_4c_1b_3x3_conv/kernel/momentum/Initializer/zerosFillGConv3d_4c_1b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4c_1b_3x3_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4c_1b_3x3_conv/kernel*+
_output_shapes
:pа*

index_type0
М
%Conv3d_4c_1b_3x3_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4c_1b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:pа*6
shared_name'%Conv3d_4c_1b_3x3_conv/kernel/momentum
ћ
FConv3d_4c_1b_3x3_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4c_1b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4c_1b_3x3_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4c_1b_3x3_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4c_1b_3x3_conv/kernel/momentum7Conv3d_4c_1b_3x3_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_4c_1b_3x3_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4c_1b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4c_1b_3x3_conv/kernel*+
_output_shapes
:pа*
dtype0
’
GConv3d_4c_2b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4c_2b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            @   
≥
=Conv3d_4c_2b_3x3_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4c_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
њ
7Conv3d_4c_2b_3x3_conv/kernel/momentum/Initializer/zerosFillGConv3d_4c_2b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4c_2b_3x3_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4c_2b_3x3_conv/kernel**
_output_shapes
:@*

index_type0
Л
%Conv3d_4c_2b_3x3_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4c_2b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*6
shared_name'%Conv3d_4c_2b_3x3_conv/kernel/momentum
ћ
FConv3d_4c_2b_3x3_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4c_2b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4c_2b_3x3_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4c_2b_3x3_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4c_2b_3x3_conv/kernel/momentum7Conv3d_4c_2b_3x3_conv/kernel/momentum/Initializer/zeros*
dtype0
№
9Conv3d_4c_2b_3x3_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4c_2b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4c_2b_3x3_conv/kernel**
_output_shapes
:@*
dtype0
’
GConv3d_4c_3b_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4c_3b_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            @   
≥
=Conv3d_4c_3b_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4c_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_4c_3b_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_4c_3b_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4c_3b_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4c_3b_1x1_conv/kernel*+
_output_shapes
:А@*

index_type0
М
%Conv3d_4c_3b_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4c_3b_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:А@*6
shared_name'%Conv3d_4c_3b_1x1_conv/kernel/momentum
ћ
FConv3d_4c_3b_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4c_3b_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4c_3b_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4c_3b_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4c_3b_1x1_conv/kernel/momentum7Conv3d_4c_3b_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_4c_3b_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4c_3b_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4c_3b_1x1_conv/kernel*+
_output_shapes
:А@*
dtype0
ѓ
3Conv3d_4c_0a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4c_0a_1x1_bn/beta*
_output_shapes	
:†*
dtype0*
valueB†*    
р
!Conv3d_4c_0a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4c_0a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:†*2
shared_name#!Conv3d_4c_0a_1x1_bn/beta/momentum
ј
BConv3d_4c_0a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4c_0a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4c_0a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_4c_0a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4c_0a_1x1_bn/beta/momentum3Conv3d_4c_0a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_4c_0a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4c_0a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4c_0a_1x1_bn/beta*
_output_shapes	
:†*
dtype0
ѓ
3Conv3d_4c_1b_3x3_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4c_1b_3x3_bn/beta*
_output_shapes	
:а*
dtype0*
valueBа*    
р
!Conv3d_4c_1b_3x3_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4c_1b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:а*2
shared_name#!Conv3d_4c_1b_3x3_bn/beta/momentum
ј
BConv3d_4c_1b_3x3_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4c_1b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_4c_1b_3x3_bn/beta*
_output_shapes
: 
°
(Conv3d_4c_1b_3x3_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4c_1b_3x3_bn/beta/momentum3Conv3d_4c_1b_3x3_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_4c_1b_3x3_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4c_1b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_4c_1b_3x3_bn/beta*
_output_shapes	
:а*
dtype0
≠
3Conv3d_4c_2b_3x3_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4c_2b_3x3_bn/beta*
_output_shapes
:@*
dtype0*
valueB@*    
п
!Conv3d_4c_2b_3x3_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4c_2b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*2
shared_name#!Conv3d_4c_2b_3x3_bn/beta/momentum
ј
BConv3d_4c_2b_3x3_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4c_2b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_4c_2b_3x3_bn/beta*
_output_shapes
: 
°
(Conv3d_4c_2b_3x3_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4c_2b_3x3_bn/beta/momentum3Conv3d_4c_2b_3x3_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_4c_2b_3x3_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4c_2b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_4c_2b_3x3_bn/beta*
_output_shapes
:@*
dtype0
≠
3Conv3d_4c_3b_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4c_3b_1x1_bn/beta*
_output_shapes
:@*
dtype0*
valueB@*    
п
!Conv3d_4c_3b_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4c_3b_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*2
shared_name#!Conv3d_4c_3b_1x1_bn/beta/momentum
ј
BConv3d_4c_3b_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4c_3b_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4c_3b_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_4c_3b_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4c_3b_1x1_bn/beta/momentum3Conv3d_4c_3b_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_4c_3b_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4c_3b_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4c_3b_1x1_bn/beta*
_output_shapes
:@*
dtype0
’
GConv3d_4d_1a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4d_1a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            А   
≥
=Conv3d_4d_1a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4d_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
7Conv3d_4d_1a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_4d_1a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4d_1a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4d_1a_1x1_conv/kernel*,
_output_shapes
:АА*

index_type0
Н
%Conv3d_4d_1a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4d_1a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:АА*6
shared_name'%Conv3d_4d_1a_1x1_conv/kernel/momentum
ћ
FConv3d_4d_1a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4d_1a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4d_1a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4d_1a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4d_1a_1x1_conv/kernel/momentum7Conv3d_4d_1a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
ё
9Conv3d_4d_1a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4d_1a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4d_1a_1x1_conv/kernel*,
_output_shapes
:АА*
dtype0
’
GConv3d_4d_2a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4d_2a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"               
≥
=Conv3d_4d_2a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4d_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_4d_2a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_4d_2a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4d_2a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4d_2a_1x1_conv/kernel*+
_output_shapes
:А*

index_type0
М
%Conv3d_4d_2a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4d_2a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:А*6
shared_name'%Conv3d_4d_2a_1x1_conv/kernel/momentum
ћ
FConv3d_4d_2a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4d_2a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4d_2a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4d_2a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4d_2a_1x1_conv/kernel/momentum7Conv3d_4d_2a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_4d_2a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4d_2a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4d_2a_1x1_conv/kernel*+
_output_shapes
:А*
dtype0
ѓ
3Conv3d_4d_1a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4d_1a_1x1_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
р
!Conv3d_4d_1a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4d_1a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*2
shared_name#!Conv3d_4d_1a_1x1_bn/beta/momentum
ј
BConv3d_4d_1a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4d_1a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4d_1a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_4d_1a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4d_1a_1x1_bn/beta/momentum3Conv3d_4d_1a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_4d_1a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4d_1a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4d_1a_1x1_bn/beta*
_output_shapes	
:А*
dtype0
≠
3Conv3d_4d_2a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4d_2a_1x1_bn/beta*
_output_shapes
:*
dtype0*
valueB*    
п
!Conv3d_4d_2a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4d_2a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*2
shared_name#!Conv3d_4d_2a_1x1_bn/beta/momentum
ј
BConv3d_4d_2a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4d_2a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4d_2a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_4d_2a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4d_2a_1x1_bn/beta/momentum3Conv3d_4d_2a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_4d_2a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4d_2a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4d_2a_1x1_bn/beta*
_output_shapes
:*
dtype0
’
GConv3d_4d_0a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4d_0a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            А   
≥
=Conv3d_4d_0a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4d_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
7Conv3d_4d_0a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_4d_0a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4d_0a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4d_0a_1x1_conv/kernel*,
_output_shapes
:АА*

index_type0
Н
%Conv3d_4d_0a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4d_0a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:АА*6
shared_name'%Conv3d_4d_0a_1x1_conv/kernel/momentum
ћ
FConv3d_4d_0a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4d_0a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4d_0a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4d_0a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4d_0a_1x1_conv/kernel/momentum7Conv3d_4d_0a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
ё
9Conv3d_4d_0a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4d_0a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4d_0a_1x1_conv/kernel*,
_output_shapes
:АА*
dtype0
’
GConv3d_4d_1b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4d_1b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         А      
≥
=Conv3d_4d_1b_3x3_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4d_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
7Conv3d_4d_1b_3x3_conv/kernel/momentum/Initializer/zerosFillGConv3d_4d_1b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4d_1b_3x3_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4d_1b_3x3_conv/kernel*,
_output_shapes
:АА*

index_type0
Н
%Conv3d_4d_1b_3x3_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4d_1b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:АА*6
shared_name'%Conv3d_4d_1b_3x3_conv/kernel/momentum
ћ
FConv3d_4d_1b_3x3_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4d_1b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4d_1b_3x3_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4d_1b_3x3_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4d_1b_3x3_conv/kernel/momentum7Conv3d_4d_1b_3x3_conv/kernel/momentum/Initializer/zeros*
dtype0
ё
9Conv3d_4d_1b_3x3_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4d_1b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4d_1b_3x3_conv/kernel*,
_output_shapes
:АА*
dtype0
’
GConv3d_4d_2b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4d_2b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            @   
≥
=Conv3d_4d_2b_3x3_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4d_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
њ
7Conv3d_4d_2b_3x3_conv/kernel/momentum/Initializer/zerosFillGConv3d_4d_2b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4d_2b_3x3_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4d_2b_3x3_conv/kernel**
_output_shapes
:@*

index_type0
Л
%Conv3d_4d_2b_3x3_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4d_2b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*6
shared_name'%Conv3d_4d_2b_3x3_conv/kernel/momentum
ћ
FConv3d_4d_2b_3x3_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4d_2b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4d_2b_3x3_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4d_2b_3x3_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4d_2b_3x3_conv/kernel/momentum7Conv3d_4d_2b_3x3_conv/kernel/momentum/Initializer/zeros*
dtype0
№
9Conv3d_4d_2b_3x3_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4d_2b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4d_2b_3x3_conv/kernel**
_output_shapes
:@*
dtype0
’
GConv3d_4d_3b_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4d_3b_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            @   
≥
=Conv3d_4d_3b_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4d_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_4d_3b_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_4d_3b_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4d_3b_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4d_3b_1x1_conv/kernel*+
_output_shapes
:А@*

index_type0
М
%Conv3d_4d_3b_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4d_3b_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:А@*6
shared_name'%Conv3d_4d_3b_1x1_conv/kernel/momentum
ћ
FConv3d_4d_3b_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4d_3b_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4d_3b_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4d_3b_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4d_3b_1x1_conv/kernel/momentum7Conv3d_4d_3b_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_4d_3b_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4d_3b_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4d_3b_1x1_conv/kernel*+
_output_shapes
:А@*
dtype0
ѓ
3Conv3d_4d_0a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4d_0a_1x1_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
р
!Conv3d_4d_0a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4d_0a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*2
shared_name#!Conv3d_4d_0a_1x1_bn/beta/momentum
ј
BConv3d_4d_0a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4d_0a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4d_0a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_4d_0a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4d_0a_1x1_bn/beta/momentum3Conv3d_4d_0a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_4d_0a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4d_0a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4d_0a_1x1_bn/beta*
_output_shapes	
:А*
dtype0
ѓ
3Conv3d_4d_1b_3x3_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4d_1b_3x3_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
р
!Conv3d_4d_1b_3x3_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4d_1b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*2
shared_name#!Conv3d_4d_1b_3x3_bn/beta/momentum
ј
BConv3d_4d_1b_3x3_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4d_1b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_4d_1b_3x3_bn/beta*
_output_shapes
: 
°
(Conv3d_4d_1b_3x3_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4d_1b_3x3_bn/beta/momentum3Conv3d_4d_1b_3x3_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_4d_1b_3x3_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4d_1b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_4d_1b_3x3_bn/beta*
_output_shapes	
:А*
dtype0
≠
3Conv3d_4d_2b_3x3_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4d_2b_3x3_bn/beta*
_output_shapes
:@*
dtype0*
valueB@*    
п
!Conv3d_4d_2b_3x3_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4d_2b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*2
shared_name#!Conv3d_4d_2b_3x3_bn/beta/momentum
ј
BConv3d_4d_2b_3x3_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4d_2b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_4d_2b_3x3_bn/beta*
_output_shapes
: 
°
(Conv3d_4d_2b_3x3_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4d_2b_3x3_bn/beta/momentum3Conv3d_4d_2b_3x3_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_4d_2b_3x3_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4d_2b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_4d_2b_3x3_bn/beta*
_output_shapes
:@*
dtype0
≠
3Conv3d_4d_3b_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4d_3b_1x1_bn/beta*
_output_shapes
:@*
dtype0*
valueB@*    
п
!Conv3d_4d_3b_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4d_3b_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*2
shared_name#!Conv3d_4d_3b_1x1_bn/beta/momentum
ј
BConv3d_4d_3b_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4d_3b_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4d_3b_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_4d_3b_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4d_3b_1x1_bn/beta/momentum3Conv3d_4d_3b_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_4d_3b_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4d_3b_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4d_3b_1x1_bn/beta*
_output_shapes
:@*
dtype0
’
GConv3d_4e_1a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4e_1a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            Р   
≥
=Conv3d_4e_1a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4e_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
7Conv3d_4e_1a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_4e_1a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4e_1a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4e_1a_1x1_conv/kernel*,
_output_shapes
:АР*

index_type0
Н
%Conv3d_4e_1a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4e_1a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:АР*6
shared_name'%Conv3d_4e_1a_1x1_conv/kernel/momentum
ћ
FConv3d_4e_1a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4e_1a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4e_1a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4e_1a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4e_1a_1x1_conv/kernel/momentum7Conv3d_4e_1a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
ё
9Conv3d_4e_1a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4e_1a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4e_1a_1x1_conv/kernel*,
_output_shapes
:АР*
dtype0
’
GConv3d_4e_2a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4e_2a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"                
≥
=Conv3d_4e_2a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4e_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_4e_2a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_4e_2a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4e_2a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4e_2a_1x1_conv/kernel*+
_output_shapes
:А *

index_type0
М
%Conv3d_4e_2a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4e_2a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:А *6
shared_name'%Conv3d_4e_2a_1x1_conv/kernel/momentum
ћ
FConv3d_4e_2a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4e_2a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4e_2a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4e_2a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4e_2a_1x1_conv/kernel/momentum7Conv3d_4e_2a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_4e_2a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4e_2a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4e_2a_1x1_conv/kernel*+
_output_shapes
:А *
dtype0
ѓ
3Conv3d_4e_1a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4e_1a_1x1_bn/beta*
_output_shapes	
:Р*
dtype0*
valueBР*    
р
!Conv3d_4e_1a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4e_1a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:Р*2
shared_name#!Conv3d_4e_1a_1x1_bn/beta/momentum
ј
BConv3d_4e_1a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4e_1a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4e_1a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_4e_1a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4e_1a_1x1_bn/beta/momentum3Conv3d_4e_1a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_4e_1a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4e_1a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4e_1a_1x1_bn/beta*
_output_shapes	
:Р*
dtype0
≠
3Conv3d_4e_2a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4e_2a_1x1_bn/beta*
_output_shapes
: *
dtype0*
valueB *    
п
!Conv3d_4e_2a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4e_2a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *2
shared_name#!Conv3d_4e_2a_1x1_bn/beta/momentum
ј
BConv3d_4e_2a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4e_2a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4e_2a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_4e_2a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4e_2a_1x1_bn/beta/momentum3Conv3d_4e_2a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_4e_2a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4e_2a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4e_2a_1x1_bn/beta*
_output_shapes
: *
dtype0
’
GConv3d_4e_0a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4e_0a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            p   
≥
=Conv3d_4e_0a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4e_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_4e_0a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_4e_0a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4e_0a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4e_0a_1x1_conv/kernel*+
_output_shapes
:Аp*

index_type0
М
%Conv3d_4e_0a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4e_0a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:Аp*6
shared_name'%Conv3d_4e_0a_1x1_conv/kernel/momentum
ћ
FConv3d_4e_0a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4e_0a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4e_0a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4e_0a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4e_0a_1x1_conv/kernel/momentum7Conv3d_4e_0a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_4e_0a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4e_0a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4e_0a_1x1_conv/kernel*+
_output_shapes
:Аp*
dtype0
’
GConv3d_4e_1b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4e_1b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         Р      
≥
=Conv3d_4e_1b_3x3_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4e_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
7Conv3d_4e_1b_3x3_conv/kernel/momentum/Initializer/zerosFillGConv3d_4e_1b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4e_1b_3x3_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4e_1b_3x3_conv/kernel*,
_output_shapes
:Р†*

index_type0
Н
%Conv3d_4e_1b_3x3_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4e_1b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:Р†*6
shared_name'%Conv3d_4e_1b_3x3_conv/kernel/momentum
ћ
FConv3d_4e_1b_3x3_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4e_1b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4e_1b_3x3_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4e_1b_3x3_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4e_1b_3x3_conv/kernel/momentum7Conv3d_4e_1b_3x3_conv/kernel/momentum/Initializer/zeros*
dtype0
ё
9Conv3d_4e_1b_3x3_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4e_1b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4e_1b_3x3_conv/kernel*,
_output_shapes
:Р†*
dtype0
’
GConv3d_4e_2b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4e_2b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"             @   
≥
=Conv3d_4e_2b_3x3_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4e_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
њ
7Conv3d_4e_2b_3x3_conv/kernel/momentum/Initializer/zerosFillGConv3d_4e_2b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4e_2b_3x3_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4e_2b_3x3_conv/kernel**
_output_shapes
: @*

index_type0
Л
%Conv3d_4e_2b_3x3_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4e_2b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: @*6
shared_name'%Conv3d_4e_2b_3x3_conv/kernel/momentum
ћ
FConv3d_4e_2b_3x3_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4e_2b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4e_2b_3x3_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4e_2b_3x3_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4e_2b_3x3_conv/kernel/momentum7Conv3d_4e_2b_3x3_conv/kernel/momentum/Initializer/zeros*
dtype0
№
9Conv3d_4e_2b_3x3_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4e_2b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4e_2b_3x3_conv/kernel**
_output_shapes
: @*
dtype0
’
GConv3d_4e_3b_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4e_3b_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            @   
≥
=Conv3d_4e_3b_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4e_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_4e_3b_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_4e_3b_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4e_3b_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4e_3b_1x1_conv/kernel*+
_output_shapes
:А@*

index_type0
М
%Conv3d_4e_3b_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4e_3b_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:А@*6
shared_name'%Conv3d_4e_3b_1x1_conv/kernel/momentum
ћ
FConv3d_4e_3b_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4e_3b_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4e_3b_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4e_3b_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4e_3b_1x1_conv/kernel/momentum7Conv3d_4e_3b_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_4e_3b_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4e_3b_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4e_3b_1x1_conv/kernel*+
_output_shapes
:А@*
dtype0
≠
3Conv3d_4e_0a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4e_0a_1x1_bn/beta*
_output_shapes
:p*
dtype0*
valueBp*    
п
!Conv3d_4e_0a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4e_0a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:p*2
shared_name#!Conv3d_4e_0a_1x1_bn/beta/momentum
ј
BConv3d_4e_0a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4e_0a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4e_0a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_4e_0a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4e_0a_1x1_bn/beta/momentum3Conv3d_4e_0a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_4e_0a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4e_0a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4e_0a_1x1_bn/beta*
_output_shapes
:p*
dtype0
ѓ
3Conv3d_4e_1b_3x3_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4e_1b_3x3_bn/beta*
_output_shapes	
:†*
dtype0*
valueB†*    
р
!Conv3d_4e_1b_3x3_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4e_1b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:†*2
shared_name#!Conv3d_4e_1b_3x3_bn/beta/momentum
ј
BConv3d_4e_1b_3x3_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4e_1b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_4e_1b_3x3_bn/beta*
_output_shapes
: 
°
(Conv3d_4e_1b_3x3_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4e_1b_3x3_bn/beta/momentum3Conv3d_4e_1b_3x3_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_4e_1b_3x3_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4e_1b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_4e_1b_3x3_bn/beta*
_output_shapes	
:†*
dtype0
≠
3Conv3d_4e_2b_3x3_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4e_2b_3x3_bn/beta*
_output_shapes
:@*
dtype0*
valueB@*    
п
!Conv3d_4e_2b_3x3_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4e_2b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*2
shared_name#!Conv3d_4e_2b_3x3_bn/beta/momentum
ј
BConv3d_4e_2b_3x3_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4e_2b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_4e_2b_3x3_bn/beta*
_output_shapes
: 
°
(Conv3d_4e_2b_3x3_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4e_2b_3x3_bn/beta/momentum3Conv3d_4e_2b_3x3_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_4e_2b_3x3_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4e_2b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_4e_2b_3x3_bn/beta*
_output_shapes
:@*
dtype0
≠
3Conv3d_4e_3b_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4e_3b_1x1_bn/beta*
_output_shapes
:@*
dtype0*
valueB@*    
п
!Conv3d_4e_3b_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4e_3b_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*2
shared_name#!Conv3d_4e_3b_1x1_bn/beta/momentum
ј
BConv3d_4e_3b_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4e_3b_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4e_3b_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_4e_3b_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4e_3b_1x1_bn/beta/momentum3Conv3d_4e_3b_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_4e_3b_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4e_3b_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4e_3b_1x1_bn/beta*
_output_shapes
:@*
dtype0
’
GConv3d_4f_1a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4f_1a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"           †   
≥
=Conv3d_4f_1a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4f_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
7Conv3d_4f_1a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_4f_1a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4f_1a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4f_1a_1x1_conv/kernel*,
_output_shapes
:Р†*

index_type0
Н
%Conv3d_4f_1a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4f_1a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:Р†*6
shared_name'%Conv3d_4f_1a_1x1_conv/kernel/momentum
ћ
FConv3d_4f_1a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4f_1a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4f_1a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4f_1a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4f_1a_1x1_conv/kernel/momentum7Conv3d_4f_1a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
ё
9Conv3d_4f_1a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4f_1a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4f_1a_1x1_conv/kernel*,
_output_shapes
:Р†*
dtype0
’
GConv3d_4f_2a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4f_2a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"               
≥
=Conv3d_4f_2a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4f_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_4f_2a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_4f_2a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4f_2a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4f_2a_1x1_conv/kernel*+
_output_shapes
:Р *

index_type0
М
%Conv3d_4f_2a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4f_2a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:Р *6
shared_name'%Conv3d_4f_2a_1x1_conv/kernel/momentum
ћ
FConv3d_4f_2a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4f_2a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4f_2a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4f_2a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4f_2a_1x1_conv/kernel/momentum7Conv3d_4f_2a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_4f_2a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4f_2a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4f_2a_1x1_conv/kernel*+
_output_shapes
:Р *
dtype0
ѓ
3Conv3d_4f_1a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4f_1a_1x1_bn/beta*
_output_shapes	
:†*
dtype0*
valueB†*    
р
!Conv3d_4f_1a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4f_1a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:†*2
shared_name#!Conv3d_4f_1a_1x1_bn/beta/momentum
ј
BConv3d_4f_1a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4f_1a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4f_1a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_4f_1a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4f_1a_1x1_bn/beta/momentum3Conv3d_4f_1a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_4f_1a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4f_1a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4f_1a_1x1_bn/beta*
_output_shapes	
:†*
dtype0
≠
3Conv3d_4f_2a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4f_2a_1x1_bn/beta*
_output_shapes
: *
dtype0*
valueB *    
п
!Conv3d_4f_2a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4f_2a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *2
shared_name#!Conv3d_4f_2a_1x1_bn/beta/momentum
ј
BConv3d_4f_2a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4f_2a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4f_2a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_4f_2a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4f_2a_1x1_bn/beta/momentum3Conv3d_4f_2a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_4f_2a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4f_2a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4f_2a_1x1_bn/beta*
_output_shapes
: *
dtype0
’
GConv3d_4f_0a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4f_0a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"              
≥
=Conv3d_4f_0a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4f_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
7Conv3d_4f_0a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_4f_0a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4f_0a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4f_0a_1x1_conv/kernel*,
_output_shapes
:РА*

index_type0
Н
%Conv3d_4f_0a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4f_0a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:РА*6
shared_name'%Conv3d_4f_0a_1x1_conv/kernel/momentum
ћ
FConv3d_4f_0a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4f_0a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4f_0a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4f_0a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4f_0a_1x1_conv/kernel/momentum7Conv3d_4f_0a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
ё
9Conv3d_4f_0a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4f_0a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4f_0a_1x1_conv/kernel*,
_output_shapes
:РА*
dtype0
’
GConv3d_4f_1b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4f_1b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         †   @  
≥
=Conv3d_4f_1b_3x3_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4f_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
7Conv3d_4f_1b_3x3_conv/kernel/momentum/Initializer/zerosFillGConv3d_4f_1b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4f_1b_3x3_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4f_1b_3x3_conv/kernel*,
_output_shapes
:†ј*

index_type0
Н
%Conv3d_4f_1b_3x3_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4f_1b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:†ј*6
shared_name'%Conv3d_4f_1b_3x3_conv/kernel/momentum
ћ
FConv3d_4f_1b_3x3_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4f_1b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4f_1b_3x3_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4f_1b_3x3_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4f_1b_3x3_conv/kernel/momentum7Conv3d_4f_1b_3x3_conv/kernel/momentum/Initializer/zeros*
dtype0
ё
9Conv3d_4f_1b_3x3_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4f_1b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4f_1b_3x3_conv/kernel*,
_output_shapes
:†ј*
dtype0
’
GConv3d_4f_2b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4f_2b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"             А   
≥
=Conv3d_4f_2b_3x3_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4f_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_4f_2b_3x3_conv/kernel/momentum/Initializer/zerosFillGConv3d_4f_2b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4f_2b_3x3_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4f_2b_3x3_conv/kernel*+
_output_shapes
: А*

index_type0
М
%Conv3d_4f_2b_3x3_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4f_2b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape: А*6
shared_name'%Conv3d_4f_2b_3x3_conv/kernel/momentum
ћ
FConv3d_4f_2b_3x3_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4f_2b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4f_2b_3x3_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4f_2b_3x3_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4f_2b_3x3_conv/kernel/momentum7Conv3d_4f_2b_3x3_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_4f_2b_3x3_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4f_2b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4f_2b_3x3_conv/kernel*+
_output_shapes
: А*
dtype0
’
GConv3d_4f_3b_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_4f_3b_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"           А   
≥
=Conv3d_4f_3b_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_4f_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
7Conv3d_4f_3b_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_4f_3b_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_4f_3b_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_4f_3b_1x1_conv/kernel*,
_output_shapes
:РА*

index_type0
Н
%Conv3d_4f_3b_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_4f_3b_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:РА*6
shared_name'%Conv3d_4f_3b_1x1_conv/kernel/momentum
ћ
FConv3d_4f_3b_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_4f_3b_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4f_3b_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_4f_3b_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_4f_3b_1x1_conv/kernel/momentum7Conv3d_4f_3b_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
ё
9Conv3d_4f_3b_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_4f_3b_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_4f_3b_1x1_conv/kernel*,
_output_shapes
:РА*
dtype0
ѓ
3Conv3d_4f_0a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4f_0a_1x1_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
р
!Conv3d_4f_0a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4f_0a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*2
shared_name#!Conv3d_4f_0a_1x1_bn/beta/momentum
ј
BConv3d_4f_0a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4f_0a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4f_0a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_4f_0a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4f_0a_1x1_bn/beta/momentum3Conv3d_4f_0a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_4f_0a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4f_0a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4f_0a_1x1_bn/beta*
_output_shapes	
:А*
dtype0
ѓ
3Conv3d_4f_1b_3x3_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4f_1b_3x3_bn/beta*
_output_shapes	
:ј*
dtype0*
valueBј*    
р
!Conv3d_4f_1b_3x3_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4f_1b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:ј*2
shared_name#!Conv3d_4f_1b_3x3_bn/beta/momentum
ј
BConv3d_4f_1b_3x3_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4f_1b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_4f_1b_3x3_bn/beta*
_output_shapes
: 
°
(Conv3d_4f_1b_3x3_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4f_1b_3x3_bn/beta/momentum3Conv3d_4f_1b_3x3_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_4f_1b_3x3_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4f_1b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_4f_1b_3x3_bn/beta*
_output_shapes	
:ј*
dtype0
ѓ
3Conv3d_4f_2b_3x3_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4f_2b_3x3_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
р
!Conv3d_4f_2b_3x3_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4f_2b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*2
shared_name#!Conv3d_4f_2b_3x3_bn/beta/momentum
ј
BConv3d_4f_2b_3x3_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4f_2b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_4f_2b_3x3_bn/beta*
_output_shapes
: 
°
(Conv3d_4f_2b_3x3_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4f_2b_3x3_bn/beta/momentum3Conv3d_4f_2b_3x3_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_4f_2b_3x3_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4f_2b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_4f_2b_3x3_bn/beta*
_output_shapes	
:А*
dtype0
ѓ
3Conv3d_4f_3b_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_4f_3b_1x1_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
р
!Conv3d_4f_3b_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_4f_3b_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*2
shared_name#!Conv3d_4f_3b_1x1_bn/beta/momentum
ј
BConv3d_4f_3b_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_4f_3b_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4f_3b_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_4f_3b_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_4f_3b_1x1_bn/beta/momentum3Conv3d_4f_3b_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_4f_3b_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_4f_3b_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_4f_3b_1x1_bn/beta*
_output_shapes	
:А*
dtype0
’
GConv3d_5b_1a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_5b_1a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         @  †   
≥
=Conv3d_5b_1a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_5b_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
7Conv3d_5b_1a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_5b_1a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_5b_1a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_5b_1a_1x1_conv/kernel*,
_output_shapes
:ј†*

index_type0
Н
%Conv3d_5b_1a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_5b_1a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:ј†*6
shared_name'%Conv3d_5b_1a_1x1_conv/kernel/momentum
ћ
FConv3d_5b_1a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_5b_1a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_5b_1a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_5b_1a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_5b_1a_1x1_conv/kernel/momentum7Conv3d_5b_1a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
ё
9Conv3d_5b_1a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_5b_1a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_5b_1a_1x1_conv/kernel*,
_output_shapes
:ј†*
dtype0
’
GConv3d_5b_2a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_5b_2a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         @      
≥
=Conv3d_5b_2a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_5b_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_5b_2a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_5b_2a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_5b_2a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_5b_2a_1x1_conv/kernel*+
_output_shapes
:ј *

index_type0
М
%Conv3d_5b_2a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_5b_2a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:ј *6
shared_name'%Conv3d_5b_2a_1x1_conv/kernel/momentum
ћ
FConv3d_5b_2a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_5b_2a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_5b_2a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_5b_2a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_5b_2a_1x1_conv/kernel/momentum7Conv3d_5b_2a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_5b_2a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_5b_2a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_5b_2a_1x1_conv/kernel*+
_output_shapes
:ј *
dtype0
ѓ
3Conv3d_5b_1a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_5b_1a_1x1_bn/beta*
_output_shapes	
:†*
dtype0*
valueB†*    
р
!Conv3d_5b_1a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_5b_1a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:†*2
shared_name#!Conv3d_5b_1a_1x1_bn/beta/momentum
ј
BConv3d_5b_1a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_5b_1a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_5b_1a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_5b_1a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_5b_1a_1x1_bn/beta/momentum3Conv3d_5b_1a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_5b_1a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_5b_1a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_5b_1a_1x1_bn/beta*
_output_shapes	
:†*
dtype0
≠
3Conv3d_5b_2a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_5b_2a_1x1_bn/beta*
_output_shapes
: *
dtype0*
valueB *    
п
!Conv3d_5b_2a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_5b_2a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *2
shared_name#!Conv3d_5b_2a_1x1_bn/beta/momentum
ј
BConv3d_5b_2a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_5b_2a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_5b_2a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_5b_2a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_5b_2a_1x1_bn/beta/momentum3Conv3d_5b_2a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_5b_2a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_5b_2a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_5b_2a_1x1_bn/beta*
_output_shapes
: *
dtype0
’
GConv3d_5b_0a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_5b_0a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         @     
≥
=Conv3d_5b_0a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_5b_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
7Conv3d_5b_0a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_5b_0a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_5b_0a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_5b_0a_1x1_conv/kernel*,
_output_shapes
:јА*

index_type0
Н
%Conv3d_5b_0a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_5b_0a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:јА*6
shared_name'%Conv3d_5b_0a_1x1_conv/kernel/momentum
ћ
FConv3d_5b_0a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_5b_0a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_5b_0a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_5b_0a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_5b_0a_1x1_conv/kernel/momentum7Conv3d_5b_0a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
ё
9Conv3d_5b_0a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_5b_0a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_5b_0a_1x1_conv/kernel*,
_output_shapes
:јА*
dtype0
’
GConv3d_5b_1b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_5b_1b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         †   @  
≥
=Conv3d_5b_1b_3x3_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_5b_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
7Conv3d_5b_1b_3x3_conv/kernel/momentum/Initializer/zerosFillGConv3d_5b_1b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_5b_1b_3x3_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_5b_1b_3x3_conv/kernel*,
_output_shapes
:†ј*

index_type0
Н
%Conv3d_5b_1b_3x3_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_5b_1b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:†ј*6
shared_name'%Conv3d_5b_1b_3x3_conv/kernel/momentum
ћ
FConv3d_5b_1b_3x3_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_5b_1b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_5b_1b_3x3_conv/kernel*
_output_shapes
: 
≠
,Conv3d_5b_1b_3x3_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_5b_1b_3x3_conv/kernel/momentum7Conv3d_5b_1b_3x3_conv/kernel/momentum/Initializer/zeros*
dtype0
ё
9Conv3d_5b_1b_3x3_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_5b_1b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_5b_1b_3x3_conv/kernel*,
_output_shapes
:†ј*
dtype0
’
GConv3d_5b_2b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_5b_2b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"             А   
≥
=Conv3d_5b_2b_3x3_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_5b_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_5b_2b_3x3_conv/kernel/momentum/Initializer/zerosFillGConv3d_5b_2b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_5b_2b_3x3_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_5b_2b_3x3_conv/kernel*+
_output_shapes
: А*

index_type0
М
%Conv3d_5b_2b_3x3_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_5b_2b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape: А*6
shared_name'%Conv3d_5b_2b_3x3_conv/kernel/momentum
ћ
FConv3d_5b_2b_3x3_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_5b_2b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_5b_2b_3x3_conv/kernel*
_output_shapes
: 
≠
,Conv3d_5b_2b_3x3_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_5b_2b_3x3_conv/kernel/momentum7Conv3d_5b_2b_3x3_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_5b_2b_3x3_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_5b_2b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_5b_2b_3x3_conv/kernel*+
_output_shapes
: А*
dtype0
’
GConv3d_5b_3b_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_5b_3b_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         @  А   
≥
=Conv3d_5b_3b_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_5b_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
7Conv3d_5b_3b_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_5b_3b_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_5b_3b_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_5b_3b_1x1_conv/kernel*,
_output_shapes
:јА*

index_type0
Н
%Conv3d_5b_3b_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_5b_3b_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:јА*6
shared_name'%Conv3d_5b_3b_1x1_conv/kernel/momentum
ћ
FConv3d_5b_3b_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_5b_3b_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_5b_3b_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_5b_3b_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_5b_3b_1x1_conv/kernel/momentum7Conv3d_5b_3b_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
ё
9Conv3d_5b_3b_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_5b_3b_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_5b_3b_1x1_conv/kernel*,
_output_shapes
:јА*
dtype0
ѓ
3Conv3d_5b_0a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_5b_0a_1x1_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
р
!Conv3d_5b_0a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_5b_0a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*2
shared_name#!Conv3d_5b_0a_1x1_bn/beta/momentum
ј
BConv3d_5b_0a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_5b_0a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_5b_0a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_5b_0a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_5b_0a_1x1_bn/beta/momentum3Conv3d_5b_0a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_5b_0a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_5b_0a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_5b_0a_1x1_bn/beta*
_output_shapes	
:А*
dtype0
ѓ
3Conv3d_5b_1b_3x3_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_5b_1b_3x3_bn/beta*
_output_shapes	
:ј*
dtype0*
valueBј*    
р
!Conv3d_5b_1b_3x3_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_5b_1b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:ј*2
shared_name#!Conv3d_5b_1b_3x3_bn/beta/momentum
ј
BConv3d_5b_1b_3x3_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_5b_1b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_5b_1b_3x3_bn/beta*
_output_shapes
: 
°
(Conv3d_5b_1b_3x3_bn/beta/momentum/AssignAssignVariableOp!Conv3d_5b_1b_3x3_bn/beta/momentum3Conv3d_5b_1b_3x3_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_5b_1b_3x3_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_5b_1b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_5b_1b_3x3_bn/beta*
_output_shapes	
:ј*
dtype0
ѓ
3Conv3d_5b_2b_3x3_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_5b_2b_3x3_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
р
!Conv3d_5b_2b_3x3_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_5b_2b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*2
shared_name#!Conv3d_5b_2b_3x3_bn/beta/momentum
ј
BConv3d_5b_2b_3x3_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_5b_2b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_5b_2b_3x3_bn/beta*
_output_shapes
: 
°
(Conv3d_5b_2b_3x3_bn/beta/momentum/AssignAssignVariableOp!Conv3d_5b_2b_3x3_bn/beta/momentum3Conv3d_5b_2b_3x3_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_5b_2b_3x3_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_5b_2b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_5b_2b_3x3_bn/beta*
_output_shapes	
:А*
dtype0
ѓ
3Conv3d_5b_3b_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_5b_3b_1x1_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
р
!Conv3d_5b_3b_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_5b_3b_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*2
shared_name#!Conv3d_5b_3b_1x1_bn/beta/momentum
ј
BConv3d_5b_3b_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_5b_3b_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_5b_3b_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_5b_3b_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_5b_3b_1x1_bn/beta/momentum3Conv3d_5b_3b_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_5b_3b_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_5b_3b_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_5b_3b_1x1_bn/beta*
_output_shapes	
:А*
dtype0
’
GConv3d_5c_1a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_5c_1a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         @  ј   
≥
=Conv3d_5c_1a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_5c_1a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
7Conv3d_5c_1a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_5c_1a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_5c_1a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_5c_1a_1x1_conv/kernel*,
_output_shapes
:јј*

index_type0
Н
%Conv3d_5c_1a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_5c_1a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:јј*6
shared_name'%Conv3d_5c_1a_1x1_conv/kernel/momentum
ћ
FConv3d_5c_1a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_5c_1a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_5c_1a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_5c_1a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_5c_1a_1x1_conv/kernel/momentum7Conv3d_5c_1a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
ё
9Conv3d_5c_1a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_5c_1a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_5c_1a_1x1_conv/kernel*,
_output_shapes
:јј*
dtype0
’
GConv3d_5c_2a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_5c_2a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         @  0   
≥
=Conv3d_5c_2a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_5c_2a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_5c_2a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_5c_2a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_5c_2a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_5c_2a_1x1_conv/kernel*+
_output_shapes
:ј0*

index_type0
М
%Conv3d_5c_2a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_5c_2a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:ј0*6
shared_name'%Conv3d_5c_2a_1x1_conv/kernel/momentum
ћ
FConv3d_5c_2a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_5c_2a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_5c_2a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_5c_2a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_5c_2a_1x1_conv/kernel/momentum7Conv3d_5c_2a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_5c_2a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_5c_2a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_5c_2a_1x1_conv/kernel*+
_output_shapes
:ј0*
dtype0
ѓ
3Conv3d_5c_1a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_5c_1a_1x1_bn/beta*
_output_shapes	
:ј*
dtype0*
valueBј*    
р
!Conv3d_5c_1a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_5c_1a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:ј*2
shared_name#!Conv3d_5c_1a_1x1_bn/beta/momentum
ј
BConv3d_5c_1a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_5c_1a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_5c_1a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_5c_1a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_5c_1a_1x1_bn/beta/momentum3Conv3d_5c_1a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_5c_1a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_5c_1a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_5c_1a_1x1_bn/beta*
_output_shapes	
:ј*
dtype0
≠
3Conv3d_5c_2a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_5c_2a_1x1_bn/beta*
_output_shapes
:0*
dtype0*
valueB0*    
п
!Conv3d_5c_2a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_5c_2a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:0*2
shared_name#!Conv3d_5c_2a_1x1_bn/beta/momentum
ј
BConv3d_5c_2a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_5c_2a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_5c_2a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_5c_2a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_5c_2a_1x1_bn/beta/momentum3Conv3d_5c_2a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
ј
5Conv3d_5c_2a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_5c_2a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_5c_2a_1x1_bn/beta*
_output_shapes
:0*
dtype0
’
GConv3d_5c_0a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_5c_0a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         @  А  
≥
=Conv3d_5c_0a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_5c_0a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
7Conv3d_5c_0a_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_5c_0a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_5c_0a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_5c_0a_1x1_conv/kernel*,
_output_shapes
:јА*

index_type0
Н
%Conv3d_5c_0a_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_5c_0a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:јА*6
shared_name'%Conv3d_5c_0a_1x1_conv/kernel/momentum
ћ
FConv3d_5c_0a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_5c_0a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_5c_0a_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_5c_0a_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_5c_0a_1x1_conv/kernel/momentum7Conv3d_5c_0a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
ё
9Conv3d_5c_0a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_5c_0a_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_5c_0a_1x1_conv/kernel*,
_output_shapes
:јА*
dtype0
’
GConv3d_5c_1b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_5c_1b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         ј   А  
≥
=Conv3d_5c_1b_3x3_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_5c_1b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
7Conv3d_5c_1b_3x3_conv/kernel/momentum/Initializer/zerosFillGConv3d_5c_1b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_5c_1b_3x3_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_5c_1b_3x3_conv/kernel*,
_output_shapes
:јА*

index_type0
Н
%Conv3d_5c_1b_3x3_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_5c_1b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:јА*6
shared_name'%Conv3d_5c_1b_3x3_conv/kernel/momentum
ћ
FConv3d_5c_1b_3x3_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_5c_1b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_5c_1b_3x3_conv/kernel*
_output_shapes
: 
≠
,Conv3d_5c_1b_3x3_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_5c_1b_3x3_conv/kernel/momentum7Conv3d_5c_1b_3x3_conv/kernel/momentum/Initializer/zeros*
dtype0
ё
9Conv3d_5c_1b_3x3_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_5c_1b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_5c_1b_3x3_conv/kernel*,
_output_shapes
:јА*
dtype0
’
GConv3d_5c_2b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_5c_2b_3x3_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         0   А   
≥
=Conv3d_5c_2b_3x3_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_5c_2b_3x3_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
ј
7Conv3d_5c_2b_3x3_conv/kernel/momentum/Initializer/zerosFillGConv3d_5c_2b_3x3_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_5c_2b_3x3_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_5c_2b_3x3_conv/kernel*+
_output_shapes
:0А*

index_type0
М
%Conv3d_5c_2b_3x3_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_5c_2b_3x3_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:0А*6
shared_name'%Conv3d_5c_2b_3x3_conv/kernel/momentum
ћ
FConv3d_5c_2b_3x3_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_5c_2b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_5c_2b_3x3_conv/kernel*
_output_shapes
: 
≠
,Conv3d_5c_2b_3x3_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_5c_2b_3x3_conv/kernel/momentum7Conv3d_5c_2b_3x3_conv/kernel/momentum/Initializer/zeros*
dtype0
Ё
9Conv3d_5c_2b_3x3_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_5c_2b_3x3_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_5c_2b_3x3_conv/kernel*+
_output_shapes
:0А*
dtype0
’
GConv3d_5c_3b_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*/
_class%
#!loc:@Conv3d_5c_3b_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"         @  А   
≥
=Conv3d_5c_3b_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*/
_class%
#!loc:@Conv3d_5c_3b_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
Ѕ
7Conv3d_5c_3b_1x1_conv/kernel/momentum/Initializer/zerosFillGConv3d_5c_3b_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor=Conv3d_5c_3b_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*/
_class%
#!loc:@Conv3d_5c_3b_1x1_conv/kernel*,
_output_shapes
:јА*

index_type0
Н
%Conv3d_5c_3b_1x1_conv/kernel/momentumVarHandleOp*/
_class%
#!loc:@Conv3d_5c_3b_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*!
shape:јА*6
shared_name'%Conv3d_5c_3b_1x1_conv/kernel/momentum
ћ
FConv3d_5c_3b_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp%Conv3d_5c_3b_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_5c_3b_1x1_conv/kernel*
_output_shapes
: 
≠
,Conv3d_5c_3b_1x1_conv/kernel/momentum/AssignAssignVariableOp%Conv3d_5c_3b_1x1_conv/kernel/momentum7Conv3d_5c_3b_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
ё
9Conv3d_5c_3b_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp%Conv3d_5c_3b_1x1_conv/kernel/momentum*/
_class%
#!loc:@Conv3d_5c_3b_1x1_conv/kernel*,
_output_shapes
:јА*
dtype0
ѓ
3Conv3d_5c_0a_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_5c_0a_1x1_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
р
!Conv3d_5c_0a_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_5c_0a_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*2
shared_name#!Conv3d_5c_0a_1x1_bn/beta/momentum
ј
BConv3d_5c_0a_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_5c_0a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_5c_0a_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_5c_0a_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_5c_0a_1x1_bn/beta/momentum3Conv3d_5c_0a_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_5c_0a_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_5c_0a_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_5c_0a_1x1_bn/beta*
_output_shapes	
:А*
dtype0
ѓ
3Conv3d_5c_1b_3x3_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_5c_1b_3x3_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
р
!Conv3d_5c_1b_3x3_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_5c_1b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*2
shared_name#!Conv3d_5c_1b_3x3_bn/beta/momentum
ј
BConv3d_5c_1b_3x3_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_5c_1b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_5c_1b_3x3_bn/beta*
_output_shapes
: 
°
(Conv3d_5c_1b_3x3_bn/beta/momentum/AssignAssignVariableOp!Conv3d_5c_1b_3x3_bn/beta/momentum3Conv3d_5c_1b_3x3_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_5c_1b_3x3_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_5c_1b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_5c_1b_3x3_bn/beta*
_output_shapes	
:А*
dtype0
ѓ
3Conv3d_5c_2b_3x3_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_5c_2b_3x3_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
р
!Conv3d_5c_2b_3x3_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_5c_2b_3x3_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*2
shared_name#!Conv3d_5c_2b_3x3_bn/beta/momentum
ј
BConv3d_5c_2b_3x3_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_5c_2b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_5c_2b_3x3_bn/beta*
_output_shapes
: 
°
(Conv3d_5c_2b_3x3_bn/beta/momentum/AssignAssignVariableOp!Conv3d_5c_2b_3x3_bn/beta/momentum3Conv3d_5c_2b_3x3_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_5c_2b_3x3_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_5c_2b_3x3_bn/beta/momentum*+
_class!
loc:@Conv3d_5c_2b_3x3_bn/beta*
_output_shapes	
:А*
dtype0
ѓ
3Conv3d_5c_3b_1x1_bn/beta/momentum/Initializer/zerosConst*+
_class!
loc:@Conv3d_5c_3b_1x1_bn/beta*
_output_shapes	
:А*
dtype0*
valueBА*    
р
!Conv3d_5c_3b_1x1_bn/beta/momentumVarHandleOp*+
_class!
loc:@Conv3d_5c_3b_1x1_bn/beta*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:А*2
shared_name#!Conv3d_5c_3b_1x1_bn/beta/momentum
ј
BConv3d_5c_3b_1x1_bn/beta/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp!Conv3d_5c_3b_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_5c_3b_1x1_bn/beta*
_output_shapes
: 
°
(Conv3d_5c_3b_1x1_bn/beta/momentum/AssignAssignVariableOp!Conv3d_5c_3b_1x1_bn/beta/momentum3Conv3d_5c_3b_1x1_bn/beta/momentum/Initializer/zeros*
dtype0
Ѕ
5Conv3d_5c_3b_1x1_bn/beta/momentum/Read/ReadVariableOpReadVariableOp!Conv3d_5c_3b_1x1_bn/beta/momentum*+
_class!
loc:@Conv3d_5c_3b_1x1_bn/beta*
_output_shapes	
:А*
dtype0
ѕ
DConv3d_6a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensorConst*,
_class"
 loc:@Conv3d_6a_1x1_conv/kernel*
_output_shapes
:*
dtype0*)
value B"            2   
≠
:Conv3d_6a_1x1_conv/kernel/momentum/Initializer/zeros/ConstConst*,
_class"
 loc:@Conv3d_6a_1x1_conv/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
і
4Conv3d_6a_1x1_conv/kernel/momentum/Initializer/zerosFillDConv3d_6a_1x1_conv/kernel/momentum/Initializer/zeros/shape_as_tensor:Conv3d_6a_1x1_conv/kernel/momentum/Initializer/zeros/Const*
T0*,
_class"
 loc:@Conv3d_6a_1x1_conv/kernel*+
_output_shapes
:А2*

index_type0
Г
"Conv3d_6a_1x1_conv/kernel/momentumVarHandleOp*,
_class"
 loc:@Conv3d_6a_1x1_conv/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0* 
shape:А2*3
shared_name$"Conv3d_6a_1x1_conv/kernel/momentum
√
CConv3d_6a_1x1_conv/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp"Conv3d_6a_1x1_conv/kernel/momentum*,
_class"
 loc:@Conv3d_6a_1x1_conv/kernel*
_output_shapes
: 
§
)Conv3d_6a_1x1_conv/kernel/momentum/AssignAssignVariableOp"Conv3d_6a_1x1_conv/kernel/momentum4Conv3d_6a_1x1_conv/kernel/momentum/Initializer/zeros*
dtype0
‘
6Conv3d_6a_1x1_conv/kernel/momentum/Read/ReadVariableOpReadVariableOp"Conv3d_6a_1x1_conv/kernel/momentum*,
_class"
 loc:@Conv3d_6a_1x1_conv/kernel*+
_output_shapes
:А2*
dtype0
Ђ
2Conv3d_6a_1x1_conv/bias/momentum/Initializer/zerosConst**
_class 
loc:@Conv3d_6a_1x1_conv/bias*
_output_shapes
:2*
dtype0*
valueB2*    
м
 Conv3d_6a_1x1_conv/bias/momentumVarHandleOp**
_class 
loc:@Conv3d_6a_1x1_conv/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:2*1
shared_name" Conv3d_6a_1x1_conv/bias/momentum
љ
AConv3d_6a_1x1_conv/bias/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOp Conv3d_6a_1x1_conv/bias/momentum**
_class 
loc:@Conv3d_6a_1x1_conv/bias*
_output_shapes
: 
Ю
'Conv3d_6a_1x1_conv/bias/momentum/AssignAssignVariableOp Conv3d_6a_1x1_conv/bias/momentum2Conv3d_6a_1x1_conv/bias/momentum/Initializer/zeros*
dtype0
љ
4Conv3d_6a_1x1_conv/bias/momentum/Read/ReadVariableOpReadVariableOp Conv3d_6a_1x1_conv/bias/momentum**
_class 
loc:@Conv3d_6a_1x1_conv/bias*
_output_shapes
:2*
dtype0
©
7dense/kernel/momentum/Initializer/zeros/shape_as_tensorConst*
_class
loc:@dense/kernel*
_output_shapes
:*
dtype0*
valueB"d   2   
У
-dense/kernel/momentum/Initializer/zeros/ConstConst*
_class
loc:@dense/kernel*
_output_shapes
: *
dtype0*
valueB
 *    
у
'dense/kernel/momentum/Initializer/zerosFill7dense/kernel/momentum/Initializer/zeros/shape_as_tensor-dense/kernel/momentum/Initializer/zeros/Const*
T0*
_class
loc:@dense/kernel*
_output_shapes

:d2*

index_type0
ѕ
dense/kernel/momentumVarHandleOp*
_class
loc:@dense/kernel*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape
:d2*&
shared_namedense/kernel/momentum
Ь
6dense/kernel/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/kernel/momentum*
_class
loc:@dense/kernel*
_output_shapes
: 
}
dense/kernel/momentum/AssignAssignVariableOpdense/kernel/momentum'dense/kernel/momentum/Initializer/zeros*
dtype0
†
)dense/kernel/momentum/Read/ReadVariableOpReadVariableOpdense/kernel/momentum*
_class
loc:@dense/kernel*
_output_shapes

:d2*
dtype0
С
%dense/bias/momentum/Initializer/zerosConst*
_class
loc:@dense/bias*
_output_shapes
:2*
dtype0*
valueB2*    
≈
dense/bias/momentumVarHandleOp*
_class
loc:@dense/bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:2*$
shared_namedense/bias/momentum
Ц
4dense/bias/momentum/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense/bias/momentum*
_class
loc:@dense/bias*
_output_shapes
: 
w
dense/bias/momentum/AssignAssignVariableOpdense/bias/momentum%dense/bias/momentum/Initializer/zeros*
dtype0
Ц
'dense/bias/momentum/Read/ReadVariableOpReadVariableOpdense/bias/momentum*
_class
loc:@dense/bias*
_output_shapes
:2*
dtype0
g
VarIsInitializedOp_232VarIsInitializedOp!Conv3d_3b_1b_3x3_bn/beta/momentum*
_output_shapes
: 
k
VarIsInitializedOp_233VarIsInitializedOp%Conv3d_5c_0a_1x1_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_234VarIsInitializedOp%Conv3d_4f_3b_1x1_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_235VarIsInitializedOp%Conv3d_4d_3b_1x1_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_236VarIsInitializedOp%Conv3d_4e_2b_3x3_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_237VarIsInitializedOp!Conv3d_4f_0a_1x1_bn/beta/momentum*
_output_shapes
: 
f
VarIsInitializedOp_238VarIsInitializedOp Conv3d_6a_1x1_conv/bias/momentum*
_output_shapes
: 
g
VarIsInitializedOp_239VarIsInitializedOp!Conv3d_4f_1a_1x1_bn/beta/momentum*
_output_shapes
: 
d
VarIsInitializedOp_240VarIsInitializedOpConv3d_2c_3x3_bn/beta/momentum*
_output_shapes
: 
k
VarIsInitializedOp_241VarIsInitializedOp%Conv3d_3b_1b_3x3_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_242VarIsInitializedOp!Conv3d_3b_0a_1x1_bn/beta/momentum*
_output_shapes
: 
k
VarIsInitializedOp_243VarIsInitializedOp%Conv3d_4c_3b_1x1_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_244VarIsInitializedOp!Conv3d_4d_2b_3x3_bn/beta/momentum*
_output_shapes
: 
g
VarIsInitializedOp_245VarIsInitializedOp!Conv3d_3c_2a_1x1_bn/beta/momentum*
_output_shapes
: 
g
VarIsInitializedOp_246VarIsInitializedOp!Conv3d_5c_0a_1x1_bn/beta/momentum*
_output_shapes
: 
g
VarIsInitializedOp_247VarIsInitializedOp!Conv3d_5c_1b_3x3_bn/beta/momentum*
_output_shapes
: 
g
VarIsInitializedOp_248VarIsInitializedOp!Conv3d_4c_3b_1x1_bn/beta/momentum*
_output_shapes
: 
k
VarIsInitializedOp_249VarIsInitializedOp%Conv3d_3c_2a_1x1_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_250VarIsInitializedOp%Conv3d_4b_1a_1x1_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_251VarIsInitializedOp!Conv3d_4d_2a_1x1_bn/beta/momentum*
_output_shapes
: 
g
VarIsInitializedOp_252VarIsInitializedOp!Conv3d_4f_2b_3x3_bn/beta/momentum*
_output_shapes
: 
h
VarIsInitializedOp_253VarIsInitializedOp"Conv3d_6a_1x1_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_254VarIsInitializedOp%Conv3d_4e_1a_1x1_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_255VarIsInitializedOp%Conv3d_5c_1a_1x1_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_256VarIsInitializedOp%Conv3d_4f_2b_3x3_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_257VarIsInitializedOp%Conv3d_5b_2a_1x1_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_258VarIsInitializedOp!Conv3d_5b_1b_3x3_bn/beta/momentum*
_output_shapes
: 
Y
VarIsInitializedOp_259VarIsInitializedOpdense/bias/momentum*
_output_shapes
: 
g
VarIsInitializedOp_260VarIsInitializedOp!Conv3d_4e_1b_3x3_bn/beta/momentum*
_output_shapes
: 
k
VarIsInitializedOp_261VarIsInitializedOp%Conv3d_4d_0a_1x1_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_262VarIsInitializedOp%Conv3d_5c_2a_1x1_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_263VarIsInitializedOp%Conv3d_4c_2b_3x3_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_264VarIsInitializedOp!Conv3d_4b_2a_1x1_bn/beta/momentum*
_output_shapes
: 
g
VarIsInitializedOp_265VarIsInitializedOp!Conv3d_4c_2b_3x3_bn/beta/momentum*
_output_shapes
: 
g
VarIsInitializedOp_266VarIsInitializedOp!Conv3d_4d_1b_3x3_bn/beta/momentum*
_output_shapes
: 
k
VarIsInitializedOp_267VarIsInitializedOp%Conv3d_4f_2a_1x1_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_268VarIsInitializedOp%Conv3d_5c_1b_3x3_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_269VarIsInitializedOp!Conv3d_4f_2a_1x1_bn/beta/momentum*
_output_shapes
: 
[
VarIsInitializedOp_270VarIsInitializedOpdense/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_271VarIsInitializedOp%Conv3d_3c_1b_3x3_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_272VarIsInitializedOp!Conv3d_4c_1a_1x1_bn/beta/momentum*
_output_shapes
: 
g
VarIsInitializedOp_273VarIsInitializedOp!Conv3d_5b_1a_1x1_bn/beta/momentum*
_output_shapes
: 
k
VarIsInitializedOp_274VarIsInitializedOp%Conv3d_3b_2b_3x3_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_275VarIsInitializedOp!Conv3d_4d_1a_1x1_bn/beta/momentum*
_output_shapes
: 
g
VarIsInitializedOp_276VarIsInitializedOp!Conv3d_4f_3b_1x1_bn/beta/momentum*
_output_shapes
: 
g
VarIsInitializedOp_277VarIsInitializedOp!Conv3d_5c_1a_1x1_bn/beta/momentum*
_output_shapes
: 
K
VarIsInitializedOp_278VarIsInitializedOptotal*
_output_shapes
: 
k
VarIsInitializedOp_279VarIsInitializedOp%Conv3d_3b_1a_1x1_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_280VarIsInitializedOp%Conv3d_3b_0a_1x1_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_281VarIsInitializedOp%Conv3d_4c_2a_1x1_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_282VarIsInitializedOp%Conv3d_3c_1a_1x1_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_283VarIsInitializedOp!Conv3d_4b_3b_1x1_bn/beta/momentum*
_output_shapes
: 
g
VarIsInitializedOp_284VarIsInitializedOp!Conv3d_3c_1b_3x3_bn/beta/momentum*
_output_shapes
: 
g
VarIsInitializedOp_285VarIsInitializedOp!Conv3d_4d_0a_1x1_bn/beta/momentum*
_output_shapes
: 
k
VarIsInitializedOp_286VarIsInitializedOp%Conv3d_4e_3b_1x1_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_287VarIsInitializedOp%Conv3d_3c_3b_1x1_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_288VarIsInitializedOp%Conv3d_4f_1b_3x3_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_289VarIsInitializedOp!Conv3d_5b_2b_3x3_bn/beta/momentum*
_output_shapes
: 
d
VarIsInitializedOp_290VarIsInitializedOpConv3d_2b_1x1_bn/beta/momentum*
_output_shapes
: 
k
VarIsInitializedOp_291VarIsInitializedOp%Conv3d_5b_0a_1x1_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_292VarIsInitializedOp%Conv3d_5c_2b_3x3_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_293VarIsInitializedOp!Conv3d_3b_1a_1x1_bn/beta/momentum*
_output_shapes
: 
h
VarIsInitializedOp_294VarIsInitializedOp"Conv3d_2b_1x1_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_295VarIsInitializedOp%Conv3d_4f_1a_1x1_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_296VarIsInitializedOp!Conv3d_3c_3b_1x1_bn/beta/momentum*
_output_shapes
: 
k
VarIsInitializedOp_297VarIsInitializedOp%Conv3d_4b_2a_1x1_conv/kernel/momentum*
_output_shapes
: 
J
VarIsInitializedOp_298VarIsInitializedOpiter*
_output_shapes
: 
g
VarIsInitializedOp_299VarIsInitializedOp!Conv3d_4c_0a_1x1_bn/beta/momentum*
_output_shapes
: 
k
VarIsInitializedOp_300VarIsInitializedOp%Conv3d_4d_2b_3x3_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_301VarIsInitializedOp!Conv3d_3b_3b_1x1_bn/beta/momentum*
_output_shapes
: 
K
VarIsInitializedOp_302VarIsInitializedOpcount*
_output_shapes
: 
k
VarIsInitializedOp_303VarIsInitializedOp%Conv3d_5b_1b_3x3_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_304VarIsInitializedOp!Conv3d_5b_2a_1x1_bn/beta/momentum*
_output_shapes
: 
k
VarIsInitializedOp_305VarIsInitializedOp%Conv3d_3c_0a_1x1_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_306VarIsInitializedOp%Conv3d_4c_0a_1x1_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_307VarIsInitializedOp!Conv3d_4f_1b_3x3_bn/beta/momentum*
_output_shapes
: 
h
VarIsInitializedOp_308VarIsInitializedOp"Conv3d_1a_7x7_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_309VarIsInitializedOp%Conv3d_5b_1a_1x1_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_310VarIsInitializedOp!Conv3d_5b_3b_1x1_bn/beta/momentum*
_output_shapes
: 
g
VarIsInitializedOp_311VarIsInitializedOp!Conv3d_4e_3b_1x1_bn/beta/momentum*
_output_shapes
: 
k
VarIsInitializedOp_312VarIsInitializedOp%Conv3d_4b_1b_3x3_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_313VarIsInitializedOp%Conv3d_4e_1b_3x3_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_314VarIsInitializedOp!Conv3d_5b_0a_1x1_bn/beta/momentum*
_output_shapes
: 
g
VarIsInitializedOp_315VarIsInitializedOp!Conv3d_4b_1b_3x3_bn/beta/momentum*
_output_shapes
: 
g
VarIsInitializedOp_316VarIsInitializedOp!Conv3d_4c_2a_1x1_bn/beta/momentum*
_output_shapes
: 
k
VarIsInitializedOp_317VarIsInitializedOp%Conv3d_4b_3b_1x1_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_318VarIsInitializedOp%Conv3d_3c_2b_3x3_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_319VarIsInitializedOp!Conv3d_4b_1a_1x1_bn/beta/momentum*
_output_shapes
: 
k
VarIsInitializedOp_320VarIsInitializedOp%Conv3d_4e_0a_1x1_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_321VarIsInitializedOp!Conv3d_4d_3b_1x1_bn/beta/momentum*
_output_shapes
: 
g
VarIsInitializedOp_322VarIsInitializedOp!Conv3d_3c_0a_1x1_bn/beta/momentum*
_output_shapes
: 
k
VarIsInitializedOp_323VarIsInitializedOp%Conv3d_4c_1a_1x1_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_324VarIsInitializedOp!Conv3d_3b_2b_3x3_bn/beta/momentum*
_output_shapes
: 
k
VarIsInitializedOp_325VarIsInitializedOp%Conv3d_4d_2a_1x1_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_326VarIsInitializedOp!Conv3d_4b_2b_3x3_bn/beta/momentum*
_output_shapes
: 
N
VarIsInitializedOp_327VarIsInitializedOpmomentum*
_output_shapes
: 
k
VarIsInitializedOp_328VarIsInitializedOp%Conv3d_5b_3b_1x1_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_329VarIsInitializedOp!Conv3d_5c_2a_1x1_bn/beta/momentum*
_output_shapes
: 
S
VarIsInitializedOp_330VarIsInitializedOplearning_rate*
_output_shapes
: 
k
VarIsInitializedOp_331VarIsInitializedOp%Conv3d_4b_0a_1x1_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_332VarIsInitializedOp!Conv3d_5c_2b_3x3_bn/beta/momentum*
_output_shapes
: 
g
VarIsInitializedOp_333VarIsInitializedOp!Conv3d_4b_0a_1x1_bn/beta/momentum*
_output_shapes
: 
K
VarIsInitializedOp_334VarIsInitializedOpdecay*
_output_shapes
: 
k
VarIsInitializedOp_335VarIsInitializedOp%Conv3d_4e_2a_1x1_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_336VarIsInitializedOp%Conv3d_4b_2b_3x3_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_337VarIsInitializedOp%Conv3d_4c_1b_3x3_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_338VarIsInitializedOp%Conv3d_3b_2a_1x1_conv/kernel/momentum*
_output_shapes
: 
h
VarIsInitializedOp_339VarIsInitializedOp"Conv3d_2c_3x3_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_340VarIsInitializedOp%Conv3d_5c_3b_1x1_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_341VarIsInitializedOp!Conv3d_3c_2b_3x3_bn/beta/momentum*
_output_shapes
: 
g
VarIsInitializedOp_342VarIsInitializedOp!Conv3d_4e_0a_1x1_bn/beta/momentum*
_output_shapes
: 
k
VarIsInitializedOp_343VarIsInitializedOp%Conv3d_5b_2b_3x3_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_344VarIsInitializedOp%Conv3d_4d_1a_1x1_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_345VarIsInitializedOp!Conv3d_4e_1a_1x1_bn/beta/momentum*
_output_shapes
: 
g
VarIsInitializedOp_346VarIsInitializedOp!Conv3d_4e_2b_3x3_bn/beta/momentum*
_output_shapes
: 
k
VarIsInitializedOp_347VarIsInitializedOp%Conv3d_4f_0a_1x1_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_348VarIsInitializedOp!Conv3d_4c_1b_3x3_bn/beta/momentum*
_output_shapes
: 
k
VarIsInitializedOp_349VarIsInitializedOp%Conv3d_4d_1b_3x3_conv/kernel/momentum*
_output_shapes
: 
k
VarIsInitializedOp_350VarIsInitializedOp%Conv3d_3b_3b_1x1_conv/kernel/momentum*
_output_shapes
: 
g
VarIsInitializedOp_351VarIsInitializedOp!Conv3d_3b_2a_1x1_bn/beta/momentum*
_output_shapes
: 
g
VarIsInitializedOp_352VarIsInitializedOp!Conv3d_3c_1a_1x1_bn/beta/momentum*
_output_shapes
: 
d
VarIsInitializedOp_353VarIsInitializedOpConv3d_1a_7x7_bn/beta/momentum*
_output_shapes
: 
g
VarIsInitializedOp_354VarIsInitializedOp!Conv3d_4e_2a_1x1_bn/beta/momentum*
_output_shapes
: 
g
VarIsInitializedOp_355VarIsInitializedOp!Conv3d_5c_3b_1x1_bn/beta/momentum*
_output_shapes
: 
ь)
init_1NoOp&^Conv3d_1a_7x7_bn/beta/momentum/Assign*^Conv3d_1a_7x7_conv/kernel/momentum/Assign&^Conv3d_2b_1x1_bn/beta/momentum/Assign*^Conv3d_2b_1x1_conv/kernel/momentum/Assign&^Conv3d_2c_3x3_bn/beta/momentum/Assign*^Conv3d_2c_3x3_conv/kernel/momentum/Assign)^Conv3d_3b_0a_1x1_bn/beta/momentum/Assign-^Conv3d_3b_0a_1x1_conv/kernel/momentum/Assign)^Conv3d_3b_1a_1x1_bn/beta/momentum/Assign-^Conv3d_3b_1a_1x1_conv/kernel/momentum/Assign)^Conv3d_3b_1b_3x3_bn/beta/momentum/Assign-^Conv3d_3b_1b_3x3_conv/kernel/momentum/Assign)^Conv3d_3b_2a_1x1_bn/beta/momentum/Assign-^Conv3d_3b_2a_1x1_conv/kernel/momentum/Assign)^Conv3d_3b_2b_3x3_bn/beta/momentum/Assign-^Conv3d_3b_2b_3x3_conv/kernel/momentum/Assign)^Conv3d_3b_3b_1x1_bn/beta/momentum/Assign-^Conv3d_3b_3b_1x1_conv/kernel/momentum/Assign)^Conv3d_3c_0a_1x1_bn/beta/momentum/Assign-^Conv3d_3c_0a_1x1_conv/kernel/momentum/Assign)^Conv3d_3c_1a_1x1_bn/beta/momentum/Assign-^Conv3d_3c_1a_1x1_conv/kernel/momentum/Assign)^Conv3d_3c_1b_3x3_bn/beta/momentum/Assign-^Conv3d_3c_1b_3x3_conv/kernel/momentum/Assign)^Conv3d_3c_2a_1x1_bn/beta/momentum/Assign-^Conv3d_3c_2a_1x1_conv/kernel/momentum/Assign)^Conv3d_3c_2b_3x3_bn/beta/momentum/Assign-^Conv3d_3c_2b_3x3_conv/kernel/momentum/Assign)^Conv3d_3c_3b_1x1_bn/beta/momentum/Assign-^Conv3d_3c_3b_1x1_conv/kernel/momentum/Assign)^Conv3d_4b_0a_1x1_bn/beta/momentum/Assign-^Conv3d_4b_0a_1x1_conv/kernel/momentum/Assign)^Conv3d_4b_1a_1x1_bn/beta/momentum/Assign-^Conv3d_4b_1a_1x1_conv/kernel/momentum/Assign)^Conv3d_4b_1b_3x3_bn/beta/momentum/Assign-^Conv3d_4b_1b_3x3_conv/kernel/momentum/Assign)^Conv3d_4b_2a_1x1_bn/beta/momentum/Assign-^Conv3d_4b_2a_1x1_conv/kernel/momentum/Assign)^Conv3d_4b_2b_3x3_bn/beta/momentum/Assign-^Conv3d_4b_2b_3x3_conv/kernel/momentum/Assign)^Conv3d_4b_3b_1x1_bn/beta/momentum/Assign-^Conv3d_4b_3b_1x1_conv/kernel/momentum/Assign)^Conv3d_4c_0a_1x1_bn/beta/momentum/Assign-^Conv3d_4c_0a_1x1_conv/kernel/momentum/Assign)^Conv3d_4c_1a_1x1_bn/beta/momentum/Assign-^Conv3d_4c_1a_1x1_conv/kernel/momentum/Assign)^Conv3d_4c_1b_3x3_bn/beta/momentum/Assign-^Conv3d_4c_1b_3x3_conv/kernel/momentum/Assign)^Conv3d_4c_2a_1x1_bn/beta/momentum/Assign-^Conv3d_4c_2a_1x1_conv/kernel/momentum/Assign)^Conv3d_4c_2b_3x3_bn/beta/momentum/Assign-^Conv3d_4c_2b_3x3_conv/kernel/momentum/Assign)^Conv3d_4c_3b_1x1_bn/beta/momentum/Assign-^Conv3d_4c_3b_1x1_conv/kernel/momentum/Assign)^Conv3d_4d_0a_1x1_bn/beta/momentum/Assign-^Conv3d_4d_0a_1x1_conv/kernel/momentum/Assign)^Conv3d_4d_1a_1x1_bn/beta/momentum/Assign-^Conv3d_4d_1a_1x1_conv/kernel/momentum/Assign)^Conv3d_4d_1b_3x3_bn/beta/momentum/Assign-^Conv3d_4d_1b_3x3_conv/kernel/momentum/Assign)^Conv3d_4d_2a_1x1_bn/beta/momentum/Assign-^Conv3d_4d_2a_1x1_conv/kernel/momentum/Assign)^Conv3d_4d_2b_3x3_bn/beta/momentum/Assign-^Conv3d_4d_2b_3x3_conv/kernel/momentum/Assign)^Conv3d_4d_3b_1x1_bn/beta/momentum/Assign-^Conv3d_4d_3b_1x1_conv/kernel/momentum/Assign)^Conv3d_4e_0a_1x1_bn/beta/momentum/Assign-^Conv3d_4e_0a_1x1_conv/kernel/momentum/Assign)^Conv3d_4e_1a_1x1_bn/beta/momentum/Assign-^Conv3d_4e_1a_1x1_conv/kernel/momentum/Assign)^Conv3d_4e_1b_3x3_bn/beta/momentum/Assign-^Conv3d_4e_1b_3x3_conv/kernel/momentum/Assign)^Conv3d_4e_2a_1x1_bn/beta/momentum/Assign-^Conv3d_4e_2a_1x1_conv/kernel/momentum/Assign)^Conv3d_4e_2b_3x3_bn/beta/momentum/Assign-^Conv3d_4e_2b_3x3_conv/kernel/momentum/Assign)^Conv3d_4e_3b_1x1_bn/beta/momentum/Assign-^Conv3d_4e_3b_1x1_conv/kernel/momentum/Assign)^Conv3d_4f_0a_1x1_bn/beta/momentum/Assign-^Conv3d_4f_0a_1x1_conv/kernel/momentum/Assign)^Conv3d_4f_1a_1x1_bn/beta/momentum/Assign-^Conv3d_4f_1a_1x1_conv/kernel/momentum/Assign)^Conv3d_4f_1b_3x3_bn/beta/momentum/Assign-^Conv3d_4f_1b_3x3_conv/kernel/momentum/Assign)^Conv3d_4f_2a_1x1_bn/beta/momentum/Assign-^Conv3d_4f_2a_1x1_conv/kernel/momentum/Assign)^Conv3d_4f_2b_3x3_bn/beta/momentum/Assign-^Conv3d_4f_2b_3x3_conv/kernel/momentum/Assign)^Conv3d_4f_3b_1x1_bn/beta/momentum/Assign-^Conv3d_4f_3b_1x1_conv/kernel/momentum/Assign)^Conv3d_5b_0a_1x1_bn/beta/momentum/Assign-^Conv3d_5b_0a_1x1_conv/kernel/momentum/Assign)^Conv3d_5b_1a_1x1_bn/beta/momentum/Assign-^Conv3d_5b_1a_1x1_conv/kernel/momentum/Assign)^Conv3d_5b_1b_3x3_bn/beta/momentum/Assign-^Conv3d_5b_1b_3x3_conv/kernel/momentum/Assign)^Conv3d_5b_2a_1x1_bn/beta/momentum/Assign-^Conv3d_5b_2a_1x1_conv/kernel/momentum/Assign)^Conv3d_5b_2b_3x3_bn/beta/momentum/Assign-^Conv3d_5b_2b_3x3_conv/kernel/momentum/Assign)^Conv3d_5b_3b_1x1_bn/beta/momentum/Assign-^Conv3d_5b_3b_1x1_conv/kernel/momentum/Assign)^Conv3d_5c_0a_1x1_bn/beta/momentum/Assign-^Conv3d_5c_0a_1x1_conv/kernel/momentum/Assign)^Conv3d_5c_1a_1x1_bn/beta/momentum/Assign-^Conv3d_5c_1a_1x1_conv/kernel/momentum/Assign)^Conv3d_5c_1b_3x3_bn/beta/momentum/Assign-^Conv3d_5c_1b_3x3_conv/kernel/momentum/Assign)^Conv3d_5c_2a_1x1_bn/beta/momentum/Assign-^Conv3d_5c_2a_1x1_conv/kernel/momentum/Assign)^Conv3d_5c_2b_3x3_bn/beta/momentum/Assign-^Conv3d_5c_2b_3x3_conv/kernel/momentum/Assign)^Conv3d_5c_3b_1x1_bn/beta/momentum/Assign-^Conv3d_5c_3b_1x1_conv/kernel/momentum/Assign(^Conv3d_6a_1x1_conv/bias/momentum/Assign*^Conv3d_6a_1x1_conv/kernel/momentum/Assign^count/Assign^decay/Assign^dense/bias/momentum/Assign^dense/kernel/momentum/Assign^iter/Assign^learning_rate/Assign^momentum/Assign^total/Assign
P
Placeholder_232Placeholder*
_output_shapes
: *
dtype0	*
shape: 
L
AssignVariableOp_232AssignVariableOpiterPlaceholder_232*
dtype0	
f
ReadVariableOp_232ReadVariableOpiter^AssignVariableOp_232*
_output_shapes
: *
dtype0	
“
Placeholder_233Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
j
AssignVariableOp_233AssignVariableOp"Conv3d_1a_7x7_conv/kernel/momentumPlaceholder_233*
dtype0
Ш
ReadVariableOp_233ReadVariableOp"Conv3d_1a_7x7_conv/kernel/momentum^AssignVariableOp_233**
_output_shapes
:@*
dtype0
j
Placeholder_234Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
f
AssignVariableOp_234AssignVariableOpConv3d_1a_7x7_bn/beta/momentumPlaceholder_234*
dtype0
Д
ReadVariableOp_234ReadVariableOpConv3d_1a_7x7_bn/beta/momentum^AssignVariableOp_234*
_output_shapes
:@*
dtype0
“
Placeholder_235Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
j
AssignVariableOp_235AssignVariableOp"Conv3d_2b_1x1_conv/kernel/momentumPlaceholder_235*
dtype0
Ш
ReadVariableOp_235ReadVariableOp"Conv3d_2b_1x1_conv/kernel/momentum^AssignVariableOp_235**
_output_shapes
:@@*
dtype0
j
Placeholder_236Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
f
AssignVariableOp_236AssignVariableOpConv3d_2b_1x1_bn/beta/momentumPlaceholder_236*
dtype0
Д
ReadVariableOp_236ReadVariableOpConv3d_2b_1x1_bn/beta/momentum^AssignVariableOp_236*
_output_shapes
:@*
dtype0
“
Placeholder_237Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
j
AssignVariableOp_237AssignVariableOp"Conv3d_2c_3x3_conv/kernel/momentumPlaceholder_237*
dtype0
Щ
ReadVariableOp_237ReadVariableOp"Conv3d_2c_3x3_conv/kernel/momentum^AssignVariableOp_237*+
_output_shapes
:@ј*
dtype0
j
Placeholder_238Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
f
AssignVariableOp_238AssignVariableOpConv3d_2c_3x3_bn/beta/momentumPlaceholder_238*
dtype0
Е
ReadVariableOp_238ReadVariableOpConv3d_2c_3x3_bn/beta/momentum^AssignVariableOp_238*
_output_shapes	
:ј*
dtype0
“
Placeholder_239Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_239AssignVariableOp%Conv3d_3b_1a_1x1_conv/kernel/momentumPlaceholder_239*
dtype0
Ь
ReadVariableOp_239ReadVariableOp%Conv3d_3b_1a_1x1_conv/kernel/momentum^AssignVariableOp_239*+
_output_shapes
:ј`*
dtype0
“
Placeholder_240Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_240AssignVariableOp%Conv3d_3b_2a_1x1_conv/kernel/momentumPlaceholder_240*
dtype0
Ь
ReadVariableOp_240ReadVariableOp%Conv3d_3b_2a_1x1_conv/kernel/momentum^AssignVariableOp_240*+
_output_shapes
:ј*
dtype0
j
Placeholder_241Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_241AssignVariableOp!Conv3d_3b_1a_1x1_bn/beta/momentumPlaceholder_241*
dtype0
З
ReadVariableOp_241ReadVariableOp!Conv3d_3b_1a_1x1_bn/beta/momentum^AssignVariableOp_241*
_output_shapes
:`*
dtype0
j
Placeholder_242Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_242AssignVariableOp!Conv3d_3b_2a_1x1_bn/beta/momentumPlaceholder_242*
dtype0
З
ReadVariableOp_242ReadVariableOp!Conv3d_3b_2a_1x1_bn/beta/momentum^AssignVariableOp_242*
_output_shapes
:*
dtype0
“
Placeholder_243Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_243AssignVariableOp%Conv3d_3b_0a_1x1_conv/kernel/momentumPlaceholder_243*
dtype0
Ь
ReadVariableOp_243ReadVariableOp%Conv3d_3b_0a_1x1_conv/kernel/momentum^AssignVariableOp_243*+
_output_shapes
:ј@*
dtype0
“
Placeholder_244Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_244AssignVariableOp%Conv3d_3b_1b_3x3_conv/kernel/momentumPlaceholder_244*
dtype0
Ь
ReadVariableOp_244ReadVariableOp%Conv3d_3b_1b_3x3_conv/kernel/momentum^AssignVariableOp_244*+
_output_shapes
:`А*
dtype0
“
Placeholder_245Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_245AssignVariableOp%Conv3d_3b_2b_3x3_conv/kernel/momentumPlaceholder_245*
dtype0
Ы
ReadVariableOp_245ReadVariableOp%Conv3d_3b_2b_3x3_conv/kernel/momentum^AssignVariableOp_245**
_output_shapes
: *
dtype0
“
Placeholder_246Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_246AssignVariableOp%Conv3d_3b_3b_1x1_conv/kernel/momentumPlaceholder_246*
dtype0
Ь
ReadVariableOp_246ReadVariableOp%Conv3d_3b_3b_1x1_conv/kernel/momentum^AssignVariableOp_246*+
_output_shapes
:ј *
dtype0
j
Placeholder_247Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_247AssignVariableOp!Conv3d_3b_0a_1x1_bn/beta/momentumPlaceholder_247*
dtype0
З
ReadVariableOp_247ReadVariableOp!Conv3d_3b_0a_1x1_bn/beta/momentum^AssignVariableOp_247*
_output_shapes
:@*
dtype0
j
Placeholder_248Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_248AssignVariableOp!Conv3d_3b_1b_3x3_bn/beta/momentumPlaceholder_248*
dtype0
И
ReadVariableOp_248ReadVariableOp!Conv3d_3b_1b_3x3_bn/beta/momentum^AssignVariableOp_248*
_output_shapes	
:А*
dtype0
j
Placeholder_249Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_249AssignVariableOp!Conv3d_3b_2b_3x3_bn/beta/momentumPlaceholder_249*
dtype0
З
ReadVariableOp_249ReadVariableOp!Conv3d_3b_2b_3x3_bn/beta/momentum^AssignVariableOp_249*
_output_shapes
: *
dtype0
j
Placeholder_250Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_250AssignVariableOp!Conv3d_3b_3b_1x1_bn/beta/momentumPlaceholder_250*
dtype0
З
ReadVariableOp_250ReadVariableOp!Conv3d_3b_3b_1x1_bn/beta/momentum^AssignVariableOp_250*
_output_shapes
: *
dtype0
“
Placeholder_251Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_251AssignVariableOp%Conv3d_3c_1a_1x1_conv/kernel/momentumPlaceholder_251*
dtype0
Э
ReadVariableOp_251ReadVariableOp%Conv3d_3c_1a_1x1_conv/kernel/momentum^AssignVariableOp_251*,
_output_shapes
:АА*
dtype0
“
Placeholder_252Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_252AssignVariableOp%Conv3d_3c_2a_1x1_conv/kernel/momentumPlaceholder_252*
dtype0
Ь
ReadVariableOp_252ReadVariableOp%Conv3d_3c_2a_1x1_conv/kernel/momentum^AssignVariableOp_252*+
_output_shapes
:А *
dtype0
j
Placeholder_253Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_253AssignVariableOp!Conv3d_3c_1a_1x1_bn/beta/momentumPlaceholder_253*
dtype0
И
ReadVariableOp_253ReadVariableOp!Conv3d_3c_1a_1x1_bn/beta/momentum^AssignVariableOp_253*
_output_shapes	
:А*
dtype0
j
Placeholder_254Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_254AssignVariableOp!Conv3d_3c_2a_1x1_bn/beta/momentumPlaceholder_254*
dtype0
З
ReadVariableOp_254ReadVariableOp!Conv3d_3c_2a_1x1_bn/beta/momentum^AssignVariableOp_254*
_output_shapes
: *
dtype0
“
Placeholder_255Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_255AssignVariableOp%Conv3d_3c_0a_1x1_conv/kernel/momentumPlaceholder_255*
dtype0
Э
ReadVariableOp_255ReadVariableOp%Conv3d_3c_0a_1x1_conv/kernel/momentum^AssignVariableOp_255*,
_output_shapes
:АА*
dtype0
“
Placeholder_256Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_256AssignVariableOp%Conv3d_3c_1b_3x3_conv/kernel/momentumPlaceholder_256*
dtype0
Э
ReadVariableOp_256ReadVariableOp%Conv3d_3c_1b_3x3_conv/kernel/momentum^AssignVariableOp_256*,
_output_shapes
:Ај*
dtype0
“
Placeholder_257Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_257AssignVariableOp%Conv3d_3c_2b_3x3_conv/kernel/momentumPlaceholder_257*
dtype0
Ы
ReadVariableOp_257ReadVariableOp%Conv3d_3c_2b_3x3_conv/kernel/momentum^AssignVariableOp_257**
_output_shapes
: `*
dtype0
“
Placeholder_258Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_258AssignVariableOp%Conv3d_3c_3b_1x1_conv/kernel/momentumPlaceholder_258*
dtype0
Ь
ReadVariableOp_258ReadVariableOp%Conv3d_3c_3b_1x1_conv/kernel/momentum^AssignVariableOp_258*+
_output_shapes
:А@*
dtype0
j
Placeholder_259Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_259AssignVariableOp!Conv3d_3c_0a_1x1_bn/beta/momentumPlaceholder_259*
dtype0
И
ReadVariableOp_259ReadVariableOp!Conv3d_3c_0a_1x1_bn/beta/momentum^AssignVariableOp_259*
_output_shapes	
:А*
dtype0
j
Placeholder_260Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_260AssignVariableOp!Conv3d_3c_1b_3x3_bn/beta/momentumPlaceholder_260*
dtype0
И
ReadVariableOp_260ReadVariableOp!Conv3d_3c_1b_3x3_bn/beta/momentum^AssignVariableOp_260*
_output_shapes	
:ј*
dtype0
j
Placeholder_261Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_261AssignVariableOp!Conv3d_3c_2b_3x3_bn/beta/momentumPlaceholder_261*
dtype0
З
ReadVariableOp_261ReadVariableOp!Conv3d_3c_2b_3x3_bn/beta/momentum^AssignVariableOp_261*
_output_shapes
:`*
dtype0
j
Placeholder_262Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_262AssignVariableOp!Conv3d_3c_3b_1x1_bn/beta/momentumPlaceholder_262*
dtype0
З
ReadVariableOp_262ReadVariableOp!Conv3d_3c_3b_1x1_bn/beta/momentum^AssignVariableOp_262*
_output_shapes
:@*
dtype0
“
Placeholder_263Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_263AssignVariableOp%Conv3d_4b_1a_1x1_conv/kernel/momentumPlaceholder_263*
dtype0
Ь
ReadVariableOp_263ReadVariableOp%Conv3d_4b_1a_1x1_conv/kernel/momentum^AssignVariableOp_263*+
_output_shapes
:а`*
dtype0
“
Placeholder_264Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_264AssignVariableOp%Conv3d_4b_2a_1x1_conv/kernel/momentumPlaceholder_264*
dtype0
Ь
ReadVariableOp_264ReadVariableOp%Conv3d_4b_2a_1x1_conv/kernel/momentum^AssignVariableOp_264*+
_output_shapes
:а*
dtype0
j
Placeholder_265Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_265AssignVariableOp!Conv3d_4b_1a_1x1_bn/beta/momentumPlaceholder_265*
dtype0
З
ReadVariableOp_265ReadVariableOp!Conv3d_4b_1a_1x1_bn/beta/momentum^AssignVariableOp_265*
_output_shapes
:`*
dtype0
j
Placeholder_266Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_266AssignVariableOp!Conv3d_4b_2a_1x1_bn/beta/momentumPlaceholder_266*
dtype0
З
ReadVariableOp_266ReadVariableOp!Conv3d_4b_2a_1x1_bn/beta/momentum^AssignVariableOp_266*
_output_shapes
:*
dtype0
“
Placeholder_267Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_267AssignVariableOp%Conv3d_4b_0a_1x1_conv/kernel/momentumPlaceholder_267*
dtype0
Э
ReadVariableOp_267ReadVariableOp%Conv3d_4b_0a_1x1_conv/kernel/momentum^AssignVariableOp_267*,
_output_shapes
:ај*
dtype0
“
Placeholder_268Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_268AssignVariableOp%Conv3d_4b_1b_3x3_conv/kernel/momentumPlaceholder_268*
dtype0
Ь
ReadVariableOp_268ReadVariableOp%Conv3d_4b_1b_3x3_conv/kernel/momentum^AssignVariableOp_268*+
_output_shapes
:`–*
dtype0
“
Placeholder_269Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_269AssignVariableOp%Conv3d_4b_2b_3x3_conv/kernel/momentumPlaceholder_269*
dtype0
Ы
ReadVariableOp_269ReadVariableOp%Conv3d_4b_2b_3x3_conv/kernel/momentum^AssignVariableOp_269**
_output_shapes
:0*
dtype0
“
Placeholder_270Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_270AssignVariableOp%Conv3d_4b_3b_1x1_conv/kernel/momentumPlaceholder_270*
dtype0
Ь
ReadVariableOp_270ReadVariableOp%Conv3d_4b_3b_1x1_conv/kernel/momentum^AssignVariableOp_270*+
_output_shapes
:а@*
dtype0
j
Placeholder_271Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_271AssignVariableOp!Conv3d_4b_0a_1x1_bn/beta/momentumPlaceholder_271*
dtype0
И
ReadVariableOp_271ReadVariableOp!Conv3d_4b_0a_1x1_bn/beta/momentum^AssignVariableOp_271*
_output_shapes	
:ј*
dtype0
j
Placeholder_272Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_272AssignVariableOp!Conv3d_4b_1b_3x3_bn/beta/momentumPlaceholder_272*
dtype0
И
ReadVariableOp_272ReadVariableOp!Conv3d_4b_1b_3x3_bn/beta/momentum^AssignVariableOp_272*
_output_shapes	
:–*
dtype0
j
Placeholder_273Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_273AssignVariableOp!Conv3d_4b_2b_3x3_bn/beta/momentumPlaceholder_273*
dtype0
З
ReadVariableOp_273ReadVariableOp!Conv3d_4b_2b_3x3_bn/beta/momentum^AssignVariableOp_273*
_output_shapes
:0*
dtype0
j
Placeholder_274Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_274AssignVariableOp!Conv3d_4b_3b_1x1_bn/beta/momentumPlaceholder_274*
dtype0
З
ReadVariableOp_274ReadVariableOp!Conv3d_4b_3b_1x1_bn/beta/momentum^AssignVariableOp_274*
_output_shapes
:@*
dtype0
“
Placeholder_275Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_275AssignVariableOp%Conv3d_4c_1a_1x1_conv/kernel/momentumPlaceholder_275*
dtype0
Ь
ReadVariableOp_275ReadVariableOp%Conv3d_4c_1a_1x1_conv/kernel/momentum^AssignVariableOp_275*+
_output_shapes
:Аp*
dtype0
“
Placeholder_276Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_276AssignVariableOp%Conv3d_4c_2a_1x1_conv/kernel/momentumPlaceholder_276*
dtype0
Ь
ReadVariableOp_276ReadVariableOp%Conv3d_4c_2a_1x1_conv/kernel/momentum^AssignVariableOp_276*+
_output_shapes
:А*
dtype0
j
Placeholder_277Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_277AssignVariableOp!Conv3d_4c_1a_1x1_bn/beta/momentumPlaceholder_277*
dtype0
З
ReadVariableOp_277ReadVariableOp!Conv3d_4c_1a_1x1_bn/beta/momentum^AssignVariableOp_277*
_output_shapes
:p*
dtype0
j
Placeholder_278Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_278AssignVariableOp!Conv3d_4c_2a_1x1_bn/beta/momentumPlaceholder_278*
dtype0
З
ReadVariableOp_278ReadVariableOp!Conv3d_4c_2a_1x1_bn/beta/momentum^AssignVariableOp_278*
_output_shapes
:*
dtype0
“
Placeholder_279Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_279AssignVariableOp%Conv3d_4c_0a_1x1_conv/kernel/momentumPlaceholder_279*
dtype0
Э
ReadVariableOp_279ReadVariableOp%Conv3d_4c_0a_1x1_conv/kernel/momentum^AssignVariableOp_279*,
_output_shapes
:А†*
dtype0
“
Placeholder_280Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_280AssignVariableOp%Conv3d_4c_1b_3x3_conv/kernel/momentumPlaceholder_280*
dtype0
Ь
ReadVariableOp_280ReadVariableOp%Conv3d_4c_1b_3x3_conv/kernel/momentum^AssignVariableOp_280*+
_output_shapes
:pа*
dtype0
“
Placeholder_281Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_281AssignVariableOp%Conv3d_4c_2b_3x3_conv/kernel/momentumPlaceholder_281*
dtype0
Ы
ReadVariableOp_281ReadVariableOp%Conv3d_4c_2b_3x3_conv/kernel/momentum^AssignVariableOp_281**
_output_shapes
:@*
dtype0
“
Placeholder_282Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_282AssignVariableOp%Conv3d_4c_3b_1x1_conv/kernel/momentumPlaceholder_282*
dtype0
Ь
ReadVariableOp_282ReadVariableOp%Conv3d_4c_3b_1x1_conv/kernel/momentum^AssignVariableOp_282*+
_output_shapes
:А@*
dtype0
j
Placeholder_283Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_283AssignVariableOp!Conv3d_4c_0a_1x1_bn/beta/momentumPlaceholder_283*
dtype0
И
ReadVariableOp_283ReadVariableOp!Conv3d_4c_0a_1x1_bn/beta/momentum^AssignVariableOp_283*
_output_shapes	
:†*
dtype0
j
Placeholder_284Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_284AssignVariableOp!Conv3d_4c_1b_3x3_bn/beta/momentumPlaceholder_284*
dtype0
И
ReadVariableOp_284ReadVariableOp!Conv3d_4c_1b_3x3_bn/beta/momentum^AssignVariableOp_284*
_output_shapes	
:а*
dtype0
j
Placeholder_285Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_285AssignVariableOp!Conv3d_4c_2b_3x3_bn/beta/momentumPlaceholder_285*
dtype0
З
ReadVariableOp_285ReadVariableOp!Conv3d_4c_2b_3x3_bn/beta/momentum^AssignVariableOp_285*
_output_shapes
:@*
dtype0
j
Placeholder_286Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_286AssignVariableOp!Conv3d_4c_3b_1x1_bn/beta/momentumPlaceholder_286*
dtype0
З
ReadVariableOp_286ReadVariableOp!Conv3d_4c_3b_1x1_bn/beta/momentum^AssignVariableOp_286*
_output_shapes
:@*
dtype0
“
Placeholder_287Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_287AssignVariableOp%Conv3d_4d_1a_1x1_conv/kernel/momentumPlaceholder_287*
dtype0
Э
ReadVariableOp_287ReadVariableOp%Conv3d_4d_1a_1x1_conv/kernel/momentum^AssignVariableOp_287*,
_output_shapes
:АА*
dtype0
“
Placeholder_288Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_288AssignVariableOp%Conv3d_4d_2a_1x1_conv/kernel/momentumPlaceholder_288*
dtype0
Ь
ReadVariableOp_288ReadVariableOp%Conv3d_4d_2a_1x1_conv/kernel/momentum^AssignVariableOp_288*+
_output_shapes
:А*
dtype0
j
Placeholder_289Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_289AssignVariableOp!Conv3d_4d_1a_1x1_bn/beta/momentumPlaceholder_289*
dtype0
И
ReadVariableOp_289ReadVariableOp!Conv3d_4d_1a_1x1_bn/beta/momentum^AssignVariableOp_289*
_output_shapes	
:А*
dtype0
j
Placeholder_290Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_290AssignVariableOp!Conv3d_4d_2a_1x1_bn/beta/momentumPlaceholder_290*
dtype0
З
ReadVariableOp_290ReadVariableOp!Conv3d_4d_2a_1x1_bn/beta/momentum^AssignVariableOp_290*
_output_shapes
:*
dtype0
“
Placeholder_291Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_291AssignVariableOp%Conv3d_4d_0a_1x1_conv/kernel/momentumPlaceholder_291*
dtype0
Э
ReadVariableOp_291ReadVariableOp%Conv3d_4d_0a_1x1_conv/kernel/momentum^AssignVariableOp_291*,
_output_shapes
:АА*
dtype0
“
Placeholder_292Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_292AssignVariableOp%Conv3d_4d_1b_3x3_conv/kernel/momentumPlaceholder_292*
dtype0
Э
ReadVariableOp_292ReadVariableOp%Conv3d_4d_1b_3x3_conv/kernel/momentum^AssignVariableOp_292*,
_output_shapes
:АА*
dtype0
“
Placeholder_293Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_293AssignVariableOp%Conv3d_4d_2b_3x3_conv/kernel/momentumPlaceholder_293*
dtype0
Ы
ReadVariableOp_293ReadVariableOp%Conv3d_4d_2b_3x3_conv/kernel/momentum^AssignVariableOp_293**
_output_shapes
:@*
dtype0
“
Placeholder_294Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_294AssignVariableOp%Conv3d_4d_3b_1x1_conv/kernel/momentumPlaceholder_294*
dtype0
Ь
ReadVariableOp_294ReadVariableOp%Conv3d_4d_3b_1x1_conv/kernel/momentum^AssignVariableOp_294*+
_output_shapes
:А@*
dtype0
j
Placeholder_295Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_295AssignVariableOp!Conv3d_4d_0a_1x1_bn/beta/momentumPlaceholder_295*
dtype0
И
ReadVariableOp_295ReadVariableOp!Conv3d_4d_0a_1x1_bn/beta/momentum^AssignVariableOp_295*
_output_shapes	
:А*
dtype0
j
Placeholder_296Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_296AssignVariableOp!Conv3d_4d_1b_3x3_bn/beta/momentumPlaceholder_296*
dtype0
И
ReadVariableOp_296ReadVariableOp!Conv3d_4d_1b_3x3_bn/beta/momentum^AssignVariableOp_296*
_output_shapes	
:А*
dtype0
j
Placeholder_297Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_297AssignVariableOp!Conv3d_4d_2b_3x3_bn/beta/momentumPlaceholder_297*
dtype0
З
ReadVariableOp_297ReadVariableOp!Conv3d_4d_2b_3x3_bn/beta/momentum^AssignVariableOp_297*
_output_shapes
:@*
dtype0
j
Placeholder_298Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_298AssignVariableOp!Conv3d_4d_3b_1x1_bn/beta/momentumPlaceholder_298*
dtype0
З
ReadVariableOp_298ReadVariableOp!Conv3d_4d_3b_1x1_bn/beta/momentum^AssignVariableOp_298*
_output_shapes
:@*
dtype0
“
Placeholder_299Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_299AssignVariableOp%Conv3d_4e_1a_1x1_conv/kernel/momentumPlaceholder_299*
dtype0
Э
ReadVariableOp_299ReadVariableOp%Conv3d_4e_1a_1x1_conv/kernel/momentum^AssignVariableOp_299*,
_output_shapes
:АР*
dtype0
“
Placeholder_300Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_300AssignVariableOp%Conv3d_4e_2a_1x1_conv/kernel/momentumPlaceholder_300*
dtype0
Ь
ReadVariableOp_300ReadVariableOp%Conv3d_4e_2a_1x1_conv/kernel/momentum^AssignVariableOp_300*+
_output_shapes
:А *
dtype0
j
Placeholder_301Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_301AssignVariableOp!Conv3d_4e_1a_1x1_bn/beta/momentumPlaceholder_301*
dtype0
И
ReadVariableOp_301ReadVariableOp!Conv3d_4e_1a_1x1_bn/beta/momentum^AssignVariableOp_301*
_output_shapes	
:Р*
dtype0
j
Placeholder_302Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_302AssignVariableOp!Conv3d_4e_2a_1x1_bn/beta/momentumPlaceholder_302*
dtype0
З
ReadVariableOp_302ReadVariableOp!Conv3d_4e_2a_1x1_bn/beta/momentum^AssignVariableOp_302*
_output_shapes
: *
dtype0
“
Placeholder_303Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_303AssignVariableOp%Conv3d_4e_0a_1x1_conv/kernel/momentumPlaceholder_303*
dtype0
Ь
ReadVariableOp_303ReadVariableOp%Conv3d_4e_0a_1x1_conv/kernel/momentum^AssignVariableOp_303*+
_output_shapes
:Аp*
dtype0
“
Placeholder_304Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_304AssignVariableOp%Conv3d_4e_1b_3x3_conv/kernel/momentumPlaceholder_304*
dtype0
Э
ReadVariableOp_304ReadVariableOp%Conv3d_4e_1b_3x3_conv/kernel/momentum^AssignVariableOp_304*,
_output_shapes
:Р†*
dtype0
“
Placeholder_305Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_305AssignVariableOp%Conv3d_4e_2b_3x3_conv/kernel/momentumPlaceholder_305*
dtype0
Ы
ReadVariableOp_305ReadVariableOp%Conv3d_4e_2b_3x3_conv/kernel/momentum^AssignVariableOp_305**
_output_shapes
: @*
dtype0
“
Placeholder_306Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_306AssignVariableOp%Conv3d_4e_3b_1x1_conv/kernel/momentumPlaceholder_306*
dtype0
Ь
ReadVariableOp_306ReadVariableOp%Conv3d_4e_3b_1x1_conv/kernel/momentum^AssignVariableOp_306*+
_output_shapes
:А@*
dtype0
j
Placeholder_307Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_307AssignVariableOp!Conv3d_4e_0a_1x1_bn/beta/momentumPlaceholder_307*
dtype0
З
ReadVariableOp_307ReadVariableOp!Conv3d_4e_0a_1x1_bn/beta/momentum^AssignVariableOp_307*
_output_shapes
:p*
dtype0
j
Placeholder_308Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_308AssignVariableOp!Conv3d_4e_1b_3x3_bn/beta/momentumPlaceholder_308*
dtype0
И
ReadVariableOp_308ReadVariableOp!Conv3d_4e_1b_3x3_bn/beta/momentum^AssignVariableOp_308*
_output_shapes	
:†*
dtype0
j
Placeholder_309Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_309AssignVariableOp!Conv3d_4e_2b_3x3_bn/beta/momentumPlaceholder_309*
dtype0
З
ReadVariableOp_309ReadVariableOp!Conv3d_4e_2b_3x3_bn/beta/momentum^AssignVariableOp_309*
_output_shapes
:@*
dtype0
j
Placeholder_310Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_310AssignVariableOp!Conv3d_4e_3b_1x1_bn/beta/momentumPlaceholder_310*
dtype0
З
ReadVariableOp_310ReadVariableOp!Conv3d_4e_3b_1x1_bn/beta/momentum^AssignVariableOp_310*
_output_shapes
:@*
dtype0
“
Placeholder_311Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_311AssignVariableOp%Conv3d_4f_1a_1x1_conv/kernel/momentumPlaceholder_311*
dtype0
Э
ReadVariableOp_311ReadVariableOp%Conv3d_4f_1a_1x1_conv/kernel/momentum^AssignVariableOp_311*,
_output_shapes
:Р†*
dtype0
“
Placeholder_312Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_312AssignVariableOp%Conv3d_4f_2a_1x1_conv/kernel/momentumPlaceholder_312*
dtype0
Ь
ReadVariableOp_312ReadVariableOp%Conv3d_4f_2a_1x1_conv/kernel/momentum^AssignVariableOp_312*+
_output_shapes
:Р *
dtype0
j
Placeholder_313Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_313AssignVariableOp!Conv3d_4f_1a_1x1_bn/beta/momentumPlaceholder_313*
dtype0
И
ReadVariableOp_313ReadVariableOp!Conv3d_4f_1a_1x1_bn/beta/momentum^AssignVariableOp_313*
_output_shapes	
:†*
dtype0
j
Placeholder_314Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_314AssignVariableOp!Conv3d_4f_2a_1x1_bn/beta/momentumPlaceholder_314*
dtype0
З
ReadVariableOp_314ReadVariableOp!Conv3d_4f_2a_1x1_bn/beta/momentum^AssignVariableOp_314*
_output_shapes
: *
dtype0
“
Placeholder_315Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_315AssignVariableOp%Conv3d_4f_0a_1x1_conv/kernel/momentumPlaceholder_315*
dtype0
Э
ReadVariableOp_315ReadVariableOp%Conv3d_4f_0a_1x1_conv/kernel/momentum^AssignVariableOp_315*,
_output_shapes
:РА*
dtype0
“
Placeholder_316Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_316AssignVariableOp%Conv3d_4f_1b_3x3_conv/kernel/momentumPlaceholder_316*
dtype0
Э
ReadVariableOp_316ReadVariableOp%Conv3d_4f_1b_3x3_conv/kernel/momentum^AssignVariableOp_316*,
_output_shapes
:†ј*
dtype0
“
Placeholder_317Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_317AssignVariableOp%Conv3d_4f_2b_3x3_conv/kernel/momentumPlaceholder_317*
dtype0
Ь
ReadVariableOp_317ReadVariableOp%Conv3d_4f_2b_3x3_conv/kernel/momentum^AssignVariableOp_317*+
_output_shapes
: А*
dtype0
“
Placeholder_318Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_318AssignVariableOp%Conv3d_4f_3b_1x1_conv/kernel/momentumPlaceholder_318*
dtype0
Э
ReadVariableOp_318ReadVariableOp%Conv3d_4f_3b_1x1_conv/kernel/momentum^AssignVariableOp_318*,
_output_shapes
:РА*
dtype0
j
Placeholder_319Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_319AssignVariableOp!Conv3d_4f_0a_1x1_bn/beta/momentumPlaceholder_319*
dtype0
И
ReadVariableOp_319ReadVariableOp!Conv3d_4f_0a_1x1_bn/beta/momentum^AssignVariableOp_319*
_output_shapes	
:А*
dtype0
j
Placeholder_320Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_320AssignVariableOp!Conv3d_4f_1b_3x3_bn/beta/momentumPlaceholder_320*
dtype0
И
ReadVariableOp_320ReadVariableOp!Conv3d_4f_1b_3x3_bn/beta/momentum^AssignVariableOp_320*
_output_shapes	
:ј*
dtype0
j
Placeholder_321Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_321AssignVariableOp!Conv3d_4f_2b_3x3_bn/beta/momentumPlaceholder_321*
dtype0
И
ReadVariableOp_321ReadVariableOp!Conv3d_4f_2b_3x3_bn/beta/momentum^AssignVariableOp_321*
_output_shapes	
:А*
dtype0
j
Placeholder_322Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_322AssignVariableOp!Conv3d_4f_3b_1x1_bn/beta/momentumPlaceholder_322*
dtype0
И
ReadVariableOp_322ReadVariableOp!Conv3d_4f_3b_1x1_bn/beta/momentum^AssignVariableOp_322*
_output_shapes	
:А*
dtype0
“
Placeholder_323Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_323AssignVariableOp%Conv3d_5b_1a_1x1_conv/kernel/momentumPlaceholder_323*
dtype0
Э
ReadVariableOp_323ReadVariableOp%Conv3d_5b_1a_1x1_conv/kernel/momentum^AssignVariableOp_323*,
_output_shapes
:ј†*
dtype0
“
Placeholder_324Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_324AssignVariableOp%Conv3d_5b_2a_1x1_conv/kernel/momentumPlaceholder_324*
dtype0
Ь
ReadVariableOp_324ReadVariableOp%Conv3d_5b_2a_1x1_conv/kernel/momentum^AssignVariableOp_324*+
_output_shapes
:ј *
dtype0
j
Placeholder_325Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_325AssignVariableOp!Conv3d_5b_1a_1x1_bn/beta/momentumPlaceholder_325*
dtype0
И
ReadVariableOp_325ReadVariableOp!Conv3d_5b_1a_1x1_bn/beta/momentum^AssignVariableOp_325*
_output_shapes	
:†*
dtype0
j
Placeholder_326Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_326AssignVariableOp!Conv3d_5b_2a_1x1_bn/beta/momentumPlaceholder_326*
dtype0
З
ReadVariableOp_326ReadVariableOp!Conv3d_5b_2a_1x1_bn/beta/momentum^AssignVariableOp_326*
_output_shapes
: *
dtype0
“
Placeholder_327Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_327AssignVariableOp%Conv3d_5b_0a_1x1_conv/kernel/momentumPlaceholder_327*
dtype0
Э
ReadVariableOp_327ReadVariableOp%Conv3d_5b_0a_1x1_conv/kernel/momentum^AssignVariableOp_327*,
_output_shapes
:јА*
dtype0
“
Placeholder_328Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_328AssignVariableOp%Conv3d_5b_1b_3x3_conv/kernel/momentumPlaceholder_328*
dtype0
Э
ReadVariableOp_328ReadVariableOp%Conv3d_5b_1b_3x3_conv/kernel/momentum^AssignVariableOp_328*,
_output_shapes
:†ј*
dtype0
“
Placeholder_329Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_329AssignVariableOp%Conv3d_5b_2b_3x3_conv/kernel/momentumPlaceholder_329*
dtype0
Ь
ReadVariableOp_329ReadVariableOp%Conv3d_5b_2b_3x3_conv/kernel/momentum^AssignVariableOp_329*+
_output_shapes
: А*
dtype0
“
Placeholder_330Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_330AssignVariableOp%Conv3d_5b_3b_1x1_conv/kernel/momentumPlaceholder_330*
dtype0
Э
ReadVariableOp_330ReadVariableOp%Conv3d_5b_3b_1x1_conv/kernel/momentum^AssignVariableOp_330*,
_output_shapes
:јА*
dtype0
j
Placeholder_331Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_331AssignVariableOp!Conv3d_5b_0a_1x1_bn/beta/momentumPlaceholder_331*
dtype0
И
ReadVariableOp_331ReadVariableOp!Conv3d_5b_0a_1x1_bn/beta/momentum^AssignVariableOp_331*
_output_shapes	
:А*
dtype0
j
Placeholder_332Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_332AssignVariableOp!Conv3d_5b_1b_3x3_bn/beta/momentumPlaceholder_332*
dtype0
И
ReadVariableOp_332ReadVariableOp!Conv3d_5b_1b_3x3_bn/beta/momentum^AssignVariableOp_332*
_output_shapes	
:ј*
dtype0
j
Placeholder_333Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_333AssignVariableOp!Conv3d_5b_2b_3x3_bn/beta/momentumPlaceholder_333*
dtype0
И
ReadVariableOp_333ReadVariableOp!Conv3d_5b_2b_3x3_bn/beta/momentum^AssignVariableOp_333*
_output_shapes	
:А*
dtype0
j
Placeholder_334Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_334AssignVariableOp!Conv3d_5b_3b_1x1_bn/beta/momentumPlaceholder_334*
dtype0
И
ReadVariableOp_334ReadVariableOp!Conv3d_5b_3b_1x1_bn/beta/momentum^AssignVariableOp_334*
_output_shapes	
:А*
dtype0
“
Placeholder_335Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_335AssignVariableOp%Conv3d_5c_1a_1x1_conv/kernel/momentumPlaceholder_335*
dtype0
Э
ReadVariableOp_335ReadVariableOp%Conv3d_5c_1a_1x1_conv/kernel/momentum^AssignVariableOp_335*,
_output_shapes
:јј*
dtype0
“
Placeholder_336Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_336AssignVariableOp%Conv3d_5c_2a_1x1_conv/kernel/momentumPlaceholder_336*
dtype0
Ь
ReadVariableOp_336ReadVariableOp%Conv3d_5c_2a_1x1_conv/kernel/momentum^AssignVariableOp_336*+
_output_shapes
:ј0*
dtype0
j
Placeholder_337Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_337AssignVariableOp!Conv3d_5c_1a_1x1_bn/beta/momentumPlaceholder_337*
dtype0
И
ReadVariableOp_337ReadVariableOp!Conv3d_5c_1a_1x1_bn/beta/momentum^AssignVariableOp_337*
_output_shapes	
:ј*
dtype0
j
Placeholder_338Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_338AssignVariableOp!Conv3d_5c_2a_1x1_bn/beta/momentumPlaceholder_338*
dtype0
З
ReadVariableOp_338ReadVariableOp!Conv3d_5c_2a_1x1_bn/beta/momentum^AssignVariableOp_338*
_output_shapes
:0*
dtype0
“
Placeholder_339Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_339AssignVariableOp%Conv3d_5c_0a_1x1_conv/kernel/momentumPlaceholder_339*
dtype0
Э
ReadVariableOp_339ReadVariableOp%Conv3d_5c_0a_1x1_conv/kernel/momentum^AssignVariableOp_339*,
_output_shapes
:јА*
dtype0
“
Placeholder_340Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_340AssignVariableOp%Conv3d_5c_1b_3x3_conv/kernel/momentumPlaceholder_340*
dtype0
Э
ReadVariableOp_340ReadVariableOp%Conv3d_5c_1b_3x3_conv/kernel/momentum^AssignVariableOp_340*,
_output_shapes
:јА*
dtype0
“
Placeholder_341Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_341AssignVariableOp%Conv3d_5c_2b_3x3_conv/kernel/momentumPlaceholder_341*
dtype0
Ь
ReadVariableOp_341ReadVariableOp%Conv3d_5c_2b_3x3_conv/kernel/momentum^AssignVariableOp_341*+
_output_shapes
:0А*
dtype0
“
Placeholder_342Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
AssignVariableOp_342AssignVariableOp%Conv3d_5c_3b_1x1_conv/kernel/momentumPlaceholder_342*
dtype0
Э
ReadVariableOp_342ReadVariableOp%Conv3d_5c_3b_1x1_conv/kernel/momentum^AssignVariableOp_342*,
_output_shapes
:јА*
dtype0
j
Placeholder_343Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_343AssignVariableOp!Conv3d_5c_0a_1x1_bn/beta/momentumPlaceholder_343*
dtype0
И
ReadVariableOp_343ReadVariableOp!Conv3d_5c_0a_1x1_bn/beta/momentum^AssignVariableOp_343*
_output_shapes	
:А*
dtype0
j
Placeholder_344Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_344AssignVariableOp!Conv3d_5c_1b_3x3_bn/beta/momentumPlaceholder_344*
dtype0
И
ReadVariableOp_344ReadVariableOp!Conv3d_5c_1b_3x3_bn/beta/momentum^AssignVariableOp_344*
_output_shapes	
:А*
dtype0
j
Placeholder_345Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_345AssignVariableOp!Conv3d_5c_2b_3x3_bn/beta/momentumPlaceholder_345*
dtype0
И
ReadVariableOp_345ReadVariableOp!Conv3d_5c_2b_3x3_bn/beta/momentum^AssignVariableOp_345*
_output_shapes	
:А*
dtype0
j
Placeholder_346Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
i
AssignVariableOp_346AssignVariableOp!Conv3d_5c_3b_1x1_bn/beta/momentumPlaceholder_346*
dtype0
И
ReadVariableOp_346ReadVariableOp!Conv3d_5c_3b_1x1_bn/beta/momentum^AssignVariableOp_346*
_output_shapes	
:А*
dtype0
“
Placeholder_347Placeholder*W
_output_shapesE
C:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
dtype0*L
shapeC:A€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
j
AssignVariableOp_347AssignVariableOp"Conv3d_6a_1x1_conv/kernel/momentumPlaceholder_347*
dtype0
Щ
ReadVariableOp_347ReadVariableOp"Conv3d_6a_1x1_conv/kernel/momentum^AssignVariableOp_347*+
_output_shapes
:А2*
dtype0
j
Placeholder_348Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
h
AssignVariableOp_348AssignVariableOp Conv3d_6a_1x1_conv/bias/momentumPlaceholder_348*
dtype0
Ж
ReadVariableOp_348ReadVariableOp Conv3d_6a_1x1_conv/bias/momentum^AssignVariableOp_348*
_output_shapes
:2*
dtype0
Д
Placeholder_349Placeholder*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
dtype0*%
shape:€€€€€€€€€€€€€€€€€€
]
AssignVariableOp_349AssignVariableOpdense/kernel/momentumPlaceholder_349*
dtype0

ReadVariableOp_349ReadVariableOpdense/kernel/momentum^AssignVariableOp_349*
_output_shapes

:d2*
dtype0
j
Placeholder_350Placeholder*#
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
[
AssignVariableOp_350AssignVariableOpdense/bias/momentumPlaceholder_350*
dtype0
y
ReadVariableOp_350ReadVariableOpdense/bias/momentum^AssignVariableOp_350*
_output_shapes
:2*
dtype0
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
{
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
a
save/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
З
save/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_467ed1b7f9124c2484791c0e90dd3ffd/part
|
save/SelectSelectsave/StaticRegexFullMatchsave/Const_1save/Const_2"/device:CPU:**
T0*
_output_shapes
: 
w
save/StringJoin
StringJoin
save/Constsave/Select"/device:CPU:**
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
М
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
Ђ[
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:в*
dtype0*ќZ
valueƒZBЅZвBConv3d_1a_7x7_bn/betaBConv3d_1a_7x7_bn/beta/momentumBConv3d_1a_7x7_bn/moving_meanB Conv3d_1a_7x7_bn/moving_varianceBConv3d_1a_7x7_conv/kernelB"Conv3d_1a_7x7_conv/kernel/momentumBConv3d_2b_1x1_bn/betaBConv3d_2b_1x1_bn/beta/momentumBConv3d_2b_1x1_bn/moving_meanB Conv3d_2b_1x1_bn/moving_varianceBConv3d_2b_1x1_conv/kernelB"Conv3d_2b_1x1_conv/kernel/momentumBConv3d_2c_3x3_bn/betaBConv3d_2c_3x3_bn/beta/momentumBConv3d_2c_3x3_bn/moving_meanB Conv3d_2c_3x3_bn/moving_varianceBConv3d_2c_3x3_conv/kernelB"Conv3d_2c_3x3_conv/kernel/momentumBConv3d_3b_0a_1x1_bn/betaB!Conv3d_3b_0a_1x1_bn/beta/momentumBConv3d_3b_0a_1x1_bn/moving_meanB#Conv3d_3b_0a_1x1_bn/moving_varianceBConv3d_3b_0a_1x1_conv/kernelB%Conv3d_3b_0a_1x1_conv/kernel/momentumBConv3d_3b_1a_1x1_bn/betaB!Conv3d_3b_1a_1x1_bn/beta/momentumBConv3d_3b_1a_1x1_bn/moving_meanB#Conv3d_3b_1a_1x1_bn/moving_varianceBConv3d_3b_1a_1x1_conv/kernelB%Conv3d_3b_1a_1x1_conv/kernel/momentumBConv3d_3b_1b_3x3_bn/betaB!Conv3d_3b_1b_3x3_bn/beta/momentumBConv3d_3b_1b_3x3_bn/moving_meanB#Conv3d_3b_1b_3x3_bn/moving_varianceBConv3d_3b_1b_3x3_conv/kernelB%Conv3d_3b_1b_3x3_conv/kernel/momentumBConv3d_3b_2a_1x1_bn/betaB!Conv3d_3b_2a_1x1_bn/beta/momentumBConv3d_3b_2a_1x1_bn/moving_meanB#Conv3d_3b_2a_1x1_bn/moving_varianceBConv3d_3b_2a_1x1_conv/kernelB%Conv3d_3b_2a_1x1_conv/kernel/momentumBConv3d_3b_2b_3x3_bn/betaB!Conv3d_3b_2b_3x3_bn/beta/momentumBConv3d_3b_2b_3x3_bn/moving_meanB#Conv3d_3b_2b_3x3_bn/moving_varianceBConv3d_3b_2b_3x3_conv/kernelB%Conv3d_3b_2b_3x3_conv/kernel/momentumBConv3d_3b_3b_1x1_bn/betaB!Conv3d_3b_3b_1x1_bn/beta/momentumBConv3d_3b_3b_1x1_bn/moving_meanB#Conv3d_3b_3b_1x1_bn/moving_varianceBConv3d_3b_3b_1x1_conv/kernelB%Conv3d_3b_3b_1x1_conv/kernel/momentumBConv3d_3c_0a_1x1_bn/betaB!Conv3d_3c_0a_1x1_bn/beta/momentumBConv3d_3c_0a_1x1_bn/moving_meanB#Conv3d_3c_0a_1x1_bn/moving_varianceBConv3d_3c_0a_1x1_conv/kernelB%Conv3d_3c_0a_1x1_conv/kernel/momentumBConv3d_3c_1a_1x1_bn/betaB!Conv3d_3c_1a_1x1_bn/beta/momentumBConv3d_3c_1a_1x1_bn/moving_meanB#Conv3d_3c_1a_1x1_bn/moving_varianceBConv3d_3c_1a_1x1_conv/kernelB%Conv3d_3c_1a_1x1_conv/kernel/momentumBConv3d_3c_1b_3x3_bn/betaB!Conv3d_3c_1b_3x3_bn/beta/momentumBConv3d_3c_1b_3x3_bn/moving_meanB#Conv3d_3c_1b_3x3_bn/moving_varianceBConv3d_3c_1b_3x3_conv/kernelB%Conv3d_3c_1b_3x3_conv/kernel/momentumBConv3d_3c_2a_1x1_bn/betaB!Conv3d_3c_2a_1x1_bn/beta/momentumBConv3d_3c_2a_1x1_bn/moving_meanB#Conv3d_3c_2a_1x1_bn/moving_varianceBConv3d_3c_2a_1x1_conv/kernelB%Conv3d_3c_2a_1x1_conv/kernel/momentumBConv3d_3c_2b_3x3_bn/betaB!Conv3d_3c_2b_3x3_bn/beta/momentumBConv3d_3c_2b_3x3_bn/moving_meanB#Conv3d_3c_2b_3x3_bn/moving_varianceBConv3d_3c_2b_3x3_conv/kernelB%Conv3d_3c_2b_3x3_conv/kernel/momentumBConv3d_3c_3b_1x1_bn/betaB!Conv3d_3c_3b_1x1_bn/beta/momentumBConv3d_3c_3b_1x1_bn/moving_meanB#Conv3d_3c_3b_1x1_bn/moving_varianceBConv3d_3c_3b_1x1_conv/kernelB%Conv3d_3c_3b_1x1_conv/kernel/momentumBConv3d_4b_0a_1x1_bn/betaB!Conv3d_4b_0a_1x1_bn/beta/momentumBConv3d_4b_0a_1x1_bn/moving_meanB#Conv3d_4b_0a_1x1_bn/moving_varianceBConv3d_4b_0a_1x1_conv/kernelB%Conv3d_4b_0a_1x1_conv/kernel/momentumBConv3d_4b_1a_1x1_bn/betaB!Conv3d_4b_1a_1x1_bn/beta/momentumBConv3d_4b_1a_1x1_bn/moving_meanB#Conv3d_4b_1a_1x1_bn/moving_varianceBConv3d_4b_1a_1x1_conv/kernelB%Conv3d_4b_1a_1x1_conv/kernel/momentumBConv3d_4b_1b_3x3_bn/betaB!Conv3d_4b_1b_3x3_bn/beta/momentumBConv3d_4b_1b_3x3_bn/moving_meanB#Conv3d_4b_1b_3x3_bn/moving_varianceBConv3d_4b_1b_3x3_conv/kernelB%Conv3d_4b_1b_3x3_conv/kernel/momentumBConv3d_4b_2a_1x1_bn/betaB!Conv3d_4b_2a_1x1_bn/beta/momentumBConv3d_4b_2a_1x1_bn/moving_meanB#Conv3d_4b_2a_1x1_bn/moving_varianceBConv3d_4b_2a_1x1_conv/kernelB%Conv3d_4b_2a_1x1_conv/kernel/momentumBConv3d_4b_2b_3x3_bn/betaB!Conv3d_4b_2b_3x3_bn/beta/momentumBConv3d_4b_2b_3x3_bn/moving_meanB#Conv3d_4b_2b_3x3_bn/moving_varianceBConv3d_4b_2b_3x3_conv/kernelB%Conv3d_4b_2b_3x3_conv/kernel/momentumBConv3d_4b_3b_1x1_bn/betaB!Conv3d_4b_3b_1x1_bn/beta/momentumBConv3d_4b_3b_1x1_bn/moving_meanB#Conv3d_4b_3b_1x1_bn/moving_varianceBConv3d_4b_3b_1x1_conv/kernelB%Conv3d_4b_3b_1x1_conv/kernel/momentumBConv3d_4c_0a_1x1_bn/betaB!Conv3d_4c_0a_1x1_bn/beta/momentumBConv3d_4c_0a_1x1_bn/moving_meanB#Conv3d_4c_0a_1x1_bn/moving_varianceBConv3d_4c_0a_1x1_conv/kernelB%Conv3d_4c_0a_1x1_conv/kernel/momentumBConv3d_4c_1a_1x1_bn/betaB!Conv3d_4c_1a_1x1_bn/beta/momentumBConv3d_4c_1a_1x1_bn/moving_meanB#Conv3d_4c_1a_1x1_bn/moving_varianceBConv3d_4c_1a_1x1_conv/kernelB%Conv3d_4c_1a_1x1_conv/kernel/momentumBConv3d_4c_1b_3x3_bn/betaB!Conv3d_4c_1b_3x3_bn/beta/momentumBConv3d_4c_1b_3x3_bn/moving_meanB#Conv3d_4c_1b_3x3_bn/moving_varianceBConv3d_4c_1b_3x3_conv/kernelB%Conv3d_4c_1b_3x3_conv/kernel/momentumBConv3d_4c_2a_1x1_bn/betaB!Conv3d_4c_2a_1x1_bn/beta/momentumBConv3d_4c_2a_1x1_bn/moving_meanB#Conv3d_4c_2a_1x1_bn/moving_varianceBConv3d_4c_2a_1x1_conv/kernelB%Conv3d_4c_2a_1x1_conv/kernel/momentumBConv3d_4c_2b_3x3_bn/betaB!Conv3d_4c_2b_3x3_bn/beta/momentumBConv3d_4c_2b_3x3_bn/moving_meanB#Conv3d_4c_2b_3x3_bn/moving_varianceBConv3d_4c_2b_3x3_conv/kernelB%Conv3d_4c_2b_3x3_conv/kernel/momentumBConv3d_4c_3b_1x1_bn/betaB!Conv3d_4c_3b_1x1_bn/beta/momentumBConv3d_4c_3b_1x1_bn/moving_meanB#Conv3d_4c_3b_1x1_bn/moving_varianceBConv3d_4c_3b_1x1_conv/kernelB%Conv3d_4c_3b_1x1_conv/kernel/momentumBConv3d_4d_0a_1x1_bn/betaB!Conv3d_4d_0a_1x1_bn/beta/momentumBConv3d_4d_0a_1x1_bn/moving_meanB#Conv3d_4d_0a_1x1_bn/moving_varianceBConv3d_4d_0a_1x1_conv/kernelB%Conv3d_4d_0a_1x1_conv/kernel/momentumBConv3d_4d_1a_1x1_bn/betaB!Conv3d_4d_1a_1x1_bn/beta/momentumBConv3d_4d_1a_1x1_bn/moving_meanB#Conv3d_4d_1a_1x1_bn/moving_varianceBConv3d_4d_1a_1x1_conv/kernelB%Conv3d_4d_1a_1x1_conv/kernel/momentumBConv3d_4d_1b_3x3_bn/betaB!Conv3d_4d_1b_3x3_bn/beta/momentumBConv3d_4d_1b_3x3_bn/moving_meanB#Conv3d_4d_1b_3x3_bn/moving_varianceBConv3d_4d_1b_3x3_conv/kernelB%Conv3d_4d_1b_3x3_conv/kernel/momentumBConv3d_4d_2a_1x1_bn/betaB!Conv3d_4d_2a_1x1_bn/beta/momentumBConv3d_4d_2a_1x1_bn/moving_meanB#Conv3d_4d_2a_1x1_bn/moving_varianceBConv3d_4d_2a_1x1_conv/kernelB%Conv3d_4d_2a_1x1_conv/kernel/momentumBConv3d_4d_2b_3x3_bn/betaB!Conv3d_4d_2b_3x3_bn/beta/momentumBConv3d_4d_2b_3x3_bn/moving_meanB#Conv3d_4d_2b_3x3_bn/moving_varianceBConv3d_4d_2b_3x3_conv/kernelB%Conv3d_4d_2b_3x3_conv/kernel/momentumBConv3d_4d_3b_1x1_bn/betaB!Conv3d_4d_3b_1x1_bn/beta/momentumBConv3d_4d_3b_1x1_bn/moving_meanB#Conv3d_4d_3b_1x1_bn/moving_varianceBConv3d_4d_3b_1x1_conv/kernelB%Conv3d_4d_3b_1x1_conv/kernel/momentumBConv3d_4e_0a_1x1_bn/betaB!Conv3d_4e_0a_1x1_bn/beta/momentumBConv3d_4e_0a_1x1_bn/moving_meanB#Conv3d_4e_0a_1x1_bn/moving_varianceBConv3d_4e_0a_1x1_conv/kernelB%Conv3d_4e_0a_1x1_conv/kernel/momentumBConv3d_4e_1a_1x1_bn/betaB!Conv3d_4e_1a_1x1_bn/beta/momentumBConv3d_4e_1a_1x1_bn/moving_meanB#Conv3d_4e_1a_1x1_bn/moving_varianceBConv3d_4e_1a_1x1_conv/kernelB%Conv3d_4e_1a_1x1_conv/kernel/momentumBConv3d_4e_1b_3x3_bn/betaB!Conv3d_4e_1b_3x3_bn/beta/momentumBConv3d_4e_1b_3x3_bn/moving_meanB#Conv3d_4e_1b_3x3_bn/moving_varianceBConv3d_4e_1b_3x3_conv/kernelB%Conv3d_4e_1b_3x3_conv/kernel/momentumBConv3d_4e_2a_1x1_bn/betaB!Conv3d_4e_2a_1x1_bn/beta/momentumBConv3d_4e_2a_1x1_bn/moving_meanB#Conv3d_4e_2a_1x1_bn/moving_varianceBConv3d_4e_2a_1x1_conv/kernelB%Conv3d_4e_2a_1x1_conv/kernel/momentumBConv3d_4e_2b_3x3_bn/betaB!Conv3d_4e_2b_3x3_bn/beta/momentumBConv3d_4e_2b_3x3_bn/moving_meanB#Conv3d_4e_2b_3x3_bn/moving_varianceBConv3d_4e_2b_3x3_conv/kernelB%Conv3d_4e_2b_3x3_conv/kernel/momentumBConv3d_4e_3b_1x1_bn/betaB!Conv3d_4e_3b_1x1_bn/beta/momentumBConv3d_4e_3b_1x1_bn/moving_meanB#Conv3d_4e_3b_1x1_bn/moving_varianceBConv3d_4e_3b_1x1_conv/kernelB%Conv3d_4e_3b_1x1_conv/kernel/momentumBConv3d_4f_0a_1x1_bn/betaB!Conv3d_4f_0a_1x1_bn/beta/momentumBConv3d_4f_0a_1x1_bn/moving_meanB#Conv3d_4f_0a_1x1_bn/moving_varianceBConv3d_4f_0a_1x1_conv/kernelB%Conv3d_4f_0a_1x1_conv/kernel/momentumBConv3d_4f_1a_1x1_bn/betaB!Conv3d_4f_1a_1x1_bn/beta/momentumBConv3d_4f_1a_1x1_bn/moving_meanB#Conv3d_4f_1a_1x1_bn/moving_varianceBConv3d_4f_1a_1x1_conv/kernelB%Conv3d_4f_1a_1x1_conv/kernel/momentumBConv3d_4f_1b_3x3_bn/betaB!Conv3d_4f_1b_3x3_bn/beta/momentumBConv3d_4f_1b_3x3_bn/moving_meanB#Conv3d_4f_1b_3x3_bn/moving_varianceBConv3d_4f_1b_3x3_conv/kernelB%Conv3d_4f_1b_3x3_conv/kernel/momentumBConv3d_4f_2a_1x1_bn/betaB!Conv3d_4f_2a_1x1_bn/beta/momentumBConv3d_4f_2a_1x1_bn/moving_meanB#Conv3d_4f_2a_1x1_bn/moving_varianceBConv3d_4f_2a_1x1_conv/kernelB%Conv3d_4f_2a_1x1_conv/kernel/momentumBConv3d_4f_2b_3x3_bn/betaB!Conv3d_4f_2b_3x3_bn/beta/momentumBConv3d_4f_2b_3x3_bn/moving_meanB#Conv3d_4f_2b_3x3_bn/moving_varianceBConv3d_4f_2b_3x3_conv/kernelB%Conv3d_4f_2b_3x3_conv/kernel/momentumBConv3d_4f_3b_1x1_bn/betaB!Conv3d_4f_3b_1x1_bn/beta/momentumBConv3d_4f_3b_1x1_bn/moving_meanB#Conv3d_4f_3b_1x1_bn/moving_varianceBConv3d_4f_3b_1x1_conv/kernelB%Conv3d_4f_3b_1x1_conv/kernel/momentumBConv3d_5b_0a_1x1_bn/betaB!Conv3d_5b_0a_1x1_bn/beta/momentumBConv3d_5b_0a_1x1_bn/moving_meanB#Conv3d_5b_0a_1x1_bn/moving_varianceBConv3d_5b_0a_1x1_conv/kernelB%Conv3d_5b_0a_1x1_conv/kernel/momentumBConv3d_5b_1a_1x1_bn/betaB!Conv3d_5b_1a_1x1_bn/beta/momentumBConv3d_5b_1a_1x1_bn/moving_meanB#Conv3d_5b_1a_1x1_bn/moving_varianceBConv3d_5b_1a_1x1_conv/kernelB%Conv3d_5b_1a_1x1_conv/kernel/momentumBConv3d_5b_1b_3x3_bn/betaB!Conv3d_5b_1b_3x3_bn/beta/momentumBConv3d_5b_1b_3x3_bn/moving_meanB#Conv3d_5b_1b_3x3_bn/moving_varianceBConv3d_5b_1b_3x3_conv/kernelB%Conv3d_5b_1b_3x3_conv/kernel/momentumBConv3d_5b_2a_1x1_bn/betaB!Conv3d_5b_2a_1x1_bn/beta/momentumBConv3d_5b_2a_1x1_bn/moving_meanB#Conv3d_5b_2a_1x1_bn/moving_varianceBConv3d_5b_2a_1x1_conv/kernelB%Conv3d_5b_2a_1x1_conv/kernel/momentumBConv3d_5b_2b_3x3_bn/betaB!Conv3d_5b_2b_3x3_bn/beta/momentumBConv3d_5b_2b_3x3_bn/moving_meanB#Conv3d_5b_2b_3x3_bn/moving_varianceBConv3d_5b_2b_3x3_conv/kernelB%Conv3d_5b_2b_3x3_conv/kernel/momentumBConv3d_5b_3b_1x1_bn/betaB!Conv3d_5b_3b_1x1_bn/beta/momentumBConv3d_5b_3b_1x1_bn/moving_meanB#Conv3d_5b_3b_1x1_bn/moving_varianceBConv3d_5b_3b_1x1_conv/kernelB%Conv3d_5b_3b_1x1_conv/kernel/momentumBConv3d_5c_0a_1x1_bn/betaB!Conv3d_5c_0a_1x1_bn/beta/momentumBConv3d_5c_0a_1x1_bn/moving_meanB#Conv3d_5c_0a_1x1_bn/moving_varianceBConv3d_5c_0a_1x1_conv/kernelB%Conv3d_5c_0a_1x1_conv/kernel/momentumBConv3d_5c_1a_1x1_bn/betaB!Conv3d_5c_1a_1x1_bn/beta/momentumBConv3d_5c_1a_1x1_bn/moving_meanB#Conv3d_5c_1a_1x1_bn/moving_varianceBConv3d_5c_1a_1x1_conv/kernelB%Conv3d_5c_1a_1x1_conv/kernel/momentumBConv3d_5c_1b_3x3_bn/betaB!Conv3d_5c_1b_3x3_bn/beta/momentumBConv3d_5c_1b_3x3_bn/moving_meanB#Conv3d_5c_1b_3x3_bn/moving_varianceBConv3d_5c_1b_3x3_conv/kernelB%Conv3d_5c_1b_3x3_conv/kernel/momentumBConv3d_5c_2a_1x1_bn/betaB!Conv3d_5c_2a_1x1_bn/beta/momentumBConv3d_5c_2a_1x1_bn/moving_meanB#Conv3d_5c_2a_1x1_bn/moving_varianceBConv3d_5c_2a_1x1_conv/kernelB%Conv3d_5c_2a_1x1_conv/kernel/momentumBConv3d_5c_2b_3x3_bn/betaB!Conv3d_5c_2b_3x3_bn/beta/momentumBConv3d_5c_2b_3x3_bn/moving_meanB#Conv3d_5c_2b_3x3_bn/moving_varianceBConv3d_5c_2b_3x3_conv/kernelB%Conv3d_5c_2b_3x3_conv/kernel/momentumBConv3d_5c_3b_1x1_bn/betaB!Conv3d_5c_3b_1x1_bn/beta/momentumBConv3d_5c_3b_1x1_bn/moving_meanB#Conv3d_5c_3b_1x1_bn/moving_varianceBConv3d_5c_3b_1x1_conv/kernelB%Conv3d_5c_3b_1x1_conv/kernel/momentumBConv3d_6a_1x1_conv/biasB Conv3d_6a_1x1_conv/bias/momentumBConv3d_6a_1x1_conv/kernelB"Conv3d_6a_1x1_conv/kernel/momentumBdecayB
dense/biasBdense/bias/momentumBdense/kernelBdense/kernel/momentumBiterBlearning_rateBmomentum
ї
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:в*
dtype0*Џ
value–BЌвB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
»Х
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices)Conv3d_1a_7x7_bn/beta/Read/ReadVariableOp2Conv3d_1a_7x7_bn/beta/momentum/Read/ReadVariableOp0Conv3d_1a_7x7_bn/moving_mean/Read/ReadVariableOp4Conv3d_1a_7x7_bn/moving_variance/Read/ReadVariableOp-Conv3d_1a_7x7_conv/kernel/Read/ReadVariableOp6Conv3d_1a_7x7_conv/kernel/momentum/Read/ReadVariableOp)Conv3d_2b_1x1_bn/beta/Read/ReadVariableOp2Conv3d_2b_1x1_bn/beta/momentum/Read/ReadVariableOp0Conv3d_2b_1x1_bn/moving_mean/Read/ReadVariableOp4Conv3d_2b_1x1_bn/moving_variance/Read/ReadVariableOp-Conv3d_2b_1x1_conv/kernel/Read/ReadVariableOp6Conv3d_2b_1x1_conv/kernel/momentum/Read/ReadVariableOp)Conv3d_2c_3x3_bn/beta/Read/ReadVariableOp2Conv3d_2c_3x3_bn/beta/momentum/Read/ReadVariableOp0Conv3d_2c_3x3_bn/moving_mean/Read/ReadVariableOp4Conv3d_2c_3x3_bn/moving_variance/Read/ReadVariableOp-Conv3d_2c_3x3_conv/kernel/Read/ReadVariableOp6Conv3d_2c_3x3_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_3b_0a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_3b_0a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_3b_0a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_3b_0a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_3b_0a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_3b_0a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_3b_1a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_3b_1a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_3b_1a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_3b_1a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_3b_1a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_3b_1a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_3b_1b_3x3_bn/beta/Read/ReadVariableOp5Conv3d_3b_1b_3x3_bn/beta/momentum/Read/ReadVariableOp3Conv3d_3b_1b_3x3_bn/moving_mean/Read/ReadVariableOp7Conv3d_3b_1b_3x3_bn/moving_variance/Read/ReadVariableOp0Conv3d_3b_1b_3x3_conv/kernel/Read/ReadVariableOp9Conv3d_3b_1b_3x3_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_3b_2a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_3b_2a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_3b_2a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_3b_2a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_3b_2a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_3b_2a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_3b_2b_3x3_bn/beta/Read/ReadVariableOp5Conv3d_3b_2b_3x3_bn/beta/momentum/Read/ReadVariableOp3Conv3d_3b_2b_3x3_bn/moving_mean/Read/ReadVariableOp7Conv3d_3b_2b_3x3_bn/moving_variance/Read/ReadVariableOp0Conv3d_3b_2b_3x3_conv/kernel/Read/ReadVariableOp9Conv3d_3b_2b_3x3_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_3b_3b_1x1_bn/beta/Read/ReadVariableOp5Conv3d_3b_3b_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_3b_3b_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_3b_3b_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_3b_3b_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_3b_3b_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_3c_0a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_3c_0a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_3c_0a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_3c_0a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_3c_0a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_3c_0a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_3c_1a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_3c_1a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_3c_1a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_3c_1a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_3c_1a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_3c_1a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_3c_1b_3x3_bn/beta/Read/ReadVariableOp5Conv3d_3c_1b_3x3_bn/beta/momentum/Read/ReadVariableOp3Conv3d_3c_1b_3x3_bn/moving_mean/Read/ReadVariableOp7Conv3d_3c_1b_3x3_bn/moving_variance/Read/ReadVariableOp0Conv3d_3c_1b_3x3_conv/kernel/Read/ReadVariableOp9Conv3d_3c_1b_3x3_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_3c_2a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_3c_2a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_3c_2a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_3c_2a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_3c_2a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_3c_2a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_3c_2b_3x3_bn/beta/Read/ReadVariableOp5Conv3d_3c_2b_3x3_bn/beta/momentum/Read/ReadVariableOp3Conv3d_3c_2b_3x3_bn/moving_mean/Read/ReadVariableOp7Conv3d_3c_2b_3x3_bn/moving_variance/Read/ReadVariableOp0Conv3d_3c_2b_3x3_conv/kernel/Read/ReadVariableOp9Conv3d_3c_2b_3x3_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_3c_3b_1x1_bn/beta/Read/ReadVariableOp5Conv3d_3c_3b_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_3c_3b_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_3c_3b_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_3c_3b_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_3c_3b_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4b_0a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_4b_0a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4b_0a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_4b_0a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_4b_0a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_4b_0a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4b_1a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_4b_1a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4b_1a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_4b_1a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_4b_1a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_4b_1a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4b_1b_3x3_bn/beta/Read/ReadVariableOp5Conv3d_4b_1b_3x3_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4b_1b_3x3_bn/moving_mean/Read/ReadVariableOp7Conv3d_4b_1b_3x3_bn/moving_variance/Read/ReadVariableOp0Conv3d_4b_1b_3x3_conv/kernel/Read/ReadVariableOp9Conv3d_4b_1b_3x3_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4b_2a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_4b_2a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4b_2a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_4b_2a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_4b_2a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_4b_2a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4b_2b_3x3_bn/beta/Read/ReadVariableOp5Conv3d_4b_2b_3x3_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4b_2b_3x3_bn/moving_mean/Read/ReadVariableOp7Conv3d_4b_2b_3x3_bn/moving_variance/Read/ReadVariableOp0Conv3d_4b_2b_3x3_conv/kernel/Read/ReadVariableOp9Conv3d_4b_2b_3x3_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4b_3b_1x1_bn/beta/Read/ReadVariableOp5Conv3d_4b_3b_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4b_3b_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_4b_3b_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_4b_3b_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_4b_3b_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4c_0a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_4c_0a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4c_0a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_4c_0a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_4c_0a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_4c_0a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4c_1a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_4c_1a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4c_1a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_4c_1a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_4c_1a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_4c_1a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4c_1b_3x3_bn/beta/Read/ReadVariableOp5Conv3d_4c_1b_3x3_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4c_1b_3x3_bn/moving_mean/Read/ReadVariableOp7Conv3d_4c_1b_3x3_bn/moving_variance/Read/ReadVariableOp0Conv3d_4c_1b_3x3_conv/kernel/Read/ReadVariableOp9Conv3d_4c_1b_3x3_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4c_2a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_4c_2a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4c_2a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_4c_2a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_4c_2a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_4c_2a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4c_2b_3x3_bn/beta/Read/ReadVariableOp5Conv3d_4c_2b_3x3_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4c_2b_3x3_bn/moving_mean/Read/ReadVariableOp7Conv3d_4c_2b_3x3_bn/moving_variance/Read/ReadVariableOp0Conv3d_4c_2b_3x3_conv/kernel/Read/ReadVariableOp9Conv3d_4c_2b_3x3_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4c_3b_1x1_bn/beta/Read/ReadVariableOp5Conv3d_4c_3b_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4c_3b_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_4c_3b_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_4c_3b_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_4c_3b_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4d_0a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_4d_0a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4d_0a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_4d_0a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_4d_0a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_4d_0a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4d_1a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_4d_1a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4d_1a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_4d_1a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_4d_1a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_4d_1a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4d_1b_3x3_bn/beta/Read/ReadVariableOp5Conv3d_4d_1b_3x3_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4d_1b_3x3_bn/moving_mean/Read/ReadVariableOp7Conv3d_4d_1b_3x3_bn/moving_variance/Read/ReadVariableOp0Conv3d_4d_1b_3x3_conv/kernel/Read/ReadVariableOp9Conv3d_4d_1b_3x3_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4d_2a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_4d_2a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4d_2a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_4d_2a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_4d_2a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_4d_2a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4d_2b_3x3_bn/beta/Read/ReadVariableOp5Conv3d_4d_2b_3x3_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4d_2b_3x3_bn/moving_mean/Read/ReadVariableOp7Conv3d_4d_2b_3x3_bn/moving_variance/Read/ReadVariableOp0Conv3d_4d_2b_3x3_conv/kernel/Read/ReadVariableOp9Conv3d_4d_2b_3x3_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4d_3b_1x1_bn/beta/Read/ReadVariableOp5Conv3d_4d_3b_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4d_3b_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_4d_3b_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_4d_3b_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_4d_3b_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4e_0a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_4e_0a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4e_0a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_4e_0a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_4e_0a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_4e_0a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4e_1a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_4e_1a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4e_1a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_4e_1a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_4e_1a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_4e_1a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4e_1b_3x3_bn/beta/Read/ReadVariableOp5Conv3d_4e_1b_3x3_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4e_1b_3x3_bn/moving_mean/Read/ReadVariableOp7Conv3d_4e_1b_3x3_bn/moving_variance/Read/ReadVariableOp0Conv3d_4e_1b_3x3_conv/kernel/Read/ReadVariableOp9Conv3d_4e_1b_3x3_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4e_2a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_4e_2a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4e_2a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_4e_2a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_4e_2a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_4e_2a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4e_2b_3x3_bn/beta/Read/ReadVariableOp5Conv3d_4e_2b_3x3_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4e_2b_3x3_bn/moving_mean/Read/ReadVariableOp7Conv3d_4e_2b_3x3_bn/moving_variance/Read/ReadVariableOp0Conv3d_4e_2b_3x3_conv/kernel/Read/ReadVariableOp9Conv3d_4e_2b_3x3_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4e_3b_1x1_bn/beta/Read/ReadVariableOp5Conv3d_4e_3b_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4e_3b_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_4e_3b_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_4e_3b_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_4e_3b_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4f_0a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_4f_0a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4f_0a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_4f_0a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_4f_0a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_4f_0a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4f_1a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_4f_1a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4f_1a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_4f_1a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_4f_1a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_4f_1a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4f_1b_3x3_bn/beta/Read/ReadVariableOp5Conv3d_4f_1b_3x3_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4f_1b_3x3_bn/moving_mean/Read/ReadVariableOp7Conv3d_4f_1b_3x3_bn/moving_variance/Read/ReadVariableOp0Conv3d_4f_1b_3x3_conv/kernel/Read/ReadVariableOp9Conv3d_4f_1b_3x3_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4f_2a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_4f_2a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4f_2a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_4f_2a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_4f_2a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_4f_2a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4f_2b_3x3_bn/beta/Read/ReadVariableOp5Conv3d_4f_2b_3x3_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4f_2b_3x3_bn/moving_mean/Read/ReadVariableOp7Conv3d_4f_2b_3x3_bn/moving_variance/Read/ReadVariableOp0Conv3d_4f_2b_3x3_conv/kernel/Read/ReadVariableOp9Conv3d_4f_2b_3x3_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_4f_3b_1x1_bn/beta/Read/ReadVariableOp5Conv3d_4f_3b_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_4f_3b_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_4f_3b_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_4f_3b_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_4f_3b_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_5b_0a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_5b_0a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_5b_0a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_5b_0a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_5b_0a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_5b_0a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_5b_1a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_5b_1a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_5b_1a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_5b_1a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_5b_1a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_5b_1a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_5b_1b_3x3_bn/beta/Read/ReadVariableOp5Conv3d_5b_1b_3x3_bn/beta/momentum/Read/ReadVariableOp3Conv3d_5b_1b_3x3_bn/moving_mean/Read/ReadVariableOp7Conv3d_5b_1b_3x3_bn/moving_variance/Read/ReadVariableOp0Conv3d_5b_1b_3x3_conv/kernel/Read/ReadVariableOp9Conv3d_5b_1b_3x3_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_5b_2a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_5b_2a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_5b_2a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_5b_2a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_5b_2a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_5b_2a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_5b_2b_3x3_bn/beta/Read/ReadVariableOp5Conv3d_5b_2b_3x3_bn/beta/momentum/Read/ReadVariableOp3Conv3d_5b_2b_3x3_bn/moving_mean/Read/ReadVariableOp7Conv3d_5b_2b_3x3_bn/moving_variance/Read/ReadVariableOp0Conv3d_5b_2b_3x3_conv/kernel/Read/ReadVariableOp9Conv3d_5b_2b_3x3_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_5b_3b_1x1_bn/beta/Read/ReadVariableOp5Conv3d_5b_3b_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_5b_3b_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_5b_3b_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_5b_3b_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_5b_3b_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_5c_0a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_5c_0a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_5c_0a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_5c_0a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_5c_0a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_5c_0a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_5c_1a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_5c_1a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_5c_1a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_5c_1a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_5c_1a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_5c_1a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_5c_1b_3x3_bn/beta/Read/ReadVariableOp5Conv3d_5c_1b_3x3_bn/beta/momentum/Read/ReadVariableOp3Conv3d_5c_1b_3x3_bn/moving_mean/Read/ReadVariableOp7Conv3d_5c_1b_3x3_bn/moving_variance/Read/ReadVariableOp0Conv3d_5c_1b_3x3_conv/kernel/Read/ReadVariableOp9Conv3d_5c_1b_3x3_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_5c_2a_1x1_bn/beta/Read/ReadVariableOp5Conv3d_5c_2a_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_5c_2a_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_5c_2a_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_5c_2a_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_5c_2a_1x1_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_5c_2b_3x3_bn/beta/Read/ReadVariableOp5Conv3d_5c_2b_3x3_bn/beta/momentum/Read/ReadVariableOp3Conv3d_5c_2b_3x3_bn/moving_mean/Read/ReadVariableOp7Conv3d_5c_2b_3x3_bn/moving_variance/Read/ReadVariableOp0Conv3d_5c_2b_3x3_conv/kernel/Read/ReadVariableOp9Conv3d_5c_2b_3x3_conv/kernel/momentum/Read/ReadVariableOp,Conv3d_5c_3b_1x1_bn/beta/Read/ReadVariableOp5Conv3d_5c_3b_1x1_bn/beta/momentum/Read/ReadVariableOp3Conv3d_5c_3b_1x1_bn/moving_mean/Read/ReadVariableOp7Conv3d_5c_3b_1x1_bn/moving_variance/Read/ReadVariableOp0Conv3d_5c_3b_1x1_conv/kernel/Read/ReadVariableOp9Conv3d_5c_3b_1x1_conv/kernel/momentum/Read/ReadVariableOp+Conv3d_6a_1x1_conv/bias/Read/ReadVariableOp4Conv3d_6a_1x1_conv/bias/momentum/Read/ReadVariableOp-Conv3d_6a_1x1_conv/kernel/Read/ReadVariableOp6Conv3d_6a_1x1_conv/kernel/momentum/Read/ReadVariableOpdecay/Read/ReadVariableOpdense/bias/Read/ReadVariableOp'dense/bias/momentum/Read/ReadVariableOp dense/kernel/Read/ReadVariableOp)dense/kernel/momentum/Read/ReadVariableOpiter/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpmomentum/Read/ReadVariableOp"/device:CPU:0*у
dtypesи
е2в	
†
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
ђ
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:*

axis 
М
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
Й
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
Ѓ[
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:в*
dtype0*ќZ
valueƒZBЅZвBConv3d_1a_7x7_bn/betaBConv3d_1a_7x7_bn/beta/momentumBConv3d_1a_7x7_bn/moving_meanB Conv3d_1a_7x7_bn/moving_varianceBConv3d_1a_7x7_conv/kernelB"Conv3d_1a_7x7_conv/kernel/momentumBConv3d_2b_1x1_bn/betaBConv3d_2b_1x1_bn/beta/momentumBConv3d_2b_1x1_bn/moving_meanB Conv3d_2b_1x1_bn/moving_varianceBConv3d_2b_1x1_conv/kernelB"Conv3d_2b_1x1_conv/kernel/momentumBConv3d_2c_3x3_bn/betaBConv3d_2c_3x3_bn/beta/momentumBConv3d_2c_3x3_bn/moving_meanB Conv3d_2c_3x3_bn/moving_varianceBConv3d_2c_3x3_conv/kernelB"Conv3d_2c_3x3_conv/kernel/momentumBConv3d_3b_0a_1x1_bn/betaB!Conv3d_3b_0a_1x1_bn/beta/momentumBConv3d_3b_0a_1x1_bn/moving_meanB#Conv3d_3b_0a_1x1_bn/moving_varianceBConv3d_3b_0a_1x1_conv/kernelB%Conv3d_3b_0a_1x1_conv/kernel/momentumBConv3d_3b_1a_1x1_bn/betaB!Conv3d_3b_1a_1x1_bn/beta/momentumBConv3d_3b_1a_1x1_bn/moving_meanB#Conv3d_3b_1a_1x1_bn/moving_varianceBConv3d_3b_1a_1x1_conv/kernelB%Conv3d_3b_1a_1x1_conv/kernel/momentumBConv3d_3b_1b_3x3_bn/betaB!Conv3d_3b_1b_3x3_bn/beta/momentumBConv3d_3b_1b_3x3_bn/moving_meanB#Conv3d_3b_1b_3x3_bn/moving_varianceBConv3d_3b_1b_3x3_conv/kernelB%Conv3d_3b_1b_3x3_conv/kernel/momentumBConv3d_3b_2a_1x1_bn/betaB!Conv3d_3b_2a_1x1_bn/beta/momentumBConv3d_3b_2a_1x1_bn/moving_meanB#Conv3d_3b_2a_1x1_bn/moving_varianceBConv3d_3b_2a_1x1_conv/kernelB%Conv3d_3b_2a_1x1_conv/kernel/momentumBConv3d_3b_2b_3x3_bn/betaB!Conv3d_3b_2b_3x3_bn/beta/momentumBConv3d_3b_2b_3x3_bn/moving_meanB#Conv3d_3b_2b_3x3_bn/moving_varianceBConv3d_3b_2b_3x3_conv/kernelB%Conv3d_3b_2b_3x3_conv/kernel/momentumBConv3d_3b_3b_1x1_bn/betaB!Conv3d_3b_3b_1x1_bn/beta/momentumBConv3d_3b_3b_1x1_bn/moving_meanB#Conv3d_3b_3b_1x1_bn/moving_varianceBConv3d_3b_3b_1x1_conv/kernelB%Conv3d_3b_3b_1x1_conv/kernel/momentumBConv3d_3c_0a_1x1_bn/betaB!Conv3d_3c_0a_1x1_bn/beta/momentumBConv3d_3c_0a_1x1_bn/moving_meanB#Conv3d_3c_0a_1x1_bn/moving_varianceBConv3d_3c_0a_1x1_conv/kernelB%Conv3d_3c_0a_1x1_conv/kernel/momentumBConv3d_3c_1a_1x1_bn/betaB!Conv3d_3c_1a_1x1_bn/beta/momentumBConv3d_3c_1a_1x1_bn/moving_meanB#Conv3d_3c_1a_1x1_bn/moving_varianceBConv3d_3c_1a_1x1_conv/kernelB%Conv3d_3c_1a_1x1_conv/kernel/momentumBConv3d_3c_1b_3x3_bn/betaB!Conv3d_3c_1b_3x3_bn/beta/momentumBConv3d_3c_1b_3x3_bn/moving_meanB#Conv3d_3c_1b_3x3_bn/moving_varianceBConv3d_3c_1b_3x3_conv/kernelB%Conv3d_3c_1b_3x3_conv/kernel/momentumBConv3d_3c_2a_1x1_bn/betaB!Conv3d_3c_2a_1x1_bn/beta/momentumBConv3d_3c_2a_1x1_bn/moving_meanB#Conv3d_3c_2a_1x1_bn/moving_varianceBConv3d_3c_2a_1x1_conv/kernelB%Conv3d_3c_2a_1x1_conv/kernel/momentumBConv3d_3c_2b_3x3_bn/betaB!Conv3d_3c_2b_3x3_bn/beta/momentumBConv3d_3c_2b_3x3_bn/moving_meanB#Conv3d_3c_2b_3x3_bn/moving_varianceBConv3d_3c_2b_3x3_conv/kernelB%Conv3d_3c_2b_3x3_conv/kernel/momentumBConv3d_3c_3b_1x1_bn/betaB!Conv3d_3c_3b_1x1_bn/beta/momentumBConv3d_3c_3b_1x1_bn/moving_meanB#Conv3d_3c_3b_1x1_bn/moving_varianceBConv3d_3c_3b_1x1_conv/kernelB%Conv3d_3c_3b_1x1_conv/kernel/momentumBConv3d_4b_0a_1x1_bn/betaB!Conv3d_4b_0a_1x1_bn/beta/momentumBConv3d_4b_0a_1x1_bn/moving_meanB#Conv3d_4b_0a_1x1_bn/moving_varianceBConv3d_4b_0a_1x1_conv/kernelB%Conv3d_4b_0a_1x1_conv/kernel/momentumBConv3d_4b_1a_1x1_bn/betaB!Conv3d_4b_1a_1x1_bn/beta/momentumBConv3d_4b_1a_1x1_bn/moving_meanB#Conv3d_4b_1a_1x1_bn/moving_varianceBConv3d_4b_1a_1x1_conv/kernelB%Conv3d_4b_1a_1x1_conv/kernel/momentumBConv3d_4b_1b_3x3_bn/betaB!Conv3d_4b_1b_3x3_bn/beta/momentumBConv3d_4b_1b_3x3_bn/moving_meanB#Conv3d_4b_1b_3x3_bn/moving_varianceBConv3d_4b_1b_3x3_conv/kernelB%Conv3d_4b_1b_3x3_conv/kernel/momentumBConv3d_4b_2a_1x1_bn/betaB!Conv3d_4b_2a_1x1_bn/beta/momentumBConv3d_4b_2a_1x1_bn/moving_meanB#Conv3d_4b_2a_1x1_bn/moving_varianceBConv3d_4b_2a_1x1_conv/kernelB%Conv3d_4b_2a_1x1_conv/kernel/momentumBConv3d_4b_2b_3x3_bn/betaB!Conv3d_4b_2b_3x3_bn/beta/momentumBConv3d_4b_2b_3x3_bn/moving_meanB#Conv3d_4b_2b_3x3_bn/moving_varianceBConv3d_4b_2b_3x3_conv/kernelB%Conv3d_4b_2b_3x3_conv/kernel/momentumBConv3d_4b_3b_1x1_bn/betaB!Conv3d_4b_3b_1x1_bn/beta/momentumBConv3d_4b_3b_1x1_bn/moving_meanB#Conv3d_4b_3b_1x1_bn/moving_varianceBConv3d_4b_3b_1x1_conv/kernelB%Conv3d_4b_3b_1x1_conv/kernel/momentumBConv3d_4c_0a_1x1_bn/betaB!Conv3d_4c_0a_1x1_bn/beta/momentumBConv3d_4c_0a_1x1_bn/moving_meanB#Conv3d_4c_0a_1x1_bn/moving_varianceBConv3d_4c_0a_1x1_conv/kernelB%Conv3d_4c_0a_1x1_conv/kernel/momentumBConv3d_4c_1a_1x1_bn/betaB!Conv3d_4c_1a_1x1_bn/beta/momentumBConv3d_4c_1a_1x1_bn/moving_meanB#Conv3d_4c_1a_1x1_bn/moving_varianceBConv3d_4c_1a_1x1_conv/kernelB%Conv3d_4c_1a_1x1_conv/kernel/momentumBConv3d_4c_1b_3x3_bn/betaB!Conv3d_4c_1b_3x3_bn/beta/momentumBConv3d_4c_1b_3x3_bn/moving_meanB#Conv3d_4c_1b_3x3_bn/moving_varianceBConv3d_4c_1b_3x3_conv/kernelB%Conv3d_4c_1b_3x3_conv/kernel/momentumBConv3d_4c_2a_1x1_bn/betaB!Conv3d_4c_2a_1x1_bn/beta/momentumBConv3d_4c_2a_1x1_bn/moving_meanB#Conv3d_4c_2a_1x1_bn/moving_varianceBConv3d_4c_2a_1x1_conv/kernelB%Conv3d_4c_2a_1x1_conv/kernel/momentumBConv3d_4c_2b_3x3_bn/betaB!Conv3d_4c_2b_3x3_bn/beta/momentumBConv3d_4c_2b_3x3_bn/moving_meanB#Conv3d_4c_2b_3x3_bn/moving_varianceBConv3d_4c_2b_3x3_conv/kernelB%Conv3d_4c_2b_3x3_conv/kernel/momentumBConv3d_4c_3b_1x1_bn/betaB!Conv3d_4c_3b_1x1_bn/beta/momentumBConv3d_4c_3b_1x1_bn/moving_meanB#Conv3d_4c_3b_1x1_bn/moving_varianceBConv3d_4c_3b_1x1_conv/kernelB%Conv3d_4c_3b_1x1_conv/kernel/momentumBConv3d_4d_0a_1x1_bn/betaB!Conv3d_4d_0a_1x1_bn/beta/momentumBConv3d_4d_0a_1x1_bn/moving_meanB#Conv3d_4d_0a_1x1_bn/moving_varianceBConv3d_4d_0a_1x1_conv/kernelB%Conv3d_4d_0a_1x1_conv/kernel/momentumBConv3d_4d_1a_1x1_bn/betaB!Conv3d_4d_1a_1x1_bn/beta/momentumBConv3d_4d_1a_1x1_bn/moving_meanB#Conv3d_4d_1a_1x1_bn/moving_varianceBConv3d_4d_1a_1x1_conv/kernelB%Conv3d_4d_1a_1x1_conv/kernel/momentumBConv3d_4d_1b_3x3_bn/betaB!Conv3d_4d_1b_3x3_bn/beta/momentumBConv3d_4d_1b_3x3_bn/moving_meanB#Conv3d_4d_1b_3x3_bn/moving_varianceBConv3d_4d_1b_3x3_conv/kernelB%Conv3d_4d_1b_3x3_conv/kernel/momentumBConv3d_4d_2a_1x1_bn/betaB!Conv3d_4d_2a_1x1_bn/beta/momentumBConv3d_4d_2a_1x1_bn/moving_meanB#Conv3d_4d_2a_1x1_bn/moving_varianceBConv3d_4d_2a_1x1_conv/kernelB%Conv3d_4d_2a_1x1_conv/kernel/momentumBConv3d_4d_2b_3x3_bn/betaB!Conv3d_4d_2b_3x3_bn/beta/momentumBConv3d_4d_2b_3x3_bn/moving_meanB#Conv3d_4d_2b_3x3_bn/moving_varianceBConv3d_4d_2b_3x3_conv/kernelB%Conv3d_4d_2b_3x3_conv/kernel/momentumBConv3d_4d_3b_1x1_bn/betaB!Conv3d_4d_3b_1x1_bn/beta/momentumBConv3d_4d_3b_1x1_bn/moving_meanB#Conv3d_4d_3b_1x1_bn/moving_varianceBConv3d_4d_3b_1x1_conv/kernelB%Conv3d_4d_3b_1x1_conv/kernel/momentumBConv3d_4e_0a_1x1_bn/betaB!Conv3d_4e_0a_1x1_bn/beta/momentumBConv3d_4e_0a_1x1_bn/moving_meanB#Conv3d_4e_0a_1x1_bn/moving_varianceBConv3d_4e_0a_1x1_conv/kernelB%Conv3d_4e_0a_1x1_conv/kernel/momentumBConv3d_4e_1a_1x1_bn/betaB!Conv3d_4e_1a_1x1_bn/beta/momentumBConv3d_4e_1a_1x1_bn/moving_meanB#Conv3d_4e_1a_1x1_bn/moving_varianceBConv3d_4e_1a_1x1_conv/kernelB%Conv3d_4e_1a_1x1_conv/kernel/momentumBConv3d_4e_1b_3x3_bn/betaB!Conv3d_4e_1b_3x3_bn/beta/momentumBConv3d_4e_1b_3x3_bn/moving_meanB#Conv3d_4e_1b_3x3_bn/moving_varianceBConv3d_4e_1b_3x3_conv/kernelB%Conv3d_4e_1b_3x3_conv/kernel/momentumBConv3d_4e_2a_1x1_bn/betaB!Conv3d_4e_2a_1x1_bn/beta/momentumBConv3d_4e_2a_1x1_bn/moving_meanB#Conv3d_4e_2a_1x1_bn/moving_varianceBConv3d_4e_2a_1x1_conv/kernelB%Conv3d_4e_2a_1x1_conv/kernel/momentumBConv3d_4e_2b_3x3_bn/betaB!Conv3d_4e_2b_3x3_bn/beta/momentumBConv3d_4e_2b_3x3_bn/moving_meanB#Conv3d_4e_2b_3x3_bn/moving_varianceBConv3d_4e_2b_3x3_conv/kernelB%Conv3d_4e_2b_3x3_conv/kernel/momentumBConv3d_4e_3b_1x1_bn/betaB!Conv3d_4e_3b_1x1_bn/beta/momentumBConv3d_4e_3b_1x1_bn/moving_meanB#Conv3d_4e_3b_1x1_bn/moving_varianceBConv3d_4e_3b_1x1_conv/kernelB%Conv3d_4e_3b_1x1_conv/kernel/momentumBConv3d_4f_0a_1x1_bn/betaB!Conv3d_4f_0a_1x1_bn/beta/momentumBConv3d_4f_0a_1x1_bn/moving_meanB#Conv3d_4f_0a_1x1_bn/moving_varianceBConv3d_4f_0a_1x1_conv/kernelB%Conv3d_4f_0a_1x1_conv/kernel/momentumBConv3d_4f_1a_1x1_bn/betaB!Conv3d_4f_1a_1x1_bn/beta/momentumBConv3d_4f_1a_1x1_bn/moving_meanB#Conv3d_4f_1a_1x1_bn/moving_varianceBConv3d_4f_1a_1x1_conv/kernelB%Conv3d_4f_1a_1x1_conv/kernel/momentumBConv3d_4f_1b_3x3_bn/betaB!Conv3d_4f_1b_3x3_bn/beta/momentumBConv3d_4f_1b_3x3_bn/moving_meanB#Conv3d_4f_1b_3x3_bn/moving_varianceBConv3d_4f_1b_3x3_conv/kernelB%Conv3d_4f_1b_3x3_conv/kernel/momentumBConv3d_4f_2a_1x1_bn/betaB!Conv3d_4f_2a_1x1_bn/beta/momentumBConv3d_4f_2a_1x1_bn/moving_meanB#Conv3d_4f_2a_1x1_bn/moving_varianceBConv3d_4f_2a_1x1_conv/kernelB%Conv3d_4f_2a_1x1_conv/kernel/momentumBConv3d_4f_2b_3x3_bn/betaB!Conv3d_4f_2b_3x3_bn/beta/momentumBConv3d_4f_2b_3x3_bn/moving_meanB#Conv3d_4f_2b_3x3_bn/moving_varianceBConv3d_4f_2b_3x3_conv/kernelB%Conv3d_4f_2b_3x3_conv/kernel/momentumBConv3d_4f_3b_1x1_bn/betaB!Conv3d_4f_3b_1x1_bn/beta/momentumBConv3d_4f_3b_1x1_bn/moving_meanB#Conv3d_4f_3b_1x1_bn/moving_varianceBConv3d_4f_3b_1x1_conv/kernelB%Conv3d_4f_3b_1x1_conv/kernel/momentumBConv3d_5b_0a_1x1_bn/betaB!Conv3d_5b_0a_1x1_bn/beta/momentumBConv3d_5b_0a_1x1_bn/moving_meanB#Conv3d_5b_0a_1x1_bn/moving_varianceBConv3d_5b_0a_1x1_conv/kernelB%Conv3d_5b_0a_1x1_conv/kernel/momentumBConv3d_5b_1a_1x1_bn/betaB!Conv3d_5b_1a_1x1_bn/beta/momentumBConv3d_5b_1a_1x1_bn/moving_meanB#Conv3d_5b_1a_1x1_bn/moving_varianceBConv3d_5b_1a_1x1_conv/kernelB%Conv3d_5b_1a_1x1_conv/kernel/momentumBConv3d_5b_1b_3x3_bn/betaB!Conv3d_5b_1b_3x3_bn/beta/momentumBConv3d_5b_1b_3x3_bn/moving_meanB#Conv3d_5b_1b_3x3_bn/moving_varianceBConv3d_5b_1b_3x3_conv/kernelB%Conv3d_5b_1b_3x3_conv/kernel/momentumBConv3d_5b_2a_1x1_bn/betaB!Conv3d_5b_2a_1x1_bn/beta/momentumBConv3d_5b_2a_1x1_bn/moving_meanB#Conv3d_5b_2a_1x1_bn/moving_varianceBConv3d_5b_2a_1x1_conv/kernelB%Conv3d_5b_2a_1x1_conv/kernel/momentumBConv3d_5b_2b_3x3_bn/betaB!Conv3d_5b_2b_3x3_bn/beta/momentumBConv3d_5b_2b_3x3_bn/moving_meanB#Conv3d_5b_2b_3x3_bn/moving_varianceBConv3d_5b_2b_3x3_conv/kernelB%Conv3d_5b_2b_3x3_conv/kernel/momentumBConv3d_5b_3b_1x1_bn/betaB!Conv3d_5b_3b_1x1_bn/beta/momentumBConv3d_5b_3b_1x1_bn/moving_meanB#Conv3d_5b_3b_1x1_bn/moving_varianceBConv3d_5b_3b_1x1_conv/kernelB%Conv3d_5b_3b_1x1_conv/kernel/momentumBConv3d_5c_0a_1x1_bn/betaB!Conv3d_5c_0a_1x1_bn/beta/momentumBConv3d_5c_0a_1x1_bn/moving_meanB#Conv3d_5c_0a_1x1_bn/moving_varianceBConv3d_5c_0a_1x1_conv/kernelB%Conv3d_5c_0a_1x1_conv/kernel/momentumBConv3d_5c_1a_1x1_bn/betaB!Conv3d_5c_1a_1x1_bn/beta/momentumBConv3d_5c_1a_1x1_bn/moving_meanB#Conv3d_5c_1a_1x1_bn/moving_varianceBConv3d_5c_1a_1x1_conv/kernelB%Conv3d_5c_1a_1x1_conv/kernel/momentumBConv3d_5c_1b_3x3_bn/betaB!Conv3d_5c_1b_3x3_bn/beta/momentumBConv3d_5c_1b_3x3_bn/moving_meanB#Conv3d_5c_1b_3x3_bn/moving_varianceBConv3d_5c_1b_3x3_conv/kernelB%Conv3d_5c_1b_3x3_conv/kernel/momentumBConv3d_5c_2a_1x1_bn/betaB!Conv3d_5c_2a_1x1_bn/beta/momentumBConv3d_5c_2a_1x1_bn/moving_meanB#Conv3d_5c_2a_1x1_bn/moving_varianceBConv3d_5c_2a_1x1_conv/kernelB%Conv3d_5c_2a_1x1_conv/kernel/momentumBConv3d_5c_2b_3x3_bn/betaB!Conv3d_5c_2b_3x3_bn/beta/momentumBConv3d_5c_2b_3x3_bn/moving_meanB#Conv3d_5c_2b_3x3_bn/moving_varianceBConv3d_5c_2b_3x3_conv/kernelB%Conv3d_5c_2b_3x3_conv/kernel/momentumBConv3d_5c_3b_1x1_bn/betaB!Conv3d_5c_3b_1x1_bn/beta/momentumBConv3d_5c_3b_1x1_bn/moving_meanB#Conv3d_5c_3b_1x1_bn/moving_varianceBConv3d_5c_3b_1x1_conv/kernelB%Conv3d_5c_3b_1x1_conv/kernel/momentumBConv3d_6a_1x1_conv/biasB Conv3d_6a_1x1_conv/bias/momentumBConv3d_6a_1x1_conv/kernelB"Conv3d_6a_1x1_conv/kernel/momentumBdecayB
dense/biasBdense/bias/momentumBdense/kernelBdense/kernel/momentumBiterBlearning_rateBmomentum
Њ
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:в*
dtype0*Џ
value–BЌвB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
Л
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*Ю
_output_shapesЛ
И::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*у
dtypesи
е2в	
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
^
save/AssignVariableOpAssignVariableOpConv3d_1a_7x7_bn/betasave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
i
save/AssignVariableOp_1AssignVariableOpConv3d_1a_7x7_bn/beta/momentumsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:2*
T0*
_output_shapes
:
g
save/AssignVariableOp_2AssignVariableOpConv3d_1a_7x7_bn/moving_meansave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:3*
T0*
_output_shapes
:
k
save/AssignVariableOp_3AssignVariableOp Conv3d_1a_7x7_bn/moving_variancesave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:4*
T0*
_output_shapes
:
d
save/AssignVariableOp_4AssignVariableOpConv3d_1a_7x7_conv/kernelsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:5*
T0*
_output_shapes
:
m
save/AssignVariableOp_5AssignVariableOp"Conv3d_1a_7x7_conv/kernel/momentumsave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:6*
T0*
_output_shapes
:
`
save/AssignVariableOp_6AssignVariableOpConv3d_2b_1x1_bn/betasave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:7*
T0*
_output_shapes
:
i
save/AssignVariableOp_7AssignVariableOpConv3d_2b_1x1_bn/beta/momentumsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:8*
T0*
_output_shapes
:
g
save/AssignVariableOp_8AssignVariableOpConv3d_2b_1x1_bn/moving_meansave/Identity_9*
dtype0
Q
save/Identity_10Identitysave/RestoreV2:9*
T0*
_output_shapes
:
l
save/AssignVariableOp_9AssignVariableOp Conv3d_2b_1x1_bn/moving_variancesave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:10*
T0*
_output_shapes
:
f
save/AssignVariableOp_10AssignVariableOpConv3d_2b_1x1_conv/kernelsave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:11*
T0*
_output_shapes
:
o
save/AssignVariableOp_11AssignVariableOp"Conv3d_2b_1x1_conv/kernel/momentumsave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:12*
T0*
_output_shapes
:
b
save/AssignVariableOp_12AssignVariableOpConv3d_2c_3x3_bn/betasave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:13*
T0*
_output_shapes
:
k
save/AssignVariableOp_13AssignVariableOpConv3d_2c_3x3_bn/beta/momentumsave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:14*
T0*
_output_shapes
:
i
save/AssignVariableOp_14AssignVariableOpConv3d_2c_3x3_bn/moving_meansave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:15*
T0*
_output_shapes
:
m
save/AssignVariableOp_15AssignVariableOp Conv3d_2c_3x3_bn/moving_variancesave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:16*
T0*
_output_shapes
:
f
save/AssignVariableOp_16AssignVariableOpConv3d_2c_3x3_conv/kernelsave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:17*
T0*
_output_shapes
:
o
save/AssignVariableOp_17AssignVariableOp"Conv3d_2c_3x3_conv/kernel/momentumsave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:18*
T0*
_output_shapes
:
e
save/AssignVariableOp_18AssignVariableOpConv3d_3b_0a_1x1_bn/betasave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:19*
T0*
_output_shapes
:
n
save/AssignVariableOp_19AssignVariableOp!Conv3d_3b_0a_1x1_bn/beta/momentumsave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:20*
T0*
_output_shapes
:
l
save/AssignVariableOp_20AssignVariableOpConv3d_3b_0a_1x1_bn/moving_meansave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:21*
T0*
_output_shapes
:
p
save/AssignVariableOp_21AssignVariableOp#Conv3d_3b_0a_1x1_bn/moving_variancesave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:22*
T0*
_output_shapes
:
i
save/AssignVariableOp_22AssignVariableOpConv3d_3b_0a_1x1_conv/kernelsave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:23*
T0*
_output_shapes
:
r
save/AssignVariableOp_23AssignVariableOp%Conv3d_3b_0a_1x1_conv/kernel/momentumsave/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:24*
T0*
_output_shapes
:
e
save/AssignVariableOp_24AssignVariableOpConv3d_3b_1a_1x1_bn/betasave/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:25*
T0*
_output_shapes
:
n
save/AssignVariableOp_25AssignVariableOp!Conv3d_3b_1a_1x1_bn/beta/momentumsave/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:26*
T0*
_output_shapes
:
l
save/AssignVariableOp_26AssignVariableOpConv3d_3b_1a_1x1_bn/moving_meansave/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:27*
T0*
_output_shapes
:
p
save/AssignVariableOp_27AssignVariableOp#Conv3d_3b_1a_1x1_bn/moving_variancesave/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:28*
T0*
_output_shapes
:
i
save/AssignVariableOp_28AssignVariableOpConv3d_3b_1a_1x1_conv/kernelsave/Identity_29*
dtype0
R
save/Identity_30Identitysave/RestoreV2:29*
T0*
_output_shapes
:
r
save/AssignVariableOp_29AssignVariableOp%Conv3d_3b_1a_1x1_conv/kernel/momentumsave/Identity_30*
dtype0
R
save/Identity_31Identitysave/RestoreV2:30*
T0*
_output_shapes
:
e
save/AssignVariableOp_30AssignVariableOpConv3d_3b_1b_3x3_bn/betasave/Identity_31*
dtype0
R
save/Identity_32Identitysave/RestoreV2:31*
T0*
_output_shapes
:
n
save/AssignVariableOp_31AssignVariableOp!Conv3d_3b_1b_3x3_bn/beta/momentumsave/Identity_32*
dtype0
R
save/Identity_33Identitysave/RestoreV2:32*
T0*
_output_shapes
:
l
save/AssignVariableOp_32AssignVariableOpConv3d_3b_1b_3x3_bn/moving_meansave/Identity_33*
dtype0
R
save/Identity_34Identitysave/RestoreV2:33*
T0*
_output_shapes
:
p
save/AssignVariableOp_33AssignVariableOp#Conv3d_3b_1b_3x3_bn/moving_variancesave/Identity_34*
dtype0
R
save/Identity_35Identitysave/RestoreV2:34*
T0*
_output_shapes
:
i
save/AssignVariableOp_34AssignVariableOpConv3d_3b_1b_3x3_conv/kernelsave/Identity_35*
dtype0
R
save/Identity_36Identitysave/RestoreV2:35*
T0*
_output_shapes
:
r
save/AssignVariableOp_35AssignVariableOp%Conv3d_3b_1b_3x3_conv/kernel/momentumsave/Identity_36*
dtype0
R
save/Identity_37Identitysave/RestoreV2:36*
T0*
_output_shapes
:
e
save/AssignVariableOp_36AssignVariableOpConv3d_3b_2a_1x1_bn/betasave/Identity_37*
dtype0
R
save/Identity_38Identitysave/RestoreV2:37*
T0*
_output_shapes
:
n
save/AssignVariableOp_37AssignVariableOp!Conv3d_3b_2a_1x1_bn/beta/momentumsave/Identity_38*
dtype0
R
save/Identity_39Identitysave/RestoreV2:38*
T0*
_output_shapes
:
l
save/AssignVariableOp_38AssignVariableOpConv3d_3b_2a_1x1_bn/moving_meansave/Identity_39*
dtype0
R
save/Identity_40Identitysave/RestoreV2:39*
T0*
_output_shapes
:
p
save/AssignVariableOp_39AssignVariableOp#Conv3d_3b_2a_1x1_bn/moving_variancesave/Identity_40*
dtype0
R
save/Identity_41Identitysave/RestoreV2:40*
T0*
_output_shapes
:
i
save/AssignVariableOp_40AssignVariableOpConv3d_3b_2a_1x1_conv/kernelsave/Identity_41*
dtype0
R
save/Identity_42Identitysave/RestoreV2:41*
T0*
_output_shapes
:
r
save/AssignVariableOp_41AssignVariableOp%Conv3d_3b_2a_1x1_conv/kernel/momentumsave/Identity_42*
dtype0
R
save/Identity_43Identitysave/RestoreV2:42*
T0*
_output_shapes
:
e
save/AssignVariableOp_42AssignVariableOpConv3d_3b_2b_3x3_bn/betasave/Identity_43*
dtype0
R
save/Identity_44Identitysave/RestoreV2:43*
T0*
_output_shapes
:
n
save/AssignVariableOp_43AssignVariableOp!Conv3d_3b_2b_3x3_bn/beta/momentumsave/Identity_44*
dtype0
R
save/Identity_45Identitysave/RestoreV2:44*
T0*
_output_shapes
:
l
save/AssignVariableOp_44AssignVariableOpConv3d_3b_2b_3x3_bn/moving_meansave/Identity_45*
dtype0
R
save/Identity_46Identitysave/RestoreV2:45*
T0*
_output_shapes
:
p
save/AssignVariableOp_45AssignVariableOp#Conv3d_3b_2b_3x3_bn/moving_variancesave/Identity_46*
dtype0
R
save/Identity_47Identitysave/RestoreV2:46*
T0*
_output_shapes
:
i
save/AssignVariableOp_46AssignVariableOpConv3d_3b_2b_3x3_conv/kernelsave/Identity_47*
dtype0
R
save/Identity_48Identitysave/RestoreV2:47*
T0*
_output_shapes
:
r
save/AssignVariableOp_47AssignVariableOp%Conv3d_3b_2b_3x3_conv/kernel/momentumsave/Identity_48*
dtype0
R
save/Identity_49Identitysave/RestoreV2:48*
T0*
_output_shapes
:
e
save/AssignVariableOp_48AssignVariableOpConv3d_3b_3b_1x1_bn/betasave/Identity_49*
dtype0
R
save/Identity_50Identitysave/RestoreV2:49*
T0*
_output_shapes
:
n
save/AssignVariableOp_49AssignVariableOp!Conv3d_3b_3b_1x1_bn/beta/momentumsave/Identity_50*
dtype0
R
save/Identity_51Identitysave/RestoreV2:50*
T0*
_output_shapes
:
l
save/AssignVariableOp_50AssignVariableOpConv3d_3b_3b_1x1_bn/moving_meansave/Identity_51*
dtype0
R
save/Identity_52Identitysave/RestoreV2:51*
T0*
_output_shapes
:
p
save/AssignVariableOp_51AssignVariableOp#Conv3d_3b_3b_1x1_bn/moving_variancesave/Identity_52*
dtype0
R
save/Identity_53Identitysave/RestoreV2:52*
T0*
_output_shapes
:
i
save/AssignVariableOp_52AssignVariableOpConv3d_3b_3b_1x1_conv/kernelsave/Identity_53*
dtype0
R
save/Identity_54Identitysave/RestoreV2:53*
T0*
_output_shapes
:
r
save/AssignVariableOp_53AssignVariableOp%Conv3d_3b_3b_1x1_conv/kernel/momentumsave/Identity_54*
dtype0
R
save/Identity_55Identitysave/RestoreV2:54*
T0*
_output_shapes
:
e
save/AssignVariableOp_54AssignVariableOpConv3d_3c_0a_1x1_bn/betasave/Identity_55*
dtype0
R
save/Identity_56Identitysave/RestoreV2:55*
T0*
_output_shapes
:
n
save/AssignVariableOp_55AssignVariableOp!Conv3d_3c_0a_1x1_bn/beta/momentumsave/Identity_56*
dtype0
R
save/Identity_57Identitysave/RestoreV2:56*
T0*
_output_shapes
:
l
save/AssignVariableOp_56AssignVariableOpConv3d_3c_0a_1x1_bn/moving_meansave/Identity_57*
dtype0
R
save/Identity_58Identitysave/RestoreV2:57*
T0*
_output_shapes
:
p
save/AssignVariableOp_57AssignVariableOp#Conv3d_3c_0a_1x1_bn/moving_variancesave/Identity_58*
dtype0
R
save/Identity_59Identitysave/RestoreV2:58*
T0*
_output_shapes
:
i
save/AssignVariableOp_58AssignVariableOpConv3d_3c_0a_1x1_conv/kernelsave/Identity_59*
dtype0
R
save/Identity_60Identitysave/RestoreV2:59*
T0*
_output_shapes
:
r
save/AssignVariableOp_59AssignVariableOp%Conv3d_3c_0a_1x1_conv/kernel/momentumsave/Identity_60*
dtype0
R
save/Identity_61Identitysave/RestoreV2:60*
T0*
_output_shapes
:
e
save/AssignVariableOp_60AssignVariableOpConv3d_3c_1a_1x1_bn/betasave/Identity_61*
dtype0
R
save/Identity_62Identitysave/RestoreV2:61*
T0*
_output_shapes
:
n
save/AssignVariableOp_61AssignVariableOp!Conv3d_3c_1a_1x1_bn/beta/momentumsave/Identity_62*
dtype0
R
save/Identity_63Identitysave/RestoreV2:62*
T0*
_output_shapes
:
l
save/AssignVariableOp_62AssignVariableOpConv3d_3c_1a_1x1_bn/moving_meansave/Identity_63*
dtype0
R
save/Identity_64Identitysave/RestoreV2:63*
T0*
_output_shapes
:
p
save/AssignVariableOp_63AssignVariableOp#Conv3d_3c_1a_1x1_bn/moving_variancesave/Identity_64*
dtype0
R
save/Identity_65Identitysave/RestoreV2:64*
T0*
_output_shapes
:
i
save/AssignVariableOp_64AssignVariableOpConv3d_3c_1a_1x1_conv/kernelsave/Identity_65*
dtype0
R
save/Identity_66Identitysave/RestoreV2:65*
T0*
_output_shapes
:
r
save/AssignVariableOp_65AssignVariableOp%Conv3d_3c_1a_1x1_conv/kernel/momentumsave/Identity_66*
dtype0
R
save/Identity_67Identitysave/RestoreV2:66*
T0*
_output_shapes
:
e
save/AssignVariableOp_66AssignVariableOpConv3d_3c_1b_3x3_bn/betasave/Identity_67*
dtype0
R
save/Identity_68Identitysave/RestoreV2:67*
T0*
_output_shapes
:
n
save/AssignVariableOp_67AssignVariableOp!Conv3d_3c_1b_3x3_bn/beta/momentumsave/Identity_68*
dtype0
R
save/Identity_69Identitysave/RestoreV2:68*
T0*
_output_shapes
:
l
save/AssignVariableOp_68AssignVariableOpConv3d_3c_1b_3x3_bn/moving_meansave/Identity_69*
dtype0
R
save/Identity_70Identitysave/RestoreV2:69*
T0*
_output_shapes
:
p
save/AssignVariableOp_69AssignVariableOp#Conv3d_3c_1b_3x3_bn/moving_variancesave/Identity_70*
dtype0
R
save/Identity_71Identitysave/RestoreV2:70*
T0*
_output_shapes
:
i
save/AssignVariableOp_70AssignVariableOpConv3d_3c_1b_3x3_conv/kernelsave/Identity_71*
dtype0
R
save/Identity_72Identitysave/RestoreV2:71*
T0*
_output_shapes
:
r
save/AssignVariableOp_71AssignVariableOp%Conv3d_3c_1b_3x3_conv/kernel/momentumsave/Identity_72*
dtype0
R
save/Identity_73Identitysave/RestoreV2:72*
T0*
_output_shapes
:
e
save/AssignVariableOp_72AssignVariableOpConv3d_3c_2a_1x1_bn/betasave/Identity_73*
dtype0
R
save/Identity_74Identitysave/RestoreV2:73*
T0*
_output_shapes
:
n
save/AssignVariableOp_73AssignVariableOp!Conv3d_3c_2a_1x1_bn/beta/momentumsave/Identity_74*
dtype0
R
save/Identity_75Identitysave/RestoreV2:74*
T0*
_output_shapes
:
l
save/AssignVariableOp_74AssignVariableOpConv3d_3c_2a_1x1_bn/moving_meansave/Identity_75*
dtype0
R
save/Identity_76Identitysave/RestoreV2:75*
T0*
_output_shapes
:
p
save/AssignVariableOp_75AssignVariableOp#Conv3d_3c_2a_1x1_bn/moving_variancesave/Identity_76*
dtype0
R
save/Identity_77Identitysave/RestoreV2:76*
T0*
_output_shapes
:
i
save/AssignVariableOp_76AssignVariableOpConv3d_3c_2a_1x1_conv/kernelsave/Identity_77*
dtype0
R
save/Identity_78Identitysave/RestoreV2:77*
T0*
_output_shapes
:
r
save/AssignVariableOp_77AssignVariableOp%Conv3d_3c_2a_1x1_conv/kernel/momentumsave/Identity_78*
dtype0
R
save/Identity_79Identitysave/RestoreV2:78*
T0*
_output_shapes
:
e
save/AssignVariableOp_78AssignVariableOpConv3d_3c_2b_3x3_bn/betasave/Identity_79*
dtype0
R
save/Identity_80Identitysave/RestoreV2:79*
T0*
_output_shapes
:
n
save/AssignVariableOp_79AssignVariableOp!Conv3d_3c_2b_3x3_bn/beta/momentumsave/Identity_80*
dtype0
R
save/Identity_81Identitysave/RestoreV2:80*
T0*
_output_shapes
:
l
save/AssignVariableOp_80AssignVariableOpConv3d_3c_2b_3x3_bn/moving_meansave/Identity_81*
dtype0
R
save/Identity_82Identitysave/RestoreV2:81*
T0*
_output_shapes
:
p
save/AssignVariableOp_81AssignVariableOp#Conv3d_3c_2b_3x3_bn/moving_variancesave/Identity_82*
dtype0
R
save/Identity_83Identitysave/RestoreV2:82*
T0*
_output_shapes
:
i
save/AssignVariableOp_82AssignVariableOpConv3d_3c_2b_3x3_conv/kernelsave/Identity_83*
dtype0
R
save/Identity_84Identitysave/RestoreV2:83*
T0*
_output_shapes
:
r
save/AssignVariableOp_83AssignVariableOp%Conv3d_3c_2b_3x3_conv/kernel/momentumsave/Identity_84*
dtype0
R
save/Identity_85Identitysave/RestoreV2:84*
T0*
_output_shapes
:
e
save/AssignVariableOp_84AssignVariableOpConv3d_3c_3b_1x1_bn/betasave/Identity_85*
dtype0
R
save/Identity_86Identitysave/RestoreV2:85*
T0*
_output_shapes
:
n
save/AssignVariableOp_85AssignVariableOp!Conv3d_3c_3b_1x1_bn/beta/momentumsave/Identity_86*
dtype0
R
save/Identity_87Identitysave/RestoreV2:86*
T0*
_output_shapes
:
l
save/AssignVariableOp_86AssignVariableOpConv3d_3c_3b_1x1_bn/moving_meansave/Identity_87*
dtype0
R
save/Identity_88Identitysave/RestoreV2:87*
T0*
_output_shapes
:
p
save/AssignVariableOp_87AssignVariableOp#Conv3d_3c_3b_1x1_bn/moving_variancesave/Identity_88*
dtype0
R
save/Identity_89Identitysave/RestoreV2:88*
T0*
_output_shapes
:
i
save/AssignVariableOp_88AssignVariableOpConv3d_3c_3b_1x1_conv/kernelsave/Identity_89*
dtype0
R
save/Identity_90Identitysave/RestoreV2:89*
T0*
_output_shapes
:
r
save/AssignVariableOp_89AssignVariableOp%Conv3d_3c_3b_1x1_conv/kernel/momentumsave/Identity_90*
dtype0
R
save/Identity_91Identitysave/RestoreV2:90*
T0*
_output_shapes
:
e
save/AssignVariableOp_90AssignVariableOpConv3d_4b_0a_1x1_bn/betasave/Identity_91*
dtype0
R
save/Identity_92Identitysave/RestoreV2:91*
T0*
_output_shapes
:
n
save/AssignVariableOp_91AssignVariableOp!Conv3d_4b_0a_1x1_bn/beta/momentumsave/Identity_92*
dtype0
R
save/Identity_93Identitysave/RestoreV2:92*
T0*
_output_shapes
:
l
save/AssignVariableOp_92AssignVariableOpConv3d_4b_0a_1x1_bn/moving_meansave/Identity_93*
dtype0
R
save/Identity_94Identitysave/RestoreV2:93*
T0*
_output_shapes
:
p
save/AssignVariableOp_93AssignVariableOp#Conv3d_4b_0a_1x1_bn/moving_variancesave/Identity_94*
dtype0
R
save/Identity_95Identitysave/RestoreV2:94*
T0*
_output_shapes
:
i
save/AssignVariableOp_94AssignVariableOpConv3d_4b_0a_1x1_conv/kernelsave/Identity_95*
dtype0
R
save/Identity_96Identitysave/RestoreV2:95*
T0*
_output_shapes
:
r
save/AssignVariableOp_95AssignVariableOp%Conv3d_4b_0a_1x1_conv/kernel/momentumsave/Identity_96*
dtype0
R
save/Identity_97Identitysave/RestoreV2:96*
T0*
_output_shapes
:
e
save/AssignVariableOp_96AssignVariableOpConv3d_4b_1a_1x1_bn/betasave/Identity_97*
dtype0
R
save/Identity_98Identitysave/RestoreV2:97*
T0*
_output_shapes
:
n
save/AssignVariableOp_97AssignVariableOp!Conv3d_4b_1a_1x1_bn/beta/momentumsave/Identity_98*
dtype0
R
save/Identity_99Identitysave/RestoreV2:98*
T0*
_output_shapes
:
l
save/AssignVariableOp_98AssignVariableOpConv3d_4b_1a_1x1_bn/moving_meansave/Identity_99*
dtype0
S
save/Identity_100Identitysave/RestoreV2:99*
T0*
_output_shapes
:
q
save/AssignVariableOp_99AssignVariableOp#Conv3d_4b_1a_1x1_bn/moving_variancesave/Identity_100*
dtype0
T
save/Identity_101Identitysave/RestoreV2:100*
T0*
_output_shapes
:
k
save/AssignVariableOp_100AssignVariableOpConv3d_4b_1a_1x1_conv/kernelsave/Identity_101*
dtype0
T
save/Identity_102Identitysave/RestoreV2:101*
T0*
_output_shapes
:
t
save/AssignVariableOp_101AssignVariableOp%Conv3d_4b_1a_1x1_conv/kernel/momentumsave/Identity_102*
dtype0
T
save/Identity_103Identitysave/RestoreV2:102*
T0*
_output_shapes
:
g
save/AssignVariableOp_102AssignVariableOpConv3d_4b_1b_3x3_bn/betasave/Identity_103*
dtype0
T
save/Identity_104Identitysave/RestoreV2:103*
T0*
_output_shapes
:
p
save/AssignVariableOp_103AssignVariableOp!Conv3d_4b_1b_3x3_bn/beta/momentumsave/Identity_104*
dtype0
T
save/Identity_105Identitysave/RestoreV2:104*
T0*
_output_shapes
:
n
save/AssignVariableOp_104AssignVariableOpConv3d_4b_1b_3x3_bn/moving_meansave/Identity_105*
dtype0
T
save/Identity_106Identitysave/RestoreV2:105*
T0*
_output_shapes
:
r
save/AssignVariableOp_105AssignVariableOp#Conv3d_4b_1b_3x3_bn/moving_variancesave/Identity_106*
dtype0
T
save/Identity_107Identitysave/RestoreV2:106*
T0*
_output_shapes
:
k
save/AssignVariableOp_106AssignVariableOpConv3d_4b_1b_3x3_conv/kernelsave/Identity_107*
dtype0
T
save/Identity_108Identitysave/RestoreV2:107*
T0*
_output_shapes
:
t
save/AssignVariableOp_107AssignVariableOp%Conv3d_4b_1b_3x3_conv/kernel/momentumsave/Identity_108*
dtype0
T
save/Identity_109Identitysave/RestoreV2:108*
T0*
_output_shapes
:
g
save/AssignVariableOp_108AssignVariableOpConv3d_4b_2a_1x1_bn/betasave/Identity_109*
dtype0
T
save/Identity_110Identitysave/RestoreV2:109*
T0*
_output_shapes
:
p
save/AssignVariableOp_109AssignVariableOp!Conv3d_4b_2a_1x1_bn/beta/momentumsave/Identity_110*
dtype0
T
save/Identity_111Identitysave/RestoreV2:110*
T0*
_output_shapes
:
n
save/AssignVariableOp_110AssignVariableOpConv3d_4b_2a_1x1_bn/moving_meansave/Identity_111*
dtype0
T
save/Identity_112Identitysave/RestoreV2:111*
T0*
_output_shapes
:
r
save/AssignVariableOp_111AssignVariableOp#Conv3d_4b_2a_1x1_bn/moving_variancesave/Identity_112*
dtype0
T
save/Identity_113Identitysave/RestoreV2:112*
T0*
_output_shapes
:
k
save/AssignVariableOp_112AssignVariableOpConv3d_4b_2a_1x1_conv/kernelsave/Identity_113*
dtype0
T
save/Identity_114Identitysave/RestoreV2:113*
T0*
_output_shapes
:
t
save/AssignVariableOp_113AssignVariableOp%Conv3d_4b_2a_1x1_conv/kernel/momentumsave/Identity_114*
dtype0
T
save/Identity_115Identitysave/RestoreV2:114*
T0*
_output_shapes
:
g
save/AssignVariableOp_114AssignVariableOpConv3d_4b_2b_3x3_bn/betasave/Identity_115*
dtype0
T
save/Identity_116Identitysave/RestoreV2:115*
T0*
_output_shapes
:
p
save/AssignVariableOp_115AssignVariableOp!Conv3d_4b_2b_3x3_bn/beta/momentumsave/Identity_116*
dtype0
T
save/Identity_117Identitysave/RestoreV2:116*
T0*
_output_shapes
:
n
save/AssignVariableOp_116AssignVariableOpConv3d_4b_2b_3x3_bn/moving_meansave/Identity_117*
dtype0
T
save/Identity_118Identitysave/RestoreV2:117*
T0*
_output_shapes
:
r
save/AssignVariableOp_117AssignVariableOp#Conv3d_4b_2b_3x3_bn/moving_variancesave/Identity_118*
dtype0
T
save/Identity_119Identitysave/RestoreV2:118*
T0*
_output_shapes
:
k
save/AssignVariableOp_118AssignVariableOpConv3d_4b_2b_3x3_conv/kernelsave/Identity_119*
dtype0
T
save/Identity_120Identitysave/RestoreV2:119*
T0*
_output_shapes
:
t
save/AssignVariableOp_119AssignVariableOp%Conv3d_4b_2b_3x3_conv/kernel/momentumsave/Identity_120*
dtype0
T
save/Identity_121Identitysave/RestoreV2:120*
T0*
_output_shapes
:
g
save/AssignVariableOp_120AssignVariableOpConv3d_4b_3b_1x1_bn/betasave/Identity_121*
dtype0
T
save/Identity_122Identitysave/RestoreV2:121*
T0*
_output_shapes
:
p
save/AssignVariableOp_121AssignVariableOp!Conv3d_4b_3b_1x1_bn/beta/momentumsave/Identity_122*
dtype0
T
save/Identity_123Identitysave/RestoreV2:122*
T0*
_output_shapes
:
n
save/AssignVariableOp_122AssignVariableOpConv3d_4b_3b_1x1_bn/moving_meansave/Identity_123*
dtype0
T
save/Identity_124Identitysave/RestoreV2:123*
T0*
_output_shapes
:
r
save/AssignVariableOp_123AssignVariableOp#Conv3d_4b_3b_1x1_bn/moving_variancesave/Identity_124*
dtype0
T
save/Identity_125Identitysave/RestoreV2:124*
T0*
_output_shapes
:
k
save/AssignVariableOp_124AssignVariableOpConv3d_4b_3b_1x1_conv/kernelsave/Identity_125*
dtype0
T
save/Identity_126Identitysave/RestoreV2:125*
T0*
_output_shapes
:
t
save/AssignVariableOp_125AssignVariableOp%Conv3d_4b_3b_1x1_conv/kernel/momentumsave/Identity_126*
dtype0
T
save/Identity_127Identitysave/RestoreV2:126*
T0*
_output_shapes
:
g
save/AssignVariableOp_126AssignVariableOpConv3d_4c_0a_1x1_bn/betasave/Identity_127*
dtype0
T
save/Identity_128Identitysave/RestoreV2:127*
T0*
_output_shapes
:
p
save/AssignVariableOp_127AssignVariableOp!Conv3d_4c_0a_1x1_bn/beta/momentumsave/Identity_128*
dtype0
T
save/Identity_129Identitysave/RestoreV2:128*
T0*
_output_shapes
:
n
save/AssignVariableOp_128AssignVariableOpConv3d_4c_0a_1x1_bn/moving_meansave/Identity_129*
dtype0
T
save/Identity_130Identitysave/RestoreV2:129*
T0*
_output_shapes
:
r
save/AssignVariableOp_129AssignVariableOp#Conv3d_4c_0a_1x1_bn/moving_variancesave/Identity_130*
dtype0
T
save/Identity_131Identitysave/RestoreV2:130*
T0*
_output_shapes
:
k
save/AssignVariableOp_130AssignVariableOpConv3d_4c_0a_1x1_conv/kernelsave/Identity_131*
dtype0
T
save/Identity_132Identitysave/RestoreV2:131*
T0*
_output_shapes
:
t
save/AssignVariableOp_131AssignVariableOp%Conv3d_4c_0a_1x1_conv/kernel/momentumsave/Identity_132*
dtype0
T
save/Identity_133Identitysave/RestoreV2:132*
T0*
_output_shapes
:
g
save/AssignVariableOp_132AssignVariableOpConv3d_4c_1a_1x1_bn/betasave/Identity_133*
dtype0
T
save/Identity_134Identitysave/RestoreV2:133*
T0*
_output_shapes
:
p
save/AssignVariableOp_133AssignVariableOp!Conv3d_4c_1a_1x1_bn/beta/momentumsave/Identity_134*
dtype0
T
save/Identity_135Identitysave/RestoreV2:134*
T0*
_output_shapes
:
n
save/AssignVariableOp_134AssignVariableOpConv3d_4c_1a_1x1_bn/moving_meansave/Identity_135*
dtype0
T
save/Identity_136Identitysave/RestoreV2:135*
T0*
_output_shapes
:
r
save/AssignVariableOp_135AssignVariableOp#Conv3d_4c_1a_1x1_bn/moving_variancesave/Identity_136*
dtype0
T
save/Identity_137Identitysave/RestoreV2:136*
T0*
_output_shapes
:
k
save/AssignVariableOp_136AssignVariableOpConv3d_4c_1a_1x1_conv/kernelsave/Identity_137*
dtype0
T
save/Identity_138Identitysave/RestoreV2:137*
T0*
_output_shapes
:
t
save/AssignVariableOp_137AssignVariableOp%Conv3d_4c_1a_1x1_conv/kernel/momentumsave/Identity_138*
dtype0
T
save/Identity_139Identitysave/RestoreV2:138*
T0*
_output_shapes
:
g
save/AssignVariableOp_138AssignVariableOpConv3d_4c_1b_3x3_bn/betasave/Identity_139*
dtype0
T
save/Identity_140Identitysave/RestoreV2:139*
T0*
_output_shapes
:
p
save/AssignVariableOp_139AssignVariableOp!Conv3d_4c_1b_3x3_bn/beta/momentumsave/Identity_140*
dtype0
T
save/Identity_141Identitysave/RestoreV2:140*
T0*
_output_shapes
:
n
save/AssignVariableOp_140AssignVariableOpConv3d_4c_1b_3x3_bn/moving_meansave/Identity_141*
dtype0
T
save/Identity_142Identitysave/RestoreV2:141*
T0*
_output_shapes
:
r
save/AssignVariableOp_141AssignVariableOp#Conv3d_4c_1b_3x3_bn/moving_variancesave/Identity_142*
dtype0
T
save/Identity_143Identitysave/RestoreV2:142*
T0*
_output_shapes
:
k
save/AssignVariableOp_142AssignVariableOpConv3d_4c_1b_3x3_conv/kernelsave/Identity_143*
dtype0
T
save/Identity_144Identitysave/RestoreV2:143*
T0*
_output_shapes
:
t
save/AssignVariableOp_143AssignVariableOp%Conv3d_4c_1b_3x3_conv/kernel/momentumsave/Identity_144*
dtype0
T
save/Identity_145Identitysave/RestoreV2:144*
T0*
_output_shapes
:
g
save/AssignVariableOp_144AssignVariableOpConv3d_4c_2a_1x1_bn/betasave/Identity_145*
dtype0
T
save/Identity_146Identitysave/RestoreV2:145*
T0*
_output_shapes
:
p
save/AssignVariableOp_145AssignVariableOp!Conv3d_4c_2a_1x1_bn/beta/momentumsave/Identity_146*
dtype0
T
save/Identity_147Identitysave/RestoreV2:146*
T0*
_output_shapes
:
n
save/AssignVariableOp_146AssignVariableOpConv3d_4c_2a_1x1_bn/moving_meansave/Identity_147*
dtype0
T
save/Identity_148Identitysave/RestoreV2:147*
T0*
_output_shapes
:
r
save/AssignVariableOp_147AssignVariableOp#Conv3d_4c_2a_1x1_bn/moving_variancesave/Identity_148*
dtype0
T
save/Identity_149Identitysave/RestoreV2:148*
T0*
_output_shapes
:
k
save/AssignVariableOp_148AssignVariableOpConv3d_4c_2a_1x1_conv/kernelsave/Identity_149*
dtype0
T
save/Identity_150Identitysave/RestoreV2:149*
T0*
_output_shapes
:
t
save/AssignVariableOp_149AssignVariableOp%Conv3d_4c_2a_1x1_conv/kernel/momentumsave/Identity_150*
dtype0
T
save/Identity_151Identitysave/RestoreV2:150*
T0*
_output_shapes
:
g
save/AssignVariableOp_150AssignVariableOpConv3d_4c_2b_3x3_bn/betasave/Identity_151*
dtype0
T
save/Identity_152Identitysave/RestoreV2:151*
T0*
_output_shapes
:
p
save/AssignVariableOp_151AssignVariableOp!Conv3d_4c_2b_3x3_bn/beta/momentumsave/Identity_152*
dtype0
T
save/Identity_153Identitysave/RestoreV2:152*
T0*
_output_shapes
:
n
save/AssignVariableOp_152AssignVariableOpConv3d_4c_2b_3x3_bn/moving_meansave/Identity_153*
dtype0
T
save/Identity_154Identitysave/RestoreV2:153*
T0*
_output_shapes
:
r
save/AssignVariableOp_153AssignVariableOp#Conv3d_4c_2b_3x3_bn/moving_variancesave/Identity_154*
dtype0
T
save/Identity_155Identitysave/RestoreV2:154*
T0*
_output_shapes
:
k
save/AssignVariableOp_154AssignVariableOpConv3d_4c_2b_3x3_conv/kernelsave/Identity_155*
dtype0
T
save/Identity_156Identitysave/RestoreV2:155*
T0*
_output_shapes
:
t
save/AssignVariableOp_155AssignVariableOp%Conv3d_4c_2b_3x3_conv/kernel/momentumsave/Identity_156*
dtype0
T
save/Identity_157Identitysave/RestoreV2:156*
T0*
_output_shapes
:
g
save/AssignVariableOp_156AssignVariableOpConv3d_4c_3b_1x1_bn/betasave/Identity_157*
dtype0
T
save/Identity_158Identitysave/RestoreV2:157*
T0*
_output_shapes
:
p
save/AssignVariableOp_157AssignVariableOp!Conv3d_4c_3b_1x1_bn/beta/momentumsave/Identity_158*
dtype0
T
save/Identity_159Identitysave/RestoreV2:158*
T0*
_output_shapes
:
n
save/AssignVariableOp_158AssignVariableOpConv3d_4c_3b_1x1_bn/moving_meansave/Identity_159*
dtype0
T
save/Identity_160Identitysave/RestoreV2:159*
T0*
_output_shapes
:
r
save/AssignVariableOp_159AssignVariableOp#Conv3d_4c_3b_1x1_bn/moving_variancesave/Identity_160*
dtype0
T
save/Identity_161Identitysave/RestoreV2:160*
T0*
_output_shapes
:
k
save/AssignVariableOp_160AssignVariableOpConv3d_4c_3b_1x1_conv/kernelsave/Identity_161*
dtype0
T
save/Identity_162Identitysave/RestoreV2:161*
T0*
_output_shapes
:
t
save/AssignVariableOp_161AssignVariableOp%Conv3d_4c_3b_1x1_conv/kernel/momentumsave/Identity_162*
dtype0
T
save/Identity_163Identitysave/RestoreV2:162*
T0*
_output_shapes
:
g
save/AssignVariableOp_162AssignVariableOpConv3d_4d_0a_1x1_bn/betasave/Identity_163*
dtype0
T
save/Identity_164Identitysave/RestoreV2:163*
T0*
_output_shapes
:
p
save/AssignVariableOp_163AssignVariableOp!Conv3d_4d_0a_1x1_bn/beta/momentumsave/Identity_164*
dtype0
T
save/Identity_165Identitysave/RestoreV2:164*
T0*
_output_shapes
:
n
save/AssignVariableOp_164AssignVariableOpConv3d_4d_0a_1x1_bn/moving_meansave/Identity_165*
dtype0
T
save/Identity_166Identitysave/RestoreV2:165*
T0*
_output_shapes
:
r
save/AssignVariableOp_165AssignVariableOp#Conv3d_4d_0a_1x1_bn/moving_variancesave/Identity_166*
dtype0
T
save/Identity_167Identitysave/RestoreV2:166*
T0*
_output_shapes
:
k
save/AssignVariableOp_166AssignVariableOpConv3d_4d_0a_1x1_conv/kernelsave/Identity_167*
dtype0
T
save/Identity_168Identitysave/RestoreV2:167*
T0*
_output_shapes
:
t
save/AssignVariableOp_167AssignVariableOp%Conv3d_4d_0a_1x1_conv/kernel/momentumsave/Identity_168*
dtype0
T
save/Identity_169Identitysave/RestoreV2:168*
T0*
_output_shapes
:
g
save/AssignVariableOp_168AssignVariableOpConv3d_4d_1a_1x1_bn/betasave/Identity_169*
dtype0
T
save/Identity_170Identitysave/RestoreV2:169*
T0*
_output_shapes
:
p
save/AssignVariableOp_169AssignVariableOp!Conv3d_4d_1a_1x1_bn/beta/momentumsave/Identity_170*
dtype0
T
save/Identity_171Identitysave/RestoreV2:170*
T0*
_output_shapes
:
n
save/AssignVariableOp_170AssignVariableOpConv3d_4d_1a_1x1_bn/moving_meansave/Identity_171*
dtype0
T
save/Identity_172Identitysave/RestoreV2:171*
T0*
_output_shapes
:
r
save/AssignVariableOp_171AssignVariableOp#Conv3d_4d_1a_1x1_bn/moving_variancesave/Identity_172*
dtype0
T
save/Identity_173Identitysave/RestoreV2:172*
T0*
_output_shapes
:
k
save/AssignVariableOp_172AssignVariableOpConv3d_4d_1a_1x1_conv/kernelsave/Identity_173*
dtype0
T
save/Identity_174Identitysave/RestoreV2:173*
T0*
_output_shapes
:
t
save/AssignVariableOp_173AssignVariableOp%Conv3d_4d_1a_1x1_conv/kernel/momentumsave/Identity_174*
dtype0
T
save/Identity_175Identitysave/RestoreV2:174*
T0*
_output_shapes
:
g
save/AssignVariableOp_174AssignVariableOpConv3d_4d_1b_3x3_bn/betasave/Identity_175*
dtype0
T
save/Identity_176Identitysave/RestoreV2:175*
T0*
_output_shapes
:
p
save/AssignVariableOp_175AssignVariableOp!Conv3d_4d_1b_3x3_bn/beta/momentumsave/Identity_176*
dtype0
T
save/Identity_177Identitysave/RestoreV2:176*
T0*
_output_shapes
:
n
save/AssignVariableOp_176AssignVariableOpConv3d_4d_1b_3x3_bn/moving_meansave/Identity_177*
dtype0
T
save/Identity_178Identitysave/RestoreV2:177*
T0*
_output_shapes
:
r
save/AssignVariableOp_177AssignVariableOp#Conv3d_4d_1b_3x3_bn/moving_variancesave/Identity_178*
dtype0
T
save/Identity_179Identitysave/RestoreV2:178*
T0*
_output_shapes
:
k
save/AssignVariableOp_178AssignVariableOpConv3d_4d_1b_3x3_conv/kernelsave/Identity_179*
dtype0
T
save/Identity_180Identitysave/RestoreV2:179*
T0*
_output_shapes
:
t
save/AssignVariableOp_179AssignVariableOp%Conv3d_4d_1b_3x3_conv/kernel/momentumsave/Identity_180*
dtype0
T
save/Identity_181Identitysave/RestoreV2:180*
T0*
_output_shapes
:
g
save/AssignVariableOp_180AssignVariableOpConv3d_4d_2a_1x1_bn/betasave/Identity_181*
dtype0
T
save/Identity_182Identitysave/RestoreV2:181*
T0*
_output_shapes
:
p
save/AssignVariableOp_181AssignVariableOp!Conv3d_4d_2a_1x1_bn/beta/momentumsave/Identity_182*
dtype0
T
save/Identity_183Identitysave/RestoreV2:182*
T0*
_output_shapes
:
n
save/AssignVariableOp_182AssignVariableOpConv3d_4d_2a_1x1_bn/moving_meansave/Identity_183*
dtype0
T
save/Identity_184Identitysave/RestoreV2:183*
T0*
_output_shapes
:
r
save/AssignVariableOp_183AssignVariableOp#Conv3d_4d_2a_1x1_bn/moving_variancesave/Identity_184*
dtype0
T
save/Identity_185Identitysave/RestoreV2:184*
T0*
_output_shapes
:
k
save/AssignVariableOp_184AssignVariableOpConv3d_4d_2a_1x1_conv/kernelsave/Identity_185*
dtype0
T
save/Identity_186Identitysave/RestoreV2:185*
T0*
_output_shapes
:
t
save/AssignVariableOp_185AssignVariableOp%Conv3d_4d_2a_1x1_conv/kernel/momentumsave/Identity_186*
dtype0
T
save/Identity_187Identitysave/RestoreV2:186*
T0*
_output_shapes
:
g
save/AssignVariableOp_186AssignVariableOpConv3d_4d_2b_3x3_bn/betasave/Identity_187*
dtype0
T
save/Identity_188Identitysave/RestoreV2:187*
T0*
_output_shapes
:
p
save/AssignVariableOp_187AssignVariableOp!Conv3d_4d_2b_3x3_bn/beta/momentumsave/Identity_188*
dtype0
T
save/Identity_189Identitysave/RestoreV2:188*
T0*
_output_shapes
:
n
save/AssignVariableOp_188AssignVariableOpConv3d_4d_2b_3x3_bn/moving_meansave/Identity_189*
dtype0
T
save/Identity_190Identitysave/RestoreV2:189*
T0*
_output_shapes
:
r
save/AssignVariableOp_189AssignVariableOp#Conv3d_4d_2b_3x3_bn/moving_variancesave/Identity_190*
dtype0
T
save/Identity_191Identitysave/RestoreV2:190*
T0*
_output_shapes
:
k
save/AssignVariableOp_190AssignVariableOpConv3d_4d_2b_3x3_conv/kernelsave/Identity_191*
dtype0
T
save/Identity_192Identitysave/RestoreV2:191*
T0*
_output_shapes
:
t
save/AssignVariableOp_191AssignVariableOp%Conv3d_4d_2b_3x3_conv/kernel/momentumsave/Identity_192*
dtype0
T
save/Identity_193Identitysave/RestoreV2:192*
T0*
_output_shapes
:
g
save/AssignVariableOp_192AssignVariableOpConv3d_4d_3b_1x1_bn/betasave/Identity_193*
dtype0
T
save/Identity_194Identitysave/RestoreV2:193*
T0*
_output_shapes
:
p
save/AssignVariableOp_193AssignVariableOp!Conv3d_4d_3b_1x1_bn/beta/momentumsave/Identity_194*
dtype0
T
save/Identity_195Identitysave/RestoreV2:194*
T0*
_output_shapes
:
n
save/AssignVariableOp_194AssignVariableOpConv3d_4d_3b_1x1_bn/moving_meansave/Identity_195*
dtype0
T
save/Identity_196Identitysave/RestoreV2:195*
T0*
_output_shapes
:
r
save/AssignVariableOp_195AssignVariableOp#Conv3d_4d_3b_1x1_bn/moving_variancesave/Identity_196*
dtype0
T
save/Identity_197Identitysave/RestoreV2:196*
T0*
_output_shapes
:
k
save/AssignVariableOp_196AssignVariableOpConv3d_4d_3b_1x1_conv/kernelsave/Identity_197*
dtype0
T
save/Identity_198Identitysave/RestoreV2:197*
T0*
_output_shapes
:
t
save/AssignVariableOp_197AssignVariableOp%Conv3d_4d_3b_1x1_conv/kernel/momentumsave/Identity_198*
dtype0
T
save/Identity_199Identitysave/RestoreV2:198*
T0*
_output_shapes
:
g
save/AssignVariableOp_198AssignVariableOpConv3d_4e_0a_1x1_bn/betasave/Identity_199*
dtype0
T
save/Identity_200Identitysave/RestoreV2:199*
T0*
_output_shapes
:
p
save/AssignVariableOp_199AssignVariableOp!Conv3d_4e_0a_1x1_bn/beta/momentumsave/Identity_200*
dtype0
T
save/Identity_201Identitysave/RestoreV2:200*
T0*
_output_shapes
:
n
save/AssignVariableOp_200AssignVariableOpConv3d_4e_0a_1x1_bn/moving_meansave/Identity_201*
dtype0
T
save/Identity_202Identitysave/RestoreV2:201*
T0*
_output_shapes
:
r
save/AssignVariableOp_201AssignVariableOp#Conv3d_4e_0a_1x1_bn/moving_variancesave/Identity_202*
dtype0
T
save/Identity_203Identitysave/RestoreV2:202*
T0*
_output_shapes
:
k
save/AssignVariableOp_202AssignVariableOpConv3d_4e_0a_1x1_conv/kernelsave/Identity_203*
dtype0
T
save/Identity_204Identitysave/RestoreV2:203*
T0*
_output_shapes
:
t
save/AssignVariableOp_203AssignVariableOp%Conv3d_4e_0a_1x1_conv/kernel/momentumsave/Identity_204*
dtype0
T
save/Identity_205Identitysave/RestoreV2:204*
T0*
_output_shapes
:
g
save/AssignVariableOp_204AssignVariableOpConv3d_4e_1a_1x1_bn/betasave/Identity_205*
dtype0
T
save/Identity_206Identitysave/RestoreV2:205*
T0*
_output_shapes
:
p
save/AssignVariableOp_205AssignVariableOp!Conv3d_4e_1a_1x1_bn/beta/momentumsave/Identity_206*
dtype0
T
save/Identity_207Identitysave/RestoreV2:206*
T0*
_output_shapes
:
n
save/AssignVariableOp_206AssignVariableOpConv3d_4e_1a_1x1_bn/moving_meansave/Identity_207*
dtype0
T
save/Identity_208Identitysave/RestoreV2:207*
T0*
_output_shapes
:
r
save/AssignVariableOp_207AssignVariableOp#Conv3d_4e_1a_1x1_bn/moving_variancesave/Identity_208*
dtype0
T
save/Identity_209Identitysave/RestoreV2:208*
T0*
_output_shapes
:
k
save/AssignVariableOp_208AssignVariableOpConv3d_4e_1a_1x1_conv/kernelsave/Identity_209*
dtype0
T
save/Identity_210Identitysave/RestoreV2:209*
T0*
_output_shapes
:
t
save/AssignVariableOp_209AssignVariableOp%Conv3d_4e_1a_1x1_conv/kernel/momentumsave/Identity_210*
dtype0
T
save/Identity_211Identitysave/RestoreV2:210*
T0*
_output_shapes
:
g
save/AssignVariableOp_210AssignVariableOpConv3d_4e_1b_3x3_bn/betasave/Identity_211*
dtype0
T
save/Identity_212Identitysave/RestoreV2:211*
T0*
_output_shapes
:
p
save/AssignVariableOp_211AssignVariableOp!Conv3d_4e_1b_3x3_bn/beta/momentumsave/Identity_212*
dtype0
T
save/Identity_213Identitysave/RestoreV2:212*
T0*
_output_shapes
:
n
save/AssignVariableOp_212AssignVariableOpConv3d_4e_1b_3x3_bn/moving_meansave/Identity_213*
dtype0
T
save/Identity_214Identitysave/RestoreV2:213*
T0*
_output_shapes
:
r
save/AssignVariableOp_213AssignVariableOp#Conv3d_4e_1b_3x3_bn/moving_variancesave/Identity_214*
dtype0
T
save/Identity_215Identitysave/RestoreV2:214*
T0*
_output_shapes
:
k
save/AssignVariableOp_214AssignVariableOpConv3d_4e_1b_3x3_conv/kernelsave/Identity_215*
dtype0
T
save/Identity_216Identitysave/RestoreV2:215*
T0*
_output_shapes
:
t
save/AssignVariableOp_215AssignVariableOp%Conv3d_4e_1b_3x3_conv/kernel/momentumsave/Identity_216*
dtype0
T
save/Identity_217Identitysave/RestoreV2:216*
T0*
_output_shapes
:
g
save/AssignVariableOp_216AssignVariableOpConv3d_4e_2a_1x1_bn/betasave/Identity_217*
dtype0
T
save/Identity_218Identitysave/RestoreV2:217*
T0*
_output_shapes
:
p
save/AssignVariableOp_217AssignVariableOp!Conv3d_4e_2a_1x1_bn/beta/momentumsave/Identity_218*
dtype0
T
save/Identity_219Identitysave/RestoreV2:218*
T0*
_output_shapes
:
n
save/AssignVariableOp_218AssignVariableOpConv3d_4e_2a_1x1_bn/moving_meansave/Identity_219*
dtype0
T
save/Identity_220Identitysave/RestoreV2:219*
T0*
_output_shapes
:
r
save/AssignVariableOp_219AssignVariableOp#Conv3d_4e_2a_1x1_bn/moving_variancesave/Identity_220*
dtype0
T
save/Identity_221Identitysave/RestoreV2:220*
T0*
_output_shapes
:
k
save/AssignVariableOp_220AssignVariableOpConv3d_4e_2a_1x1_conv/kernelsave/Identity_221*
dtype0
T
save/Identity_222Identitysave/RestoreV2:221*
T0*
_output_shapes
:
t
save/AssignVariableOp_221AssignVariableOp%Conv3d_4e_2a_1x1_conv/kernel/momentumsave/Identity_222*
dtype0
T
save/Identity_223Identitysave/RestoreV2:222*
T0*
_output_shapes
:
g
save/AssignVariableOp_222AssignVariableOpConv3d_4e_2b_3x3_bn/betasave/Identity_223*
dtype0
T
save/Identity_224Identitysave/RestoreV2:223*
T0*
_output_shapes
:
p
save/AssignVariableOp_223AssignVariableOp!Conv3d_4e_2b_3x3_bn/beta/momentumsave/Identity_224*
dtype0
T
save/Identity_225Identitysave/RestoreV2:224*
T0*
_output_shapes
:
n
save/AssignVariableOp_224AssignVariableOpConv3d_4e_2b_3x3_bn/moving_meansave/Identity_225*
dtype0
T
save/Identity_226Identitysave/RestoreV2:225*
T0*
_output_shapes
:
r
save/AssignVariableOp_225AssignVariableOp#Conv3d_4e_2b_3x3_bn/moving_variancesave/Identity_226*
dtype0
T
save/Identity_227Identitysave/RestoreV2:226*
T0*
_output_shapes
:
k
save/AssignVariableOp_226AssignVariableOpConv3d_4e_2b_3x3_conv/kernelsave/Identity_227*
dtype0
T
save/Identity_228Identitysave/RestoreV2:227*
T0*
_output_shapes
:
t
save/AssignVariableOp_227AssignVariableOp%Conv3d_4e_2b_3x3_conv/kernel/momentumsave/Identity_228*
dtype0
T
save/Identity_229Identitysave/RestoreV2:228*
T0*
_output_shapes
:
g
save/AssignVariableOp_228AssignVariableOpConv3d_4e_3b_1x1_bn/betasave/Identity_229*
dtype0
T
save/Identity_230Identitysave/RestoreV2:229*
T0*
_output_shapes
:
p
save/AssignVariableOp_229AssignVariableOp!Conv3d_4e_3b_1x1_bn/beta/momentumsave/Identity_230*
dtype0
T
save/Identity_231Identitysave/RestoreV2:230*
T0*
_output_shapes
:
n
save/AssignVariableOp_230AssignVariableOpConv3d_4e_3b_1x1_bn/moving_meansave/Identity_231*
dtype0
T
save/Identity_232Identitysave/RestoreV2:231*
T0*
_output_shapes
:
r
save/AssignVariableOp_231AssignVariableOp#Conv3d_4e_3b_1x1_bn/moving_variancesave/Identity_232*
dtype0
T
save/Identity_233Identitysave/RestoreV2:232*
T0*
_output_shapes
:
k
save/AssignVariableOp_232AssignVariableOpConv3d_4e_3b_1x1_conv/kernelsave/Identity_233*
dtype0
T
save/Identity_234Identitysave/RestoreV2:233*
T0*
_output_shapes
:
t
save/AssignVariableOp_233AssignVariableOp%Conv3d_4e_3b_1x1_conv/kernel/momentumsave/Identity_234*
dtype0
T
save/Identity_235Identitysave/RestoreV2:234*
T0*
_output_shapes
:
g
save/AssignVariableOp_234AssignVariableOpConv3d_4f_0a_1x1_bn/betasave/Identity_235*
dtype0
T
save/Identity_236Identitysave/RestoreV2:235*
T0*
_output_shapes
:
p
save/AssignVariableOp_235AssignVariableOp!Conv3d_4f_0a_1x1_bn/beta/momentumsave/Identity_236*
dtype0
T
save/Identity_237Identitysave/RestoreV2:236*
T0*
_output_shapes
:
n
save/AssignVariableOp_236AssignVariableOpConv3d_4f_0a_1x1_bn/moving_meansave/Identity_237*
dtype0
T
save/Identity_238Identitysave/RestoreV2:237*
T0*
_output_shapes
:
r
save/AssignVariableOp_237AssignVariableOp#Conv3d_4f_0a_1x1_bn/moving_variancesave/Identity_238*
dtype0
T
save/Identity_239Identitysave/RestoreV2:238*
T0*
_output_shapes
:
k
save/AssignVariableOp_238AssignVariableOpConv3d_4f_0a_1x1_conv/kernelsave/Identity_239*
dtype0
T
save/Identity_240Identitysave/RestoreV2:239*
T0*
_output_shapes
:
t
save/AssignVariableOp_239AssignVariableOp%Conv3d_4f_0a_1x1_conv/kernel/momentumsave/Identity_240*
dtype0
T
save/Identity_241Identitysave/RestoreV2:240*
T0*
_output_shapes
:
g
save/AssignVariableOp_240AssignVariableOpConv3d_4f_1a_1x1_bn/betasave/Identity_241*
dtype0
T
save/Identity_242Identitysave/RestoreV2:241*
T0*
_output_shapes
:
p
save/AssignVariableOp_241AssignVariableOp!Conv3d_4f_1a_1x1_bn/beta/momentumsave/Identity_242*
dtype0
T
save/Identity_243Identitysave/RestoreV2:242*
T0*
_output_shapes
:
n
save/AssignVariableOp_242AssignVariableOpConv3d_4f_1a_1x1_bn/moving_meansave/Identity_243*
dtype0
T
save/Identity_244Identitysave/RestoreV2:243*
T0*
_output_shapes
:
r
save/AssignVariableOp_243AssignVariableOp#Conv3d_4f_1a_1x1_bn/moving_variancesave/Identity_244*
dtype0
T
save/Identity_245Identitysave/RestoreV2:244*
T0*
_output_shapes
:
k
save/AssignVariableOp_244AssignVariableOpConv3d_4f_1a_1x1_conv/kernelsave/Identity_245*
dtype0
T
save/Identity_246Identitysave/RestoreV2:245*
T0*
_output_shapes
:
t
save/AssignVariableOp_245AssignVariableOp%Conv3d_4f_1a_1x1_conv/kernel/momentumsave/Identity_246*
dtype0
T
save/Identity_247Identitysave/RestoreV2:246*
T0*
_output_shapes
:
g
save/AssignVariableOp_246AssignVariableOpConv3d_4f_1b_3x3_bn/betasave/Identity_247*
dtype0
T
save/Identity_248Identitysave/RestoreV2:247*
T0*
_output_shapes
:
p
save/AssignVariableOp_247AssignVariableOp!Conv3d_4f_1b_3x3_bn/beta/momentumsave/Identity_248*
dtype0
T
save/Identity_249Identitysave/RestoreV2:248*
T0*
_output_shapes
:
n
save/AssignVariableOp_248AssignVariableOpConv3d_4f_1b_3x3_bn/moving_meansave/Identity_249*
dtype0
T
save/Identity_250Identitysave/RestoreV2:249*
T0*
_output_shapes
:
r
save/AssignVariableOp_249AssignVariableOp#Conv3d_4f_1b_3x3_bn/moving_variancesave/Identity_250*
dtype0
T
save/Identity_251Identitysave/RestoreV2:250*
T0*
_output_shapes
:
k
save/AssignVariableOp_250AssignVariableOpConv3d_4f_1b_3x3_conv/kernelsave/Identity_251*
dtype0
T
save/Identity_252Identitysave/RestoreV2:251*
T0*
_output_shapes
:
t
save/AssignVariableOp_251AssignVariableOp%Conv3d_4f_1b_3x3_conv/kernel/momentumsave/Identity_252*
dtype0
T
save/Identity_253Identitysave/RestoreV2:252*
T0*
_output_shapes
:
g
save/AssignVariableOp_252AssignVariableOpConv3d_4f_2a_1x1_bn/betasave/Identity_253*
dtype0
T
save/Identity_254Identitysave/RestoreV2:253*
T0*
_output_shapes
:
p
save/AssignVariableOp_253AssignVariableOp!Conv3d_4f_2a_1x1_bn/beta/momentumsave/Identity_254*
dtype0
T
save/Identity_255Identitysave/RestoreV2:254*
T0*
_output_shapes
:
n
save/AssignVariableOp_254AssignVariableOpConv3d_4f_2a_1x1_bn/moving_meansave/Identity_255*
dtype0
T
save/Identity_256Identitysave/RestoreV2:255*
T0*
_output_shapes
:
r
save/AssignVariableOp_255AssignVariableOp#Conv3d_4f_2a_1x1_bn/moving_variancesave/Identity_256*
dtype0
T
save/Identity_257Identitysave/RestoreV2:256*
T0*
_output_shapes
:
k
save/AssignVariableOp_256AssignVariableOpConv3d_4f_2a_1x1_conv/kernelsave/Identity_257*
dtype0
T
save/Identity_258Identitysave/RestoreV2:257*
T0*
_output_shapes
:
t
save/AssignVariableOp_257AssignVariableOp%Conv3d_4f_2a_1x1_conv/kernel/momentumsave/Identity_258*
dtype0
T
save/Identity_259Identitysave/RestoreV2:258*
T0*
_output_shapes
:
g
save/AssignVariableOp_258AssignVariableOpConv3d_4f_2b_3x3_bn/betasave/Identity_259*
dtype0
T
save/Identity_260Identitysave/RestoreV2:259*
T0*
_output_shapes
:
p
save/AssignVariableOp_259AssignVariableOp!Conv3d_4f_2b_3x3_bn/beta/momentumsave/Identity_260*
dtype0
T
save/Identity_261Identitysave/RestoreV2:260*
T0*
_output_shapes
:
n
save/AssignVariableOp_260AssignVariableOpConv3d_4f_2b_3x3_bn/moving_meansave/Identity_261*
dtype0
T
save/Identity_262Identitysave/RestoreV2:261*
T0*
_output_shapes
:
r
save/AssignVariableOp_261AssignVariableOp#Conv3d_4f_2b_3x3_bn/moving_variancesave/Identity_262*
dtype0
T
save/Identity_263Identitysave/RestoreV2:262*
T0*
_output_shapes
:
k
save/AssignVariableOp_262AssignVariableOpConv3d_4f_2b_3x3_conv/kernelsave/Identity_263*
dtype0
T
save/Identity_264Identitysave/RestoreV2:263*
T0*
_output_shapes
:
t
save/AssignVariableOp_263AssignVariableOp%Conv3d_4f_2b_3x3_conv/kernel/momentumsave/Identity_264*
dtype0
T
save/Identity_265Identitysave/RestoreV2:264*
T0*
_output_shapes
:
g
save/AssignVariableOp_264AssignVariableOpConv3d_4f_3b_1x1_bn/betasave/Identity_265*
dtype0
T
save/Identity_266Identitysave/RestoreV2:265*
T0*
_output_shapes
:
p
save/AssignVariableOp_265AssignVariableOp!Conv3d_4f_3b_1x1_bn/beta/momentumsave/Identity_266*
dtype0
T
save/Identity_267Identitysave/RestoreV2:266*
T0*
_output_shapes
:
n
save/AssignVariableOp_266AssignVariableOpConv3d_4f_3b_1x1_bn/moving_meansave/Identity_267*
dtype0
T
save/Identity_268Identitysave/RestoreV2:267*
T0*
_output_shapes
:
r
save/AssignVariableOp_267AssignVariableOp#Conv3d_4f_3b_1x1_bn/moving_variancesave/Identity_268*
dtype0
T
save/Identity_269Identitysave/RestoreV2:268*
T0*
_output_shapes
:
k
save/AssignVariableOp_268AssignVariableOpConv3d_4f_3b_1x1_conv/kernelsave/Identity_269*
dtype0
T
save/Identity_270Identitysave/RestoreV2:269*
T0*
_output_shapes
:
t
save/AssignVariableOp_269AssignVariableOp%Conv3d_4f_3b_1x1_conv/kernel/momentumsave/Identity_270*
dtype0
T
save/Identity_271Identitysave/RestoreV2:270*
T0*
_output_shapes
:
g
save/AssignVariableOp_270AssignVariableOpConv3d_5b_0a_1x1_bn/betasave/Identity_271*
dtype0
T
save/Identity_272Identitysave/RestoreV2:271*
T0*
_output_shapes
:
p
save/AssignVariableOp_271AssignVariableOp!Conv3d_5b_0a_1x1_bn/beta/momentumsave/Identity_272*
dtype0
T
save/Identity_273Identitysave/RestoreV2:272*
T0*
_output_shapes
:
n
save/AssignVariableOp_272AssignVariableOpConv3d_5b_0a_1x1_bn/moving_meansave/Identity_273*
dtype0
T
save/Identity_274Identitysave/RestoreV2:273*
T0*
_output_shapes
:
r
save/AssignVariableOp_273AssignVariableOp#Conv3d_5b_0a_1x1_bn/moving_variancesave/Identity_274*
dtype0
T
save/Identity_275Identitysave/RestoreV2:274*
T0*
_output_shapes
:
k
save/AssignVariableOp_274AssignVariableOpConv3d_5b_0a_1x1_conv/kernelsave/Identity_275*
dtype0
T
save/Identity_276Identitysave/RestoreV2:275*
T0*
_output_shapes
:
t
save/AssignVariableOp_275AssignVariableOp%Conv3d_5b_0a_1x1_conv/kernel/momentumsave/Identity_276*
dtype0
T
save/Identity_277Identitysave/RestoreV2:276*
T0*
_output_shapes
:
g
save/AssignVariableOp_276AssignVariableOpConv3d_5b_1a_1x1_bn/betasave/Identity_277*
dtype0
T
save/Identity_278Identitysave/RestoreV2:277*
T0*
_output_shapes
:
p
save/AssignVariableOp_277AssignVariableOp!Conv3d_5b_1a_1x1_bn/beta/momentumsave/Identity_278*
dtype0
T
save/Identity_279Identitysave/RestoreV2:278*
T0*
_output_shapes
:
n
save/AssignVariableOp_278AssignVariableOpConv3d_5b_1a_1x1_bn/moving_meansave/Identity_279*
dtype0
T
save/Identity_280Identitysave/RestoreV2:279*
T0*
_output_shapes
:
r
save/AssignVariableOp_279AssignVariableOp#Conv3d_5b_1a_1x1_bn/moving_variancesave/Identity_280*
dtype0
T
save/Identity_281Identitysave/RestoreV2:280*
T0*
_output_shapes
:
k
save/AssignVariableOp_280AssignVariableOpConv3d_5b_1a_1x1_conv/kernelsave/Identity_281*
dtype0
T
save/Identity_282Identitysave/RestoreV2:281*
T0*
_output_shapes
:
t
save/AssignVariableOp_281AssignVariableOp%Conv3d_5b_1a_1x1_conv/kernel/momentumsave/Identity_282*
dtype0
T
save/Identity_283Identitysave/RestoreV2:282*
T0*
_output_shapes
:
g
save/AssignVariableOp_282AssignVariableOpConv3d_5b_1b_3x3_bn/betasave/Identity_283*
dtype0
T
save/Identity_284Identitysave/RestoreV2:283*
T0*
_output_shapes
:
p
save/AssignVariableOp_283AssignVariableOp!Conv3d_5b_1b_3x3_bn/beta/momentumsave/Identity_284*
dtype0
T
save/Identity_285Identitysave/RestoreV2:284*
T0*
_output_shapes
:
n
save/AssignVariableOp_284AssignVariableOpConv3d_5b_1b_3x3_bn/moving_meansave/Identity_285*
dtype0
T
save/Identity_286Identitysave/RestoreV2:285*
T0*
_output_shapes
:
r
save/AssignVariableOp_285AssignVariableOp#Conv3d_5b_1b_3x3_bn/moving_variancesave/Identity_286*
dtype0
T
save/Identity_287Identitysave/RestoreV2:286*
T0*
_output_shapes
:
k
save/AssignVariableOp_286AssignVariableOpConv3d_5b_1b_3x3_conv/kernelsave/Identity_287*
dtype0
T
save/Identity_288Identitysave/RestoreV2:287*
T0*
_output_shapes
:
t
save/AssignVariableOp_287AssignVariableOp%Conv3d_5b_1b_3x3_conv/kernel/momentumsave/Identity_288*
dtype0
T
save/Identity_289Identitysave/RestoreV2:288*
T0*
_output_shapes
:
g
save/AssignVariableOp_288AssignVariableOpConv3d_5b_2a_1x1_bn/betasave/Identity_289*
dtype0
T
save/Identity_290Identitysave/RestoreV2:289*
T0*
_output_shapes
:
p
save/AssignVariableOp_289AssignVariableOp!Conv3d_5b_2a_1x1_bn/beta/momentumsave/Identity_290*
dtype0
T
save/Identity_291Identitysave/RestoreV2:290*
T0*
_output_shapes
:
n
save/AssignVariableOp_290AssignVariableOpConv3d_5b_2a_1x1_bn/moving_meansave/Identity_291*
dtype0
T
save/Identity_292Identitysave/RestoreV2:291*
T0*
_output_shapes
:
r
save/AssignVariableOp_291AssignVariableOp#Conv3d_5b_2a_1x1_bn/moving_variancesave/Identity_292*
dtype0
T
save/Identity_293Identitysave/RestoreV2:292*
T0*
_output_shapes
:
k
save/AssignVariableOp_292AssignVariableOpConv3d_5b_2a_1x1_conv/kernelsave/Identity_293*
dtype0
T
save/Identity_294Identitysave/RestoreV2:293*
T0*
_output_shapes
:
t
save/AssignVariableOp_293AssignVariableOp%Conv3d_5b_2a_1x1_conv/kernel/momentumsave/Identity_294*
dtype0
T
save/Identity_295Identitysave/RestoreV2:294*
T0*
_output_shapes
:
g
save/AssignVariableOp_294AssignVariableOpConv3d_5b_2b_3x3_bn/betasave/Identity_295*
dtype0
T
save/Identity_296Identitysave/RestoreV2:295*
T0*
_output_shapes
:
p
save/AssignVariableOp_295AssignVariableOp!Conv3d_5b_2b_3x3_bn/beta/momentumsave/Identity_296*
dtype0
T
save/Identity_297Identitysave/RestoreV2:296*
T0*
_output_shapes
:
n
save/AssignVariableOp_296AssignVariableOpConv3d_5b_2b_3x3_bn/moving_meansave/Identity_297*
dtype0
T
save/Identity_298Identitysave/RestoreV2:297*
T0*
_output_shapes
:
r
save/AssignVariableOp_297AssignVariableOp#Conv3d_5b_2b_3x3_bn/moving_variancesave/Identity_298*
dtype0
T
save/Identity_299Identitysave/RestoreV2:298*
T0*
_output_shapes
:
k
save/AssignVariableOp_298AssignVariableOpConv3d_5b_2b_3x3_conv/kernelsave/Identity_299*
dtype0
T
save/Identity_300Identitysave/RestoreV2:299*
T0*
_output_shapes
:
t
save/AssignVariableOp_299AssignVariableOp%Conv3d_5b_2b_3x3_conv/kernel/momentumsave/Identity_300*
dtype0
T
save/Identity_301Identitysave/RestoreV2:300*
T0*
_output_shapes
:
g
save/AssignVariableOp_300AssignVariableOpConv3d_5b_3b_1x1_bn/betasave/Identity_301*
dtype0
T
save/Identity_302Identitysave/RestoreV2:301*
T0*
_output_shapes
:
p
save/AssignVariableOp_301AssignVariableOp!Conv3d_5b_3b_1x1_bn/beta/momentumsave/Identity_302*
dtype0
T
save/Identity_303Identitysave/RestoreV2:302*
T0*
_output_shapes
:
n
save/AssignVariableOp_302AssignVariableOpConv3d_5b_3b_1x1_bn/moving_meansave/Identity_303*
dtype0
T
save/Identity_304Identitysave/RestoreV2:303*
T0*
_output_shapes
:
r
save/AssignVariableOp_303AssignVariableOp#Conv3d_5b_3b_1x1_bn/moving_variancesave/Identity_304*
dtype0
T
save/Identity_305Identitysave/RestoreV2:304*
T0*
_output_shapes
:
k
save/AssignVariableOp_304AssignVariableOpConv3d_5b_3b_1x1_conv/kernelsave/Identity_305*
dtype0
T
save/Identity_306Identitysave/RestoreV2:305*
T0*
_output_shapes
:
t
save/AssignVariableOp_305AssignVariableOp%Conv3d_5b_3b_1x1_conv/kernel/momentumsave/Identity_306*
dtype0
T
save/Identity_307Identitysave/RestoreV2:306*
T0*
_output_shapes
:
g
save/AssignVariableOp_306AssignVariableOpConv3d_5c_0a_1x1_bn/betasave/Identity_307*
dtype0
T
save/Identity_308Identitysave/RestoreV2:307*
T0*
_output_shapes
:
p
save/AssignVariableOp_307AssignVariableOp!Conv3d_5c_0a_1x1_bn/beta/momentumsave/Identity_308*
dtype0
T
save/Identity_309Identitysave/RestoreV2:308*
T0*
_output_shapes
:
n
save/AssignVariableOp_308AssignVariableOpConv3d_5c_0a_1x1_bn/moving_meansave/Identity_309*
dtype0
T
save/Identity_310Identitysave/RestoreV2:309*
T0*
_output_shapes
:
r
save/AssignVariableOp_309AssignVariableOp#Conv3d_5c_0a_1x1_bn/moving_variancesave/Identity_310*
dtype0
T
save/Identity_311Identitysave/RestoreV2:310*
T0*
_output_shapes
:
k
save/AssignVariableOp_310AssignVariableOpConv3d_5c_0a_1x1_conv/kernelsave/Identity_311*
dtype0
T
save/Identity_312Identitysave/RestoreV2:311*
T0*
_output_shapes
:
t
save/AssignVariableOp_311AssignVariableOp%Conv3d_5c_0a_1x1_conv/kernel/momentumsave/Identity_312*
dtype0
T
save/Identity_313Identitysave/RestoreV2:312*
T0*
_output_shapes
:
g
save/AssignVariableOp_312AssignVariableOpConv3d_5c_1a_1x1_bn/betasave/Identity_313*
dtype0
T
save/Identity_314Identitysave/RestoreV2:313*
T0*
_output_shapes
:
p
save/AssignVariableOp_313AssignVariableOp!Conv3d_5c_1a_1x1_bn/beta/momentumsave/Identity_314*
dtype0
T
save/Identity_315Identitysave/RestoreV2:314*
T0*
_output_shapes
:
n
save/AssignVariableOp_314AssignVariableOpConv3d_5c_1a_1x1_bn/moving_meansave/Identity_315*
dtype0
T
save/Identity_316Identitysave/RestoreV2:315*
T0*
_output_shapes
:
r
save/AssignVariableOp_315AssignVariableOp#Conv3d_5c_1a_1x1_bn/moving_variancesave/Identity_316*
dtype0
T
save/Identity_317Identitysave/RestoreV2:316*
T0*
_output_shapes
:
k
save/AssignVariableOp_316AssignVariableOpConv3d_5c_1a_1x1_conv/kernelsave/Identity_317*
dtype0
T
save/Identity_318Identitysave/RestoreV2:317*
T0*
_output_shapes
:
t
save/AssignVariableOp_317AssignVariableOp%Conv3d_5c_1a_1x1_conv/kernel/momentumsave/Identity_318*
dtype0
T
save/Identity_319Identitysave/RestoreV2:318*
T0*
_output_shapes
:
g
save/AssignVariableOp_318AssignVariableOpConv3d_5c_1b_3x3_bn/betasave/Identity_319*
dtype0
T
save/Identity_320Identitysave/RestoreV2:319*
T0*
_output_shapes
:
p
save/AssignVariableOp_319AssignVariableOp!Conv3d_5c_1b_3x3_bn/beta/momentumsave/Identity_320*
dtype0
T
save/Identity_321Identitysave/RestoreV2:320*
T0*
_output_shapes
:
n
save/AssignVariableOp_320AssignVariableOpConv3d_5c_1b_3x3_bn/moving_meansave/Identity_321*
dtype0
T
save/Identity_322Identitysave/RestoreV2:321*
T0*
_output_shapes
:
r
save/AssignVariableOp_321AssignVariableOp#Conv3d_5c_1b_3x3_bn/moving_variancesave/Identity_322*
dtype0
T
save/Identity_323Identitysave/RestoreV2:322*
T0*
_output_shapes
:
k
save/AssignVariableOp_322AssignVariableOpConv3d_5c_1b_3x3_conv/kernelsave/Identity_323*
dtype0
T
save/Identity_324Identitysave/RestoreV2:323*
T0*
_output_shapes
:
t
save/AssignVariableOp_323AssignVariableOp%Conv3d_5c_1b_3x3_conv/kernel/momentumsave/Identity_324*
dtype0
T
save/Identity_325Identitysave/RestoreV2:324*
T0*
_output_shapes
:
g
save/AssignVariableOp_324AssignVariableOpConv3d_5c_2a_1x1_bn/betasave/Identity_325*
dtype0
T
save/Identity_326Identitysave/RestoreV2:325*
T0*
_output_shapes
:
p
save/AssignVariableOp_325AssignVariableOp!Conv3d_5c_2a_1x1_bn/beta/momentumsave/Identity_326*
dtype0
T
save/Identity_327Identitysave/RestoreV2:326*
T0*
_output_shapes
:
n
save/AssignVariableOp_326AssignVariableOpConv3d_5c_2a_1x1_bn/moving_meansave/Identity_327*
dtype0
T
save/Identity_328Identitysave/RestoreV2:327*
T0*
_output_shapes
:
r
save/AssignVariableOp_327AssignVariableOp#Conv3d_5c_2a_1x1_bn/moving_variancesave/Identity_328*
dtype0
T
save/Identity_329Identitysave/RestoreV2:328*
T0*
_output_shapes
:
k
save/AssignVariableOp_328AssignVariableOpConv3d_5c_2a_1x1_conv/kernelsave/Identity_329*
dtype0
T
save/Identity_330Identitysave/RestoreV2:329*
T0*
_output_shapes
:
t
save/AssignVariableOp_329AssignVariableOp%Conv3d_5c_2a_1x1_conv/kernel/momentumsave/Identity_330*
dtype0
T
save/Identity_331Identitysave/RestoreV2:330*
T0*
_output_shapes
:
g
save/AssignVariableOp_330AssignVariableOpConv3d_5c_2b_3x3_bn/betasave/Identity_331*
dtype0
T
save/Identity_332Identitysave/RestoreV2:331*
T0*
_output_shapes
:
p
save/AssignVariableOp_331AssignVariableOp!Conv3d_5c_2b_3x3_bn/beta/momentumsave/Identity_332*
dtype0
T
save/Identity_333Identitysave/RestoreV2:332*
T0*
_output_shapes
:
n
save/AssignVariableOp_332AssignVariableOpConv3d_5c_2b_3x3_bn/moving_meansave/Identity_333*
dtype0
T
save/Identity_334Identitysave/RestoreV2:333*
T0*
_output_shapes
:
r
save/AssignVariableOp_333AssignVariableOp#Conv3d_5c_2b_3x3_bn/moving_variancesave/Identity_334*
dtype0
T
save/Identity_335Identitysave/RestoreV2:334*
T0*
_output_shapes
:
k
save/AssignVariableOp_334AssignVariableOpConv3d_5c_2b_3x3_conv/kernelsave/Identity_335*
dtype0
T
save/Identity_336Identitysave/RestoreV2:335*
T0*
_output_shapes
:
t
save/AssignVariableOp_335AssignVariableOp%Conv3d_5c_2b_3x3_conv/kernel/momentumsave/Identity_336*
dtype0
T
save/Identity_337Identitysave/RestoreV2:336*
T0*
_output_shapes
:
g
save/AssignVariableOp_336AssignVariableOpConv3d_5c_3b_1x1_bn/betasave/Identity_337*
dtype0
T
save/Identity_338Identitysave/RestoreV2:337*
T0*
_output_shapes
:
p
save/AssignVariableOp_337AssignVariableOp!Conv3d_5c_3b_1x1_bn/beta/momentumsave/Identity_338*
dtype0
T
save/Identity_339Identitysave/RestoreV2:338*
T0*
_output_shapes
:
n
save/AssignVariableOp_338AssignVariableOpConv3d_5c_3b_1x1_bn/moving_meansave/Identity_339*
dtype0
T
save/Identity_340Identitysave/RestoreV2:339*
T0*
_output_shapes
:
r
save/AssignVariableOp_339AssignVariableOp#Conv3d_5c_3b_1x1_bn/moving_variancesave/Identity_340*
dtype0
T
save/Identity_341Identitysave/RestoreV2:340*
T0*
_output_shapes
:
k
save/AssignVariableOp_340AssignVariableOpConv3d_5c_3b_1x1_conv/kernelsave/Identity_341*
dtype0
T
save/Identity_342Identitysave/RestoreV2:341*
T0*
_output_shapes
:
t
save/AssignVariableOp_341AssignVariableOp%Conv3d_5c_3b_1x1_conv/kernel/momentumsave/Identity_342*
dtype0
T
save/Identity_343Identitysave/RestoreV2:342*
T0*
_output_shapes
:
f
save/AssignVariableOp_342AssignVariableOpConv3d_6a_1x1_conv/biassave/Identity_343*
dtype0
T
save/Identity_344Identitysave/RestoreV2:343*
T0*
_output_shapes
:
o
save/AssignVariableOp_343AssignVariableOp Conv3d_6a_1x1_conv/bias/momentumsave/Identity_344*
dtype0
T
save/Identity_345Identitysave/RestoreV2:344*
T0*
_output_shapes
:
h
save/AssignVariableOp_344AssignVariableOpConv3d_6a_1x1_conv/kernelsave/Identity_345*
dtype0
T
save/Identity_346Identitysave/RestoreV2:345*
T0*
_output_shapes
:
q
save/AssignVariableOp_345AssignVariableOp"Conv3d_6a_1x1_conv/kernel/momentumsave/Identity_346*
dtype0
T
save/Identity_347Identitysave/RestoreV2:346*
T0*
_output_shapes
:
T
save/AssignVariableOp_346AssignVariableOpdecaysave/Identity_347*
dtype0
T
save/Identity_348Identitysave/RestoreV2:347*
T0*
_output_shapes
:
Y
save/AssignVariableOp_347AssignVariableOp
dense/biassave/Identity_348*
dtype0
T
save/Identity_349Identitysave/RestoreV2:348*
T0*
_output_shapes
:
b
save/AssignVariableOp_348AssignVariableOpdense/bias/momentumsave/Identity_349*
dtype0
T
save/Identity_350Identitysave/RestoreV2:349*
T0*
_output_shapes
:
[
save/AssignVariableOp_349AssignVariableOpdense/kernelsave/Identity_350*
dtype0
T
save/Identity_351Identitysave/RestoreV2:350*
T0*
_output_shapes
:
d
save/AssignVariableOp_350AssignVariableOpdense/kernel/momentumsave/Identity_351*
dtype0
T
save/Identity_352Identitysave/RestoreV2:351*
T0	*
_output_shapes
:
S
save/AssignVariableOp_351AssignVariableOpitersave/Identity_352*
dtype0	
T
save/Identity_353Identitysave/RestoreV2:352*
T0*
_output_shapes
:
\
save/AssignVariableOp_352AssignVariableOplearning_ratesave/Identity_353*
dtype0
T
save/Identity_354Identitysave/RestoreV2:353*
T0*
_output_shapes
:
W
save/AssignVariableOp_353AssignVariableOpmomentumsave/Identity_354*
dtype0
вL
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_100^save/AssignVariableOp_101^save/AssignVariableOp_102^save/AssignVariableOp_103^save/AssignVariableOp_104^save/AssignVariableOp_105^save/AssignVariableOp_106^save/AssignVariableOp_107^save/AssignVariableOp_108^save/AssignVariableOp_109^save/AssignVariableOp_11^save/AssignVariableOp_110^save/AssignVariableOp_111^save/AssignVariableOp_112^save/AssignVariableOp_113^save/AssignVariableOp_114^save/AssignVariableOp_115^save/AssignVariableOp_116^save/AssignVariableOp_117^save/AssignVariableOp_118^save/AssignVariableOp_119^save/AssignVariableOp_12^save/AssignVariableOp_120^save/AssignVariableOp_121^save/AssignVariableOp_122^save/AssignVariableOp_123^save/AssignVariableOp_124^save/AssignVariableOp_125^save/AssignVariableOp_126^save/AssignVariableOp_127^save/AssignVariableOp_128^save/AssignVariableOp_129^save/AssignVariableOp_13^save/AssignVariableOp_130^save/AssignVariableOp_131^save/AssignVariableOp_132^save/AssignVariableOp_133^save/AssignVariableOp_134^save/AssignVariableOp_135^save/AssignVariableOp_136^save/AssignVariableOp_137^save/AssignVariableOp_138^save/AssignVariableOp_139^save/AssignVariableOp_14^save/AssignVariableOp_140^save/AssignVariableOp_141^save/AssignVariableOp_142^save/AssignVariableOp_143^save/AssignVariableOp_144^save/AssignVariableOp_145^save/AssignVariableOp_146^save/AssignVariableOp_147^save/AssignVariableOp_148^save/AssignVariableOp_149^save/AssignVariableOp_15^save/AssignVariableOp_150^save/AssignVariableOp_151^save/AssignVariableOp_152^save/AssignVariableOp_153^save/AssignVariableOp_154^save/AssignVariableOp_155^save/AssignVariableOp_156^save/AssignVariableOp_157^save/AssignVariableOp_158^save/AssignVariableOp_159^save/AssignVariableOp_16^save/AssignVariableOp_160^save/AssignVariableOp_161^save/AssignVariableOp_162^save/AssignVariableOp_163^save/AssignVariableOp_164^save/AssignVariableOp_165^save/AssignVariableOp_166^save/AssignVariableOp_167^save/AssignVariableOp_168^save/AssignVariableOp_169^save/AssignVariableOp_17^save/AssignVariableOp_170^save/AssignVariableOp_171^save/AssignVariableOp_172^save/AssignVariableOp_173^save/AssignVariableOp_174^save/AssignVariableOp_175^save/AssignVariableOp_176^save/AssignVariableOp_177^save/AssignVariableOp_178^save/AssignVariableOp_179^save/AssignVariableOp_18^save/AssignVariableOp_180^save/AssignVariableOp_181^save/AssignVariableOp_182^save/AssignVariableOp_183^save/AssignVariableOp_184^save/AssignVariableOp_185^save/AssignVariableOp_186^save/AssignVariableOp_187^save/AssignVariableOp_188^save/AssignVariableOp_189^save/AssignVariableOp_19^save/AssignVariableOp_190^save/AssignVariableOp_191^save/AssignVariableOp_192^save/AssignVariableOp_193^save/AssignVariableOp_194^save/AssignVariableOp_195^save/AssignVariableOp_196^save/AssignVariableOp_197^save/AssignVariableOp_198^save/AssignVariableOp_199^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_200^save/AssignVariableOp_201^save/AssignVariableOp_202^save/AssignVariableOp_203^save/AssignVariableOp_204^save/AssignVariableOp_205^save/AssignVariableOp_206^save/AssignVariableOp_207^save/AssignVariableOp_208^save/AssignVariableOp_209^save/AssignVariableOp_21^save/AssignVariableOp_210^save/AssignVariableOp_211^save/AssignVariableOp_212^save/AssignVariableOp_213^save/AssignVariableOp_214^save/AssignVariableOp_215^save/AssignVariableOp_216^save/AssignVariableOp_217^save/AssignVariableOp_218^save/AssignVariableOp_219^save/AssignVariableOp_22^save/AssignVariableOp_220^save/AssignVariableOp_221^save/AssignVariableOp_222^save/AssignVariableOp_223^save/AssignVariableOp_224^save/AssignVariableOp_225^save/AssignVariableOp_226^save/AssignVariableOp_227^save/AssignVariableOp_228^save/AssignVariableOp_229^save/AssignVariableOp_23^save/AssignVariableOp_230^save/AssignVariableOp_231^save/AssignVariableOp_232^save/AssignVariableOp_233^save/AssignVariableOp_234^save/AssignVariableOp_235^save/AssignVariableOp_236^save/AssignVariableOp_237^save/AssignVariableOp_238^save/AssignVariableOp_239^save/AssignVariableOp_24^save/AssignVariableOp_240^save/AssignVariableOp_241^save/AssignVariableOp_242^save/AssignVariableOp_243^save/AssignVariableOp_244^save/AssignVariableOp_245^save/AssignVariableOp_246^save/AssignVariableOp_247^save/AssignVariableOp_248^save/AssignVariableOp_249^save/AssignVariableOp_25^save/AssignVariableOp_250^save/AssignVariableOp_251^save/AssignVariableOp_252^save/AssignVariableOp_253^save/AssignVariableOp_254^save/AssignVariableOp_255^save/AssignVariableOp_256^save/AssignVariableOp_257^save/AssignVariableOp_258^save/AssignVariableOp_259^save/AssignVariableOp_26^save/AssignVariableOp_260^save/AssignVariableOp_261^save/AssignVariableOp_262^save/AssignVariableOp_263^save/AssignVariableOp_264^save/AssignVariableOp_265^save/AssignVariableOp_266^save/AssignVariableOp_267^save/AssignVariableOp_268^save/AssignVariableOp_269^save/AssignVariableOp_27^save/AssignVariableOp_270^save/AssignVariableOp_271^save/AssignVariableOp_272^save/AssignVariableOp_273^save/AssignVariableOp_274^save/AssignVariableOp_275^save/AssignVariableOp_276^save/AssignVariableOp_277^save/AssignVariableOp_278^save/AssignVariableOp_279^save/AssignVariableOp_28^save/AssignVariableOp_280^save/AssignVariableOp_281^save/AssignVariableOp_282^save/AssignVariableOp_283^save/AssignVariableOp_284^save/AssignVariableOp_285^save/AssignVariableOp_286^save/AssignVariableOp_287^save/AssignVariableOp_288^save/AssignVariableOp_289^save/AssignVariableOp_29^save/AssignVariableOp_290^save/AssignVariableOp_291^save/AssignVariableOp_292^save/AssignVariableOp_293^save/AssignVariableOp_294^save/AssignVariableOp_295^save/AssignVariableOp_296^save/AssignVariableOp_297^save/AssignVariableOp_298^save/AssignVariableOp_299^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_300^save/AssignVariableOp_301^save/AssignVariableOp_302^save/AssignVariableOp_303^save/AssignVariableOp_304^save/AssignVariableOp_305^save/AssignVariableOp_306^save/AssignVariableOp_307^save/AssignVariableOp_308^save/AssignVariableOp_309^save/AssignVariableOp_31^save/AssignVariableOp_310^save/AssignVariableOp_311^save/AssignVariableOp_312^save/AssignVariableOp_313^save/AssignVariableOp_314^save/AssignVariableOp_315^save/AssignVariableOp_316^save/AssignVariableOp_317^save/AssignVariableOp_318^save/AssignVariableOp_319^save/AssignVariableOp_32^save/AssignVariableOp_320^save/AssignVariableOp_321^save/AssignVariableOp_322^save/AssignVariableOp_323^save/AssignVariableOp_324^save/AssignVariableOp_325^save/AssignVariableOp_326^save/AssignVariableOp_327^save/AssignVariableOp_328^save/AssignVariableOp_329^save/AssignVariableOp_33^save/AssignVariableOp_330^save/AssignVariableOp_331^save/AssignVariableOp_332^save/AssignVariableOp_333^save/AssignVariableOp_334^save/AssignVariableOp_335^save/AssignVariableOp_336^save/AssignVariableOp_337^save/AssignVariableOp_338^save/AssignVariableOp_339^save/AssignVariableOp_34^save/AssignVariableOp_340^save/AssignVariableOp_341^save/AssignVariableOp_342^save/AssignVariableOp_343^save/AssignVariableOp_344^save/AssignVariableOp_345^save/AssignVariableOp_346^save/AssignVariableOp_347^save/AssignVariableOp_348^save/AssignVariableOp_349^save/AssignVariableOp_35^save/AssignVariableOp_350^save/AssignVariableOp_351^save/AssignVariableOp_352^save/AssignVariableOp_353^save/AssignVariableOp_36^save/AssignVariableOp_37^save/AssignVariableOp_38^save/AssignVariableOp_39^save/AssignVariableOp_4^save/AssignVariableOp_40^save/AssignVariableOp_41^save/AssignVariableOp_42^save/AssignVariableOp_43^save/AssignVariableOp_44^save/AssignVariableOp_45^save/AssignVariableOp_46^save/AssignVariableOp_47^save/AssignVariableOp_48^save/AssignVariableOp_49^save/AssignVariableOp_5^save/AssignVariableOp_50^save/AssignVariableOp_51^save/AssignVariableOp_52^save/AssignVariableOp_53^save/AssignVariableOp_54^save/AssignVariableOp_55^save/AssignVariableOp_56^save/AssignVariableOp_57^save/AssignVariableOp_58^save/AssignVariableOp_59^save/AssignVariableOp_6^save/AssignVariableOp_60^save/AssignVariableOp_61^save/AssignVariableOp_62^save/AssignVariableOp_63^save/AssignVariableOp_64^save/AssignVariableOp_65^save/AssignVariableOp_66^save/AssignVariableOp_67^save/AssignVariableOp_68^save/AssignVariableOp_69^save/AssignVariableOp_7^save/AssignVariableOp_70^save/AssignVariableOp_71^save/AssignVariableOp_72^save/AssignVariableOp_73^save/AssignVariableOp_74^save/AssignVariableOp_75^save/AssignVariableOp_76^save/AssignVariableOp_77^save/AssignVariableOp_78^save/AssignVariableOp_79^save/AssignVariableOp_8^save/AssignVariableOp_80^save/AssignVariableOp_81^save/AssignVariableOp_82^save/AssignVariableOp_83^save/AssignVariableOp_84^save/AssignVariableOp_85^save/AssignVariableOp_86^save/AssignVariableOp_87^save/AssignVariableOp_88^save/AssignVariableOp_89^save/AssignVariableOp_9^save/AssignVariableOp_90^save/AssignVariableOp_91^save/AssignVariableOp_92^save/AssignVariableOp_93^save/AssignVariableOp_94^save/AssignVariableOp_95^save/AssignVariableOp_96^save/AssignVariableOp_97^save/AssignVariableOp_98^save/AssignVariableOp_99
-
save/restore_allNoOp^save/restore_shard"Є<
save/Const:0save/Identity:0save/restore_all (5 @F8"ЇЯ
trainable_variables°ЯЭЯ
ђ
Conv3d_1a_7x7_conv/kernel:0 Conv3d_1a_7x7_conv/kernel/Assign/Conv3d_1a_7x7_conv/kernel/Read/ReadVariableOp:0(26Conv3d_1a_7x7_conv/kernel/Initializer/random_uniform:08
У
Conv3d_1a_7x7_bn/beta:0Conv3d_1a_7x7_bn/beta/Assign+Conv3d_1a_7x7_bn/beta/Read/ReadVariableOp:0(2)Conv3d_1a_7x7_bn/beta/Initializer/zeros:08
ђ
Conv3d_2b_1x1_conv/kernel:0 Conv3d_2b_1x1_conv/kernel/Assign/Conv3d_2b_1x1_conv/kernel/Read/ReadVariableOp:0(26Conv3d_2b_1x1_conv/kernel/Initializer/random_uniform:08
У
Conv3d_2b_1x1_bn/beta:0Conv3d_2b_1x1_bn/beta/Assign+Conv3d_2b_1x1_bn/beta/Read/ReadVariableOp:0(2)Conv3d_2b_1x1_bn/beta/Initializer/zeros:08
ђ
Conv3d_2c_3x3_conv/kernel:0 Conv3d_2c_3x3_conv/kernel/Assign/Conv3d_2c_3x3_conv/kernel/Read/ReadVariableOp:0(26Conv3d_2c_3x3_conv/kernel/Initializer/random_uniform:08
У
Conv3d_2c_3x3_bn/beta:0Conv3d_2c_3x3_bn/beta/Assign+Conv3d_2c_3x3_bn/beta/Read/ReadVariableOp:0(2)Conv3d_2c_3x3_bn/beta/Initializer/zeros:08
Є
Conv3d_3b_1a_1x1_conv/kernel:0#Conv3d_3b_1a_1x1_conv/kernel/Assign2Conv3d_3b_1a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_3b_1a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_3b_2a_1x1_conv/kernel:0#Conv3d_3b_2a_1x1_conv/kernel/Assign2Conv3d_3b_2a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_3b_2a_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_3b_1a_1x1_bn/beta:0Conv3d_3b_1a_1x1_bn/beta/Assign.Conv3d_3b_1a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_3b_1a_1x1_bn/beta/Initializer/zeros:08
Я
Conv3d_3b_2a_1x1_bn/beta:0Conv3d_3b_2a_1x1_bn/beta/Assign.Conv3d_3b_2a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_3b_2a_1x1_bn/beta/Initializer/zeros:08
Є
Conv3d_3b_0a_1x1_conv/kernel:0#Conv3d_3b_0a_1x1_conv/kernel/Assign2Conv3d_3b_0a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_3b_0a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_3b_1b_3x3_conv/kernel:0#Conv3d_3b_1b_3x3_conv/kernel/Assign2Conv3d_3b_1b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_3b_1b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_3b_2b_3x3_conv/kernel:0#Conv3d_3b_2b_3x3_conv/kernel/Assign2Conv3d_3b_2b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_3b_2b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_3b_3b_1x1_conv/kernel:0#Conv3d_3b_3b_1x1_conv/kernel/Assign2Conv3d_3b_3b_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_3b_3b_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_3b_0a_1x1_bn/beta:0Conv3d_3b_0a_1x1_bn/beta/Assign.Conv3d_3b_0a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_3b_0a_1x1_bn/beta/Initializer/zeros:08
Я
Conv3d_3b_1b_3x3_bn/beta:0Conv3d_3b_1b_3x3_bn/beta/Assign.Conv3d_3b_1b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_3b_1b_3x3_bn/beta/Initializer/zeros:08
Я
Conv3d_3b_2b_3x3_bn/beta:0Conv3d_3b_2b_3x3_bn/beta/Assign.Conv3d_3b_2b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_3b_2b_3x3_bn/beta/Initializer/zeros:08
Я
Conv3d_3b_3b_1x1_bn/beta:0Conv3d_3b_3b_1x1_bn/beta/Assign.Conv3d_3b_3b_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_3b_3b_1x1_bn/beta/Initializer/zeros:08
Є
Conv3d_3c_1a_1x1_conv/kernel:0#Conv3d_3c_1a_1x1_conv/kernel/Assign2Conv3d_3c_1a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_3c_1a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_3c_2a_1x1_conv/kernel:0#Conv3d_3c_2a_1x1_conv/kernel/Assign2Conv3d_3c_2a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_3c_2a_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_3c_1a_1x1_bn/beta:0Conv3d_3c_1a_1x1_bn/beta/Assign.Conv3d_3c_1a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_3c_1a_1x1_bn/beta/Initializer/zeros:08
Я
Conv3d_3c_2a_1x1_bn/beta:0Conv3d_3c_2a_1x1_bn/beta/Assign.Conv3d_3c_2a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_3c_2a_1x1_bn/beta/Initializer/zeros:08
Є
Conv3d_3c_0a_1x1_conv/kernel:0#Conv3d_3c_0a_1x1_conv/kernel/Assign2Conv3d_3c_0a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_3c_0a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_3c_1b_3x3_conv/kernel:0#Conv3d_3c_1b_3x3_conv/kernel/Assign2Conv3d_3c_1b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_3c_1b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_3c_2b_3x3_conv/kernel:0#Conv3d_3c_2b_3x3_conv/kernel/Assign2Conv3d_3c_2b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_3c_2b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_3c_3b_1x1_conv/kernel:0#Conv3d_3c_3b_1x1_conv/kernel/Assign2Conv3d_3c_3b_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_3c_3b_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_3c_0a_1x1_bn/beta:0Conv3d_3c_0a_1x1_bn/beta/Assign.Conv3d_3c_0a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_3c_0a_1x1_bn/beta/Initializer/zeros:08
Я
Conv3d_3c_1b_3x3_bn/beta:0Conv3d_3c_1b_3x3_bn/beta/Assign.Conv3d_3c_1b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_3c_1b_3x3_bn/beta/Initializer/zeros:08
Я
Conv3d_3c_2b_3x3_bn/beta:0Conv3d_3c_2b_3x3_bn/beta/Assign.Conv3d_3c_2b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_3c_2b_3x3_bn/beta/Initializer/zeros:08
Я
Conv3d_3c_3b_1x1_bn/beta:0Conv3d_3c_3b_1x1_bn/beta/Assign.Conv3d_3c_3b_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_3c_3b_1x1_bn/beta/Initializer/zeros:08
Є
Conv3d_4b_1a_1x1_conv/kernel:0#Conv3d_4b_1a_1x1_conv/kernel/Assign2Conv3d_4b_1a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4b_1a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4b_2a_1x1_conv/kernel:0#Conv3d_4b_2a_1x1_conv/kernel/Assign2Conv3d_4b_2a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4b_2a_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_4b_1a_1x1_bn/beta:0Conv3d_4b_1a_1x1_bn/beta/Assign.Conv3d_4b_1a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4b_1a_1x1_bn/beta/Initializer/zeros:08
Я
Conv3d_4b_2a_1x1_bn/beta:0Conv3d_4b_2a_1x1_bn/beta/Assign.Conv3d_4b_2a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4b_2a_1x1_bn/beta/Initializer/zeros:08
Є
Conv3d_4b_0a_1x1_conv/kernel:0#Conv3d_4b_0a_1x1_conv/kernel/Assign2Conv3d_4b_0a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4b_0a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4b_1b_3x3_conv/kernel:0#Conv3d_4b_1b_3x3_conv/kernel/Assign2Conv3d_4b_1b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4b_1b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4b_2b_3x3_conv/kernel:0#Conv3d_4b_2b_3x3_conv/kernel/Assign2Conv3d_4b_2b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4b_2b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4b_3b_1x1_conv/kernel:0#Conv3d_4b_3b_1x1_conv/kernel/Assign2Conv3d_4b_3b_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4b_3b_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_4b_0a_1x1_bn/beta:0Conv3d_4b_0a_1x1_bn/beta/Assign.Conv3d_4b_0a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4b_0a_1x1_bn/beta/Initializer/zeros:08
Я
Conv3d_4b_1b_3x3_bn/beta:0Conv3d_4b_1b_3x3_bn/beta/Assign.Conv3d_4b_1b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4b_1b_3x3_bn/beta/Initializer/zeros:08
Я
Conv3d_4b_2b_3x3_bn/beta:0Conv3d_4b_2b_3x3_bn/beta/Assign.Conv3d_4b_2b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4b_2b_3x3_bn/beta/Initializer/zeros:08
Я
Conv3d_4b_3b_1x1_bn/beta:0Conv3d_4b_3b_1x1_bn/beta/Assign.Conv3d_4b_3b_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4b_3b_1x1_bn/beta/Initializer/zeros:08
Є
Conv3d_4c_1a_1x1_conv/kernel:0#Conv3d_4c_1a_1x1_conv/kernel/Assign2Conv3d_4c_1a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4c_1a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4c_2a_1x1_conv/kernel:0#Conv3d_4c_2a_1x1_conv/kernel/Assign2Conv3d_4c_2a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4c_2a_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_4c_1a_1x1_bn/beta:0Conv3d_4c_1a_1x1_bn/beta/Assign.Conv3d_4c_1a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4c_1a_1x1_bn/beta/Initializer/zeros:08
Я
Conv3d_4c_2a_1x1_bn/beta:0Conv3d_4c_2a_1x1_bn/beta/Assign.Conv3d_4c_2a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4c_2a_1x1_bn/beta/Initializer/zeros:08
Є
Conv3d_4c_0a_1x1_conv/kernel:0#Conv3d_4c_0a_1x1_conv/kernel/Assign2Conv3d_4c_0a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4c_0a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4c_1b_3x3_conv/kernel:0#Conv3d_4c_1b_3x3_conv/kernel/Assign2Conv3d_4c_1b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4c_1b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4c_2b_3x3_conv/kernel:0#Conv3d_4c_2b_3x3_conv/kernel/Assign2Conv3d_4c_2b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4c_2b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4c_3b_1x1_conv/kernel:0#Conv3d_4c_3b_1x1_conv/kernel/Assign2Conv3d_4c_3b_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4c_3b_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_4c_0a_1x1_bn/beta:0Conv3d_4c_0a_1x1_bn/beta/Assign.Conv3d_4c_0a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4c_0a_1x1_bn/beta/Initializer/zeros:08
Я
Conv3d_4c_1b_3x3_bn/beta:0Conv3d_4c_1b_3x3_bn/beta/Assign.Conv3d_4c_1b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4c_1b_3x3_bn/beta/Initializer/zeros:08
Я
Conv3d_4c_2b_3x3_bn/beta:0Conv3d_4c_2b_3x3_bn/beta/Assign.Conv3d_4c_2b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4c_2b_3x3_bn/beta/Initializer/zeros:08
Я
Conv3d_4c_3b_1x1_bn/beta:0Conv3d_4c_3b_1x1_bn/beta/Assign.Conv3d_4c_3b_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4c_3b_1x1_bn/beta/Initializer/zeros:08
Є
Conv3d_4d_1a_1x1_conv/kernel:0#Conv3d_4d_1a_1x1_conv/kernel/Assign2Conv3d_4d_1a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4d_1a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4d_2a_1x1_conv/kernel:0#Conv3d_4d_2a_1x1_conv/kernel/Assign2Conv3d_4d_2a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4d_2a_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_4d_1a_1x1_bn/beta:0Conv3d_4d_1a_1x1_bn/beta/Assign.Conv3d_4d_1a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4d_1a_1x1_bn/beta/Initializer/zeros:08
Я
Conv3d_4d_2a_1x1_bn/beta:0Conv3d_4d_2a_1x1_bn/beta/Assign.Conv3d_4d_2a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4d_2a_1x1_bn/beta/Initializer/zeros:08
Є
Conv3d_4d_0a_1x1_conv/kernel:0#Conv3d_4d_0a_1x1_conv/kernel/Assign2Conv3d_4d_0a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4d_0a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4d_1b_3x3_conv/kernel:0#Conv3d_4d_1b_3x3_conv/kernel/Assign2Conv3d_4d_1b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4d_1b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4d_2b_3x3_conv/kernel:0#Conv3d_4d_2b_3x3_conv/kernel/Assign2Conv3d_4d_2b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4d_2b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4d_3b_1x1_conv/kernel:0#Conv3d_4d_3b_1x1_conv/kernel/Assign2Conv3d_4d_3b_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4d_3b_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_4d_0a_1x1_bn/beta:0Conv3d_4d_0a_1x1_bn/beta/Assign.Conv3d_4d_0a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4d_0a_1x1_bn/beta/Initializer/zeros:08
Я
Conv3d_4d_1b_3x3_bn/beta:0Conv3d_4d_1b_3x3_bn/beta/Assign.Conv3d_4d_1b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4d_1b_3x3_bn/beta/Initializer/zeros:08
Я
Conv3d_4d_2b_3x3_bn/beta:0Conv3d_4d_2b_3x3_bn/beta/Assign.Conv3d_4d_2b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4d_2b_3x3_bn/beta/Initializer/zeros:08
Я
Conv3d_4d_3b_1x1_bn/beta:0Conv3d_4d_3b_1x1_bn/beta/Assign.Conv3d_4d_3b_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4d_3b_1x1_bn/beta/Initializer/zeros:08
Є
Conv3d_4e_1a_1x1_conv/kernel:0#Conv3d_4e_1a_1x1_conv/kernel/Assign2Conv3d_4e_1a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4e_1a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4e_2a_1x1_conv/kernel:0#Conv3d_4e_2a_1x1_conv/kernel/Assign2Conv3d_4e_2a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4e_2a_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_4e_1a_1x1_bn/beta:0Conv3d_4e_1a_1x1_bn/beta/Assign.Conv3d_4e_1a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4e_1a_1x1_bn/beta/Initializer/zeros:08
Я
Conv3d_4e_2a_1x1_bn/beta:0Conv3d_4e_2a_1x1_bn/beta/Assign.Conv3d_4e_2a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4e_2a_1x1_bn/beta/Initializer/zeros:08
Є
Conv3d_4e_0a_1x1_conv/kernel:0#Conv3d_4e_0a_1x1_conv/kernel/Assign2Conv3d_4e_0a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4e_0a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4e_1b_3x3_conv/kernel:0#Conv3d_4e_1b_3x3_conv/kernel/Assign2Conv3d_4e_1b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4e_1b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4e_2b_3x3_conv/kernel:0#Conv3d_4e_2b_3x3_conv/kernel/Assign2Conv3d_4e_2b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4e_2b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4e_3b_1x1_conv/kernel:0#Conv3d_4e_3b_1x1_conv/kernel/Assign2Conv3d_4e_3b_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4e_3b_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_4e_0a_1x1_bn/beta:0Conv3d_4e_0a_1x1_bn/beta/Assign.Conv3d_4e_0a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4e_0a_1x1_bn/beta/Initializer/zeros:08
Я
Conv3d_4e_1b_3x3_bn/beta:0Conv3d_4e_1b_3x3_bn/beta/Assign.Conv3d_4e_1b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4e_1b_3x3_bn/beta/Initializer/zeros:08
Я
Conv3d_4e_2b_3x3_bn/beta:0Conv3d_4e_2b_3x3_bn/beta/Assign.Conv3d_4e_2b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4e_2b_3x3_bn/beta/Initializer/zeros:08
Я
Conv3d_4e_3b_1x1_bn/beta:0Conv3d_4e_3b_1x1_bn/beta/Assign.Conv3d_4e_3b_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4e_3b_1x1_bn/beta/Initializer/zeros:08
Є
Conv3d_4f_1a_1x1_conv/kernel:0#Conv3d_4f_1a_1x1_conv/kernel/Assign2Conv3d_4f_1a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4f_1a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4f_2a_1x1_conv/kernel:0#Conv3d_4f_2a_1x1_conv/kernel/Assign2Conv3d_4f_2a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4f_2a_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_4f_1a_1x1_bn/beta:0Conv3d_4f_1a_1x1_bn/beta/Assign.Conv3d_4f_1a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4f_1a_1x1_bn/beta/Initializer/zeros:08
Я
Conv3d_4f_2a_1x1_bn/beta:0Conv3d_4f_2a_1x1_bn/beta/Assign.Conv3d_4f_2a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4f_2a_1x1_bn/beta/Initializer/zeros:08
Є
Conv3d_4f_0a_1x1_conv/kernel:0#Conv3d_4f_0a_1x1_conv/kernel/Assign2Conv3d_4f_0a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4f_0a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4f_1b_3x3_conv/kernel:0#Conv3d_4f_1b_3x3_conv/kernel/Assign2Conv3d_4f_1b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4f_1b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4f_2b_3x3_conv/kernel:0#Conv3d_4f_2b_3x3_conv/kernel/Assign2Conv3d_4f_2b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4f_2b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4f_3b_1x1_conv/kernel:0#Conv3d_4f_3b_1x1_conv/kernel/Assign2Conv3d_4f_3b_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4f_3b_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_4f_0a_1x1_bn/beta:0Conv3d_4f_0a_1x1_bn/beta/Assign.Conv3d_4f_0a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4f_0a_1x1_bn/beta/Initializer/zeros:08
Я
Conv3d_4f_1b_3x3_bn/beta:0Conv3d_4f_1b_3x3_bn/beta/Assign.Conv3d_4f_1b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4f_1b_3x3_bn/beta/Initializer/zeros:08
Я
Conv3d_4f_2b_3x3_bn/beta:0Conv3d_4f_2b_3x3_bn/beta/Assign.Conv3d_4f_2b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4f_2b_3x3_bn/beta/Initializer/zeros:08
Я
Conv3d_4f_3b_1x1_bn/beta:0Conv3d_4f_3b_1x1_bn/beta/Assign.Conv3d_4f_3b_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4f_3b_1x1_bn/beta/Initializer/zeros:08
Є
Conv3d_5b_1a_1x1_conv/kernel:0#Conv3d_5b_1a_1x1_conv/kernel/Assign2Conv3d_5b_1a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_5b_1a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_5b_2a_1x1_conv/kernel:0#Conv3d_5b_2a_1x1_conv/kernel/Assign2Conv3d_5b_2a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_5b_2a_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_5b_1a_1x1_bn/beta:0Conv3d_5b_1a_1x1_bn/beta/Assign.Conv3d_5b_1a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_5b_1a_1x1_bn/beta/Initializer/zeros:08
Я
Conv3d_5b_2a_1x1_bn/beta:0Conv3d_5b_2a_1x1_bn/beta/Assign.Conv3d_5b_2a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_5b_2a_1x1_bn/beta/Initializer/zeros:08
Є
Conv3d_5b_0a_1x1_conv/kernel:0#Conv3d_5b_0a_1x1_conv/kernel/Assign2Conv3d_5b_0a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_5b_0a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_5b_1b_3x3_conv/kernel:0#Conv3d_5b_1b_3x3_conv/kernel/Assign2Conv3d_5b_1b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_5b_1b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_5b_2b_3x3_conv/kernel:0#Conv3d_5b_2b_3x3_conv/kernel/Assign2Conv3d_5b_2b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_5b_2b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_5b_3b_1x1_conv/kernel:0#Conv3d_5b_3b_1x1_conv/kernel/Assign2Conv3d_5b_3b_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_5b_3b_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_5b_0a_1x1_bn/beta:0Conv3d_5b_0a_1x1_bn/beta/Assign.Conv3d_5b_0a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_5b_0a_1x1_bn/beta/Initializer/zeros:08
Я
Conv3d_5b_1b_3x3_bn/beta:0Conv3d_5b_1b_3x3_bn/beta/Assign.Conv3d_5b_1b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_5b_1b_3x3_bn/beta/Initializer/zeros:08
Я
Conv3d_5b_2b_3x3_bn/beta:0Conv3d_5b_2b_3x3_bn/beta/Assign.Conv3d_5b_2b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_5b_2b_3x3_bn/beta/Initializer/zeros:08
Я
Conv3d_5b_3b_1x1_bn/beta:0Conv3d_5b_3b_1x1_bn/beta/Assign.Conv3d_5b_3b_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_5b_3b_1x1_bn/beta/Initializer/zeros:08
Є
Conv3d_5c_1a_1x1_conv/kernel:0#Conv3d_5c_1a_1x1_conv/kernel/Assign2Conv3d_5c_1a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_5c_1a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_5c_2a_1x1_conv/kernel:0#Conv3d_5c_2a_1x1_conv/kernel/Assign2Conv3d_5c_2a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_5c_2a_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_5c_1a_1x1_bn/beta:0Conv3d_5c_1a_1x1_bn/beta/Assign.Conv3d_5c_1a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_5c_1a_1x1_bn/beta/Initializer/zeros:08
Я
Conv3d_5c_2a_1x1_bn/beta:0Conv3d_5c_2a_1x1_bn/beta/Assign.Conv3d_5c_2a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_5c_2a_1x1_bn/beta/Initializer/zeros:08
Є
Conv3d_5c_0a_1x1_conv/kernel:0#Conv3d_5c_0a_1x1_conv/kernel/Assign2Conv3d_5c_0a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_5c_0a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_5c_1b_3x3_conv/kernel:0#Conv3d_5c_1b_3x3_conv/kernel/Assign2Conv3d_5c_1b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_5c_1b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_5c_2b_3x3_conv/kernel:0#Conv3d_5c_2b_3x3_conv/kernel/Assign2Conv3d_5c_2b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_5c_2b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_5c_3b_1x1_conv/kernel:0#Conv3d_5c_3b_1x1_conv/kernel/Assign2Conv3d_5c_3b_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_5c_3b_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_5c_0a_1x1_bn/beta:0Conv3d_5c_0a_1x1_bn/beta/Assign.Conv3d_5c_0a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_5c_0a_1x1_bn/beta/Initializer/zeros:08
Я
Conv3d_5c_1b_3x3_bn/beta:0Conv3d_5c_1b_3x3_bn/beta/Assign.Conv3d_5c_1b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_5c_1b_3x3_bn/beta/Initializer/zeros:08
Я
Conv3d_5c_2b_3x3_bn/beta:0Conv3d_5c_2b_3x3_bn/beta/Assign.Conv3d_5c_2b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_5c_2b_3x3_bn/beta/Initializer/zeros:08
Я
Conv3d_5c_3b_1x1_bn/beta:0Conv3d_5c_3b_1x1_bn/beta/Assign.Conv3d_5c_3b_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_5c_3b_1x1_bn/beta/Initializer/zeros:08
ђ
Conv3d_6a_1x1_conv/kernel:0 Conv3d_6a_1x1_conv/kernel/Assign/Conv3d_6a_1x1_conv/kernel/Read/ReadVariableOp:0(26Conv3d_6a_1x1_conv/kernel/Initializer/random_uniform:08
Ы
Conv3d_6a_1x1_conv/bias:0Conv3d_6a_1x1_conv/bias/Assign-Conv3d_6a_1x1_conv/bias/Read/ReadVariableOp:0(2+Conv3d_6a_1x1_conv/bias/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08"ЛО
	variablesьНшН
ђ
Conv3d_1a_7x7_conv/kernel:0 Conv3d_1a_7x7_conv/kernel/Assign/Conv3d_1a_7x7_conv/kernel/Read/ReadVariableOp:0(26Conv3d_1a_7x7_conv/kernel/Initializer/random_uniform:08
У
Conv3d_1a_7x7_bn/beta:0Conv3d_1a_7x7_bn/beta/Assign+Conv3d_1a_7x7_bn/beta/Read/ReadVariableOp:0(2)Conv3d_1a_7x7_bn/beta/Initializer/zeros:08
±
Conv3d_1a_7x7_bn/moving_mean:0#Conv3d_1a_7x7_bn/moving_mean/Assign2Conv3d_1a_7x7_bn/moving_mean/Read/ReadVariableOp:0(20Conv3d_1a_7x7_bn/moving_mean/Initializer/zeros:0@H
ј
"Conv3d_1a_7x7_bn/moving_variance:0'Conv3d_1a_7x7_bn/moving_variance/Assign6Conv3d_1a_7x7_bn/moving_variance/Read/ReadVariableOp:0(23Conv3d_1a_7x7_bn/moving_variance/Initializer/ones:0@H
ђ
Conv3d_2b_1x1_conv/kernel:0 Conv3d_2b_1x1_conv/kernel/Assign/Conv3d_2b_1x1_conv/kernel/Read/ReadVariableOp:0(26Conv3d_2b_1x1_conv/kernel/Initializer/random_uniform:08
У
Conv3d_2b_1x1_bn/beta:0Conv3d_2b_1x1_bn/beta/Assign+Conv3d_2b_1x1_bn/beta/Read/ReadVariableOp:0(2)Conv3d_2b_1x1_bn/beta/Initializer/zeros:08
±
Conv3d_2b_1x1_bn/moving_mean:0#Conv3d_2b_1x1_bn/moving_mean/Assign2Conv3d_2b_1x1_bn/moving_mean/Read/ReadVariableOp:0(20Conv3d_2b_1x1_bn/moving_mean/Initializer/zeros:0@H
ј
"Conv3d_2b_1x1_bn/moving_variance:0'Conv3d_2b_1x1_bn/moving_variance/Assign6Conv3d_2b_1x1_bn/moving_variance/Read/ReadVariableOp:0(23Conv3d_2b_1x1_bn/moving_variance/Initializer/ones:0@H
ђ
Conv3d_2c_3x3_conv/kernel:0 Conv3d_2c_3x3_conv/kernel/Assign/Conv3d_2c_3x3_conv/kernel/Read/ReadVariableOp:0(26Conv3d_2c_3x3_conv/kernel/Initializer/random_uniform:08
У
Conv3d_2c_3x3_bn/beta:0Conv3d_2c_3x3_bn/beta/Assign+Conv3d_2c_3x3_bn/beta/Read/ReadVariableOp:0(2)Conv3d_2c_3x3_bn/beta/Initializer/zeros:08
±
Conv3d_2c_3x3_bn/moving_mean:0#Conv3d_2c_3x3_bn/moving_mean/Assign2Conv3d_2c_3x3_bn/moving_mean/Read/ReadVariableOp:0(20Conv3d_2c_3x3_bn/moving_mean/Initializer/zeros:0@H
ј
"Conv3d_2c_3x3_bn/moving_variance:0'Conv3d_2c_3x3_bn/moving_variance/Assign6Conv3d_2c_3x3_bn/moving_variance/Read/ReadVariableOp:0(23Conv3d_2c_3x3_bn/moving_variance/Initializer/ones:0@H
Є
Conv3d_3b_1a_1x1_conv/kernel:0#Conv3d_3b_1a_1x1_conv/kernel/Assign2Conv3d_3b_1a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_3b_1a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_3b_2a_1x1_conv/kernel:0#Conv3d_3b_2a_1x1_conv/kernel/Assign2Conv3d_3b_2a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_3b_2a_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_3b_1a_1x1_bn/beta:0Conv3d_3b_1a_1x1_bn/beta/Assign.Conv3d_3b_1a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_3b_1a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_3b_1a_1x1_bn/moving_mean:0&Conv3d_3b_1a_1x1_bn/moving_mean/Assign5Conv3d_3b_1a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_3b_1a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_3b_1a_1x1_bn/moving_variance:0*Conv3d_3b_1a_1x1_bn/moving_variance/Assign9Conv3d_3b_1a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_3b_1a_1x1_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_3b_2a_1x1_bn/beta:0Conv3d_3b_2a_1x1_bn/beta/Assign.Conv3d_3b_2a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_3b_2a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_3b_2a_1x1_bn/moving_mean:0&Conv3d_3b_2a_1x1_bn/moving_mean/Assign5Conv3d_3b_2a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_3b_2a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_3b_2a_1x1_bn/moving_variance:0*Conv3d_3b_2a_1x1_bn/moving_variance/Assign9Conv3d_3b_2a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_3b_2a_1x1_bn/moving_variance/Initializer/ones:0@H
Є
Conv3d_3b_0a_1x1_conv/kernel:0#Conv3d_3b_0a_1x1_conv/kernel/Assign2Conv3d_3b_0a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_3b_0a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_3b_1b_3x3_conv/kernel:0#Conv3d_3b_1b_3x3_conv/kernel/Assign2Conv3d_3b_1b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_3b_1b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_3b_2b_3x3_conv/kernel:0#Conv3d_3b_2b_3x3_conv/kernel/Assign2Conv3d_3b_2b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_3b_2b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_3b_3b_1x1_conv/kernel:0#Conv3d_3b_3b_1x1_conv/kernel/Assign2Conv3d_3b_3b_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_3b_3b_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_3b_0a_1x1_bn/beta:0Conv3d_3b_0a_1x1_bn/beta/Assign.Conv3d_3b_0a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_3b_0a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_3b_0a_1x1_bn/moving_mean:0&Conv3d_3b_0a_1x1_bn/moving_mean/Assign5Conv3d_3b_0a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_3b_0a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_3b_0a_1x1_bn/moving_variance:0*Conv3d_3b_0a_1x1_bn/moving_variance/Assign9Conv3d_3b_0a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_3b_0a_1x1_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_3b_1b_3x3_bn/beta:0Conv3d_3b_1b_3x3_bn/beta/Assign.Conv3d_3b_1b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_3b_1b_3x3_bn/beta/Initializer/zeros:08
љ
!Conv3d_3b_1b_3x3_bn/moving_mean:0&Conv3d_3b_1b_3x3_bn/moving_mean/Assign5Conv3d_3b_1b_3x3_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_3b_1b_3x3_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_3b_1b_3x3_bn/moving_variance:0*Conv3d_3b_1b_3x3_bn/moving_variance/Assign9Conv3d_3b_1b_3x3_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_3b_1b_3x3_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_3b_2b_3x3_bn/beta:0Conv3d_3b_2b_3x3_bn/beta/Assign.Conv3d_3b_2b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_3b_2b_3x3_bn/beta/Initializer/zeros:08
љ
!Conv3d_3b_2b_3x3_bn/moving_mean:0&Conv3d_3b_2b_3x3_bn/moving_mean/Assign5Conv3d_3b_2b_3x3_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_3b_2b_3x3_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_3b_2b_3x3_bn/moving_variance:0*Conv3d_3b_2b_3x3_bn/moving_variance/Assign9Conv3d_3b_2b_3x3_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_3b_2b_3x3_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_3b_3b_1x1_bn/beta:0Conv3d_3b_3b_1x1_bn/beta/Assign.Conv3d_3b_3b_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_3b_3b_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_3b_3b_1x1_bn/moving_mean:0&Conv3d_3b_3b_1x1_bn/moving_mean/Assign5Conv3d_3b_3b_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_3b_3b_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_3b_3b_1x1_bn/moving_variance:0*Conv3d_3b_3b_1x1_bn/moving_variance/Assign9Conv3d_3b_3b_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_3b_3b_1x1_bn/moving_variance/Initializer/ones:0@H
Є
Conv3d_3c_1a_1x1_conv/kernel:0#Conv3d_3c_1a_1x1_conv/kernel/Assign2Conv3d_3c_1a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_3c_1a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_3c_2a_1x1_conv/kernel:0#Conv3d_3c_2a_1x1_conv/kernel/Assign2Conv3d_3c_2a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_3c_2a_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_3c_1a_1x1_bn/beta:0Conv3d_3c_1a_1x1_bn/beta/Assign.Conv3d_3c_1a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_3c_1a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_3c_1a_1x1_bn/moving_mean:0&Conv3d_3c_1a_1x1_bn/moving_mean/Assign5Conv3d_3c_1a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_3c_1a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_3c_1a_1x1_bn/moving_variance:0*Conv3d_3c_1a_1x1_bn/moving_variance/Assign9Conv3d_3c_1a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_3c_1a_1x1_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_3c_2a_1x1_bn/beta:0Conv3d_3c_2a_1x1_bn/beta/Assign.Conv3d_3c_2a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_3c_2a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_3c_2a_1x1_bn/moving_mean:0&Conv3d_3c_2a_1x1_bn/moving_mean/Assign5Conv3d_3c_2a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_3c_2a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_3c_2a_1x1_bn/moving_variance:0*Conv3d_3c_2a_1x1_bn/moving_variance/Assign9Conv3d_3c_2a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_3c_2a_1x1_bn/moving_variance/Initializer/ones:0@H
Є
Conv3d_3c_0a_1x1_conv/kernel:0#Conv3d_3c_0a_1x1_conv/kernel/Assign2Conv3d_3c_0a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_3c_0a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_3c_1b_3x3_conv/kernel:0#Conv3d_3c_1b_3x3_conv/kernel/Assign2Conv3d_3c_1b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_3c_1b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_3c_2b_3x3_conv/kernel:0#Conv3d_3c_2b_3x3_conv/kernel/Assign2Conv3d_3c_2b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_3c_2b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_3c_3b_1x1_conv/kernel:0#Conv3d_3c_3b_1x1_conv/kernel/Assign2Conv3d_3c_3b_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_3c_3b_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_3c_0a_1x1_bn/beta:0Conv3d_3c_0a_1x1_bn/beta/Assign.Conv3d_3c_0a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_3c_0a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_3c_0a_1x1_bn/moving_mean:0&Conv3d_3c_0a_1x1_bn/moving_mean/Assign5Conv3d_3c_0a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_3c_0a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_3c_0a_1x1_bn/moving_variance:0*Conv3d_3c_0a_1x1_bn/moving_variance/Assign9Conv3d_3c_0a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_3c_0a_1x1_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_3c_1b_3x3_bn/beta:0Conv3d_3c_1b_3x3_bn/beta/Assign.Conv3d_3c_1b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_3c_1b_3x3_bn/beta/Initializer/zeros:08
љ
!Conv3d_3c_1b_3x3_bn/moving_mean:0&Conv3d_3c_1b_3x3_bn/moving_mean/Assign5Conv3d_3c_1b_3x3_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_3c_1b_3x3_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_3c_1b_3x3_bn/moving_variance:0*Conv3d_3c_1b_3x3_bn/moving_variance/Assign9Conv3d_3c_1b_3x3_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_3c_1b_3x3_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_3c_2b_3x3_bn/beta:0Conv3d_3c_2b_3x3_bn/beta/Assign.Conv3d_3c_2b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_3c_2b_3x3_bn/beta/Initializer/zeros:08
љ
!Conv3d_3c_2b_3x3_bn/moving_mean:0&Conv3d_3c_2b_3x3_bn/moving_mean/Assign5Conv3d_3c_2b_3x3_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_3c_2b_3x3_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_3c_2b_3x3_bn/moving_variance:0*Conv3d_3c_2b_3x3_bn/moving_variance/Assign9Conv3d_3c_2b_3x3_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_3c_2b_3x3_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_3c_3b_1x1_bn/beta:0Conv3d_3c_3b_1x1_bn/beta/Assign.Conv3d_3c_3b_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_3c_3b_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_3c_3b_1x1_bn/moving_mean:0&Conv3d_3c_3b_1x1_bn/moving_mean/Assign5Conv3d_3c_3b_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_3c_3b_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_3c_3b_1x1_bn/moving_variance:0*Conv3d_3c_3b_1x1_bn/moving_variance/Assign9Conv3d_3c_3b_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_3c_3b_1x1_bn/moving_variance/Initializer/ones:0@H
Є
Conv3d_4b_1a_1x1_conv/kernel:0#Conv3d_4b_1a_1x1_conv/kernel/Assign2Conv3d_4b_1a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4b_1a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4b_2a_1x1_conv/kernel:0#Conv3d_4b_2a_1x1_conv/kernel/Assign2Conv3d_4b_2a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4b_2a_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_4b_1a_1x1_bn/beta:0Conv3d_4b_1a_1x1_bn/beta/Assign.Conv3d_4b_1a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4b_1a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_4b_1a_1x1_bn/moving_mean:0&Conv3d_4b_1a_1x1_bn/moving_mean/Assign5Conv3d_4b_1a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4b_1a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4b_1a_1x1_bn/moving_variance:0*Conv3d_4b_1a_1x1_bn/moving_variance/Assign9Conv3d_4b_1a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4b_1a_1x1_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_4b_2a_1x1_bn/beta:0Conv3d_4b_2a_1x1_bn/beta/Assign.Conv3d_4b_2a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4b_2a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_4b_2a_1x1_bn/moving_mean:0&Conv3d_4b_2a_1x1_bn/moving_mean/Assign5Conv3d_4b_2a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4b_2a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4b_2a_1x1_bn/moving_variance:0*Conv3d_4b_2a_1x1_bn/moving_variance/Assign9Conv3d_4b_2a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4b_2a_1x1_bn/moving_variance/Initializer/ones:0@H
Є
Conv3d_4b_0a_1x1_conv/kernel:0#Conv3d_4b_0a_1x1_conv/kernel/Assign2Conv3d_4b_0a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4b_0a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4b_1b_3x3_conv/kernel:0#Conv3d_4b_1b_3x3_conv/kernel/Assign2Conv3d_4b_1b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4b_1b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4b_2b_3x3_conv/kernel:0#Conv3d_4b_2b_3x3_conv/kernel/Assign2Conv3d_4b_2b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4b_2b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4b_3b_1x1_conv/kernel:0#Conv3d_4b_3b_1x1_conv/kernel/Assign2Conv3d_4b_3b_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4b_3b_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_4b_0a_1x1_bn/beta:0Conv3d_4b_0a_1x1_bn/beta/Assign.Conv3d_4b_0a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4b_0a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_4b_0a_1x1_bn/moving_mean:0&Conv3d_4b_0a_1x1_bn/moving_mean/Assign5Conv3d_4b_0a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4b_0a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4b_0a_1x1_bn/moving_variance:0*Conv3d_4b_0a_1x1_bn/moving_variance/Assign9Conv3d_4b_0a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4b_0a_1x1_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_4b_1b_3x3_bn/beta:0Conv3d_4b_1b_3x3_bn/beta/Assign.Conv3d_4b_1b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4b_1b_3x3_bn/beta/Initializer/zeros:08
љ
!Conv3d_4b_1b_3x3_bn/moving_mean:0&Conv3d_4b_1b_3x3_bn/moving_mean/Assign5Conv3d_4b_1b_3x3_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4b_1b_3x3_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4b_1b_3x3_bn/moving_variance:0*Conv3d_4b_1b_3x3_bn/moving_variance/Assign9Conv3d_4b_1b_3x3_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4b_1b_3x3_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_4b_2b_3x3_bn/beta:0Conv3d_4b_2b_3x3_bn/beta/Assign.Conv3d_4b_2b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4b_2b_3x3_bn/beta/Initializer/zeros:08
љ
!Conv3d_4b_2b_3x3_bn/moving_mean:0&Conv3d_4b_2b_3x3_bn/moving_mean/Assign5Conv3d_4b_2b_3x3_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4b_2b_3x3_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4b_2b_3x3_bn/moving_variance:0*Conv3d_4b_2b_3x3_bn/moving_variance/Assign9Conv3d_4b_2b_3x3_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4b_2b_3x3_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_4b_3b_1x1_bn/beta:0Conv3d_4b_3b_1x1_bn/beta/Assign.Conv3d_4b_3b_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4b_3b_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_4b_3b_1x1_bn/moving_mean:0&Conv3d_4b_3b_1x1_bn/moving_mean/Assign5Conv3d_4b_3b_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4b_3b_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4b_3b_1x1_bn/moving_variance:0*Conv3d_4b_3b_1x1_bn/moving_variance/Assign9Conv3d_4b_3b_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4b_3b_1x1_bn/moving_variance/Initializer/ones:0@H
Є
Conv3d_4c_1a_1x1_conv/kernel:0#Conv3d_4c_1a_1x1_conv/kernel/Assign2Conv3d_4c_1a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4c_1a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4c_2a_1x1_conv/kernel:0#Conv3d_4c_2a_1x1_conv/kernel/Assign2Conv3d_4c_2a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4c_2a_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_4c_1a_1x1_bn/beta:0Conv3d_4c_1a_1x1_bn/beta/Assign.Conv3d_4c_1a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4c_1a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_4c_1a_1x1_bn/moving_mean:0&Conv3d_4c_1a_1x1_bn/moving_mean/Assign5Conv3d_4c_1a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4c_1a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4c_1a_1x1_bn/moving_variance:0*Conv3d_4c_1a_1x1_bn/moving_variance/Assign9Conv3d_4c_1a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4c_1a_1x1_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_4c_2a_1x1_bn/beta:0Conv3d_4c_2a_1x1_bn/beta/Assign.Conv3d_4c_2a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4c_2a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_4c_2a_1x1_bn/moving_mean:0&Conv3d_4c_2a_1x1_bn/moving_mean/Assign5Conv3d_4c_2a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4c_2a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4c_2a_1x1_bn/moving_variance:0*Conv3d_4c_2a_1x1_bn/moving_variance/Assign9Conv3d_4c_2a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4c_2a_1x1_bn/moving_variance/Initializer/ones:0@H
Є
Conv3d_4c_0a_1x1_conv/kernel:0#Conv3d_4c_0a_1x1_conv/kernel/Assign2Conv3d_4c_0a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4c_0a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4c_1b_3x3_conv/kernel:0#Conv3d_4c_1b_3x3_conv/kernel/Assign2Conv3d_4c_1b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4c_1b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4c_2b_3x3_conv/kernel:0#Conv3d_4c_2b_3x3_conv/kernel/Assign2Conv3d_4c_2b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4c_2b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4c_3b_1x1_conv/kernel:0#Conv3d_4c_3b_1x1_conv/kernel/Assign2Conv3d_4c_3b_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4c_3b_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_4c_0a_1x1_bn/beta:0Conv3d_4c_0a_1x1_bn/beta/Assign.Conv3d_4c_0a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4c_0a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_4c_0a_1x1_bn/moving_mean:0&Conv3d_4c_0a_1x1_bn/moving_mean/Assign5Conv3d_4c_0a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4c_0a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4c_0a_1x1_bn/moving_variance:0*Conv3d_4c_0a_1x1_bn/moving_variance/Assign9Conv3d_4c_0a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4c_0a_1x1_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_4c_1b_3x3_bn/beta:0Conv3d_4c_1b_3x3_bn/beta/Assign.Conv3d_4c_1b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4c_1b_3x3_bn/beta/Initializer/zeros:08
љ
!Conv3d_4c_1b_3x3_bn/moving_mean:0&Conv3d_4c_1b_3x3_bn/moving_mean/Assign5Conv3d_4c_1b_3x3_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4c_1b_3x3_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4c_1b_3x3_bn/moving_variance:0*Conv3d_4c_1b_3x3_bn/moving_variance/Assign9Conv3d_4c_1b_3x3_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4c_1b_3x3_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_4c_2b_3x3_bn/beta:0Conv3d_4c_2b_3x3_bn/beta/Assign.Conv3d_4c_2b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4c_2b_3x3_bn/beta/Initializer/zeros:08
љ
!Conv3d_4c_2b_3x3_bn/moving_mean:0&Conv3d_4c_2b_3x3_bn/moving_mean/Assign5Conv3d_4c_2b_3x3_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4c_2b_3x3_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4c_2b_3x3_bn/moving_variance:0*Conv3d_4c_2b_3x3_bn/moving_variance/Assign9Conv3d_4c_2b_3x3_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4c_2b_3x3_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_4c_3b_1x1_bn/beta:0Conv3d_4c_3b_1x1_bn/beta/Assign.Conv3d_4c_3b_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4c_3b_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_4c_3b_1x1_bn/moving_mean:0&Conv3d_4c_3b_1x1_bn/moving_mean/Assign5Conv3d_4c_3b_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4c_3b_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4c_3b_1x1_bn/moving_variance:0*Conv3d_4c_3b_1x1_bn/moving_variance/Assign9Conv3d_4c_3b_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4c_3b_1x1_bn/moving_variance/Initializer/ones:0@H
Є
Conv3d_4d_1a_1x1_conv/kernel:0#Conv3d_4d_1a_1x1_conv/kernel/Assign2Conv3d_4d_1a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4d_1a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4d_2a_1x1_conv/kernel:0#Conv3d_4d_2a_1x1_conv/kernel/Assign2Conv3d_4d_2a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4d_2a_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_4d_1a_1x1_bn/beta:0Conv3d_4d_1a_1x1_bn/beta/Assign.Conv3d_4d_1a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4d_1a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_4d_1a_1x1_bn/moving_mean:0&Conv3d_4d_1a_1x1_bn/moving_mean/Assign5Conv3d_4d_1a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4d_1a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4d_1a_1x1_bn/moving_variance:0*Conv3d_4d_1a_1x1_bn/moving_variance/Assign9Conv3d_4d_1a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4d_1a_1x1_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_4d_2a_1x1_bn/beta:0Conv3d_4d_2a_1x1_bn/beta/Assign.Conv3d_4d_2a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4d_2a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_4d_2a_1x1_bn/moving_mean:0&Conv3d_4d_2a_1x1_bn/moving_mean/Assign5Conv3d_4d_2a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4d_2a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4d_2a_1x1_bn/moving_variance:0*Conv3d_4d_2a_1x1_bn/moving_variance/Assign9Conv3d_4d_2a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4d_2a_1x1_bn/moving_variance/Initializer/ones:0@H
Є
Conv3d_4d_0a_1x1_conv/kernel:0#Conv3d_4d_0a_1x1_conv/kernel/Assign2Conv3d_4d_0a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4d_0a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4d_1b_3x3_conv/kernel:0#Conv3d_4d_1b_3x3_conv/kernel/Assign2Conv3d_4d_1b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4d_1b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4d_2b_3x3_conv/kernel:0#Conv3d_4d_2b_3x3_conv/kernel/Assign2Conv3d_4d_2b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4d_2b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4d_3b_1x1_conv/kernel:0#Conv3d_4d_3b_1x1_conv/kernel/Assign2Conv3d_4d_3b_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4d_3b_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_4d_0a_1x1_bn/beta:0Conv3d_4d_0a_1x1_bn/beta/Assign.Conv3d_4d_0a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4d_0a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_4d_0a_1x1_bn/moving_mean:0&Conv3d_4d_0a_1x1_bn/moving_mean/Assign5Conv3d_4d_0a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4d_0a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4d_0a_1x1_bn/moving_variance:0*Conv3d_4d_0a_1x1_bn/moving_variance/Assign9Conv3d_4d_0a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4d_0a_1x1_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_4d_1b_3x3_bn/beta:0Conv3d_4d_1b_3x3_bn/beta/Assign.Conv3d_4d_1b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4d_1b_3x3_bn/beta/Initializer/zeros:08
љ
!Conv3d_4d_1b_3x3_bn/moving_mean:0&Conv3d_4d_1b_3x3_bn/moving_mean/Assign5Conv3d_4d_1b_3x3_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4d_1b_3x3_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4d_1b_3x3_bn/moving_variance:0*Conv3d_4d_1b_3x3_bn/moving_variance/Assign9Conv3d_4d_1b_3x3_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4d_1b_3x3_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_4d_2b_3x3_bn/beta:0Conv3d_4d_2b_3x3_bn/beta/Assign.Conv3d_4d_2b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4d_2b_3x3_bn/beta/Initializer/zeros:08
љ
!Conv3d_4d_2b_3x3_bn/moving_mean:0&Conv3d_4d_2b_3x3_bn/moving_mean/Assign5Conv3d_4d_2b_3x3_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4d_2b_3x3_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4d_2b_3x3_bn/moving_variance:0*Conv3d_4d_2b_3x3_bn/moving_variance/Assign9Conv3d_4d_2b_3x3_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4d_2b_3x3_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_4d_3b_1x1_bn/beta:0Conv3d_4d_3b_1x1_bn/beta/Assign.Conv3d_4d_3b_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4d_3b_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_4d_3b_1x1_bn/moving_mean:0&Conv3d_4d_3b_1x1_bn/moving_mean/Assign5Conv3d_4d_3b_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4d_3b_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4d_3b_1x1_bn/moving_variance:0*Conv3d_4d_3b_1x1_bn/moving_variance/Assign9Conv3d_4d_3b_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4d_3b_1x1_bn/moving_variance/Initializer/ones:0@H
Є
Conv3d_4e_1a_1x1_conv/kernel:0#Conv3d_4e_1a_1x1_conv/kernel/Assign2Conv3d_4e_1a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4e_1a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4e_2a_1x1_conv/kernel:0#Conv3d_4e_2a_1x1_conv/kernel/Assign2Conv3d_4e_2a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4e_2a_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_4e_1a_1x1_bn/beta:0Conv3d_4e_1a_1x1_bn/beta/Assign.Conv3d_4e_1a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4e_1a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_4e_1a_1x1_bn/moving_mean:0&Conv3d_4e_1a_1x1_bn/moving_mean/Assign5Conv3d_4e_1a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4e_1a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4e_1a_1x1_bn/moving_variance:0*Conv3d_4e_1a_1x1_bn/moving_variance/Assign9Conv3d_4e_1a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4e_1a_1x1_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_4e_2a_1x1_bn/beta:0Conv3d_4e_2a_1x1_bn/beta/Assign.Conv3d_4e_2a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4e_2a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_4e_2a_1x1_bn/moving_mean:0&Conv3d_4e_2a_1x1_bn/moving_mean/Assign5Conv3d_4e_2a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4e_2a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4e_2a_1x1_bn/moving_variance:0*Conv3d_4e_2a_1x1_bn/moving_variance/Assign9Conv3d_4e_2a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4e_2a_1x1_bn/moving_variance/Initializer/ones:0@H
Є
Conv3d_4e_0a_1x1_conv/kernel:0#Conv3d_4e_0a_1x1_conv/kernel/Assign2Conv3d_4e_0a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4e_0a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4e_1b_3x3_conv/kernel:0#Conv3d_4e_1b_3x3_conv/kernel/Assign2Conv3d_4e_1b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4e_1b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4e_2b_3x3_conv/kernel:0#Conv3d_4e_2b_3x3_conv/kernel/Assign2Conv3d_4e_2b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4e_2b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4e_3b_1x1_conv/kernel:0#Conv3d_4e_3b_1x1_conv/kernel/Assign2Conv3d_4e_3b_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4e_3b_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_4e_0a_1x1_bn/beta:0Conv3d_4e_0a_1x1_bn/beta/Assign.Conv3d_4e_0a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4e_0a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_4e_0a_1x1_bn/moving_mean:0&Conv3d_4e_0a_1x1_bn/moving_mean/Assign5Conv3d_4e_0a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4e_0a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4e_0a_1x1_bn/moving_variance:0*Conv3d_4e_0a_1x1_bn/moving_variance/Assign9Conv3d_4e_0a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4e_0a_1x1_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_4e_1b_3x3_bn/beta:0Conv3d_4e_1b_3x3_bn/beta/Assign.Conv3d_4e_1b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4e_1b_3x3_bn/beta/Initializer/zeros:08
љ
!Conv3d_4e_1b_3x3_bn/moving_mean:0&Conv3d_4e_1b_3x3_bn/moving_mean/Assign5Conv3d_4e_1b_3x3_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4e_1b_3x3_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4e_1b_3x3_bn/moving_variance:0*Conv3d_4e_1b_3x3_bn/moving_variance/Assign9Conv3d_4e_1b_3x3_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4e_1b_3x3_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_4e_2b_3x3_bn/beta:0Conv3d_4e_2b_3x3_bn/beta/Assign.Conv3d_4e_2b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4e_2b_3x3_bn/beta/Initializer/zeros:08
љ
!Conv3d_4e_2b_3x3_bn/moving_mean:0&Conv3d_4e_2b_3x3_bn/moving_mean/Assign5Conv3d_4e_2b_3x3_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4e_2b_3x3_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4e_2b_3x3_bn/moving_variance:0*Conv3d_4e_2b_3x3_bn/moving_variance/Assign9Conv3d_4e_2b_3x3_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4e_2b_3x3_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_4e_3b_1x1_bn/beta:0Conv3d_4e_3b_1x1_bn/beta/Assign.Conv3d_4e_3b_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4e_3b_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_4e_3b_1x1_bn/moving_mean:0&Conv3d_4e_3b_1x1_bn/moving_mean/Assign5Conv3d_4e_3b_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4e_3b_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4e_3b_1x1_bn/moving_variance:0*Conv3d_4e_3b_1x1_bn/moving_variance/Assign9Conv3d_4e_3b_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4e_3b_1x1_bn/moving_variance/Initializer/ones:0@H
Є
Conv3d_4f_1a_1x1_conv/kernel:0#Conv3d_4f_1a_1x1_conv/kernel/Assign2Conv3d_4f_1a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4f_1a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4f_2a_1x1_conv/kernel:0#Conv3d_4f_2a_1x1_conv/kernel/Assign2Conv3d_4f_2a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4f_2a_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_4f_1a_1x1_bn/beta:0Conv3d_4f_1a_1x1_bn/beta/Assign.Conv3d_4f_1a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4f_1a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_4f_1a_1x1_bn/moving_mean:0&Conv3d_4f_1a_1x1_bn/moving_mean/Assign5Conv3d_4f_1a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4f_1a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4f_1a_1x1_bn/moving_variance:0*Conv3d_4f_1a_1x1_bn/moving_variance/Assign9Conv3d_4f_1a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4f_1a_1x1_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_4f_2a_1x1_bn/beta:0Conv3d_4f_2a_1x1_bn/beta/Assign.Conv3d_4f_2a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4f_2a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_4f_2a_1x1_bn/moving_mean:0&Conv3d_4f_2a_1x1_bn/moving_mean/Assign5Conv3d_4f_2a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4f_2a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4f_2a_1x1_bn/moving_variance:0*Conv3d_4f_2a_1x1_bn/moving_variance/Assign9Conv3d_4f_2a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4f_2a_1x1_bn/moving_variance/Initializer/ones:0@H
Є
Conv3d_4f_0a_1x1_conv/kernel:0#Conv3d_4f_0a_1x1_conv/kernel/Assign2Conv3d_4f_0a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4f_0a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4f_1b_3x3_conv/kernel:0#Conv3d_4f_1b_3x3_conv/kernel/Assign2Conv3d_4f_1b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4f_1b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4f_2b_3x3_conv/kernel:0#Conv3d_4f_2b_3x3_conv/kernel/Assign2Conv3d_4f_2b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4f_2b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_4f_3b_1x1_conv/kernel:0#Conv3d_4f_3b_1x1_conv/kernel/Assign2Conv3d_4f_3b_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_4f_3b_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_4f_0a_1x1_bn/beta:0Conv3d_4f_0a_1x1_bn/beta/Assign.Conv3d_4f_0a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4f_0a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_4f_0a_1x1_bn/moving_mean:0&Conv3d_4f_0a_1x1_bn/moving_mean/Assign5Conv3d_4f_0a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4f_0a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4f_0a_1x1_bn/moving_variance:0*Conv3d_4f_0a_1x1_bn/moving_variance/Assign9Conv3d_4f_0a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4f_0a_1x1_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_4f_1b_3x3_bn/beta:0Conv3d_4f_1b_3x3_bn/beta/Assign.Conv3d_4f_1b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4f_1b_3x3_bn/beta/Initializer/zeros:08
љ
!Conv3d_4f_1b_3x3_bn/moving_mean:0&Conv3d_4f_1b_3x3_bn/moving_mean/Assign5Conv3d_4f_1b_3x3_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4f_1b_3x3_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4f_1b_3x3_bn/moving_variance:0*Conv3d_4f_1b_3x3_bn/moving_variance/Assign9Conv3d_4f_1b_3x3_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4f_1b_3x3_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_4f_2b_3x3_bn/beta:0Conv3d_4f_2b_3x3_bn/beta/Assign.Conv3d_4f_2b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4f_2b_3x3_bn/beta/Initializer/zeros:08
љ
!Conv3d_4f_2b_3x3_bn/moving_mean:0&Conv3d_4f_2b_3x3_bn/moving_mean/Assign5Conv3d_4f_2b_3x3_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4f_2b_3x3_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4f_2b_3x3_bn/moving_variance:0*Conv3d_4f_2b_3x3_bn/moving_variance/Assign9Conv3d_4f_2b_3x3_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4f_2b_3x3_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_4f_3b_1x1_bn/beta:0Conv3d_4f_3b_1x1_bn/beta/Assign.Conv3d_4f_3b_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_4f_3b_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_4f_3b_1x1_bn/moving_mean:0&Conv3d_4f_3b_1x1_bn/moving_mean/Assign5Conv3d_4f_3b_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_4f_3b_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_4f_3b_1x1_bn/moving_variance:0*Conv3d_4f_3b_1x1_bn/moving_variance/Assign9Conv3d_4f_3b_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_4f_3b_1x1_bn/moving_variance/Initializer/ones:0@H
Є
Conv3d_5b_1a_1x1_conv/kernel:0#Conv3d_5b_1a_1x1_conv/kernel/Assign2Conv3d_5b_1a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_5b_1a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_5b_2a_1x1_conv/kernel:0#Conv3d_5b_2a_1x1_conv/kernel/Assign2Conv3d_5b_2a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_5b_2a_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_5b_1a_1x1_bn/beta:0Conv3d_5b_1a_1x1_bn/beta/Assign.Conv3d_5b_1a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_5b_1a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_5b_1a_1x1_bn/moving_mean:0&Conv3d_5b_1a_1x1_bn/moving_mean/Assign5Conv3d_5b_1a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_5b_1a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_5b_1a_1x1_bn/moving_variance:0*Conv3d_5b_1a_1x1_bn/moving_variance/Assign9Conv3d_5b_1a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_5b_1a_1x1_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_5b_2a_1x1_bn/beta:0Conv3d_5b_2a_1x1_bn/beta/Assign.Conv3d_5b_2a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_5b_2a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_5b_2a_1x1_bn/moving_mean:0&Conv3d_5b_2a_1x1_bn/moving_mean/Assign5Conv3d_5b_2a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_5b_2a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_5b_2a_1x1_bn/moving_variance:0*Conv3d_5b_2a_1x1_bn/moving_variance/Assign9Conv3d_5b_2a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_5b_2a_1x1_bn/moving_variance/Initializer/ones:0@H
Є
Conv3d_5b_0a_1x1_conv/kernel:0#Conv3d_5b_0a_1x1_conv/kernel/Assign2Conv3d_5b_0a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_5b_0a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_5b_1b_3x3_conv/kernel:0#Conv3d_5b_1b_3x3_conv/kernel/Assign2Conv3d_5b_1b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_5b_1b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_5b_2b_3x3_conv/kernel:0#Conv3d_5b_2b_3x3_conv/kernel/Assign2Conv3d_5b_2b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_5b_2b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_5b_3b_1x1_conv/kernel:0#Conv3d_5b_3b_1x1_conv/kernel/Assign2Conv3d_5b_3b_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_5b_3b_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_5b_0a_1x1_bn/beta:0Conv3d_5b_0a_1x1_bn/beta/Assign.Conv3d_5b_0a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_5b_0a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_5b_0a_1x1_bn/moving_mean:0&Conv3d_5b_0a_1x1_bn/moving_mean/Assign5Conv3d_5b_0a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_5b_0a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_5b_0a_1x1_bn/moving_variance:0*Conv3d_5b_0a_1x1_bn/moving_variance/Assign9Conv3d_5b_0a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_5b_0a_1x1_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_5b_1b_3x3_bn/beta:0Conv3d_5b_1b_3x3_bn/beta/Assign.Conv3d_5b_1b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_5b_1b_3x3_bn/beta/Initializer/zeros:08
љ
!Conv3d_5b_1b_3x3_bn/moving_mean:0&Conv3d_5b_1b_3x3_bn/moving_mean/Assign5Conv3d_5b_1b_3x3_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_5b_1b_3x3_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_5b_1b_3x3_bn/moving_variance:0*Conv3d_5b_1b_3x3_bn/moving_variance/Assign9Conv3d_5b_1b_3x3_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_5b_1b_3x3_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_5b_2b_3x3_bn/beta:0Conv3d_5b_2b_3x3_bn/beta/Assign.Conv3d_5b_2b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_5b_2b_3x3_bn/beta/Initializer/zeros:08
љ
!Conv3d_5b_2b_3x3_bn/moving_mean:0&Conv3d_5b_2b_3x3_bn/moving_mean/Assign5Conv3d_5b_2b_3x3_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_5b_2b_3x3_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_5b_2b_3x3_bn/moving_variance:0*Conv3d_5b_2b_3x3_bn/moving_variance/Assign9Conv3d_5b_2b_3x3_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_5b_2b_3x3_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_5b_3b_1x1_bn/beta:0Conv3d_5b_3b_1x1_bn/beta/Assign.Conv3d_5b_3b_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_5b_3b_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_5b_3b_1x1_bn/moving_mean:0&Conv3d_5b_3b_1x1_bn/moving_mean/Assign5Conv3d_5b_3b_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_5b_3b_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_5b_3b_1x1_bn/moving_variance:0*Conv3d_5b_3b_1x1_bn/moving_variance/Assign9Conv3d_5b_3b_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_5b_3b_1x1_bn/moving_variance/Initializer/ones:0@H
Є
Conv3d_5c_1a_1x1_conv/kernel:0#Conv3d_5c_1a_1x1_conv/kernel/Assign2Conv3d_5c_1a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_5c_1a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_5c_2a_1x1_conv/kernel:0#Conv3d_5c_2a_1x1_conv/kernel/Assign2Conv3d_5c_2a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_5c_2a_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_5c_1a_1x1_bn/beta:0Conv3d_5c_1a_1x1_bn/beta/Assign.Conv3d_5c_1a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_5c_1a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_5c_1a_1x1_bn/moving_mean:0&Conv3d_5c_1a_1x1_bn/moving_mean/Assign5Conv3d_5c_1a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_5c_1a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_5c_1a_1x1_bn/moving_variance:0*Conv3d_5c_1a_1x1_bn/moving_variance/Assign9Conv3d_5c_1a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_5c_1a_1x1_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_5c_2a_1x1_bn/beta:0Conv3d_5c_2a_1x1_bn/beta/Assign.Conv3d_5c_2a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_5c_2a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_5c_2a_1x1_bn/moving_mean:0&Conv3d_5c_2a_1x1_bn/moving_mean/Assign5Conv3d_5c_2a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_5c_2a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_5c_2a_1x1_bn/moving_variance:0*Conv3d_5c_2a_1x1_bn/moving_variance/Assign9Conv3d_5c_2a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_5c_2a_1x1_bn/moving_variance/Initializer/ones:0@H
Є
Conv3d_5c_0a_1x1_conv/kernel:0#Conv3d_5c_0a_1x1_conv/kernel/Assign2Conv3d_5c_0a_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_5c_0a_1x1_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_5c_1b_3x3_conv/kernel:0#Conv3d_5c_1b_3x3_conv/kernel/Assign2Conv3d_5c_1b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_5c_1b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_5c_2b_3x3_conv/kernel:0#Conv3d_5c_2b_3x3_conv/kernel/Assign2Conv3d_5c_2b_3x3_conv/kernel/Read/ReadVariableOp:0(29Conv3d_5c_2b_3x3_conv/kernel/Initializer/random_uniform:08
Є
Conv3d_5c_3b_1x1_conv/kernel:0#Conv3d_5c_3b_1x1_conv/kernel/Assign2Conv3d_5c_3b_1x1_conv/kernel/Read/ReadVariableOp:0(29Conv3d_5c_3b_1x1_conv/kernel/Initializer/random_uniform:08
Я
Conv3d_5c_0a_1x1_bn/beta:0Conv3d_5c_0a_1x1_bn/beta/Assign.Conv3d_5c_0a_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_5c_0a_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_5c_0a_1x1_bn/moving_mean:0&Conv3d_5c_0a_1x1_bn/moving_mean/Assign5Conv3d_5c_0a_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_5c_0a_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_5c_0a_1x1_bn/moving_variance:0*Conv3d_5c_0a_1x1_bn/moving_variance/Assign9Conv3d_5c_0a_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_5c_0a_1x1_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_5c_1b_3x3_bn/beta:0Conv3d_5c_1b_3x3_bn/beta/Assign.Conv3d_5c_1b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_5c_1b_3x3_bn/beta/Initializer/zeros:08
љ
!Conv3d_5c_1b_3x3_bn/moving_mean:0&Conv3d_5c_1b_3x3_bn/moving_mean/Assign5Conv3d_5c_1b_3x3_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_5c_1b_3x3_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_5c_1b_3x3_bn/moving_variance:0*Conv3d_5c_1b_3x3_bn/moving_variance/Assign9Conv3d_5c_1b_3x3_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_5c_1b_3x3_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_5c_2b_3x3_bn/beta:0Conv3d_5c_2b_3x3_bn/beta/Assign.Conv3d_5c_2b_3x3_bn/beta/Read/ReadVariableOp:0(2,Conv3d_5c_2b_3x3_bn/beta/Initializer/zeros:08
љ
!Conv3d_5c_2b_3x3_bn/moving_mean:0&Conv3d_5c_2b_3x3_bn/moving_mean/Assign5Conv3d_5c_2b_3x3_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_5c_2b_3x3_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_5c_2b_3x3_bn/moving_variance:0*Conv3d_5c_2b_3x3_bn/moving_variance/Assign9Conv3d_5c_2b_3x3_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_5c_2b_3x3_bn/moving_variance/Initializer/ones:0@H
Я
Conv3d_5c_3b_1x1_bn/beta:0Conv3d_5c_3b_1x1_bn/beta/Assign.Conv3d_5c_3b_1x1_bn/beta/Read/ReadVariableOp:0(2,Conv3d_5c_3b_1x1_bn/beta/Initializer/zeros:08
љ
!Conv3d_5c_3b_1x1_bn/moving_mean:0&Conv3d_5c_3b_1x1_bn/moving_mean/Assign5Conv3d_5c_3b_1x1_bn/moving_mean/Read/ReadVariableOp:0(23Conv3d_5c_3b_1x1_bn/moving_mean/Initializer/zeros:0@H
ћ
%Conv3d_5c_3b_1x1_bn/moving_variance:0*Conv3d_5c_3b_1x1_bn/moving_variance/Assign9Conv3d_5c_3b_1x1_bn/moving_variance/Read/ReadVariableOp:0(26Conv3d_5c_3b_1x1_bn/moving_variance/Initializer/ones:0@H
ђ
Conv3d_6a_1x1_conv/kernel:0 Conv3d_6a_1x1_conv/kernel/Assign/Conv3d_6a_1x1_conv/kernel/Read/ReadVariableOp:0(26Conv3d_6a_1x1_conv/kernel/Initializer/random_uniform:08
Ы
Conv3d_6a_1x1_conv/bias:0Conv3d_6a_1x1_conv/bias/Assign-Conv3d_6a_1x1_conv/bias/Read/ReadVariableOp:0(2+Conv3d_6a_1x1_conv/bias/Initializer/zeros:08
x
dense/kernel:0dense/kernel/Assign"dense/kernel/Read/ReadVariableOp:0(2)dense/kernel/Initializer/random_uniform:08
g
dense/bias:0dense/bias/Assign dense/bias/Read/ReadVariableOp:0(2dense/bias/Initializer/zeros:08
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H
[
decay:0decay/Assigndecay/Read/ReadVariableOp:0(2!decay/Initializer/initial_value:0H
{
learning_rate:0learning_rate/Assign#learning_rate/Read/ReadVariableOp:0(2)learning_rate/Initializer/initial_value:0H
g

momentum:0momentum/Assignmomentum/Read/ReadVariableOp:0(2$momentum/Initializer/initial_value:0H
≈
$Conv3d_1a_7x7_conv/kernel/momentum:0)Conv3d_1a_7x7_conv/kernel/momentum/Assign8Conv3d_1a_7x7_conv/kernel/momentum/Read/ReadVariableOp:0(26Conv3d_1a_7x7_conv/kernel/momentum/Initializer/zeros:0
µ
 Conv3d_1a_7x7_bn/beta/momentum:0%Conv3d_1a_7x7_bn/beta/momentum/Assign4Conv3d_1a_7x7_bn/beta/momentum/Read/ReadVariableOp:0(22Conv3d_1a_7x7_bn/beta/momentum/Initializer/zeros:0
≈
$Conv3d_2b_1x1_conv/kernel/momentum:0)Conv3d_2b_1x1_conv/kernel/momentum/Assign8Conv3d_2b_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(26Conv3d_2b_1x1_conv/kernel/momentum/Initializer/zeros:0
µ
 Conv3d_2b_1x1_bn/beta/momentum:0%Conv3d_2b_1x1_bn/beta/momentum/Assign4Conv3d_2b_1x1_bn/beta/momentum/Read/ReadVariableOp:0(22Conv3d_2b_1x1_bn/beta/momentum/Initializer/zeros:0
≈
$Conv3d_2c_3x3_conv/kernel/momentum:0)Conv3d_2c_3x3_conv/kernel/momentum/Assign8Conv3d_2c_3x3_conv/kernel/momentum/Read/ReadVariableOp:0(26Conv3d_2c_3x3_conv/kernel/momentum/Initializer/zeros:0
µ
 Conv3d_2c_3x3_bn/beta/momentum:0%Conv3d_2c_3x3_bn/beta/momentum/Assign4Conv3d_2c_3x3_bn/beta/momentum/Read/ReadVariableOp:0(22Conv3d_2c_3x3_bn/beta/momentum/Initializer/zeros:0
—
'Conv3d_3b_1a_1x1_conv/kernel/momentum:0,Conv3d_3b_1a_1x1_conv/kernel/momentum/Assign;Conv3d_3b_1a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_3b_1a_1x1_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_3b_2a_1x1_conv/kernel/momentum:0,Conv3d_3b_2a_1x1_conv/kernel/momentum/Assign;Conv3d_3b_2a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_3b_2a_1x1_conv/kernel/momentum/Initializer/zeros:0
Ѕ
#Conv3d_3b_1a_1x1_bn/beta/momentum:0(Conv3d_3b_1a_1x1_bn/beta/momentum/Assign7Conv3d_3b_1a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_3b_1a_1x1_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_3b_2a_1x1_bn/beta/momentum:0(Conv3d_3b_2a_1x1_bn/beta/momentum/Assign7Conv3d_3b_2a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_3b_2a_1x1_bn/beta/momentum/Initializer/zeros:0
—
'Conv3d_3b_0a_1x1_conv/kernel/momentum:0,Conv3d_3b_0a_1x1_conv/kernel/momentum/Assign;Conv3d_3b_0a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_3b_0a_1x1_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_3b_1b_3x3_conv/kernel/momentum:0,Conv3d_3b_1b_3x3_conv/kernel/momentum/Assign;Conv3d_3b_1b_3x3_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_3b_1b_3x3_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_3b_2b_3x3_conv/kernel/momentum:0,Conv3d_3b_2b_3x3_conv/kernel/momentum/Assign;Conv3d_3b_2b_3x3_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_3b_2b_3x3_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_3b_3b_1x1_conv/kernel/momentum:0,Conv3d_3b_3b_1x1_conv/kernel/momentum/Assign;Conv3d_3b_3b_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_3b_3b_1x1_conv/kernel/momentum/Initializer/zeros:0
Ѕ
#Conv3d_3b_0a_1x1_bn/beta/momentum:0(Conv3d_3b_0a_1x1_bn/beta/momentum/Assign7Conv3d_3b_0a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_3b_0a_1x1_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_3b_1b_3x3_bn/beta/momentum:0(Conv3d_3b_1b_3x3_bn/beta/momentum/Assign7Conv3d_3b_1b_3x3_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_3b_1b_3x3_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_3b_2b_3x3_bn/beta/momentum:0(Conv3d_3b_2b_3x3_bn/beta/momentum/Assign7Conv3d_3b_2b_3x3_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_3b_2b_3x3_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_3b_3b_1x1_bn/beta/momentum:0(Conv3d_3b_3b_1x1_bn/beta/momentum/Assign7Conv3d_3b_3b_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_3b_3b_1x1_bn/beta/momentum/Initializer/zeros:0
—
'Conv3d_3c_1a_1x1_conv/kernel/momentum:0,Conv3d_3c_1a_1x1_conv/kernel/momentum/Assign;Conv3d_3c_1a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_3c_1a_1x1_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_3c_2a_1x1_conv/kernel/momentum:0,Conv3d_3c_2a_1x1_conv/kernel/momentum/Assign;Conv3d_3c_2a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_3c_2a_1x1_conv/kernel/momentum/Initializer/zeros:0
Ѕ
#Conv3d_3c_1a_1x1_bn/beta/momentum:0(Conv3d_3c_1a_1x1_bn/beta/momentum/Assign7Conv3d_3c_1a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_3c_1a_1x1_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_3c_2a_1x1_bn/beta/momentum:0(Conv3d_3c_2a_1x1_bn/beta/momentum/Assign7Conv3d_3c_2a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_3c_2a_1x1_bn/beta/momentum/Initializer/zeros:0
—
'Conv3d_3c_0a_1x1_conv/kernel/momentum:0,Conv3d_3c_0a_1x1_conv/kernel/momentum/Assign;Conv3d_3c_0a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_3c_0a_1x1_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_3c_1b_3x3_conv/kernel/momentum:0,Conv3d_3c_1b_3x3_conv/kernel/momentum/Assign;Conv3d_3c_1b_3x3_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_3c_1b_3x3_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_3c_2b_3x3_conv/kernel/momentum:0,Conv3d_3c_2b_3x3_conv/kernel/momentum/Assign;Conv3d_3c_2b_3x3_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_3c_2b_3x3_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_3c_3b_1x1_conv/kernel/momentum:0,Conv3d_3c_3b_1x1_conv/kernel/momentum/Assign;Conv3d_3c_3b_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_3c_3b_1x1_conv/kernel/momentum/Initializer/zeros:0
Ѕ
#Conv3d_3c_0a_1x1_bn/beta/momentum:0(Conv3d_3c_0a_1x1_bn/beta/momentum/Assign7Conv3d_3c_0a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_3c_0a_1x1_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_3c_1b_3x3_bn/beta/momentum:0(Conv3d_3c_1b_3x3_bn/beta/momentum/Assign7Conv3d_3c_1b_3x3_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_3c_1b_3x3_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_3c_2b_3x3_bn/beta/momentum:0(Conv3d_3c_2b_3x3_bn/beta/momentum/Assign7Conv3d_3c_2b_3x3_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_3c_2b_3x3_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_3c_3b_1x1_bn/beta/momentum:0(Conv3d_3c_3b_1x1_bn/beta/momentum/Assign7Conv3d_3c_3b_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_3c_3b_1x1_bn/beta/momentum/Initializer/zeros:0
—
'Conv3d_4b_1a_1x1_conv/kernel/momentum:0,Conv3d_4b_1a_1x1_conv/kernel/momentum/Assign;Conv3d_4b_1a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4b_1a_1x1_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_4b_2a_1x1_conv/kernel/momentum:0,Conv3d_4b_2a_1x1_conv/kernel/momentum/Assign;Conv3d_4b_2a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4b_2a_1x1_conv/kernel/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4b_1a_1x1_bn/beta/momentum:0(Conv3d_4b_1a_1x1_bn/beta/momentum/Assign7Conv3d_4b_1a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4b_1a_1x1_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4b_2a_1x1_bn/beta/momentum:0(Conv3d_4b_2a_1x1_bn/beta/momentum/Assign7Conv3d_4b_2a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4b_2a_1x1_bn/beta/momentum/Initializer/zeros:0
—
'Conv3d_4b_0a_1x1_conv/kernel/momentum:0,Conv3d_4b_0a_1x1_conv/kernel/momentum/Assign;Conv3d_4b_0a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4b_0a_1x1_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_4b_1b_3x3_conv/kernel/momentum:0,Conv3d_4b_1b_3x3_conv/kernel/momentum/Assign;Conv3d_4b_1b_3x3_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4b_1b_3x3_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_4b_2b_3x3_conv/kernel/momentum:0,Conv3d_4b_2b_3x3_conv/kernel/momentum/Assign;Conv3d_4b_2b_3x3_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4b_2b_3x3_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_4b_3b_1x1_conv/kernel/momentum:0,Conv3d_4b_3b_1x1_conv/kernel/momentum/Assign;Conv3d_4b_3b_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4b_3b_1x1_conv/kernel/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4b_0a_1x1_bn/beta/momentum:0(Conv3d_4b_0a_1x1_bn/beta/momentum/Assign7Conv3d_4b_0a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4b_0a_1x1_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4b_1b_3x3_bn/beta/momentum:0(Conv3d_4b_1b_3x3_bn/beta/momentum/Assign7Conv3d_4b_1b_3x3_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4b_1b_3x3_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4b_2b_3x3_bn/beta/momentum:0(Conv3d_4b_2b_3x3_bn/beta/momentum/Assign7Conv3d_4b_2b_3x3_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4b_2b_3x3_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4b_3b_1x1_bn/beta/momentum:0(Conv3d_4b_3b_1x1_bn/beta/momentum/Assign7Conv3d_4b_3b_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4b_3b_1x1_bn/beta/momentum/Initializer/zeros:0
—
'Conv3d_4c_1a_1x1_conv/kernel/momentum:0,Conv3d_4c_1a_1x1_conv/kernel/momentum/Assign;Conv3d_4c_1a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4c_1a_1x1_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_4c_2a_1x1_conv/kernel/momentum:0,Conv3d_4c_2a_1x1_conv/kernel/momentum/Assign;Conv3d_4c_2a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4c_2a_1x1_conv/kernel/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4c_1a_1x1_bn/beta/momentum:0(Conv3d_4c_1a_1x1_bn/beta/momentum/Assign7Conv3d_4c_1a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4c_1a_1x1_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4c_2a_1x1_bn/beta/momentum:0(Conv3d_4c_2a_1x1_bn/beta/momentum/Assign7Conv3d_4c_2a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4c_2a_1x1_bn/beta/momentum/Initializer/zeros:0
—
'Conv3d_4c_0a_1x1_conv/kernel/momentum:0,Conv3d_4c_0a_1x1_conv/kernel/momentum/Assign;Conv3d_4c_0a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4c_0a_1x1_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_4c_1b_3x3_conv/kernel/momentum:0,Conv3d_4c_1b_3x3_conv/kernel/momentum/Assign;Conv3d_4c_1b_3x3_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4c_1b_3x3_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_4c_2b_3x3_conv/kernel/momentum:0,Conv3d_4c_2b_3x3_conv/kernel/momentum/Assign;Conv3d_4c_2b_3x3_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4c_2b_3x3_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_4c_3b_1x1_conv/kernel/momentum:0,Conv3d_4c_3b_1x1_conv/kernel/momentum/Assign;Conv3d_4c_3b_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4c_3b_1x1_conv/kernel/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4c_0a_1x1_bn/beta/momentum:0(Conv3d_4c_0a_1x1_bn/beta/momentum/Assign7Conv3d_4c_0a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4c_0a_1x1_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4c_1b_3x3_bn/beta/momentum:0(Conv3d_4c_1b_3x3_bn/beta/momentum/Assign7Conv3d_4c_1b_3x3_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4c_1b_3x3_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4c_2b_3x3_bn/beta/momentum:0(Conv3d_4c_2b_3x3_bn/beta/momentum/Assign7Conv3d_4c_2b_3x3_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4c_2b_3x3_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4c_3b_1x1_bn/beta/momentum:0(Conv3d_4c_3b_1x1_bn/beta/momentum/Assign7Conv3d_4c_3b_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4c_3b_1x1_bn/beta/momentum/Initializer/zeros:0
—
'Conv3d_4d_1a_1x1_conv/kernel/momentum:0,Conv3d_4d_1a_1x1_conv/kernel/momentum/Assign;Conv3d_4d_1a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4d_1a_1x1_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_4d_2a_1x1_conv/kernel/momentum:0,Conv3d_4d_2a_1x1_conv/kernel/momentum/Assign;Conv3d_4d_2a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4d_2a_1x1_conv/kernel/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4d_1a_1x1_bn/beta/momentum:0(Conv3d_4d_1a_1x1_bn/beta/momentum/Assign7Conv3d_4d_1a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4d_1a_1x1_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4d_2a_1x1_bn/beta/momentum:0(Conv3d_4d_2a_1x1_bn/beta/momentum/Assign7Conv3d_4d_2a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4d_2a_1x1_bn/beta/momentum/Initializer/zeros:0
—
'Conv3d_4d_0a_1x1_conv/kernel/momentum:0,Conv3d_4d_0a_1x1_conv/kernel/momentum/Assign;Conv3d_4d_0a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4d_0a_1x1_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_4d_1b_3x3_conv/kernel/momentum:0,Conv3d_4d_1b_3x3_conv/kernel/momentum/Assign;Conv3d_4d_1b_3x3_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4d_1b_3x3_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_4d_2b_3x3_conv/kernel/momentum:0,Conv3d_4d_2b_3x3_conv/kernel/momentum/Assign;Conv3d_4d_2b_3x3_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4d_2b_3x3_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_4d_3b_1x1_conv/kernel/momentum:0,Conv3d_4d_3b_1x1_conv/kernel/momentum/Assign;Conv3d_4d_3b_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4d_3b_1x1_conv/kernel/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4d_0a_1x1_bn/beta/momentum:0(Conv3d_4d_0a_1x1_bn/beta/momentum/Assign7Conv3d_4d_0a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4d_0a_1x1_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4d_1b_3x3_bn/beta/momentum:0(Conv3d_4d_1b_3x3_bn/beta/momentum/Assign7Conv3d_4d_1b_3x3_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4d_1b_3x3_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4d_2b_3x3_bn/beta/momentum:0(Conv3d_4d_2b_3x3_bn/beta/momentum/Assign7Conv3d_4d_2b_3x3_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4d_2b_3x3_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4d_3b_1x1_bn/beta/momentum:0(Conv3d_4d_3b_1x1_bn/beta/momentum/Assign7Conv3d_4d_3b_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4d_3b_1x1_bn/beta/momentum/Initializer/zeros:0
—
'Conv3d_4e_1a_1x1_conv/kernel/momentum:0,Conv3d_4e_1a_1x1_conv/kernel/momentum/Assign;Conv3d_4e_1a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4e_1a_1x1_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_4e_2a_1x1_conv/kernel/momentum:0,Conv3d_4e_2a_1x1_conv/kernel/momentum/Assign;Conv3d_4e_2a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4e_2a_1x1_conv/kernel/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4e_1a_1x1_bn/beta/momentum:0(Conv3d_4e_1a_1x1_bn/beta/momentum/Assign7Conv3d_4e_1a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4e_1a_1x1_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4e_2a_1x1_bn/beta/momentum:0(Conv3d_4e_2a_1x1_bn/beta/momentum/Assign7Conv3d_4e_2a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4e_2a_1x1_bn/beta/momentum/Initializer/zeros:0
—
'Conv3d_4e_0a_1x1_conv/kernel/momentum:0,Conv3d_4e_0a_1x1_conv/kernel/momentum/Assign;Conv3d_4e_0a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4e_0a_1x1_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_4e_1b_3x3_conv/kernel/momentum:0,Conv3d_4e_1b_3x3_conv/kernel/momentum/Assign;Conv3d_4e_1b_3x3_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4e_1b_3x3_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_4e_2b_3x3_conv/kernel/momentum:0,Conv3d_4e_2b_3x3_conv/kernel/momentum/Assign;Conv3d_4e_2b_3x3_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4e_2b_3x3_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_4e_3b_1x1_conv/kernel/momentum:0,Conv3d_4e_3b_1x1_conv/kernel/momentum/Assign;Conv3d_4e_3b_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4e_3b_1x1_conv/kernel/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4e_0a_1x1_bn/beta/momentum:0(Conv3d_4e_0a_1x1_bn/beta/momentum/Assign7Conv3d_4e_0a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4e_0a_1x1_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4e_1b_3x3_bn/beta/momentum:0(Conv3d_4e_1b_3x3_bn/beta/momentum/Assign7Conv3d_4e_1b_3x3_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4e_1b_3x3_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4e_2b_3x3_bn/beta/momentum:0(Conv3d_4e_2b_3x3_bn/beta/momentum/Assign7Conv3d_4e_2b_3x3_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4e_2b_3x3_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4e_3b_1x1_bn/beta/momentum:0(Conv3d_4e_3b_1x1_bn/beta/momentum/Assign7Conv3d_4e_3b_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4e_3b_1x1_bn/beta/momentum/Initializer/zeros:0
—
'Conv3d_4f_1a_1x1_conv/kernel/momentum:0,Conv3d_4f_1a_1x1_conv/kernel/momentum/Assign;Conv3d_4f_1a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4f_1a_1x1_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_4f_2a_1x1_conv/kernel/momentum:0,Conv3d_4f_2a_1x1_conv/kernel/momentum/Assign;Conv3d_4f_2a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4f_2a_1x1_conv/kernel/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4f_1a_1x1_bn/beta/momentum:0(Conv3d_4f_1a_1x1_bn/beta/momentum/Assign7Conv3d_4f_1a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4f_1a_1x1_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4f_2a_1x1_bn/beta/momentum:0(Conv3d_4f_2a_1x1_bn/beta/momentum/Assign7Conv3d_4f_2a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4f_2a_1x1_bn/beta/momentum/Initializer/zeros:0
—
'Conv3d_4f_0a_1x1_conv/kernel/momentum:0,Conv3d_4f_0a_1x1_conv/kernel/momentum/Assign;Conv3d_4f_0a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4f_0a_1x1_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_4f_1b_3x3_conv/kernel/momentum:0,Conv3d_4f_1b_3x3_conv/kernel/momentum/Assign;Conv3d_4f_1b_3x3_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4f_1b_3x3_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_4f_2b_3x3_conv/kernel/momentum:0,Conv3d_4f_2b_3x3_conv/kernel/momentum/Assign;Conv3d_4f_2b_3x3_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4f_2b_3x3_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_4f_3b_1x1_conv/kernel/momentum:0,Conv3d_4f_3b_1x1_conv/kernel/momentum/Assign;Conv3d_4f_3b_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_4f_3b_1x1_conv/kernel/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4f_0a_1x1_bn/beta/momentum:0(Conv3d_4f_0a_1x1_bn/beta/momentum/Assign7Conv3d_4f_0a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4f_0a_1x1_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4f_1b_3x3_bn/beta/momentum:0(Conv3d_4f_1b_3x3_bn/beta/momentum/Assign7Conv3d_4f_1b_3x3_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4f_1b_3x3_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4f_2b_3x3_bn/beta/momentum:0(Conv3d_4f_2b_3x3_bn/beta/momentum/Assign7Conv3d_4f_2b_3x3_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4f_2b_3x3_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_4f_3b_1x1_bn/beta/momentum:0(Conv3d_4f_3b_1x1_bn/beta/momentum/Assign7Conv3d_4f_3b_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_4f_3b_1x1_bn/beta/momentum/Initializer/zeros:0
—
'Conv3d_5b_1a_1x1_conv/kernel/momentum:0,Conv3d_5b_1a_1x1_conv/kernel/momentum/Assign;Conv3d_5b_1a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_5b_1a_1x1_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_5b_2a_1x1_conv/kernel/momentum:0,Conv3d_5b_2a_1x1_conv/kernel/momentum/Assign;Conv3d_5b_2a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_5b_2a_1x1_conv/kernel/momentum/Initializer/zeros:0
Ѕ
#Conv3d_5b_1a_1x1_bn/beta/momentum:0(Conv3d_5b_1a_1x1_bn/beta/momentum/Assign7Conv3d_5b_1a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_5b_1a_1x1_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_5b_2a_1x1_bn/beta/momentum:0(Conv3d_5b_2a_1x1_bn/beta/momentum/Assign7Conv3d_5b_2a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_5b_2a_1x1_bn/beta/momentum/Initializer/zeros:0
—
'Conv3d_5b_0a_1x1_conv/kernel/momentum:0,Conv3d_5b_0a_1x1_conv/kernel/momentum/Assign;Conv3d_5b_0a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_5b_0a_1x1_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_5b_1b_3x3_conv/kernel/momentum:0,Conv3d_5b_1b_3x3_conv/kernel/momentum/Assign;Conv3d_5b_1b_3x3_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_5b_1b_3x3_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_5b_2b_3x3_conv/kernel/momentum:0,Conv3d_5b_2b_3x3_conv/kernel/momentum/Assign;Conv3d_5b_2b_3x3_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_5b_2b_3x3_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_5b_3b_1x1_conv/kernel/momentum:0,Conv3d_5b_3b_1x1_conv/kernel/momentum/Assign;Conv3d_5b_3b_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_5b_3b_1x1_conv/kernel/momentum/Initializer/zeros:0
Ѕ
#Conv3d_5b_0a_1x1_bn/beta/momentum:0(Conv3d_5b_0a_1x1_bn/beta/momentum/Assign7Conv3d_5b_0a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_5b_0a_1x1_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_5b_1b_3x3_bn/beta/momentum:0(Conv3d_5b_1b_3x3_bn/beta/momentum/Assign7Conv3d_5b_1b_3x3_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_5b_1b_3x3_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_5b_2b_3x3_bn/beta/momentum:0(Conv3d_5b_2b_3x3_bn/beta/momentum/Assign7Conv3d_5b_2b_3x3_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_5b_2b_3x3_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_5b_3b_1x1_bn/beta/momentum:0(Conv3d_5b_3b_1x1_bn/beta/momentum/Assign7Conv3d_5b_3b_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_5b_3b_1x1_bn/beta/momentum/Initializer/zeros:0
—
'Conv3d_5c_1a_1x1_conv/kernel/momentum:0,Conv3d_5c_1a_1x1_conv/kernel/momentum/Assign;Conv3d_5c_1a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_5c_1a_1x1_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_5c_2a_1x1_conv/kernel/momentum:0,Conv3d_5c_2a_1x1_conv/kernel/momentum/Assign;Conv3d_5c_2a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_5c_2a_1x1_conv/kernel/momentum/Initializer/zeros:0
Ѕ
#Conv3d_5c_1a_1x1_bn/beta/momentum:0(Conv3d_5c_1a_1x1_bn/beta/momentum/Assign7Conv3d_5c_1a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_5c_1a_1x1_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_5c_2a_1x1_bn/beta/momentum:0(Conv3d_5c_2a_1x1_bn/beta/momentum/Assign7Conv3d_5c_2a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_5c_2a_1x1_bn/beta/momentum/Initializer/zeros:0
—
'Conv3d_5c_0a_1x1_conv/kernel/momentum:0,Conv3d_5c_0a_1x1_conv/kernel/momentum/Assign;Conv3d_5c_0a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_5c_0a_1x1_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_5c_1b_3x3_conv/kernel/momentum:0,Conv3d_5c_1b_3x3_conv/kernel/momentum/Assign;Conv3d_5c_1b_3x3_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_5c_1b_3x3_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_5c_2b_3x3_conv/kernel/momentum:0,Conv3d_5c_2b_3x3_conv/kernel/momentum/Assign;Conv3d_5c_2b_3x3_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_5c_2b_3x3_conv/kernel/momentum/Initializer/zeros:0
—
'Conv3d_5c_3b_1x1_conv/kernel/momentum:0,Conv3d_5c_3b_1x1_conv/kernel/momentum/Assign;Conv3d_5c_3b_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(29Conv3d_5c_3b_1x1_conv/kernel/momentum/Initializer/zeros:0
Ѕ
#Conv3d_5c_0a_1x1_bn/beta/momentum:0(Conv3d_5c_0a_1x1_bn/beta/momentum/Assign7Conv3d_5c_0a_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_5c_0a_1x1_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_5c_1b_3x3_bn/beta/momentum:0(Conv3d_5c_1b_3x3_bn/beta/momentum/Assign7Conv3d_5c_1b_3x3_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_5c_1b_3x3_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_5c_2b_3x3_bn/beta/momentum:0(Conv3d_5c_2b_3x3_bn/beta/momentum/Assign7Conv3d_5c_2b_3x3_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_5c_2b_3x3_bn/beta/momentum/Initializer/zeros:0
Ѕ
#Conv3d_5c_3b_1x1_bn/beta/momentum:0(Conv3d_5c_3b_1x1_bn/beta/momentum/Assign7Conv3d_5c_3b_1x1_bn/beta/momentum/Read/ReadVariableOp:0(25Conv3d_5c_3b_1x1_bn/beta/momentum/Initializer/zeros:0
≈
$Conv3d_6a_1x1_conv/kernel/momentum:0)Conv3d_6a_1x1_conv/kernel/momentum/Assign8Conv3d_6a_1x1_conv/kernel/momentum/Read/ReadVariableOp:0(26Conv3d_6a_1x1_conv/kernel/momentum/Initializer/zeros:0
љ
"Conv3d_6a_1x1_conv/bias/momentum:0'Conv3d_6a_1x1_conv/bias/momentum/Assign6Conv3d_6a_1x1_conv/bias/momentum/Read/ReadVariableOp:0(24Conv3d_6a_1x1_conv/bias/momentum/Initializer/zeros:0
С
dense/kernel/momentum:0dense/kernel/momentum/Assign+dense/kernel/momentum/Read/ReadVariableOp:0(2)dense/kernel/momentum/Initializer/zeros:0
Й
dense/bias/momentum:0dense/bias/momentum/Assign)dense/bias/momentum/Read/ReadVariableOp:0(2'dense/bias/momentum/Initializer/zeros:0*Ь
serving_defaultИ
8
images.
	input_1:0€€€€€€€€€ аа0
scores&
dense/Softmax:0€€€€€€€€€2tensorflow/serving/predict