��.
�!� 
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
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
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(�
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
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
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
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements(
handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
�
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.10.12v2.10.1-0-gfdfc646704c8��,
�
!decoder_lstm_1/lstm_cell_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!decoder_lstm_1/lstm_cell_1/bias/v
�
5decoder_lstm_1/lstm_cell_1/bias/v/Read/ReadVariableOpReadVariableOp!decoder_lstm_1/lstm_cell_1/bias/v*
_output_shapes	
:�*
dtype0
�
-decoder_lstm_1/lstm_cell_1/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*>
shared_name/-decoder_lstm_1/lstm_cell_1/recurrent_kernel/v
�
Adecoder_lstm_1/lstm_cell_1/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp-decoder_lstm_1/lstm_cell_1/recurrent_kernel/v*
_output_shapes
:	 �*
dtype0
�
#decoder_lstm_1/lstm_cell_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*4
shared_name%#decoder_lstm_1/lstm_cell_1/kernel/v
�
7decoder_lstm_1/lstm_cell_1/kernel/v/Read/ReadVariableOpReadVariableOp#decoder_lstm_1/lstm_cell_1/kernel/v*
_output_shapes
:	 �*
dtype0
�
encoder_lstm_1/lstm_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*0
shared_name!encoder_lstm_1/lstm_cell/bias/v
�
3encoder_lstm_1/lstm_cell/bias/v/Read/ReadVariableOpReadVariableOpencoder_lstm_1/lstm_cell/bias/v*
_output_shapes	
:�*
dtype0
�
+encoder_lstm_1/lstm_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*<
shared_name-+encoder_lstm_1/lstm_cell/recurrent_kernel/v
�
?encoder_lstm_1/lstm_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp+encoder_lstm_1/lstm_cell/recurrent_kernel/v*
_output_shapes
:	 �*
dtype0
�
!encoder_lstm_1/lstm_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*2
shared_name#!encoder_lstm_1/lstm_cell/kernel/v
�
5encoder_lstm_1/lstm_cell/kernel/v/Read/ReadVariableOpReadVariableOp!encoder_lstm_1/lstm_cell/kernel/v*
_output_shapes
:	 �*
dtype0
�
decoder_dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_namedecoder_dense/bias/v
z
(decoder_dense/bias/v/Read/ReadVariableOpReadVariableOpdecoder_dense/bias/v*
_output_shapes	
:�*
dtype0
�
decoder_dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*'
shared_namedecoder_dense/kernel/v
�
*decoder_dense/kernel/v/Read/ReadVariableOpReadVariableOpdecoder_dense/kernel/v*
_output_shapes
:	 �*
dtype0
�
shared_embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	� *.
shared_nameshared_embedding/embeddings/v
�
1shared_embedding/embeddings/v/Read/ReadVariableOpReadVariableOpshared_embedding/embeddings/v*
_output_shapes
:	� *
dtype0
�
!decoder_lstm_1/lstm_cell_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*2
shared_name#!decoder_lstm_1/lstm_cell_1/bias/m
�
5decoder_lstm_1/lstm_cell_1/bias/m/Read/ReadVariableOpReadVariableOp!decoder_lstm_1/lstm_cell_1/bias/m*
_output_shapes	
:�*
dtype0
�
-decoder_lstm_1/lstm_cell_1/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*>
shared_name/-decoder_lstm_1/lstm_cell_1/recurrent_kernel/m
�
Adecoder_lstm_1/lstm_cell_1/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp-decoder_lstm_1/lstm_cell_1/recurrent_kernel/m*
_output_shapes
:	 �*
dtype0
�
#decoder_lstm_1/lstm_cell_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*4
shared_name%#decoder_lstm_1/lstm_cell_1/kernel/m
�
7decoder_lstm_1/lstm_cell_1/kernel/m/Read/ReadVariableOpReadVariableOp#decoder_lstm_1/lstm_cell_1/kernel/m*
_output_shapes
:	 �*
dtype0
�
encoder_lstm_1/lstm_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*0
shared_name!encoder_lstm_1/lstm_cell/bias/m
�
3encoder_lstm_1/lstm_cell/bias/m/Read/ReadVariableOpReadVariableOpencoder_lstm_1/lstm_cell/bias/m*
_output_shapes	
:�*
dtype0
�
+encoder_lstm_1/lstm_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*<
shared_name-+encoder_lstm_1/lstm_cell/recurrent_kernel/m
�
?encoder_lstm_1/lstm_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp+encoder_lstm_1/lstm_cell/recurrent_kernel/m*
_output_shapes
:	 �*
dtype0
�
!encoder_lstm_1/lstm_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*2
shared_name#!encoder_lstm_1/lstm_cell/kernel/m
�
5encoder_lstm_1/lstm_cell/kernel/m/Read/ReadVariableOpReadVariableOp!encoder_lstm_1/lstm_cell/kernel/m*
_output_shapes
:	 �*
dtype0
�
decoder_dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_namedecoder_dense/bias/m
z
(decoder_dense/bias/m/Read/ReadVariableOpReadVariableOpdecoder_dense/bias/m*
_output_shapes	
:�*
dtype0
�
decoder_dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*'
shared_namedecoder_dense/kernel/m
�
*decoder_dense/kernel/m/Read/ReadVariableOpReadVariableOpdecoder_dense/kernel/m*
_output_shapes
:	 �*
dtype0
�
shared_embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	� *.
shared_nameshared_embedding/embeddings/m
�
1shared_embedding/embeddings/m/Read/ReadVariableOpReadVariableOpshared_embedding/embeddings/m*
_output_shapes
:	� *
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
�
decoder_lstm_1/lstm_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*0
shared_name!decoder_lstm_1/lstm_cell_1/bias
�
3decoder_lstm_1/lstm_cell_1/bias/Read/ReadVariableOpReadVariableOpdecoder_lstm_1/lstm_cell_1/bias*
_output_shapes	
:�*
dtype0
�
+decoder_lstm_1/lstm_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*<
shared_name-+decoder_lstm_1/lstm_cell_1/recurrent_kernel
�
?decoder_lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp+decoder_lstm_1/lstm_cell_1/recurrent_kernel*
_output_shapes
:	 �*
dtype0
�
!decoder_lstm_1/lstm_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*2
shared_name#!decoder_lstm_1/lstm_cell_1/kernel
�
5decoder_lstm_1/lstm_cell_1/kernel/Read/ReadVariableOpReadVariableOp!decoder_lstm_1/lstm_cell_1/kernel*
_output_shapes
:	 �*
dtype0
�
encoder_lstm_1/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*.
shared_nameencoder_lstm_1/lstm_cell/bias
�
1encoder_lstm_1/lstm_cell/bias/Read/ReadVariableOpReadVariableOpencoder_lstm_1/lstm_cell/bias*
_output_shapes	
:�*
dtype0
�
)encoder_lstm_1/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*:
shared_name+)encoder_lstm_1/lstm_cell/recurrent_kernel
�
=encoder_lstm_1/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp)encoder_lstm_1/lstm_cell/recurrent_kernel*
_output_shapes
:	 �*
dtype0
�
encoder_lstm_1/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*0
shared_name!encoder_lstm_1/lstm_cell/kernel
�
3encoder_lstm_1/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpencoder_lstm_1/lstm_cell/kernel*
_output_shapes
:	 �*
dtype0
}
decoder_dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_namedecoder_dense/bias
v
&decoder_dense/bias/Read/ReadVariableOpReadVariableOpdecoder_dense/bias*
_output_shapes	
:�*
dtype0
�
decoder_dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 �*%
shared_namedecoder_dense/kernel
~
(decoder_dense/kernel/Read/ReadVariableOpReadVariableOpdecoder_dense/kernel*
_output_shapes
:	 �*
dtype0
�
shared_embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	� *,
shared_nameshared_embedding/embeddings
�
/shared_embedding/embeddings/Read/ReadVariableOpReadVariableOpshared_embedding/embeddings*
_output_shapes
:	� *
dtype0
�
serving_default_decoder_inputsPlaceholder*'
_output_shapes
:���������i*
dtype0*
shape:���������i
�
serving_default_encoder_inputsPlaceholder*'
_output_shapes
:���������i*
dtype0*
shape:���������i
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_decoder_inputsserving_default_encoder_inputsshared_embedding/embeddingsencoder_lstm_1/lstm_cell/kernel)encoder_lstm_1/lstm_cell/recurrent_kernelencoder_lstm_1/lstm_cell/bias!decoder_lstm_1/lstm_cell_1/kernel+decoder_lstm_1/lstm_cell_1/recurrent_kerneldecoder_lstm_1/lstm_cell_1/biasdecoder_dense/kerneldecoder_dense/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������i�*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_263965

NoOpNoOp
�G
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�G
value�FB�F B�F
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
�
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses
&_random_generator
'cell
(
state_spec*
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias*
C
0
11
22
33
44
55
66
/7
08*
C
0
11
22
33
44
55
66
/7
08*
* 
�
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
<trace_0
=trace_1
>trace_2
?trace_3* 
6
@trace_0
Atrace_1
Btrace_2
Ctrace_3* 
* 
�m�/m�0m�1m�2m�3m�4m�5m�6m�v�/v�0v�1v�2v�3v�4v�5v�6v�*

Dserving_default* 

0*

0*
* 
�
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Jtrace_0* 

Ktrace_0* 
oi
VARIABLE_VALUEshared_embedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

10
21
32*

10
21
32*
* 
�

Lstates
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Rtrace_0
Strace_1
Ttrace_2
Utrace_3* 
6
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_3* 
* 
�
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses
`_random_generator
a
state_size

1kernel
2recurrent_kernel
3bias*
* 

40
51
62*

40
51
62*
* 
�

bstates
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*
6
htrace_0
itrace_1
jtrace_2
ktrace_3* 
6
ltrace_0
mtrace_1
ntrace_2
otrace_3* 
* 
�
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses
v_random_generator
w
state_size

4kernel
5recurrent_kernel
6bias*
* 

/0
01*

/0
01*
* 
�
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*

}trace_0* 

~trace_0* 
d^
VARIABLE_VALUEdecoder_dense/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEdecoder_dense/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEencoder_lstm_1/lstm_cell/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE)encoder_lstm_1/lstm_cell/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEencoder_lstm_1/lstm_cell/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!decoder_lstm_1/lstm_cell_1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE+decoder_lstm_1/lstm_cell_1/recurrent_kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEdecoder_lstm_1/lstm_cell_1/bias&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*

0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

10
21
32*

10
21
32*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 

'0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

40
51
62*

40
51
62*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
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
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
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

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
��
VARIABLE_VALUEshared_embedding/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEdecoder_dense/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEdecoder_dense/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!encoder_lstm_1/lstm_cell/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE+encoder_lstm_1/lstm_cell/recurrent_kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEencoder_lstm_1/lstm_cell/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE#decoder_lstm_1/lstm_cell_1/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE-decoder_lstm_1/lstm_cell_1/recurrent_kernel/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!decoder_lstm_1/lstm_cell_1/bias/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEshared_embedding/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEdecoder_dense/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEdecoder_dense/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!encoder_lstm_1/lstm_cell/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE+encoder_lstm_1/lstm_cell/recurrent_kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEencoder_lstm_1/lstm_cell/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE#decoder_lstm_1/lstm_cell_1/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE-decoder_lstm_1/lstm_cell_1/recurrent_kernel/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!decoder_lstm_1/lstm_cell_1/bias/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename/shared_embedding/embeddings/Read/ReadVariableOp(decoder_dense/kernel/Read/ReadVariableOp&decoder_dense/bias/Read/ReadVariableOp3encoder_lstm_1/lstm_cell/kernel/Read/ReadVariableOp=encoder_lstm_1/lstm_cell/recurrent_kernel/Read/ReadVariableOp1encoder_lstm_1/lstm_cell/bias/Read/ReadVariableOp5decoder_lstm_1/lstm_cell_1/kernel/Read/ReadVariableOp?decoder_lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOp3decoder_lstm_1/lstm_cell_1/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp1shared_embedding/embeddings/m/Read/ReadVariableOp*decoder_dense/kernel/m/Read/ReadVariableOp(decoder_dense/bias/m/Read/ReadVariableOp5encoder_lstm_1/lstm_cell/kernel/m/Read/ReadVariableOp?encoder_lstm_1/lstm_cell/recurrent_kernel/m/Read/ReadVariableOp3encoder_lstm_1/lstm_cell/bias/m/Read/ReadVariableOp7decoder_lstm_1/lstm_cell_1/kernel/m/Read/ReadVariableOpAdecoder_lstm_1/lstm_cell_1/recurrent_kernel/m/Read/ReadVariableOp5decoder_lstm_1/lstm_cell_1/bias/m/Read/ReadVariableOp1shared_embedding/embeddings/v/Read/ReadVariableOp*decoder_dense/kernel/v/Read/ReadVariableOp(decoder_dense/bias/v/Read/ReadVariableOp5encoder_lstm_1/lstm_cell/kernel/v/Read/ReadVariableOp?encoder_lstm_1/lstm_cell/recurrent_kernel/v/Read/ReadVariableOp3encoder_lstm_1/lstm_cell/bias/v/Read/ReadVariableOp7decoder_lstm_1/lstm_cell_1/kernel/v/Read/ReadVariableOpAdecoder_lstm_1/lstm_cell_1/recurrent_kernel/v/Read/ReadVariableOp5decoder_lstm_1/lstm_cell_1/bias/v/Read/ReadVariableOpConst*,
Tin%
#2!*
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
__inference__traced_save_267029
�	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameshared_embedding/embeddingsdecoder_dense/kerneldecoder_dense/biasencoder_lstm_1/lstm_cell/kernel)encoder_lstm_1/lstm_cell/recurrent_kernelencoder_lstm_1/lstm_cell/bias!decoder_lstm_1/lstm_cell_1/kernel+decoder_lstm_1/lstm_cell_1/recurrent_kerneldecoder_lstm_1/lstm_cell_1/biastotal_1count_1totalcountshared_embedding/embeddings/mdecoder_dense/kernel/mdecoder_dense/bias/m!encoder_lstm_1/lstm_cell/kernel/m+encoder_lstm_1/lstm_cell/recurrent_kernel/mencoder_lstm_1/lstm_cell/bias/m#decoder_lstm_1/lstm_cell_1/kernel/m-decoder_lstm_1/lstm_cell_1/recurrent_kernel/m!decoder_lstm_1/lstm_cell_1/bias/mshared_embedding/embeddings/vdecoder_dense/kernel/vdecoder_dense/bias/v!encoder_lstm_1/lstm_cell/kernel/v+encoder_lstm_1/lstm_cell/recurrent_kernel/vencoder_lstm_1/lstm_cell/bias/v#decoder_lstm_1/lstm_cell_1/kernel/v-decoder_lstm_1/lstm_cell_1/recurrent_kernel/v!decoder_lstm_1/lstm_cell_1/bias/v*+
Tin$
"2 *
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
"__inference__traced_restore_267132��+
�9
�
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_262617

inputs

states
states_11
matmul_readvariableop_resource:	 �3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:��������� R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?p
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:��������� O
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2����[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:��������� T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?t
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:��������� Q
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:�
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� s
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� o
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:��������� T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?t
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:��������� Q
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:�
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� s
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� o
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:��������� T
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?t
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:��������� Q
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:�
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� s
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� o
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:��������� W
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0k
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:��������� W
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� N
ReluRelusplit:output:2*
T0*'
_output_shapes
:��������� _
mul_2MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:��������� V
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:��������� K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:��������� c
mul_3MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:��������� X
IdentityIdentity	mul_3:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_1Identity	mul_3:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:��������� :��������� :��������� : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates
�{
�
.seq2seq_model_encoder_lstm_1_while_body_261668V
Rseq2seq_model_encoder_lstm_1_while_seq2seq_model_encoder_lstm_1_while_loop_counter\
Xseq2seq_model_encoder_lstm_1_while_seq2seq_model_encoder_lstm_1_while_maximum_iterations2
.seq2seq_model_encoder_lstm_1_while_placeholder4
0seq2seq_model_encoder_lstm_1_while_placeholder_14
0seq2seq_model_encoder_lstm_1_while_placeholder_24
0seq2seq_model_encoder_lstm_1_while_placeholder_34
0seq2seq_model_encoder_lstm_1_while_placeholder_4U
Qseq2seq_model_encoder_lstm_1_while_seq2seq_model_encoder_lstm_1_strided_slice_1_0�
�seq2seq_model_encoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_seq2seq_model_encoder_lstm_1_tensorarrayunstack_tensorlistfromtensor_0�
�seq2seq_model_encoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_seq2seq_model_encoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensor_0`
Mseq2seq_model_encoder_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0:	 �b
Oseq2seq_model_encoder_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0:	 �]
Nseq2seq_model_encoder_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0:	�/
+seq2seq_model_encoder_lstm_1_while_identity1
-seq2seq_model_encoder_lstm_1_while_identity_11
-seq2seq_model_encoder_lstm_1_while_identity_21
-seq2seq_model_encoder_lstm_1_while_identity_31
-seq2seq_model_encoder_lstm_1_while_identity_41
-seq2seq_model_encoder_lstm_1_while_identity_51
-seq2seq_model_encoder_lstm_1_while_identity_6S
Oseq2seq_model_encoder_lstm_1_while_seq2seq_model_encoder_lstm_1_strided_slice_1�
�seq2seq_model_encoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_seq2seq_model_encoder_lstm_1_tensorarrayunstack_tensorlistfromtensor�
�seq2seq_model_encoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_seq2seq_model_encoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensor^
Kseq2seq_model_encoder_lstm_1_while_lstm_cell_matmul_readvariableop_resource:	 �`
Mseq2seq_model_encoder_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource:	 �[
Lseq2seq_model_encoder_lstm_1_while_lstm_cell_biasadd_readvariableop_resource:	���Cseq2seq_model/encoder_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp�Bseq2seq_model/encoder_lstm_1/while/lstm_cell/MatMul/ReadVariableOp�Dseq2seq_model/encoder_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp�
Tseq2seq_model/encoder_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
Fseq2seq_model/encoder_lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�seq2seq_model_encoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_seq2seq_model_encoder_lstm_1_tensorarrayunstack_tensorlistfromtensor_0.seq2seq_model_encoder_lstm_1_while_placeholder]seq2seq_model/encoder_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype0�
Vseq2seq_model/encoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Hseq2seq_model/encoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItem�seq2seq_model_encoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_seq2seq_model_encoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensor_0.seq2seq_model_encoder_lstm_1_while_placeholder_seq2seq_model/encoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
�
<seq2seq_model/encoder_lstm_1/while/lstm_cell/ones_like/ShapeShapeMseq2seq_model/encoder_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:�
<seq2seq_model/encoder_lstm_1/while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
6seq2seq_model/encoder_lstm_1/while/lstm_cell/ones_likeFillEseq2seq_model/encoder_lstm_1/while/lstm_cell/ones_like/Shape:output:0Eseq2seq_model/encoder_lstm_1/while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� �
0seq2seq_model/encoder_lstm_1/while/lstm_cell/mulMulMseq2seq_model/encoder_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0?seq2seq_model/encoder_lstm_1/while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:��������� �
Bseq2seq_model/encoder_lstm_1/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpMseq2seq_model_encoder_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
3seq2seq_model/encoder_lstm_1/while/lstm_cell/MatMulMatMul4seq2seq_model/encoder_lstm_1/while/lstm_cell/mul:z:0Jseq2seq_model/encoder_lstm_1/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Dseq2seq_model/encoder_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpOseq2seq_model_encoder_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
5seq2seq_model/encoder_lstm_1/while/lstm_cell/MatMul_1MatMul0seq2seq_model_encoder_lstm_1_while_placeholder_3Lseq2seq_model/encoder_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0seq2seq_model/encoder_lstm_1/while/lstm_cell/addAddV2=seq2seq_model/encoder_lstm_1/while/lstm_cell/MatMul:product:0?seq2seq_model/encoder_lstm_1/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Cseq2seq_model/encoder_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpNseq2seq_model_encoder_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
4seq2seq_model/encoder_lstm_1/while/lstm_cell/BiasAddBiasAdd4seq2seq_model/encoder_lstm_1/while/lstm_cell/add:z:0Kseq2seq_model/encoder_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������~
<seq2seq_model/encoder_lstm_1/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
2seq2seq_model/encoder_lstm_1/while/lstm_cell/splitSplitEseq2seq_model/encoder_lstm_1/while/lstm_cell/split/split_dim:output:0=seq2seq_model/encoder_lstm_1/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split�
4seq2seq_model/encoder_lstm_1/while/lstm_cell/SigmoidSigmoid;seq2seq_model/encoder_lstm_1/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:��������� �
6seq2seq_model/encoder_lstm_1/while/lstm_cell/Sigmoid_1Sigmoid;seq2seq_model/encoder_lstm_1/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:��������� �
2seq2seq_model/encoder_lstm_1/while/lstm_cell/mul_1Mul:seq2seq_model/encoder_lstm_1/while/lstm_cell/Sigmoid_1:y:00seq2seq_model_encoder_lstm_1_while_placeholder_4*
T0*'
_output_shapes
:��������� �
1seq2seq_model/encoder_lstm_1/while/lstm_cell/ReluRelu;seq2seq_model/encoder_lstm_1/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:��������� �
2seq2seq_model/encoder_lstm_1/while/lstm_cell/mul_2Mul8seq2seq_model/encoder_lstm_1/while/lstm_cell/Sigmoid:y:0?seq2seq_model/encoder_lstm_1/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:��������� �
2seq2seq_model/encoder_lstm_1/while/lstm_cell/add_1AddV26seq2seq_model/encoder_lstm_1/while/lstm_cell/mul_1:z:06seq2seq_model/encoder_lstm_1/while/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:��������� �
6seq2seq_model/encoder_lstm_1/while/lstm_cell/Sigmoid_2Sigmoid;seq2seq_model/encoder_lstm_1/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:��������� �
3seq2seq_model/encoder_lstm_1/while/lstm_cell/Relu_1Relu6seq2seq_model/encoder_lstm_1/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:��������� �
2seq2seq_model/encoder_lstm_1/while/lstm_cell/mul_3Mul:seq2seq_model/encoder_lstm_1/while/lstm_cell/Sigmoid_2:y:0Aseq2seq_model/encoder_lstm_1/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
1seq2seq_model/encoder_lstm_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
'seq2seq_model/encoder_lstm_1/while/TileTileOseq2seq_model/encoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0:seq2seq_model/encoder_lstm_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
+seq2seq_model/encoder_lstm_1/while/SelectV2SelectV20seq2seq_model/encoder_lstm_1/while/Tile:output:06seq2seq_model/encoder_lstm_1/while/lstm_cell/mul_3:z:00seq2seq_model_encoder_lstm_1_while_placeholder_2*
T0*'
_output_shapes
:��������� �
3seq2seq_model/encoder_lstm_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
)seq2seq_model/encoder_lstm_1/while/Tile_1TileOseq2seq_model/encoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0<seq2seq_model/encoder_lstm_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:����������
3seq2seq_model/encoder_lstm_1/while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
)seq2seq_model/encoder_lstm_1/while/Tile_2TileOseq2seq_model/encoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0<seq2seq_model/encoder_lstm_1/while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
-seq2seq_model/encoder_lstm_1/while/SelectV2_1SelectV22seq2seq_model/encoder_lstm_1/while/Tile_1:output:06seq2seq_model/encoder_lstm_1/while/lstm_cell/mul_3:z:00seq2seq_model_encoder_lstm_1_while_placeholder_3*
T0*'
_output_shapes
:��������� �
-seq2seq_model/encoder_lstm_1/while/SelectV2_2SelectV22seq2seq_model/encoder_lstm_1/while/Tile_2:output:06seq2seq_model/encoder_lstm_1/while/lstm_cell/add_1:z:00seq2seq_model_encoder_lstm_1_while_placeholder_4*
T0*'
_output_shapes
:��������� �
Gseq2seq_model/encoder_lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem0seq2seq_model_encoder_lstm_1_while_placeholder_1.seq2seq_model_encoder_lstm_1_while_placeholder4seq2seq_model/encoder_lstm_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���j
(seq2seq_model/encoder_lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
&seq2seq_model/encoder_lstm_1/while/addAddV2.seq2seq_model_encoder_lstm_1_while_placeholder1seq2seq_model/encoder_lstm_1/while/add/y:output:0*
T0*
_output_shapes
: l
*seq2seq_model/encoder_lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
(seq2seq_model/encoder_lstm_1/while/add_1AddV2Rseq2seq_model_encoder_lstm_1_while_seq2seq_model_encoder_lstm_1_while_loop_counter3seq2seq_model/encoder_lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: �
+seq2seq_model/encoder_lstm_1/while/IdentityIdentity,seq2seq_model/encoder_lstm_1/while/add_1:z:0(^seq2seq_model/encoder_lstm_1/while/NoOp*
T0*
_output_shapes
: �
-seq2seq_model/encoder_lstm_1/while/Identity_1IdentityXseq2seq_model_encoder_lstm_1_while_seq2seq_model_encoder_lstm_1_while_maximum_iterations(^seq2seq_model/encoder_lstm_1/while/NoOp*
T0*
_output_shapes
: �
-seq2seq_model/encoder_lstm_1/while/Identity_2Identity*seq2seq_model/encoder_lstm_1/while/add:z:0(^seq2seq_model/encoder_lstm_1/while/NoOp*
T0*
_output_shapes
: �
-seq2seq_model/encoder_lstm_1/while/Identity_3IdentityWseq2seq_model/encoder_lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^seq2seq_model/encoder_lstm_1/while/NoOp*
T0*
_output_shapes
: �
-seq2seq_model/encoder_lstm_1/while/Identity_4Identity4seq2seq_model/encoder_lstm_1/while/SelectV2:output:0(^seq2seq_model/encoder_lstm_1/while/NoOp*
T0*'
_output_shapes
:��������� �
-seq2seq_model/encoder_lstm_1/while/Identity_5Identity6seq2seq_model/encoder_lstm_1/while/SelectV2_1:output:0(^seq2seq_model/encoder_lstm_1/while/NoOp*
T0*'
_output_shapes
:��������� �
-seq2seq_model/encoder_lstm_1/while/Identity_6Identity6seq2seq_model/encoder_lstm_1/while/SelectV2_2:output:0(^seq2seq_model/encoder_lstm_1/while/NoOp*
T0*'
_output_shapes
:��������� �
'seq2seq_model/encoder_lstm_1/while/NoOpNoOpD^seq2seq_model/encoder_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpC^seq2seq_model/encoder_lstm_1/while/lstm_cell/MatMul/ReadVariableOpE^seq2seq_model/encoder_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "c
+seq2seq_model_encoder_lstm_1_while_identity4seq2seq_model/encoder_lstm_1/while/Identity:output:0"g
-seq2seq_model_encoder_lstm_1_while_identity_16seq2seq_model/encoder_lstm_1/while/Identity_1:output:0"g
-seq2seq_model_encoder_lstm_1_while_identity_26seq2seq_model/encoder_lstm_1/while/Identity_2:output:0"g
-seq2seq_model_encoder_lstm_1_while_identity_36seq2seq_model/encoder_lstm_1/while/Identity_3:output:0"g
-seq2seq_model_encoder_lstm_1_while_identity_46seq2seq_model/encoder_lstm_1/while/Identity_4:output:0"g
-seq2seq_model_encoder_lstm_1_while_identity_56seq2seq_model/encoder_lstm_1/while/Identity_5:output:0"g
-seq2seq_model_encoder_lstm_1_while_identity_66seq2seq_model/encoder_lstm_1/while/Identity_6:output:0"�
Lseq2seq_model_encoder_lstm_1_while_lstm_cell_biasadd_readvariableop_resourceNseq2seq_model_encoder_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0"�
Mseq2seq_model_encoder_lstm_1_while_lstm_cell_matmul_1_readvariableop_resourceOseq2seq_model_encoder_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0"�
Kseq2seq_model_encoder_lstm_1_while_lstm_cell_matmul_readvariableop_resourceMseq2seq_model_encoder_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0"�
Oseq2seq_model_encoder_lstm_1_while_seq2seq_model_encoder_lstm_1_strided_slice_1Qseq2seq_model_encoder_lstm_1_while_seq2seq_model_encoder_lstm_1_strided_slice_1_0"�
�seq2seq_model_encoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_seq2seq_model_encoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensor�seq2seq_model_encoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_seq2seq_model_encoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensor_0"�
�seq2seq_model_encoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_seq2seq_model_encoder_lstm_1_tensorarrayunstack_tensorlistfromtensor�seq2seq_model_encoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_seq2seq_model_encoder_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :��������� :��������� :��������� : : : : : : 2�
Cseq2seq_model/encoder_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpCseq2seq_model/encoder_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp2�
Bseq2seq_model/encoder_lstm_1/while/lstm_cell/MatMul/ReadVariableOpBseq2seq_model/encoder_lstm_1/while/lstm_cell/MatMul/ReadVariableOp2�
Dseq2seq_model/encoder_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpDseq2seq_model/encoder_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
�"
�
while_body_262449
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_1_262473_0:	 �-
while_lstm_cell_1_262475_0:	 �)
while_lstm_cell_1_262477_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_1_262473:	 �+
while_lstm_cell_1_262475:	 �'
while_lstm_cell_1_262477:	���)while/lstm_cell_1/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype0�
)while/lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1_262473_0while_lstm_cell_1_262475_0while_lstm_cell_1_262477_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_262435�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity2while/lstm_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:��������� �
while/Identity_5Identity2while/lstm_cell_1/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:��������� x

while/NoOpNoOp*^while/lstm_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_1_262473while_lstm_cell_1_262473_0"6
while_lstm_cell_1_262475while_lstm_cell_1_262475_0"6
while_lstm_cell_1_262477while_lstm_cell_1_262477_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_1/StatefulPartitionedCall)while/lstm_cell_1/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�$
�
I__inference_seq2seq_model_layer_call_and_return_conditional_losses_263824

inputs
inputs_1*
shared_embedding_263793:	� (
encoder_lstm_1_263802:	 �(
encoder_lstm_1_263804:	 �$
encoder_lstm_1_263806:	�(
decoder_lstm_1_263811:	 �(
decoder_lstm_1_263813:	 �$
decoder_lstm_1_263815:	�'
decoder_dense_263818:	 �#
decoder_dense_263820:	�
identity��%decoder_dense/StatefulPartitionedCall�&decoder_lstm_1/StatefulPartitionedCall�&encoder_lstm_1/StatefulPartitionedCall�(shared_embedding/StatefulPartitionedCall�*shared_embedding/StatefulPartitionedCall_1�
(shared_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_1shared_embedding_263793*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_shared_embedding_layer_call_and_return_conditional_losses_262773`
shared_embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
shared_embedding/NotEqualNotEqualinputs_1$shared_embedding/NotEqual/y:output:0*
T0*'
_output_shapes
:���������i�
*shared_embedding/StatefulPartitionedCall_1StatefulPartitionedCallinputsshared_embedding_263793*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_shared_embedding_layer_call_and_return_conditional_losses_262773b
shared_embedding/NotEqual_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
shared_embedding/NotEqual_1NotEqualinputs&shared_embedding/NotEqual_1/y:output:0*
T0*'
_output_shapes
:���������i�
&encoder_lstm_1/StatefulPartitionedCallStatefulPartitionedCall3shared_embedding/StatefulPartitionedCall_1:output:0shared_embedding/NotEqual_1:z:0encoder_lstm_1_263802encoder_lstm_1_263804encoder_lstm_1_263806*
Tin	
2
*
Tout
2*
_collective_manager_ids
 *Q
_output_shapes?
=:���������i :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_263741�
&decoder_lstm_1/StatefulPartitionedCallStatefulPartitionedCall1shared_embedding/StatefulPartitionedCall:output:0shared_embedding/NotEqual:z:0/encoder_lstm_1/StatefulPartitionedCall:output:1/encoder_lstm_1/StatefulPartitionedCall:output:2decoder_lstm_1_263811decoder_lstm_1_263813decoder_lstm_1_263815*
Tin
	2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_263468�
%decoder_dense/StatefulPartitionedCallStatefulPartitionedCall/decoder_lstm_1/StatefulPartitionedCall:output:0decoder_dense_263818decoder_dense_263820*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������i�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_decoder_dense_layer_call_and_return_conditional_losses_263179�
IdentityIdentity.decoder_dense/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:���������i��
NoOpNoOp&^decoder_dense/StatefulPartitionedCall'^decoder_lstm_1/StatefulPartitionedCall'^encoder_lstm_1/StatefulPartitionedCall)^shared_embedding/StatefulPartitionedCall+^shared_embedding/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������i:���������i: : : : : : : : : 2N
%decoder_dense/StatefulPartitionedCall%decoder_dense/StatefulPartitionedCall2P
&decoder_lstm_1/StatefulPartitionedCall&decoder_lstm_1/StatefulPartitionedCall2P
&encoder_lstm_1/StatefulPartitionedCall&encoder_lstm_1/StatefulPartitionedCall2T
(shared_embedding/StatefulPartitionedCall(shared_embedding/StatefulPartitionedCall2X
*shared_embedding/StatefulPartitionedCall_1*shared_embedding/StatefulPartitionedCall_1:O K
'
_output_shapes
:���������i
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������i
 
_user_specified_nameinputs
�
�
while_cond_262448
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_262448___redundant_placeholder04
0while_while_cond_262448___redundant_placeholder14
0while_while_cond_262448___redundant_placeholder24
0while_while_cond_262448___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�$
�
I__inference_seq2seq_model_layer_call_and_return_conditional_losses_263186

inputs
inputs_1*
shared_embedding_262774:	� (
encoder_lstm_1_262964:	 �(
encoder_lstm_1_262966:	 �$
encoder_lstm_1_262968:	�(
decoder_lstm_1_263141:	 �(
decoder_lstm_1_263143:	 �$
decoder_lstm_1_263145:	�'
decoder_dense_263180:	 �#
decoder_dense_263182:	�
identity��%decoder_dense/StatefulPartitionedCall�&decoder_lstm_1/StatefulPartitionedCall�&encoder_lstm_1/StatefulPartitionedCall�(shared_embedding/StatefulPartitionedCall�*shared_embedding/StatefulPartitionedCall_1�
(shared_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs_1shared_embedding_262774*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_shared_embedding_layer_call_and_return_conditional_losses_262773`
shared_embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
shared_embedding/NotEqualNotEqualinputs_1$shared_embedding/NotEqual/y:output:0*
T0*'
_output_shapes
:���������i�
*shared_embedding/StatefulPartitionedCall_1StatefulPartitionedCallinputsshared_embedding_262774*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_shared_embedding_layer_call_and_return_conditional_losses_262773b
shared_embedding/NotEqual_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
shared_embedding/NotEqual_1NotEqualinputs&shared_embedding/NotEqual_1/y:output:0*
T0*'
_output_shapes
:���������i�
&encoder_lstm_1/StatefulPartitionedCallStatefulPartitionedCall3shared_embedding/StatefulPartitionedCall_1:output:0shared_embedding/NotEqual_1:z:0encoder_lstm_1_262964encoder_lstm_1_262966encoder_lstm_1_262968*
Tin	
2
*
Tout
2*
_collective_manager_ids
 *Q
_output_shapes?
=:���������i :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_262963�
&decoder_lstm_1/StatefulPartitionedCallStatefulPartitionedCall1shared_embedding/StatefulPartitionedCall:output:0shared_embedding/NotEqual:z:0/encoder_lstm_1/StatefulPartitionedCall:output:1/encoder_lstm_1/StatefulPartitionedCall:output:2decoder_lstm_1_263141decoder_lstm_1_263143decoder_lstm_1_263145*
Tin
	2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_263140�
%decoder_dense/StatefulPartitionedCallStatefulPartitionedCall/decoder_lstm_1/StatefulPartitionedCall:output:0decoder_dense_263180decoder_dense_263182*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������i�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_decoder_dense_layer_call_and_return_conditional_losses_263179�
IdentityIdentity.decoder_dense/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:���������i��
NoOpNoOp&^decoder_dense/StatefulPartitionedCall'^decoder_lstm_1/StatefulPartitionedCall'^encoder_lstm_1/StatefulPartitionedCall)^shared_embedding/StatefulPartitionedCall+^shared_embedding/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������i:���������i: : : : : : : : : 2N
%decoder_dense/StatefulPartitionedCall%decoder_dense/StatefulPartitionedCall2P
&decoder_lstm_1/StatefulPartitionedCall&decoder_lstm_1/StatefulPartitionedCall2P
&encoder_lstm_1/StatefulPartitionedCall&encoder_lstm_1/StatefulPartitionedCall2T
(shared_embedding/StatefulPartitionedCall(shared_embedding/StatefulPartitionedCall2X
*shared_embedding/StatefulPartitionedCall_1*shared_embedding/StatefulPartitionedCall_1:O K
'
_output_shapes
:���������i
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������i
 
_user_specified_nameinputs
�
�
,__inference_lstm_cell_1_layer_call_fn_266791

inputs
states_0
states_1
unknown:	 �
	unknown_0:	 �
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_262435o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:��������� q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:��������� :��������� :��������� : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�
�
/__inference_decoder_lstm_1_layer_call_fn_265830

inputs
mask

initial_state_0
initial_state_1
unknown:	 �
	unknown_0:	 �
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsmaskinitial_state_0initial_state_1unknown	unknown_0	unknown_1*
Tin
	2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_263468s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������i `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:���������i :���������i:��������� :��������� : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������i 
 
_user_specified_nameinputs:MI
'
_output_shapes
:���������i

_user_specified_namemask:XT
'
_output_shapes
:��������� 
)
_user_specified_nameinitial_state/0:XT
'
_output_shapes
:��������� 
)
_user_specified_nameinitial_state/1
�b
�
while_body_266076
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	 �G
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:	 �B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	 �E
2while_lstm_cell_1_matmul_1_readvariableop_resource:	 �@
1while_lstm_cell_1_biasadd_readvariableop_resource:	���(while/lstm_cell_1/BiasAdd/ReadVariableOp�'while/lstm_cell_1/MatMul/ReadVariableOp�)while/lstm_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype0�
!while/lstm_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:f
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� d
while/lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell_1/dropout/MulMul$while/lstm_cell_1/ones_like:output:0(while/lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:��������� s
while/lstm_cell_1/dropout/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
6while/lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2����m
(while/lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
&while/lstm_cell_1/dropout/GreaterEqualGreaterEqual?while/lstm_cell_1/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/dropout/CastCast*while/lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
while/lstm_cell_1/dropout/Mul_1Mul!while/lstm_cell_1/dropout/Mul:z:0"while/lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:��������� f
!while/lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell_1/dropout_1/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:��������� u
!while/lstm_cell_1/dropout_1/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
8while/lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2o
*while/lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
(while/lstm_cell_1/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
 while/lstm_cell_1/dropout_1/CastCast,while/lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
!while/lstm_cell_1/dropout_1/Mul_1Mul#while/lstm_cell_1/dropout_1/Mul:z:0$while/lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:��������� f
!while/lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell_1/dropout_2/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:��������� u
!while/lstm_cell_1/dropout_2/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
8while/lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2o
*while/lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
(while/lstm_cell_1/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
 while/lstm_cell_1/dropout_2/CastCast,while/lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
!while/lstm_cell_1/dropout_2/Mul_1Mul#while/lstm_cell_1/dropout_2/Mul:z:0$while/lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:��������� f
!while/lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell_1/dropout_3/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:��������� u
!while/lstm_cell_1/dropout_3/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
8while/lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2o
*while/lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
(while/lstm_cell_1/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
 while/lstm_cell_1/dropout_3/CastCast,while/lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
!while/lstm_cell_1/dropout_3/Mul_1Mul#while/lstm_cell_1/dropout_3/Mul:z:0$while/lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� �
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell_1/MatMulMatMulwhile/lstm_cell_1/mul:z:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:��������� z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul_1:z:0while/lstm_cell_1/mul_2:z:0*
T0*'
_output_shapes
:��������� z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:��������� o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/mul_3Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_3:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_3:z:0^while/NoOp*
T0*'
_output_shapes
:��������� x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� �

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�s
�

while_body_265640
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0[
Wwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	 �E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	 �@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_identity_6
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorY
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	 �C
0while_lstm_cell_matmul_1_readvariableop_resource:	 �>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype0�
9while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
+while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0while_placeholderBwhile/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0

while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� b
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:��������� o
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2����k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/dropout/CastCast(while/lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
while/lstm_cell/dropout/Mul_1Mulwhile/lstm_cell/dropout/Mul:z:0 while/lstm_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:��������� d
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:��������� q
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/dropout_1/CastCast*while/lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
while/lstm_cell/dropout_1/Mul_1Mul!while/lstm_cell/dropout_1/Mul:z:0"while/lstm_cell/dropout_1/Cast:y:0*
T0*'
_output_shapes
:��������� d
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:��������� q
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/dropout_2/CastCast*while/lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
while/lstm_cell/dropout_2/Mul_1Mul!while/lstm_cell/dropout_2/Mul:z:0"while/lstm_cell/dropout_2/Cast:y:0*
T0*'
_output_shapes
:��������� d
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:��������� q
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/dropout_3/CastCast*while/lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
while/lstm_cell/dropout_3/Mul_1Mul!while/lstm_cell/dropout_3/Mul:z:0"while/lstm_cell/dropout_3/Cast:y:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� �
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_3/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:��������� v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:��������� �
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_4*
T0*'
_output_shapes
:��������� n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:��������� �
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/add_1AddV2while/lstm_cell/mul_1:z:0while/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:��������� v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:��������� k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/mul_3Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:��������� e
while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �

while/TileTile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
while/SelectV2SelectV2while/Tile:output:0while/lstm_cell/mul_3:z:0while_placeholder_2*
T0*'
_output_shapes
:��������� g
while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
while/Tile_1Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������g
while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
while/Tile_2Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
while/SelectV2_1SelectV2while/Tile_1:output:0while/lstm_cell/mul_3:z:0while_placeholder_3*
T0*'
_output_shapes
:��������� �
while/SelectV2_2SelectV2while/Tile_2:output:0while/lstm_cell/add_1:z:0while_placeholder_4*
T0*'
_output_shapes
:��������� �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: t
while/Identity_4Identitywhile/SelectV2:output:0^while/NoOp*
T0*'
_output_shapes
:��������� v
while/Identity_5Identitywhile/SelectV2_1:output:0^while/NoOp*
T0*'
_output_shapes
:��������� v
while/Identity_6Identitywhile/SelectV2_2:output:0^while/NoOp*
T0*'
_output_shapes
:��������� �

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"-
while_identity_6while/Identity_6:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :��������� :��������� :��������� : : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
�	
�
while_cond_265426
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_less_strided_slice_14
0while_while_cond_265426___redundant_placeholder04
0while_while_cond_265426___redundant_placeholder14
0while_while_cond_265426___redundant_placeholder24
0while_while_cond_265426___redundant_placeholder34
0while_while_cond_265426___redundant_placeholder4
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :��������� :��������� :��������� : :::::: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�s
�

while_body_263601
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0[
Wwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	 �E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	 �@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_identity_6
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorY
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	 �C
0while_lstm_cell_matmul_1_readvariableop_resource:	 �>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype0�
9while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
+while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0while_placeholderBwhile/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0

while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� b
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:��������� o
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2����k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/dropout/CastCast(while/lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
while/lstm_cell/dropout/Mul_1Mulwhile/lstm_cell/dropout/Mul:z:0 while/lstm_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:��������� d
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:��������� q
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/dropout_1/CastCast*while/lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
while/lstm_cell/dropout_1/Mul_1Mul!while/lstm_cell/dropout_1/Mul:z:0"while/lstm_cell/dropout_1/Cast:y:0*
T0*'
_output_shapes
:��������� d
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:��������� q
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/dropout_2/CastCast*while/lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
while/lstm_cell/dropout_2/Mul_1Mul!while/lstm_cell/dropout_2/Mul:z:0"while/lstm_cell/dropout_2/Cast:y:0*
T0*'
_output_shapes
:��������� d
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:��������� q
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/dropout_3/CastCast*while/lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
while/lstm_cell/dropout_3/Mul_1Mul!while/lstm_cell/dropout_3/Mul:z:0"while/lstm_cell/dropout_3/Cast:y:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� �
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_3/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:��������� v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:��������� �
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_4*
T0*'
_output_shapes
:��������� n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:��������� �
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/add_1AddV2while/lstm_cell/mul_1:z:0while/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:��������� v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:��������� k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/mul_3Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:��������� e
while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �

while/TileTile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
while/SelectV2SelectV2while/Tile:output:0while/lstm_cell/mul_3:z:0while_placeholder_2*
T0*'
_output_shapes
:��������� g
while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
while/Tile_1Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������g
while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
while/Tile_2Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
while/SelectV2_1SelectV2while/Tile_1:output:0while/lstm_cell/mul_3:z:0while_placeholder_3*
T0*'
_output_shapes
:��������� �
while/SelectV2_2SelectV2while/Tile_2:output:0while/lstm_cell/add_1:z:0while_placeholder_4*
T0*'
_output_shapes
:��������� �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: t
while/Identity_4Identitywhile/SelectV2:output:0^while/NoOp*
T0*'
_output_shapes
:��������� v
while/Identity_5Identitywhile/SelectV2_1:output:0^while/NoOp*
T0*'
_output_shapes
:��������� v
while/Identity_6Identitywhile/SelectV2_2:output:0^while/NoOp*
T0*'
_output_shapes
:��������� �

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"-
while_identity_6while/Identity_6:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :��������� :��������� :��������� : : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
�	
�
L__inference_shared_embedding_layer_call_and_return_conditional_losses_264922

inputs*
embedding_lookup_264916:	� 
identity��embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������i�
embedding_lookupResourceGatherembedding_lookup_264916Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/264916*+
_output_shapes
:���������i *
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/264916*+
_output_shapes
:���������i �
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������i w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������i Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������i: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������i
 
_user_specified_nameinputs
�
�
.__inference_seq2seq_model_layer_call_fn_263989
inputs_0
inputs_1
unknown:	� 
	unknown_0:	 �
	unknown_1:	 �
	unknown_2:	�
	unknown_3:	 �
	unknown_4:	 �
	unknown_5:	�
	unknown_6:	 �
	unknown_7:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������i�*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_seq2seq_model_layer_call_and_return_conditional_losses_263186t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:���������i�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������i:���������i: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������i
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������i
"
_user_specified_name
inputs/1
�|
�
.seq2seq_model_decoder_lstm_1_while_body_261829V
Rseq2seq_model_decoder_lstm_1_while_seq2seq_model_decoder_lstm_1_while_loop_counter\
Xseq2seq_model_decoder_lstm_1_while_seq2seq_model_decoder_lstm_1_while_maximum_iterations2
.seq2seq_model_decoder_lstm_1_while_placeholder4
0seq2seq_model_decoder_lstm_1_while_placeholder_14
0seq2seq_model_decoder_lstm_1_while_placeholder_24
0seq2seq_model_decoder_lstm_1_while_placeholder_34
0seq2seq_model_decoder_lstm_1_while_placeholder_4S
Oseq2seq_model_decoder_lstm_1_while_seq2seq_model_decoder_lstm_1_strided_slice_0�
�seq2seq_model_decoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_seq2seq_model_decoder_lstm_1_tensorarrayunstack_tensorlistfromtensor_0�
�seq2seq_model_decoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_seq2seq_model_decoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensor_0b
Oseq2seq_model_decoder_lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0:	 �d
Qseq2seq_model_decoder_lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0:	 �_
Pseq2seq_model_decoder_lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0:	�/
+seq2seq_model_decoder_lstm_1_while_identity1
-seq2seq_model_decoder_lstm_1_while_identity_11
-seq2seq_model_decoder_lstm_1_while_identity_21
-seq2seq_model_decoder_lstm_1_while_identity_31
-seq2seq_model_decoder_lstm_1_while_identity_41
-seq2seq_model_decoder_lstm_1_while_identity_51
-seq2seq_model_decoder_lstm_1_while_identity_6Q
Mseq2seq_model_decoder_lstm_1_while_seq2seq_model_decoder_lstm_1_strided_slice�
�seq2seq_model_decoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_seq2seq_model_decoder_lstm_1_tensorarrayunstack_tensorlistfromtensor�
�seq2seq_model_decoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_seq2seq_model_decoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensor`
Mseq2seq_model_decoder_lstm_1_while_lstm_cell_1_matmul_readvariableop_resource:	 �b
Oseq2seq_model_decoder_lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource:	 �]
Nseq2seq_model_decoder_lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource:	���Eseq2seq_model/decoder_lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp�Dseq2seq_model/decoder_lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp�Fseq2seq_model/decoder_lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp�
Tseq2seq_model/decoder_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
Fseq2seq_model/decoder_lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�seq2seq_model_decoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_seq2seq_model_decoder_lstm_1_tensorarrayunstack_tensorlistfromtensor_0.seq2seq_model_decoder_lstm_1_while_placeholder]seq2seq_model/decoder_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype0�
Vseq2seq_model/decoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Hseq2seq_model/decoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItem�seq2seq_model_decoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_seq2seq_model_decoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensor_0.seq2seq_model_decoder_lstm_1_while_placeholder_seq2seq_model/decoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
�
>seq2seq_model/decoder_lstm_1/while/lstm_cell_1/ones_like/ShapeShapeMseq2seq_model/decoder_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:�
>seq2seq_model/decoder_lstm_1/while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
8seq2seq_model/decoder_lstm_1/while/lstm_cell_1/ones_likeFillGseq2seq_model/decoder_lstm_1/while/lstm_cell_1/ones_like/Shape:output:0Gseq2seq_model/decoder_lstm_1/while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� �
2seq2seq_model/decoder_lstm_1/while/lstm_cell_1/mulMulMseq2seq_model/decoder_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0Aseq2seq_model/decoder_lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:��������� �
Dseq2seq_model/decoder_lstm_1/while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOpOseq2seq_model_decoder_lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
5seq2seq_model/decoder_lstm_1/while/lstm_cell_1/MatMulMatMul6seq2seq_model/decoder_lstm_1/while/lstm_cell_1/mul:z:0Lseq2seq_model/decoder_lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Fseq2seq_model/decoder_lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpQseq2seq_model_decoder_lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
7seq2seq_model/decoder_lstm_1/while/lstm_cell_1/MatMul_1MatMul0seq2seq_model_decoder_lstm_1_while_placeholder_3Nseq2seq_model/decoder_lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2seq2seq_model/decoder_lstm_1/while/lstm_cell_1/addAddV2?seq2seq_model/decoder_lstm_1/while/lstm_cell_1/MatMul:product:0Aseq2seq_model/decoder_lstm_1/while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
Eseq2seq_model/decoder_lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOpPseq2seq_model_decoder_lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
6seq2seq_model/decoder_lstm_1/while/lstm_cell_1/BiasAddBiasAdd6seq2seq_model/decoder_lstm_1/while/lstm_cell_1/add:z:0Mseq2seq_model/decoder_lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
>seq2seq_model/decoder_lstm_1/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
4seq2seq_model/decoder_lstm_1/while/lstm_cell_1/splitSplitGseq2seq_model/decoder_lstm_1/while/lstm_cell_1/split/split_dim:output:0?seq2seq_model/decoder_lstm_1/while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split�
6seq2seq_model/decoder_lstm_1/while/lstm_cell_1/SigmoidSigmoid=seq2seq_model/decoder_lstm_1/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:��������� �
8seq2seq_model/decoder_lstm_1/while/lstm_cell_1/Sigmoid_1Sigmoid=seq2seq_model/decoder_lstm_1/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:��������� �
4seq2seq_model/decoder_lstm_1/while/lstm_cell_1/mul_1Mul<seq2seq_model/decoder_lstm_1/while/lstm_cell_1/Sigmoid_1:y:00seq2seq_model_decoder_lstm_1_while_placeholder_4*
T0*'
_output_shapes
:��������� �
3seq2seq_model/decoder_lstm_1/while/lstm_cell_1/ReluRelu=seq2seq_model/decoder_lstm_1/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:��������� �
4seq2seq_model/decoder_lstm_1/while/lstm_cell_1/mul_2Mul:seq2seq_model/decoder_lstm_1/while/lstm_cell_1/Sigmoid:y:0Aseq2seq_model/decoder_lstm_1/while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:��������� �
4seq2seq_model/decoder_lstm_1/while/lstm_cell_1/add_1AddV28seq2seq_model/decoder_lstm_1/while/lstm_cell_1/mul_1:z:08seq2seq_model/decoder_lstm_1/while/lstm_cell_1/mul_2:z:0*
T0*'
_output_shapes
:��������� �
8seq2seq_model/decoder_lstm_1/while/lstm_cell_1/Sigmoid_2Sigmoid=seq2seq_model/decoder_lstm_1/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:��������� �
5seq2seq_model/decoder_lstm_1/while/lstm_cell_1/Relu_1Relu8seq2seq_model/decoder_lstm_1/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:��������� �
4seq2seq_model/decoder_lstm_1/while/lstm_cell_1/mul_3Mul<seq2seq_model/decoder_lstm_1/while/lstm_cell_1/Sigmoid_2:y:0Cseq2seq_model/decoder_lstm_1/while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
1seq2seq_model/decoder_lstm_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
'seq2seq_model/decoder_lstm_1/while/TileTileOseq2seq_model/decoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0:seq2seq_model/decoder_lstm_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
+seq2seq_model/decoder_lstm_1/while/SelectV2SelectV20seq2seq_model/decoder_lstm_1/while/Tile:output:08seq2seq_model/decoder_lstm_1/while/lstm_cell_1/mul_3:z:00seq2seq_model_decoder_lstm_1_while_placeholder_2*
T0*'
_output_shapes
:��������� �
3seq2seq_model/decoder_lstm_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
)seq2seq_model/decoder_lstm_1/while/Tile_1TileOseq2seq_model/decoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0<seq2seq_model/decoder_lstm_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:����������
3seq2seq_model/decoder_lstm_1/while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
)seq2seq_model/decoder_lstm_1/while/Tile_2TileOseq2seq_model/decoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0<seq2seq_model/decoder_lstm_1/while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
-seq2seq_model/decoder_lstm_1/while/SelectV2_1SelectV22seq2seq_model/decoder_lstm_1/while/Tile_1:output:08seq2seq_model/decoder_lstm_1/while/lstm_cell_1/mul_3:z:00seq2seq_model_decoder_lstm_1_while_placeholder_3*
T0*'
_output_shapes
:��������� �
-seq2seq_model/decoder_lstm_1/while/SelectV2_2SelectV22seq2seq_model/decoder_lstm_1/while/Tile_2:output:08seq2seq_model/decoder_lstm_1/while/lstm_cell_1/add_1:z:00seq2seq_model_decoder_lstm_1_while_placeholder_4*
T0*'
_output_shapes
:��������� �
Gseq2seq_model/decoder_lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem0seq2seq_model_decoder_lstm_1_while_placeholder_1.seq2seq_model_decoder_lstm_1_while_placeholder4seq2seq_model/decoder_lstm_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���j
(seq2seq_model/decoder_lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
&seq2seq_model/decoder_lstm_1/while/addAddV2.seq2seq_model_decoder_lstm_1_while_placeholder1seq2seq_model/decoder_lstm_1/while/add/y:output:0*
T0*
_output_shapes
: l
*seq2seq_model/decoder_lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
(seq2seq_model/decoder_lstm_1/while/add_1AddV2Rseq2seq_model_decoder_lstm_1_while_seq2seq_model_decoder_lstm_1_while_loop_counter3seq2seq_model/decoder_lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: �
+seq2seq_model/decoder_lstm_1/while/IdentityIdentity,seq2seq_model/decoder_lstm_1/while/add_1:z:0(^seq2seq_model/decoder_lstm_1/while/NoOp*
T0*
_output_shapes
: �
-seq2seq_model/decoder_lstm_1/while/Identity_1IdentityXseq2seq_model_decoder_lstm_1_while_seq2seq_model_decoder_lstm_1_while_maximum_iterations(^seq2seq_model/decoder_lstm_1/while/NoOp*
T0*
_output_shapes
: �
-seq2seq_model/decoder_lstm_1/while/Identity_2Identity*seq2seq_model/decoder_lstm_1/while/add:z:0(^seq2seq_model/decoder_lstm_1/while/NoOp*
T0*
_output_shapes
: �
-seq2seq_model/decoder_lstm_1/while/Identity_3IdentityWseq2seq_model/decoder_lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^seq2seq_model/decoder_lstm_1/while/NoOp*
T0*
_output_shapes
: �
-seq2seq_model/decoder_lstm_1/while/Identity_4Identity4seq2seq_model/decoder_lstm_1/while/SelectV2:output:0(^seq2seq_model/decoder_lstm_1/while/NoOp*
T0*'
_output_shapes
:��������� �
-seq2seq_model/decoder_lstm_1/while/Identity_5Identity6seq2seq_model/decoder_lstm_1/while/SelectV2_1:output:0(^seq2seq_model/decoder_lstm_1/while/NoOp*
T0*'
_output_shapes
:��������� �
-seq2seq_model/decoder_lstm_1/while/Identity_6Identity6seq2seq_model/decoder_lstm_1/while/SelectV2_2:output:0(^seq2seq_model/decoder_lstm_1/while/NoOp*
T0*'
_output_shapes
:��������� �
'seq2seq_model/decoder_lstm_1/while/NoOpNoOpF^seq2seq_model/decoder_lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOpE^seq2seq_model/decoder_lstm_1/while/lstm_cell_1/MatMul/ReadVariableOpG^seq2seq_model/decoder_lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "c
+seq2seq_model_decoder_lstm_1_while_identity4seq2seq_model/decoder_lstm_1/while/Identity:output:0"g
-seq2seq_model_decoder_lstm_1_while_identity_16seq2seq_model/decoder_lstm_1/while/Identity_1:output:0"g
-seq2seq_model_decoder_lstm_1_while_identity_26seq2seq_model/decoder_lstm_1/while/Identity_2:output:0"g
-seq2seq_model_decoder_lstm_1_while_identity_36seq2seq_model/decoder_lstm_1/while/Identity_3:output:0"g
-seq2seq_model_decoder_lstm_1_while_identity_46seq2seq_model/decoder_lstm_1/while/Identity_4:output:0"g
-seq2seq_model_decoder_lstm_1_while_identity_56seq2seq_model/decoder_lstm_1/while/Identity_5:output:0"g
-seq2seq_model_decoder_lstm_1_while_identity_66seq2seq_model/decoder_lstm_1/while/Identity_6:output:0"�
Nseq2seq_model_decoder_lstm_1_while_lstm_cell_1_biasadd_readvariableop_resourcePseq2seq_model_decoder_lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0"�
Oseq2seq_model_decoder_lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resourceQseq2seq_model_decoder_lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0"�
Mseq2seq_model_decoder_lstm_1_while_lstm_cell_1_matmul_readvariableop_resourceOseq2seq_model_decoder_lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0"�
Mseq2seq_model_decoder_lstm_1_while_seq2seq_model_decoder_lstm_1_strided_sliceOseq2seq_model_decoder_lstm_1_while_seq2seq_model_decoder_lstm_1_strided_slice_0"�
�seq2seq_model_decoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_seq2seq_model_decoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensor�seq2seq_model_decoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_seq2seq_model_decoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensor_0"�
�seq2seq_model_decoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_seq2seq_model_decoder_lstm_1_tensorarrayunstack_tensorlistfromtensor�seq2seq_model_decoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_seq2seq_model_decoder_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :��������� :��������� :��������� : : : : : : 2�
Eseq2seq_model/decoder_lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOpEseq2seq_model/decoder_lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp2�
Dseq2seq_model/decoder_lstm_1/while/lstm_cell_1/MatMul/ReadVariableOpDseq2seq_model/decoder_lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp2�
Fseq2seq_model/decoder_lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOpFseq2seq_model/decoder_lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
�$
�
I__inference_seq2seq_model_layer_call_and_return_conditional_losses_263939
encoder_inputs
decoder_inputs*
shared_embedding_263908:	� (
encoder_lstm_1_263917:	 �(
encoder_lstm_1_263919:	 �$
encoder_lstm_1_263921:	�(
decoder_lstm_1_263926:	 �(
decoder_lstm_1_263928:	 �$
decoder_lstm_1_263930:	�'
decoder_dense_263933:	 �#
decoder_dense_263935:	�
identity��%decoder_dense/StatefulPartitionedCall�&decoder_lstm_1/StatefulPartitionedCall�&encoder_lstm_1/StatefulPartitionedCall�(shared_embedding/StatefulPartitionedCall�*shared_embedding/StatefulPartitionedCall_1�
(shared_embedding/StatefulPartitionedCallStatefulPartitionedCalldecoder_inputsshared_embedding_263908*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_shared_embedding_layer_call_and_return_conditional_losses_262773`
shared_embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
shared_embedding/NotEqualNotEqualdecoder_inputs$shared_embedding/NotEqual/y:output:0*
T0*'
_output_shapes
:���������i�
*shared_embedding/StatefulPartitionedCall_1StatefulPartitionedCallencoder_inputsshared_embedding_263908*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_shared_embedding_layer_call_and_return_conditional_losses_262773b
shared_embedding/NotEqual_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
shared_embedding/NotEqual_1NotEqualencoder_inputs&shared_embedding/NotEqual_1/y:output:0*
T0*'
_output_shapes
:���������i�
&encoder_lstm_1/StatefulPartitionedCallStatefulPartitionedCall3shared_embedding/StatefulPartitionedCall_1:output:0shared_embedding/NotEqual_1:z:0encoder_lstm_1_263917encoder_lstm_1_263919encoder_lstm_1_263921*
Tin	
2
*
Tout
2*
_collective_manager_ids
 *Q
_output_shapes?
=:���������i :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_263741�
&decoder_lstm_1/StatefulPartitionedCallStatefulPartitionedCall1shared_embedding/StatefulPartitionedCall:output:0shared_embedding/NotEqual:z:0/encoder_lstm_1/StatefulPartitionedCall:output:1/encoder_lstm_1/StatefulPartitionedCall:output:2decoder_lstm_1_263926decoder_lstm_1_263928decoder_lstm_1_263930*
Tin
	2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_263468�
%decoder_dense/StatefulPartitionedCallStatefulPartitionedCall/decoder_lstm_1/StatefulPartitionedCall:output:0decoder_dense_263933decoder_dense_263935*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������i�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_decoder_dense_layer_call_and_return_conditional_losses_263179�
IdentityIdentity.decoder_dense/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:���������i��
NoOpNoOp&^decoder_dense/StatefulPartitionedCall'^decoder_lstm_1/StatefulPartitionedCall'^encoder_lstm_1/StatefulPartitionedCall)^shared_embedding/StatefulPartitionedCall+^shared_embedding/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������i:���������i: : : : : : : : : 2N
%decoder_dense/StatefulPartitionedCall%decoder_dense/StatefulPartitionedCall2P
&decoder_lstm_1/StatefulPartitionedCall&decoder_lstm_1/StatefulPartitionedCall2P
&encoder_lstm_1/StatefulPartitionedCall&encoder_lstm_1/StatefulPartitionedCall2T
(shared_embedding/StatefulPartitionedCall(shared_embedding/StatefulPartitionedCall2X
*shared_embedding/StatefulPartitionedCall_1*shared_embedding/StatefulPartitionedCall_1:W S
'
_output_shapes
:���������i
(
_user_specified_nameencoder_inputs:WS
'
_output_shapes
:���������i
(
_user_specified_namedecoder_inputs
�|
�
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_265780

inputs
mask
;
(lstm_cell_matmul_readvariableop_resource:	 �=
*lstm_cell_matmul_1_readvariableop_resource:	 �8
)lstm_cell_biasadd_readvariableop_resource:	�
identity

identity_1

identity_2�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:i��������� D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������m

ExpandDims
ExpandDimsmaskExpandDims/dim:output:0*
T0
*+
_output_shapes
:���������ie
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
transpose_1	TransposeExpandDims:output:0transpose_1/perm:output:0*
T0
*+
_output_shapes
:i���������f
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maska
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� \
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:��������� c
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2����e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell/dropout/CastCast"lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
lstm_cell/dropout/Mul_1Mullstm_cell/dropout/Mul:z:0lstm_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:��������� ^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:��������� e
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell/dropout_1/CastCast$lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
lstm_cell/dropout_1/Mul_1Mullstm_cell/dropout_1/Mul:z:0lstm_cell/dropout_1/Cast:y:0*
T0*'
_output_shapes
:��������� ^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:��������� e
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell/dropout_2/CastCast$lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
lstm_cell/dropout_2/Mul_1Mullstm_cell/dropout_2/Mul:z:0lstm_cell/dropout_2/Cast:y:0*
T0*'
_output_shapes
:��������� ^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:��������� e
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell/dropout_3/CastCast$lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
lstm_cell/dropout_3/Mul_1Mullstm_cell/dropout_3/Mul:z:0lstm_cell/dropout_3/Cast:y:0*
T0*'
_output_shapes
:��������� }
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell/MatMulMatMullstm_cell/mul:z:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:��������� j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:��������� s
lstm_cell/mul_1Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:��������� }
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:��������� t
lstm_cell/add_1AddV2lstm_cell/mul_1:z:0lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:��������� j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:��������� _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell/mul_3Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:��������� n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : h
TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2_2TensorListReserve&TensorArrayV2_2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
7TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensortranspose_1:y:0@TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:���^

zeros_like	ZerosLikelstm_cell/mul_3:z:0*
T0*'
_output_shapes
:��������� c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros_like:y:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:09TensorArrayUnstack_1/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *
bodyR
while_body_265640*
condR
while_cond_265639*`
output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:i��������� *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_2	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_2/perm:output:0*
T0*+
_output_shapes
:���������i [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_2:y:0^NoOp*
T0*+
_output_shapes
:���������i _

Identity_1Identitywhile:output:5^NoOp*
T0*'
_output_shapes
:��������� _

Identity_2Identitywhile:output:6^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������i :���������i: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������i 
 
_user_specified_nameinputs:MI
'
_output_shapes
:���������i

_user_specified_namemask
�
�
1__inference_shared_embedding_layer_call_fn_264912

inputs
unknown:	� 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_shared_embedding_layer_call_and_return_conditional_losses_262773s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������i `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������i: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������i
 
_user_specified_nameinputs
�M
�

while_body_265427
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0[
Wwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	 �E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	 �@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_identity_6
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorY
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	 �C
0while_lstm_cell_matmul_1_readvariableop_resource:	 �>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype0�
9while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
+while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0while_placeholderBwhile/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0

while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:��������� �
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_3/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:��������� v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:��������� �
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_4*
T0*'
_output_shapes
:��������� n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:��������� �
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/add_1AddV2while/lstm_cell/mul_1:z:0while/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:��������� v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:��������� k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/mul_3Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:��������� e
while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �

while/TileTile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
while/SelectV2SelectV2while/Tile:output:0while/lstm_cell/mul_3:z:0while_placeholder_2*
T0*'
_output_shapes
:��������� g
while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
while/Tile_1Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������g
while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
while/Tile_2Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
while/SelectV2_1SelectV2while/Tile_1:output:0while/lstm_cell/mul_3:z:0while_placeholder_3*
T0*'
_output_shapes
:��������� �
while/SelectV2_2SelectV2while/Tile_2:output:0while/lstm_cell/add_1:z:0while_placeholder_4*
T0*'
_output_shapes
:��������� �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: t
while/Identity_4Identitywhile/SelectV2:output:0^while/NoOp*
T0*'
_output_shapes
:��������� v
while/Identity_5Identitywhile/SelectV2_1:output:0^while/NoOp*
T0*'
_output_shapes
:��������� v
while/Identity_6Identitywhile/SelectV2_2:output:0^while/NoOp*
T0*'
_output_shapes
:��������� �

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"-
while_identity_6while/Identity_6:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :��������� :��������� :��������� : : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
�
�
while_cond_265892
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_265892___redundant_placeholder04
0while_while_cond_265892___redundant_placeholder14
0while_while_cond_265892___redundant_placeholder24
0while_while_cond_265892___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�8
�
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_262745

inputs%
lstm_cell_1_262663:	 �%
lstm_cell_1_262665:	 �!
lstm_cell_1_262667:	�
identity��#lstm_cell_1/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������ D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask�
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1_262663lstm_cell_1_262665lstm_cell_1_262667*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_262617n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1_262663lstm_cell_1_262665lstm_cell_1_262667*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_262676*
condR
while_cond_262675*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������ t
NoOpNoOp$^lstm_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������ : : : 2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������ 
 
_user_specified_nameinputs
�:
�
E__inference_lstm_cell_layer_call_and_return_conditional_losses_266774

inputs
states_0
states_11
matmul_readvariableop_resource:	 �3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:��������� R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?p
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:��������� O
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2����[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:��������� T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?t
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:��������� Q
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:�
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� s
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� o
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:��������� T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?t
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:��������� Q
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:�
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� s
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� o
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:��������� T
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?t
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:��������� Q
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:�
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� s
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� o
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:��������� W
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0k
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:��������� W
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� N
ReluRelusplit:output:2*
T0*'
_output_shapes
:��������� _
mul_2MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:��������� V
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:��������� K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:��������� c
mul_3MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:��������� X
IdentityIdentity	mul_3:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_1Identity	mul_3:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:��������� :��������� :��������� : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
��
�	
I__inference_seq2seq_model_layer_call_and_return_conditional_losses_264395
inputs_0
inputs_1;
(shared_embedding_embedding_lookup_264018:	� J
7encoder_lstm_1_lstm_cell_matmul_readvariableop_resource:	 �L
9encoder_lstm_1_lstm_cell_matmul_1_readvariableop_resource:	 �G
8encoder_lstm_1_lstm_cell_biasadd_readvariableop_resource:	�L
9decoder_lstm_1_lstm_cell_1_matmul_readvariableop_resource:	 �N
;decoder_lstm_1_lstm_cell_1_matmul_1_readvariableop_resource:	 �I
:decoder_lstm_1_lstm_cell_1_biasadd_readvariableop_resource:	�B
/decoder_dense_tensordot_readvariableop_resource:	 �<
-decoder_dense_biasadd_readvariableop_resource:	�
identity��$decoder_dense/BiasAdd/ReadVariableOp�&decoder_dense/Tensordot/ReadVariableOp�1decoder_lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp�0decoder_lstm_1/lstm_cell_1/MatMul/ReadVariableOp�2decoder_lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp�decoder_lstm_1/while�/encoder_lstm_1/lstm_cell/BiasAdd/ReadVariableOp�.encoder_lstm_1/lstm_cell/MatMul/ReadVariableOp�0encoder_lstm_1/lstm_cell/MatMul_1/ReadVariableOp�encoder_lstm_1/while�!shared_embedding/embedding_lookup�#shared_embedding/embedding_lookup_1h
shared_embedding/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:���������i�
!shared_embedding/embedding_lookupResourceGather(shared_embedding_embedding_lookup_264018shared_embedding/Cast:y:0*
Tindices0*;
_class1
/-loc:@shared_embedding/embedding_lookup/264018*+
_output_shapes
:���������i *
dtype0�
*shared_embedding/embedding_lookup/IdentityIdentity*shared_embedding/embedding_lookup:output:0*
T0*;
_class1
/-loc:@shared_embedding/embedding_lookup/264018*+
_output_shapes
:���������i �
,shared_embedding/embedding_lookup/Identity_1Identity3shared_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������i `
shared_embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
shared_embedding/NotEqualNotEqualinputs_1$shared_embedding/NotEqual/y:output:0*
T0*'
_output_shapes
:���������ij
shared_embedding/Cast_1Castinputs_0*

DstT0*

SrcT0*'
_output_shapes
:���������i�
#shared_embedding/embedding_lookup_1ResourceGather(shared_embedding_embedding_lookup_264018shared_embedding/Cast_1:y:0*
Tindices0*;
_class1
/-loc:@shared_embedding/embedding_lookup/264018*+
_output_shapes
:���������i *
dtype0�
,shared_embedding/embedding_lookup_1/IdentityIdentity,shared_embedding/embedding_lookup_1:output:0*
T0*;
_class1
/-loc:@shared_embedding/embedding_lookup/264018*+
_output_shapes
:���������i �
.shared_embedding/embedding_lookup_1/Identity_1Identity5shared_embedding/embedding_lookup_1/Identity:output:0*
T0*+
_output_shapes
:���������i b
shared_embedding/NotEqual_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
shared_embedding/NotEqual_1NotEqualinputs_0&shared_embedding/NotEqual_1/y:output:0*
T0*'
_output_shapes
:���������i{
encoder_lstm_1/ShapeShape7shared_embedding/embedding_lookup_1/Identity_1:output:0*
T0*
_output_shapes
:l
"encoder_lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$encoder_lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$encoder_lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
encoder_lstm_1/strided_sliceStridedSliceencoder_lstm_1/Shape:output:0+encoder_lstm_1/strided_slice/stack:output:0-encoder_lstm_1/strided_slice/stack_1:output:0-encoder_lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
encoder_lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : �
encoder_lstm_1/zeros/packedPack%encoder_lstm_1/strided_slice:output:0&encoder_lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
encoder_lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
encoder_lstm_1/zerosFill$encoder_lstm_1/zeros/packed:output:0#encoder_lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:��������� a
encoder_lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : �
encoder_lstm_1/zeros_1/packedPack%encoder_lstm_1/strided_slice:output:0(encoder_lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:a
encoder_lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
encoder_lstm_1/zeros_1Fill&encoder_lstm_1/zeros_1/packed:output:0%encoder_lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� r
encoder_lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
encoder_lstm_1/transpose	Transpose7shared_embedding/embedding_lookup_1/Identity_1:output:0&encoder_lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:i��������� b
encoder_lstm_1/Shape_1Shapeencoder_lstm_1/transpose:y:0*
T0*
_output_shapes
:n
$encoder_lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&encoder_lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&encoder_lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
encoder_lstm_1/strided_slice_1StridedSliceencoder_lstm_1/Shape_1:output:0-encoder_lstm_1/strided_slice_1/stack:output:0/encoder_lstm_1/strided_slice_1/stack_1:output:0/encoder_lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
encoder_lstm_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
encoder_lstm_1/ExpandDims
ExpandDimsshared_embedding/NotEqual_1:z:0&encoder_lstm_1/ExpandDims/dim:output:0*
T0
*+
_output_shapes
:���������it
encoder_lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
encoder_lstm_1/transpose_1	Transpose"encoder_lstm_1/ExpandDims:output:0(encoder_lstm_1/transpose_1/perm:output:0*
T0
*+
_output_shapes
:i���������u
*encoder_lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
encoder_lstm_1/TensorArrayV2TensorListReserve3encoder_lstm_1/TensorArrayV2/element_shape:output:0'encoder_lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Dencoder_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
6encoder_lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorencoder_lstm_1/transpose:y:0Mencoder_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���n
$encoder_lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&encoder_lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&encoder_lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
encoder_lstm_1/strided_slice_2StridedSliceencoder_lstm_1/transpose:y:0-encoder_lstm_1/strided_slice_2/stack:output:0/encoder_lstm_1/strided_slice_2/stack_1:output:0/encoder_lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask
(encoder_lstm_1/lstm_cell/ones_like/ShapeShape'encoder_lstm_1/strided_slice_2:output:0*
T0*
_output_shapes
:m
(encoder_lstm_1/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
"encoder_lstm_1/lstm_cell/ones_likeFill1encoder_lstm_1/lstm_cell/ones_like/Shape:output:01encoder_lstm_1/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� �
encoder_lstm_1/lstm_cell/mulMul'encoder_lstm_1/strided_slice_2:output:0+encoder_lstm_1/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:��������� �
.encoder_lstm_1/lstm_cell/MatMul/ReadVariableOpReadVariableOp7encoder_lstm_1_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
encoder_lstm_1/lstm_cell/MatMulMatMul encoder_lstm_1/lstm_cell/mul:z:06encoder_lstm_1/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0encoder_lstm_1/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp9encoder_lstm_1_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
!encoder_lstm_1/lstm_cell/MatMul_1MatMulencoder_lstm_1/zeros:output:08encoder_lstm_1/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
encoder_lstm_1/lstm_cell/addAddV2)encoder_lstm_1/lstm_cell/MatMul:product:0+encoder_lstm_1/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
/encoder_lstm_1/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp8encoder_lstm_1_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
 encoder_lstm_1/lstm_cell/BiasAddBiasAdd encoder_lstm_1/lstm_cell/add:z:07encoder_lstm_1/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������j
(encoder_lstm_1/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
encoder_lstm_1/lstm_cell/splitSplit1encoder_lstm_1/lstm_cell/split/split_dim:output:0)encoder_lstm_1/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split�
 encoder_lstm_1/lstm_cell/SigmoidSigmoid'encoder_lstm_1/lstm_cell/split:output:0*
T0*'
_output_shapes
:��������� �
"encoder_lstm_1/lstm_cell/Sigmoid_1Sigmoid'encoder_lstm_1/lstm_cell/split:output:1*
T0*'
_output_shapes
:��������� �
encoder_lstm_1/lstm_cell/mul_1Mul&encoder_lstm_1/lstm_cell/Sigmoid_1:y:0encoder_lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:��������� �
encoder_lstm_1/lstm_cell/ReluRelu'encoder_lstm_1/lstm_cell/split:output:2*
T0*'
_output_shapes
:��������� �
encoder_lstm_1/lstm_cell/mul_2Mul$encoder_lstm_1/lstm_cell/Sigmoid:y:0+encoder_lstm_1/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:��������� �
encoder_lstm_1/lstm_cell/add_1AddV2"encoder_lstm_1/lstm_cell/mul_1:z:0"encoder_lstm_1/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:��������� �
"encoder_lstm_1/lstm_cell/Sigmoid_2Sigmoid'encoder_lstm_1/lstm_cell/split:output:3*
T0*'
_output_shapes
:��������� }
encoder_lstm_1/lstm_cell/Relu_1Relu"encoder_lstm_1/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:��������� �
encoder_lstm_1/lstm_cell/mul_3Mul&encoder_lstm_1/lstm_cell/Sigmoid_2:y:0-encoder_lstm_1/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:��������� }
,encoder_lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
encoder_lstm_1/TensorArrayV2_1TensorListReserve5encoder_lstm_1/TensorArrayV2_1/element_shape:output:0'encoder_lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���U
encoder_lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,encoder_lstm_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
encoder_lstm_1/TensorArrayV2_2TensorListReserve5encoder_lstm_1/TensorArrayV2_2/element_shape:output:0'encoder_lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
Fencoder_lstm_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
8encoder_lstm_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensorencoder_lstm_1/transpose_1:y:0Oencoder_lstm_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:���|
encoder_lstm_1/zeros_like	ZerosLike"encoder_lstm_1/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:��������� r
'encoder_lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������c
!encoder_lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
encoder_lstm_1/whileWhile*encoder_lstm_1/while/loop_counter:output:00encoder_lstm_1/while/maximum_iterations:output:0encoder_lstm_1/time:output:0'encoder_lstm_1/TensorArrayV2_1:handle:0encoder_lstm_1/zeros_like:y:0encoder_lstm_1/zeros:output:0encoder_lstm_1/zeros_1:output:0'encoder_lstm_1/strided_slice_1:output:0Fencoder_lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Hencoder_lstm_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:07encoder_lstm_1_lstm_cell_matmul_readvariableop_resource9encoder_lstm_1_lstm_cell_matmul_1_readvariableop_resource8encoder_lstm_1_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *,
body$R"
 encoder_lstm_1_while_body_264101*,
cond$R"
 encoder_lstm_1_while_cond_264100*`
output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *
parallel_iterations �
?encoder_lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
1encoder_lstm_1/TensorArrayV2Stack/TensorListStackTensorListStackencoder_lstm_1/while:output:3Hencoder_lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:i��������� *
element_dtype0w
$encoder_lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������p
&encoder_lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&encoder_lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
encoder_lstm_1/strided_slice_3StridedSlice:encoder_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0-encoder_lstm_1/strided_slice_3/stack:output:0/encoder_lstm_1/strided_slice_3/stack_1:output:0/encoder_lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maskt
encoder_lstm_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
encoder_lstm_1/transpose_2	Transpose:encoder_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0(encoder_lstm_1/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������i j
encoder_lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
decoder_lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
decoder_lstm_1/transpose	Transpose5shared_embedding/embedding_lookup/Identity_1:output:0&decoder_lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:i��������� `
decoder_lstm_1/ShapeShapedecoder_lstm_1/transpose:y:0*
T0*
_output_shapes
:l
"decoder_lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$decoder_lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$decoder_lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
decoder_lstm_1/strided_sliceStridedSlicedecoder_lstm_1/Shape:output:0+decoder_lstm_1/strided_slice/stack:output:0-decoder_lstm_1/strided_slice/stack_1:output:0-decoder_lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
decoder_lstm_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
decoder_lstm_1/ExpandDims
ExpandDimsshared_embedding/NotEqual:z:0&decoder_lstm_1/ExpandDims/dim:output:0*
T0
*+
_output_shapes
:���������it
decoder_lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
decoder_lstm_1/transpose_1	Transpose"decoder_lstm_1/ExpandDims:output:0(decoder_lstm_1/transpose_1/perm:output:0*
T0
*+
_output_shapes
:i���������u
*decoder_lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
decoder_lstm_1/TensorArrayV2TensorListReserve3decoder_lstm_1/TensorArrayV2/element_shape:output:0%decoder_lstm_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Ddecoder_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
6decoder_lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensordecoder_lstm_1/transpose:y:0Mdecoder_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���n
$decoder_lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&decoder_lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&decoder_lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
decoder_lstm_1/strided_slice_1StridedSlicedecoder_lstm_1/transpose:y:0-decoder_lstm_1/strided_slice_1/stack:output:0/decoder_lstm_1/strided_slice_1/stack_1:output:0/decoder_lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask�
*decoder_lstm_1/lstm_cell_1/ones_like/ShapeShape'decoder_lstm_1/strided_slice_1:output:0*
T0*
_output_shapes
:o
*decoder_lstm_1/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$decoder_lstm_1/lstm_cell_1/ones_likeFill3decoder_lstm_1/lstm_cell_1/ones_like/Shape:output:03decoder_lstm_1/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� �
decoder_lstm_1/lstm_cell_1/mulMul'decoder_lstm_1/strided_slice_1:output:0-decoder_lstm_1/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:��������� �
0decoder_lstm_1/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp9decoder_lstm_1_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
!decoder_lstm_1/lstm_cell_1/MatMulMatMul"decoder_lstm_1/lstm_cell_1/mul:z:08decoder_lstm_1/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2decoder_lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp;decoder_lstm_1_lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
#decoder_lstm_1/lstm_cell_1/MatMul_1MatMulencoder_lstm_1/while:output:5:decoder_lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
decoder_lstm_1/lstm_cell_1/addAddV2+decoder_lstm_1/lstm_cell_1/MatMul:product:0-decoder_lstm_1/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
1decoder_lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp:decoder_lstm_1_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"decoder_lstm_1/lstm_cell_1/BiasAddBiasAdd"decoder_lstm_1/lstm_cell_1/add:z:09decoder_lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������l
*decoder_lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 decoder_lstm_1/lstm_cell_1/splitSplit3decoder_lstm_1/lstm_cell_1/split/split_dim:output:0+decoder_lstm_1/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split�
"decoder_lstm_1/lstm_cell_1/SigmoidSigmoid)decoder_lstm_1/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:��������� �
$decoder_lstm_1/lstm_cell_1/Sigmoid_1Sigmoid)decoder_lstm_1/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:��������� �
 decoder_lstm_1/lstm_cell_1/mul_1Mul(decoder_lstm_1/lstm_cell_1/Sigmoid_1:y:0encoder_lstm_1/while:output:6*
T0*'
_output_shapes
:��������� �
decoder_lstm_1/lstm_cell_1/ReluRelu)decoder_lstm_1/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:��������� �
 decoder_lstm_1/lstm_cell_1/mul_2Mul&decoder_lstm_1/lstm_cell_1/Sigmoid:y:0-decoder_lstm_1/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:��������� �
 decoder_lstm_1/lstm_cell_1/add_1AddV2$decoder_lstm_1/lstm_cell_1/mul_1:z:0$decoder_lstm_1/lstm_cell_1/mul_2:z:0*
T0*'
_output_shapes
:��������� �
$decoder_lstm_1/lstm_cell_1/Sigmoid_2Sigmoid)decoder_lstm_1/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:��������� �
!decoder_lstm_1/lstm_cell_1/Relu_1Relu$decoder_lstm_1/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:��������� �
 decoder_lstm_1/lstm_cell_1/mul_3Mul(decoder_lstm_1/lstm_cell_1/Sigmoid_2:y:0/decoder_lstm_1/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:��������� }
,decoder_lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
decoder_lstm_1/TensorArrayV2_1TensorListReserve5decoder_lstm_1/TensorArrayV2_1/element_shape:output:0%decoder_lstm_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���U
decoder_lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,decoder_lstm_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
decoder_lstm_1/TensorArrayV2_2TensorListReserve5decoder_lstm_1/TensorArrayV2_2/element_shape:output:0%decoder_lstm_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
Fdecoder_lstm_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
8decoder_lstm_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensordecoder_lstm_1/transpose_1:y:0Odecoder_lstm_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:���~
decoder_lstm_1/zeros_like	ZerosLike$decoder_lstm_1/lstm_cell_1/mul_3:z:0*
T0*'
_output_shapes
:��������� r
'decoder_lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������c
!decoder_lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
decoder_lstm_1/whileWhile*decoder_lstm_1/while/loop_counter:output:00decoder_lstm_1/while/maximum_iterations:output:0decoder_lstm_1/time:output:0'decoder_lstm_1/TensorArrayV2_1:handle:0decoder_lstm_1/zeros_like:y:0encoder_lstm_1/while:output:5encoder_lstm_1/while:output:6%decoder_lstm_1/strided_slice:output:0Fdecoder_lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Hdecoder_lstm_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:09decoder_lstm_1_lstm_cell_1_matmul_readvariableop_resource;decoder_lstm_1_lstm_cell_1_matmul_1_readvariableop_resource:decoder_lstm_1_lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *,
body$R"
 decoder_lstm_1_while_body_264262*,
cond$R"
 decoder_lstm_1_while_cond_264261*`
output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *
parallel_iterations �
?decoder_lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
1decoder_lstm_1/TensorArrayV2Stack/TensorListStackTensorListStackdecoder_lstm_1/while:output:3Hdecoder_lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:i��������� *
element_dtype0w
$decoder_lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������p
&decoder_lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&decoder_lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
decoder_lstm_1/strided_slice_2StridedSlice:decoder_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0-decoder_lstm_1/strided_slice_2/stack:output:0/decoder_lstm_1/strided_slice_2/stack_1:output:0/decoder_lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maskt
decoder_lstm_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
decoder_lstm_1/transpose_2	Transpose:decoder_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0(decoder_lstm_1/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������i j
decoder_lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
&decoder_dense/Tensordot/ReadVariableOpReadVariableOp/decoder_dense_tensordot_readvariableop_resource*
_output_shapes
:	 �*
dtype0f
decoder_dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:m
decoder_dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       k
decoder_dense/Tensordot/ShapeShapedecoder_lstm_1/transpose_2:y:0*
T0*
_output_shapes
:g
%decoder_dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
 decoder_dense/Tensordot/GatherV2GatherV2&decoder_dense/Tensordot/Shape:output:0%decoder_dense/Tensordot/free:output:0.decoder_dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
'decoder_dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"decoder_dense/Tensordot/GatherV2_1GatherV2&decoder_dense/Tensordot/Shape:output:0%decoder_dense/Tensordot/axes:output:00decoder_dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
decoder_dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
decoder_dense/Tensordot/ProdProd)decoder_dense/Tensordot/GatherV2:output:0&decoder_dense/Tensordot/Const:output:0*
T0*
_output_shapes
: i
decoder_dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
decoder_dense/Tensordot/Prod_1Prod+decoder_dense/Tensordot/GatherV2_1:output:0(decoder_dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: e
#decoder_dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
decoder_dense/Tensordot/concatConcatV2%decoder_dense/Tensordot/free:output:0%decoder_dense/Tensordot/axes:output:0,decoder_dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
decoder_dense/Tensordot/stackPack%decoder_dense/Tensordot/Prod:output:0'decoder_dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
!decoder_dense/Tensordot/transpose	Transposedecoder_lstm_1/transpose_2:y:0'decoder_dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������i �
decoder_dense/Tensordot/ReshapeReshape%decoder_dense/Tensordot/transpose:y:0&decoder_dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
decoder_dense/Tensordot/MatMulMatMul(decoder_dense/Tensordot/Reshape:output:0.decoder_dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������j
decoder_dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�g
%decoder_dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
 decoder_dense/Tensordot/concat_1ConcatV2)decoder_dense/Tensordot/GatherV2:output:0(decoder_dense/Tensordot/Const_2:output:0.decoder_dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
decoder_dense/TensordotReshape(decoder_dense/Tensordot/MatMul:product:0)decoder_dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:���������i��
$decoder_dense/BiasAdd/ReadVariableOpReadVariableOp-decoder_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
decoder_dense/BiasAddBiasAdd decoder_dense/Tensordot:output:0,decoder_dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������i�w
decoder_dense/SoftmaxSoftmaxdecoder_dense/BiasAdd:output:0*
T0*,
_output_shapes
:���������i�s
IdentityIdentitydecoder_dense/Softmax:softmax:0^NoOp*
T0*,
_output_shapes
:���������i��
NoOpNoOp%^decoder_dense/BiasAdd/ReadVariableOp'^decoder_dense/Tensordot/ReadVariableOp2^decoder_lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp1^decoder_lstm_1/lstm_cell_1/MatMul/ReadVariableOp3^decoder_lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp^decoder_lstm_1/while0^encoder_lstm_1/lstm_cell/BiasAdd/ReadVariableOp/^encoder_lstm_1/lstm_cell/MatMul/ReadVariableOp1^encoder_lstm_1/lstm_cell/MatMul_1/ReadVariableOp^encoder_lstm_1/while"^shared_embedding/embedding_lookup$^shared_embedding/embedding_lookup_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������i:���������i: : : : : : : : : 2L
$decoder_dense/BiasAdd/ReadVariableOp$decoder_dense/BiasAdd/ReadVariableOp2P
&decoder_dense/Tensordot/ReadVariableOp&decoder_dense/Tensordot/ReadVariableOp2f
1decoder_lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp1decoder_lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp2d
0decoder_lstm_1/lstm_cell_1/MatMul/ReadVariableOp0decoder_lstm_1/lstm_cell_1/MatMul/ReadVariableOp2h
2decoder_lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp2decoder_lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp2,
decoder_lstm_1/whiledecoder_lstm_1/while2b
/encoder_lstm_1/lstm_cell/BiasAdd/ReadVariableOp/encoder_lstm_1/lstm_cell/BiasAdd/ReadVariableOp2`
.encoder_lstm_1/lstm_cell/MatMul/ReadVariableOp.encoder_lstm_1/lstm_cell/MatMul/ReadVariableOp2d
0encoder_lstm_1/lstm_cell/MatMul_1/ReadVariableOp0encoder_lstm_1/lstm_cell/MatMul_1/ReadVariableOp2,
encoder_lstm_1/whileencoder_lstm_1/while2F
!shared_embedding/embedding_lookup!shared_embedding/embedding_lookup2J
#shared_embedding/embedding_lookup_1#shared_embedding/embedding_lookup_1:Q M
'
_output_shapes
:���������i
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������i
"
_user_specified_name
inputs/1
��
�
 decoder_lstm_1_while_body_264740:
6decoder_lstm_1_while_decoder_lstm_1_while_loop_counter@
<decoder_lstm_1_while_decoder_lstm_1_while_maximum_iterations$
 decoder_lstm_1_while_placeholder&
"decoder_lstm_1_while_placeholder_1&
"decoder_lstm_1_while_placeholder_2&
"decoder_lstm_1_while_placeholder_3&
"decoder_lstm_1_while_placeholder_47
3decoder_lstm_1_while_decoder_lstm_1_strided_slice_0u
qdecoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_decoder_lstm_1_tensorarrayunstack_tensorlistfromtensor_0y
udecoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_decoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensor_0T
Adecoder_lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0:	 �V
Cdecoder_lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0:	 �Q
Bdecoder_lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0:	�!
decoder_lstm_1_while_identity#
decoder_lstm_1_while_identity_1#
decoder_lstm_1_while_identity_2#
decoder_lstm_1_while_identity_3#
decoder_lstm_1_while_identity_4#
decoder_lstm_1_while_identity_5#
decoder_lstm_1_while_identity_65
1decoder_lstm_1_while_decoder_lstm_1_strided_slices
odecoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_decoder_lstm_1_tensorarrayunstack_tensorlistfromtensorw
sdecoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_decoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensorR
?decoder_lstm_1_while_lstm_cell_1_matmul_readvariableop_resource:	 �T
Adecoder_lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource:	 �O
@decoder_lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource:	���7decoder_lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp�6decoder_lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp�8decoder_lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp�
Fdecoder_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
8decoder_lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqdecoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_decoder_lstm_1_tensorarrayunstack_tensorlistfromtensor_0 decoder_lstm_1_while_placeholderOdecoder_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype0�
Hdecoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
:decoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemudecoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_decoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensor_0 decoder_lstm_1_while_placeholderQdecoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
�
0decoder_lstm_1/while/lstm_cell_1/ones_like/ShapeShape?decoder_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:u
0decoder_lstm_1/while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
*decoder_lstm_1/while/lstm_cell_1/ones_likeFill9decoder_lstm_1/while/lstm_cell_1/ones_like/Shape:output:09decoder_lstm_1/while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� s
.decoder_lstm_1/while/lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
,decoder_lstm_1/while/lstm_cell_1/dropout/MulMul3decoder_lstm_1/while/lstm_cell_1/ones_like:output:07decoder_lstm_1/while/lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:��������� �
.decoder_lstm_1/while/lstm_cell_1/dropout/ShapeShape3decoder_lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
Edecoder_lstm_1/while/lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform7decoder_lstm_1/while/lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2����|
7decoder_lstm_1/while/lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
5decoder_lstm_1/while/lstm_cell_1/dropout/GreaterEqualGreaterEqualNdecoder_lstm_1/while/lstm_cell_1/dropout/random_uniform/RandomUniform:output:0@decoder_lstm_1/while/lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
-decoder_lstm_1/while/lstm_cell_1/dropout/CastCast9decoder_lstm_1/while/lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
.decoder_lstm_1/while/lstm_cell_1/dropout/Mul_1Mul0decoder_lstm_1/while/lstm_cell_1/dropout/Mul:z:01decoder_lstm_1/while/lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:��������� u
0decoder_lstm_1/while/lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
.decoder_lstm_1/while/lstm_cell_1/dropout_1/MulMul3decoder_lstm_1/while/lstm_cell_1/ones_like:output:09decoder_lstm_1/while/lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:��������� �
0decoder_lstm_1/while/lstm_cell_1/dropout_1/ShapeShape3decoder_lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
Gdecoder_lstm_1/while/lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform9decoder_lstm_1/while/lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2~
9decoder_lstm_1/while/lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
7decoder_lstm_1/while/lstm_cell_1/dropout_1/GreaterEqualGreaterEqualPdecoder_lstm_1/while/lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:0Bdecoder_lstm_1/while/lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
/decoder_lstm_1/while/lstm_cell_1/dropout_1/CastCast;decoder_lstm_1/while/lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
0decoder_lstm_1/while/lstm_cell_1/dropout_1/Mul_1Mul2decoder_lstm_1/while/lstm_cell_1/dropout_1/Mul:z:03decoder_lstm_1/while/lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:��������� u
0decoder_lstm_1/while/lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
.decoder_lstm_1/while/lstm_cell_1/dropout_2/MulMul3decoder_lstm_1/while/lstm_cell_1/ones_like:output:09decoder_lstm_1/while/lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:��������� �
0decoder_lstm_1/while/lstm_cell_1/dropout_2/ShapeShape3decoder_lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
Gdecoder_lstm_1/while/lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform9decoder_lstm_1/while/lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2~
9decoder_lstm_1/while/lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
7decoder_lstm_1/while/lstm_cell_1/dropout_2/GreaterEqualGreaterEqualPdecoder_lstm_1/while/lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:0Bdecoder_lstm_1/while/lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
/decoder_lstm_1/while/lstm_cell_1/dropout_2/CastCast;decoder_lstm_1/while/lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
0decoder_lstm_1/while/lstm_cell_1/dropout_2/Mul_1Mul2decoder_lstm_1/while/lstm_cell_1/dropout_2/Mul:z:03decoder_lstm_1/while/lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:��������� u
0decoder_lstm_1/while/lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
.decoder_lstm_1/while/lstm_cell_1/dropout_3/MulMul3decoder_lstm_1/while/lstm_cell_1/ones_like:output:09decoder_lstm_1/while/lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:��������� �
0decoder_lstm_1/while/lstm_cell_1/dropout_3/ShapeShape3decoder_lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
Gdecoder_lstm_1/while/lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform9decoder_lstm_1/while/lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2~
9decoder_lstm_1/while/lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
7decoder_lstm_1/while/lstm_cell_1/dropout_3/GreaterEqualGreaterEqualPdecoder_lstm_1/while/lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:0Bdecoder_lstm_1/while/lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
/decoder_lstm_1/while/lstm_cell_1/dropout_3/CastCast;decoder_lstm_1/while/lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
0decoder_lstm_1/while/lstm_cell_1/dropout_3/Mul_1Mul2decoder_lstm_1/while/lstm_cell_1/dropout_3/Mul:z:03decoder_lstm_1/while/lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:��������� �
$decoder_lstm_1/while/lstm_cell_1/mulMul?decoder_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:02decoder_lstm_1/while/lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� �
6decoder_lstm_1/while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOpAdecoder_lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
'decoder_lstm_1/while/lstm_cell_1/MatMulMatMul(decoder_lstm_1/while/lstm_cell_1/mul:z:0>decoder_lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8decoder_lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpCdecoder_lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
)decoder_lstm_1/while/lstm_cell_1/MatMul_1MatMul"decoder_lstm_1_while_placeholder_3@decoder_lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$decoder_lstm_1/while/lstm_cell_1/addAddV21decoder_lstm_1/while/lstm_cell_1/MatMul:product:03decoder_lstm_1/while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
7decoder_lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOpBdecoder_lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
(decoder_lstm_1/while/lstm_cell_1/BiasAddBiasAdd(decoder_lstm_1/while/lstm_cell_1/add:z:0?decoder_lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������r
0decoder_lstm_1/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
&decoder_lstm_1/while/lstm_cell_1/splitSplit9decoder_lstm_1/while/lstm_cell_1/split/split_dim:output:01decoder_lstm_1/while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split�
(decoder_lstm_1/while/lstm_cell_1/SigmoidSigmoid/decoder_lstm_1/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:��������� �
*decoder_lstm_1/while/lstm_cell_1/Sigmoid_1Sigmoid/decoder_lstm_1/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:��������� �
&decoder_lstm_1/while/lstm_cell_1/mul_1Mul.decoder_lstm_1/while/lstm_cell_1/Sigmoid_1:y:0"decoder_lstm_1_while_placeholder_4*
T0*'
_output_shapes
:��������� �
%decoder_lstm_1/while/lstm_cell_1/ReluRelu/decoder_lstm_1/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:��������� �
&decoder_lstm_1/while/lstm_cell_1/mul_2Mul,decoder_lstm_1/while/lstm_cell_1/Sigmoid:y:03decoder_lstm_1/while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:��������� �
&decoder_lstm_1/while/lstm_cell_1/add_1AddV2*decoder_lstm_1/while/lstm_cell_1/mul_1:z:0*decoder_lstm_1/while/lstm_cell_1/mul_2:z:0*
T0*'
_output_shapes
:��������� �
*decoder_lstm_1/while/lstm_cell_1/Sigmoid_2Sigmoid/decoder_lstm_1/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:��������� �
'decoder_lstm_1/while/lstm_cell_1/Relu_1Relu*decoder_lstm_1/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:��������� �
&decoder_lstm_1/while/lstm_cell_1/mul_3Mul.decoder_lstm_1/while/lstm_cell_1/Sigmoid_2:y:05decoder_lstm_1/while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:��������� t
#decoder_lstm_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
decoder_lstm_1/while/TileTileAdecoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0,decoder_lstm_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
decoder_lstm_1/while/SelectV2SelectV2"decoder_lstm_1/while/Tile:output:0*decoder_lstm_1/while/lstm_cell_1/mul_3:z:0"decoder_lstm_1_while_placeholder_2*
T0*'
_output_shapes
:��������� v
%decoder_lstm_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
decoder_lstm_1/while/Tile_1TileAdecoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0.decoder_lstm_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������v
%decoder_lstm_1/while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
decoder_lstm_1/while/Tile_2TileAdecoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0.decoder_lstm_1/while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
decoder_lstm_1/while/SelectV2_1SelectV2$decoder_lstm_1/while/Tile_1:output:0*decoder_lstm_1/while/lstm_cell_1/mul_3:z:0"decoder_lstm_1_while_placeholder_3*
T0*'
_output_shapes
:��������� �
decoder_lstm_1/while/SelectV2_2SelectV2$decoder_lstm_1/while/Tile_2:output:0*decoder_lstm_1/while/lstm_cell_1/add_1:z:0"decoder_lstm_1_while_placeholder_4*
T0*'
_output_shapes
:��������� �
9decoder_lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"decoder_lstm_1_while_placeholder_1 decoder_lstm_1_while_placeholder&decoder_lstm_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���\
decoder_lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
decoder_lstm_1/while/addAddV2 decoder_lstm_1_while_placeholder#decoder_lstm_1/while/add/y:output:0*
T0*
_output_shapes
: ^
decoder_lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
decoder_lstm_1/while/add_1AddV26decoder_lstm_1_while_decoder_lstm_1_while_loop_counter%decoder_lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: �
decoder_lstm_1/while/IdentityIdentitydecoder_lstm_1/while/add_1:z:0^decoder_lstm_1/while/NoOp*
T0*
_output_shapes
: �
decoder_lstm_1/while/Identity_1Identity<decoder_lstm_1_while_decoder_lstm_1_while_maximum_iterations^decoder_lstm_1/while/NoOp*
T0*
_output_shapes
: �
decoder_lstm_1/while/Identity_2Identitydecoder_lstm_1/while/add:z:0^decoder_lstm_1/while/NoOp*
T0*
_output_shapes
: �
decoder_lstm_1/while/Identity_3IdentityIdecoder_lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^decoder_lstm_1/while/NoOp*
T0*
_output_shapes
: �
decoder_lstm_1/while/Identity_4Identity&decoder_lstm_1/while/SelectV2:output:0^decoder_lstm_1/while/NoOp*
T0*'
_output_shapes
:��������� �
decoder_lstm_1/while/Identity_5Identity(decoder_lstm_1/while/SelectV2_1:output:0^decoder_lstm_1/while/NoOp*
T0*'
_output_shapes
:��������� �
decoder_lstm_1/while/Identity_6Identity(decoder_lstm_1/while/SelectV2_2:output:0^decoder_lstm_1/while/NoOp*
T0*'
_output_shapes
:��������� �
decoder_lstm_1/while/NoOpNoOp8^decoder_lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp7^decoder_lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp9^decoder_lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1decoder_lstm_1_while_decoder_lstm_1_strided_slice3decoder_lstm_1_while_decoder_lstm_1_strided_slice_0"G
decoder_lstm_1_while_identity&decoder_lstm_1/while/Identity:output:0"K
decoder_lstm_1_while_identity_1(decoder_lstm_1/while/Identity_1:output:0"K
decoder_lstm_1_while_identity_2(decoder_lstm_1/while/Identity_2:output:0"K
decoder_lstm_1_while_identity_3(decoder_lstm_1/while/Identity_3:output:0"K
decoder_lstm_1_while_identity_4(decoder_lstm_1/while/Identity_4:output:0"K
decoder_lstm_1_while_identity_5(decoder_lstm_1/while/Identity_5:output:0"K
decoder_lstm_1_while_identity_6(decoder_lstm_1/while/Identity_6:output:0"�
@decoder_lstm_1_while_lstm_cell_1_biasadd_readvariableop_resourceBdecoder_lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0"�
Adecoder_lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resourceCdecoder_lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0"�
?decoder_lstm_1_while_lstm_cell_1_matmul_readvariableop_resourceAdecoder_lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0"�
sdecoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_decoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensorudecoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_decoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensor_0"�
odecoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_decoder_lstm_1_tensorarrayunstack_tensorlistfromtensorqdecoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_decoder_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :��������� :��������� :��������� : : : : : : 2r
7decoder_lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp7decoder_lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp2p
6decoder_lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp6decoder_lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp2t
8decoder_lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp8decoder_lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
�
�
.__inference_seq2seq_model_layer_call_fn_263207
encoder_inputs
decoder_inputs
unknown:	� 
	unknown_0:	 �
	unknown_1:	 �
	unknown_2:	�
	unknown_3:	 �
	unknown_4:	 �
	unknown_5:	�
	unknown_6:	 �
	unknown_7:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallencoder_inputsdecoder_inputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������i�*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_seq2seq_model_layer_call_and_return_conditional_losses_263186t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:���������i�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������i:���������i: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:���������i
(
_user_specified_nameencoder_inputs:WS
'
_output_shapes
:���������i
(
_user_specified_namedecoder_inputs
�	
�
while_cond_266457
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_less_strided_slice4
0while_while_cond_266457___redundant_placeholder04
0while_while_cond_266457___redundant_placeholder14
0while_while_cond_266457___redundant_placeholder24
0while_while_cond_266457___redundant_placeholder34
0while_while_cond_266457___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :��������� :��������� :��������� : :::::: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�
�
*__inference_lstm_cell_layer_call_fn_266653

inputs
states_0
states_1
unknown:	 �
	unknown_0:	 �
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_262033o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:��������� q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:��������� :��������� :��������� : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�"
�
while_body_262047
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_262071_0:	 �+
while_lstm_cell_262073_0:	 �'
while_lstm_cell_262075_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_262071:	 �)
while_lstm_cell_262073:	 �%
while_lstm_cell_262075:	���'while/lstm_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype0�
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_262071_0while_lstm_cell_262073_0while_lstm_cell_262075_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_262033�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:��������� �
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:��������� v

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_262071while_lstm_cell_262071_0"2
while_lstm_cell_262073while_lstm_cell_262073_0"2
while_lstm_cell_262075while_lstm_cell_262075_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
�
while_cond_265046
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_265046___redundant_placeholder04
0while_while_cond_265046___redundant_placeholder14
0while_while_cond_265046___redundant_placeholder24
0while_while_cond_265046___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�8
�
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_262518

inputs%
lstm_cell_1_262436:	 �%
lstm_cell_1_262438:	 �!
lstm_cell_1_262440:	�
identity��#lstm_cell_1/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������ D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask�
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1_262436lstm_cell_1_262438lstm_cell_1_262440*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_262435n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1_262436lstm_cell_1_262438lstm_cell_1_262440*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_262449*
condR
while_cond_262448*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������ t
NoOpNoOp$^lstm_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������ : : : 2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������ 
 
_user_specified_nameinputs
�"
�
while_body_262280
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_262304_0:	 �+
while_lstm_cell_262306_0:	 �'
while_lstm_cell_262308_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_262304:	 �)
while_lstm_cell_262306:	 �%
while_lstm_cell_262308:	���'while/lstm_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype0�
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_262304_0while_lstm_cell_262306_0while_lstm_cell_262308_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_262221�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:��������� �
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:��������� v

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_262304while_lstm_cell_262304_0"2
while_lstm_cell_262306while_lstm_cell_262306_0"2
while_lstm_cell_262308while_lstm_cell_262308_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
�
.__inference_decoder_dense_layer_call_fn_266605

inputs
unknown:	 �
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������i�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_decoder_dense_layer_call_and_return_conditional_losses_263179t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:���������i�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������i : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������i 
 
_user_specified_nameinputs
�P
�
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_266364

inputs
mask

initial_state_0
initial_state_1=
*lstm_cell_1_matmul_readvariableop_resource:	 �?
,lstm_cell_1_matmul_1_readvariableop_resource:	 �:
+lstm_cell_1_biasadd_readvariableop_resource:	�
identity��"lstm_cell_1/BiasAdd/ReadVariableOp�!lstm_cell_1/MatMul/ReadVariableOp�#lstm_cell_1/MatMul_1/ReadVariableOp�whilec
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:i��������� B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
shrink_axis_maskY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������m

ExpandDims
ExpandDimsmaskExpandDims/dim:output:0*
T0
*+
_output_shapes
:���������ie
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
transpose_1	TransposeExpandDims:output:0transpose_1/perm:output:0*
T0
*+
_output_shapes
:i���������f
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maskc
lstm_cell_1/ones_like/ShapeShapestrided_slice_1:output:0*
T0*
_output_shapes
:`
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell_1/mulMulstrided_slice_1:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:��������� �
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell_1/MatMulMatMullstm_cell_1/mul:z:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell_1/MatMul_1MatMulinitial_state_0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:��������� n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:��������� v
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid_1:y:0initial_state_1*
T0*'
_output_shapes
:��������� f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:��������� �
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:��������� z
lstm_cell_1/add_1AddV2lstm_cell_1/mul_1:z:0lstm_cell_1/mul_2:z:0*
T0*'
_output_shapes
:��������� n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:��������� c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell_1/mul_3Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:��������� n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : h
TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2_2TensorListReserve&TensorArrayV2_2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
7TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensortranspose_1:y:0@TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:���`

zeros_like	ZerosLikelstm_cell_1/mul_3:z:0*
T0*'
_output_shapes
:��������� c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros_like:y:0initial_state_0initial_state_1strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:09TensorArrayUnstack_1/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *
bodyR
while_body_266258*
condR
while_cond_266257*`
output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:i��������� *
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_2	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_2/perm:output:0*
T0*+
_output_shapes
:���������i [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_2:y:0^NoOp*
T0*+
_output_shapes
:���������i �
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:���������i :���������i:��������� :��������� : : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������i 
 
_user_specified_nameinputs:MI
'
_output_shapes
:���������i

_user_specified_namemask:XT
'
_output_shapes
:��������� 
)
_user_specified_nameinitial_state/0:XT
'
_output_shapes
:��������� 
)
_user_specified_nameinitial_state/1
�	
�
while_cond_262854
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_less_strided_slice_14
0while_while_cond_262854___redundant_placeholder04
0while_while_cond_262854___redundant_placeholder14
0while_while_cond_262854___redundant_placeholder24
0while_while_cond_262854___redundant_placeholder34
0while_while_cond_262854___redundant_placeholder4
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :��������� :��������� :��������� : :::::: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�	
�
L__inference_shared_embedding_layer_call_and_return_conditional_losses_262773

inputs*
embedding_lookup_262767:	� 
identity��embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:���������i�
embedding_lookupResourceGatherembedding_lookup_262767Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/262767*+
_output_shapes
:���������i *
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/262767*+
_output_shapes
:���������i �
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������i w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:���������i Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������i: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:���������i
 
_user_specified_nameinputs
�
�
while_cond_262279
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_262279___redundant_placeholder04
0while_while_cond_262279___redundant_placeholder14
0while_while_cond_262279___redundant_placeholder24
0while_while_cond_262279___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�
�
 decoder_lstm_1_while_cond_264739:
6decoder_lstm_1_while_decoder_lstm_1_while_loop_counter@
<decoder_lstm_1_while_decoder_lstm_1_while_maximum_iterations$
 decoder_lstm_1_while_placeholder&
"decoder_lstm_1_while_placeholder_1&
"decoder_lstm_1_while_placeholder_2&
"decoder_lstm_1_while_placeholder_3&
"decoder_lstm_1_while_placeholder_4:
6decoder_lstm_1_while_less_decoder_lstm_1_strided_sliceR
Ndecoder_lstm_1_while_decoder_lstm_1_while_cond_264739___redundant_placeholder0R
Ndecoder_lstm_1_while_decoder_lstm_1_while_cond_264739___redundant_placeholder1R
Ndecoder_lstm_1_while_decoder_lstm_1_while_cond_264739___redundant_placeholder2R
Ndecoder_lstm_1_while_decoder_lstm_1_while_cond_264739___redundant_placeholder3R
Ndecoder_lstm_1_while_decoder_lstm_1_while_cond_264739___redundant_placeholder4!
decoder_lstm_1_while_identity
�
decoder_lstm_1/while/LessLess decoder_lstm_1_while_placeholder6decoder_lstm_1_while_less_decoder_lstm_1_strided_slice*
T0*
_output_shapes
: i
decoder_lstm_1/while/IdentityIdentitydecoder_lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "G
decoder_lstm_1_while_identity&decoder_lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :��������� :��������� :��������� : :::::: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�	
�
while_cond_265639
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_less_strided_slice_14
0while_while_cond_265639___redundant_placeholder04
0while_while_cond_265639___redundant_placeholder14
0while_while_cond_265639___redundant_placeholder24
0while_while_cond_265639___redundant_placeholder34
0while_while_cond_265639___redundant_placeholder4
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :��������� :��������� :��������� : :::::: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�e
�
 encoder_lstm_1_while_body_264101:
6encoder_lstm_1_while_encoder_lstm_1_while_loop_counter@
<encoder_lstm_1_while_encoder_lstm_1_while_maximum_iterations$
 encoder_lstm_1_while_placeholder&
"encoder_lstm_1_while_placeholder_1&
"encoder_lstm_1_while_placeholder_2&
"encoder_lstm_1_while_placeholder_3&
"encoder_lstm_1_while_placeholder_49
5encoder_lstm_1_while_encoder_lstm_1_strided_slice_1_0u
qencoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_encoder_lstm_1_tensorarrayunstack_tensorlistfromtensor_0y
uencoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_encoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensor_0R
?encoder_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0:	 �T
Aencoder_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0:	 �O
@encoder_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0:	�!
encoder_lstm_1_while_identity#
encoder_lstm_1_while_identity_1#
encoder_lstm_1_while_identity_2#
encoder_lstm_1_while_identity_3#
encoder_lstm_1_while_identity_4#
encoder_lstm_1_while_identity_5#
encoder_lstm_1_while_identity_67
3encoder_lstm_1_while_encoder_lstm_1_strided_slice_1s
oencoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_encoder_lstm_1_tensorarrayunstack_tensorlistfromtensorw
sencoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_encoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensorP
=encoder_lstm_1_while_lstm_cell_matmul_readvariableop_resource:	 �R
?encoder_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource:	 �M
>encoder_lstm_1_while_lstm_cell_biasadd_readvariableop_resource:	���5encoder_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp�4encoder_lstm_1/while/lstm_cell/MatMul/ReadVariableOp�6encoder_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp�
Fencoder_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
8encoder_lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqencoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_encoder_lstm_1_tensorarrayunstack_tensorlistfromtensor_0 encoder_lstm_1_while_placeholderOencoder_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype0�
Hencoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
:encoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemuencoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_encoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensor_0 encoder_lstm_1_while_placeholderQencoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
�
.encoder_lstm_1/while/lstm_cell/ones_like/ShapeShape?encoder_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:s
.encoder_lstm_1/while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
(encoder_lstm_1/while/lstm_cell/ones_likeFill7encoder_lstm_1/while/lstm_cell/ones_like/Shape:output:07encoder_lstm_1/while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� �
"encoder_lstm_1/while/lstm_cell/mulMul?encoder_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:01encoder_lstm_1/while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:��������� �
4encoder_lstm_1/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp?encoder_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
%encoder_lstm_1/while/lstm_cell/MatMulMatMul&encoder_lstm_1/while/lstm_cell/mul:z:0<encoder_lstm_1/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
6encoder_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAencoder_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
'encoder_lstm_1/while/lstm_cell/MatMul_1MatMul"encoder_lstm_1_while_placeholder_3>encoder_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"encoder_lstm_1/while/lstm_cell/addAddV2/encoder_lstm_1/while/lstm_cell/MatMul:product:01encoder_lstm_1/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
5encoder_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp@encoder_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
&encoder_lstm_1/while/lstm_cell/BiasAddBiasAdd&encoder_lstm_1/while/lstm_cell/add:z:0=encoder_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������p
.encoder_lstm_1/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
$encoder_lstm_1/while/lstm_cell/splitSplit7encoder_lstm_1/while/lstm_cell/split/split_dim:output:0/encoder_lstm_1/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split�
&encoder_lstm_1/while/lstm_cell/SigmoidSigmoid-encoder_lstm_1/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:��������� �
(encoder_lstm_1/while/lstm_cell/Sigmoid_1Sigmoid-encoder_lstm_1/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:��������� �
$encoder_lstm_1/while/lstm_cell/mul_1Mul,encoder_lstm_1/while/lstm_cell/Sigmoid_1:y:0"encoder_lstm_1_while_placeholder_4*
T0*'
_output_shapes
:��������� �
#encoder_lstm_1/while/lstm_cell/ReluRelu-encoder_lstm_1/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:��������� �
$encoder_lstm_1/while/lstm_cell/mul_2Mul*encoder_lstm_1/while/lstm_cell/Sigmoid:y:01encoder_lstm_1/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:��������� �
$encoder_lstm_1/while/lstm_cell/add_1AddV2(encoder_lstm_1/while/lstm_cell/mul_1:z:0(encoder_lstm_1/while/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:��������� �
(encoder_lstm_1/while/lstm_cell/Sigmoid_2Sigmoid-encoder_lstm_1/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:��������� �
%encoder_lstm_1/while/lstm_cell/Relu_1Relu(encoder_lstm_1/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:��������� �
$encoder_lstm_1/while/lstm_cell/mul_3Mul,encoder_lstm_1/while/lstm_cell/Sigmoid_2:y:03encoder_lstm_1/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:��������� t
#encoder_lstm_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
encoder_lstm_1/while/TileTileAencoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0,encoder_lstm_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
encoder_lstm_1/while/SelectV2SelectV2"encoder_lstm_1/while/Tile:output:0(encoder_lstm_1/while/lstm_cell/mul_3:z:0"encoder_lstm_1_while_placeholder_2*
T0*'
_output_shapes
:��������� v
%encoder_lstm_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
encoder_lstm_1/while/Tile_1TileAencoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0.encoder_lstm_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������v
%encoder_lstm_1/while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
encoder_lstm_1/while/Tile_2TileAencoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0.encoder_lstm_1/while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
encoder_lstm_1/while/SelectV2_1SelectV2$encoder_lstm_1/while/Tile_1:output:0(encoder_lstm_1/while/lstm_cell/mul_3:z:0"encoder_lstm_1_while_placeholder_3*
T0*'
_output_shapes
:��������� �
encoder_lstm_1/while/SelectV2_2SelectV2$encoder_lstm_1/while/Tile_2:output:0(encoder_lstm_1/while/lstm_cell/add_1:z:0"encoder_lstm_1_while_placeholder_4*
T0*'
_output_shapes
:��������� �
9encoder_lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"encoder_lstm_1_while_placeholder_1 encoder_lstm_1_while_placeholder&encoder_lstm_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���\
encoder_lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
encoder_lstm_1/while/addAddV2 encoder_lstm_1_while_placeholder#encoder_lstm_1/while/add/y:output:0*
T0*
_output_shapes
: ^
encoder_lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
encoder_lstm_1/while/add_1AddV26encoder_lstm_1_while_encoder_lstm_1_while_loop_counter%encoder_lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: �
encoder_lstm_1/while/IdentityIdentityencoder_lstm_1/while/add_1:z:0^encoder_lstm_1/while/NoOp*
T0*
_output_shapes
: �
encoder_lstm_1/while/Identity_1Identity<encoder_lstm_1_while_encoder_lstm_1_while_maximum_iterations^encoder_lstm_1/while/NoOp*
T0*
_output_shapes
: �
encoder_lstm_1/while/Identity_2Identityencoder_lstm_1/while/add:z:0^encoder_lstm_1/while/NoOp*
T0*
_output_shapes
: �
encoder_lstm_1/while/Identity_3IdentityIencoder_lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^encoder_lstm_1/while/NoOp*
T0*
_output_shapes
: �
encoder_lstm_1/while/Identity_4Identity&encoder_lstm_1/while/SelectV2:output:0^encoder_lstm_1/while/NoOp*
T0*'
_output_shapes
:��������� �
encoder_lstm_1/while/Identity_5Identity(encoder_lstm_1/while/SelectV2_1:output:0^encoder_lstm_1/while/NoOp*
T0*'
_output_shapes
:��������� �
encoder_lstm_1/while/Identity_6Identity(encoder_lstm_1/while/SelectV2_2:output:0^encoder_lstm_1/while/NoOp*
T0*'
_output_shapes
:��������� �
encoder_lstm_1/while/NoOpNoOp6^encoder_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp5^encoder_lstm_1/while/lstm_cell/MatMul/ReadVariableOp7^encoder_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "l
3encoder_lstm_1_while_encoder_lstm_1_strided_slice_15encoder_lstm_1_while_encoder_lstm_1_strided_slice_1_0"G
encoder_lstm_1_while_identity&encoder_lstm_1/while/Identity:output:0"K
encoder_lstm_1_while_identity_1(encoder_lstm_1/while/Identity_1:output:0"K
encoder_lstm_1_while_identity_2(encoder_lstm_1/while/Identity_2:output:0"K
encoder_lstm_1_while_identity_3(encoder_lstm_1/while/Identity_3:output:0"K
encoder_lstm_1_while_identity_4(encoder_lstm_1/while/Identity_4:output:0"K
encoder_lstm_1_while_identity_5(encoder_lstm_1/while/Identity_5:output:0"K
encoder_lstm_1_while_identity_6(encoder_lstm_1/while/Identity_6:output:0"�
>encoder_lstm_1_while_lstm_cell_biasadd_readvariableop_resource@encoder_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0"�
?encoder_lstm_1_while_lstm_cell_matmul_1_readvariableop_resourceAencoder_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0"�
=encoder_lstm_1_while_lstm_cell_matmul_readvariableop_resource?encoder_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0"�
sencoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_encoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensoruencoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_encoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensor_0"�
oencoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_encoder_lstm_1_tensorarrayunstack_tensorlistfromtensorqencoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_encoder_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :��������� :��������� :��������� : : : : : : 2n
5encoder_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp5encoder_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp2l
4encoder_lstm_1/while/lstm_cell/MatMul/ReadVariableOp4encoder_lstm_1/while/lstm_cell/MatMul/ReadVariableOp2p
6encoder_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp6encoder_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
�N
�

while_body_266258
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0[
Wwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	 �G
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:	 �B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_identity_6
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorY
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	 �E
2while_lstm_cell_1_matmul_1_readvariableop_resource:	 �@
1while_lstm_cell_1_biasadd_readvariableop_resource:	���(while/lstm_cell_1/BiasAdd/ReadVariableOp�'while/lstm_cell_1/MatMul/ReadVariableOp�)while/lstm_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype0�
9while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
+while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0while_placeholderBwhile/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
�
!while/lstm_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:f
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:��������� �
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell_1/MatMulMatMulwhile/lstm_cell_1/mul:z:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_31while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:��������� z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_4*
T0*'
_output_shapes
:��������� r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul_1:z:0while/lstm_cell_1/mul_2:z:0*
T0*'
_output_shapes
:��������� z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:��������� o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/mul_3Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:��������� e
while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �

while/TileTile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
while/SelectV2SelectV2while/Tile:output:0while/lstm_cell_1/mul_3:z:0while_placeholder_2*
T0*'
_output_shapes
:��������� g
while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
while/Tile_1Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������g
while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
while/Tile_2Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
while/SelectV2_1SelectV2while/Tile_1:output:0while/lstm_cell_1/mul_3:z:0while_placeholder_3*
T0*'
_output_shapes
:��������� �
while/SelectV2_2SelectV2while/Tile_2:output:0while/lstm_cell_1/add_1:z:0while_placeholder_4*
T0*'
_output_shapes
:��������� �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: t
while/Identity_4Identitywhile/SelectV2:output:0^while/NoOp*
T0*'
_output_shapes
:��������� v
while/Identity_5Identitywhile/SelectV2_1:output:0^while/NoOp*
T0*'
_output_shapes
:��������� v
while/Identity_6Identitywhile/SelectV2_2:output:0^while/NoOp*
T0*'
_output_shapes
:��������� �

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"-
while_identity_6while/Identity_6:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"�
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :��������� :��������� :��������� : : : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
�
�
/__inference_encoder_lstm_1_layer_call_fn_264968

inputs
mask

unknown:	 �
	unknown_0:	 �
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsmaskunknown	unknown_0	unknown_1*
Tin	
2
*
Tout
2*
_collective_manager_ids
 *Q
_output_shapes?
=:���������i :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_262963s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������i q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:��������� q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������i :���������i: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������i 
 
_user_specified_nameinputs:MI
'
_output_shapes
:���������i

_user_specified_namemask
�"
�
while_body_262676
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_1_262700_0:	 �-
while_lstm_cell_1_262702_0:	 �)
while_lstm_cell_1_262704_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_1_262700:	 �+
while_lstm_cell_1_262702:	 �'
while_lstm_cell_1_262704:	���)while/lstm_cell_1/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype0�
)while/lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1_262700_0while_lstm_cell_1_262702_0while_lstm_cell_1_262704_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_262617�
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity2while/lstm_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:��������� �
while/Identity_5Identity2while/lstm_cell_1/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:��������� x

while/NoOpNoOp*^while/lstm_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_1_262700while_lstm_cell_1_262700_0"6
while_lstm_cell_1_262702while_lstm_cell_1_262702_0"6
while_lstm_cell_1_262704while_lstm_cell_1_262704_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2V
)while/lstm_cell_1/StatefulPartitionedCall)while/lstm_cell_1/StatefulPartitionedCall: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
�
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_266844

inputs
states_0
states_11
matmul_readvariableop_resource:	 �3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:��������� X
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:��������� u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0k
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:��������� W
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� N
ReluRelusplit:output:2*
T0*'
_output_shapes
:��������� _
mul_2MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:��������� V
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:��������� K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:��������� c
mul_3MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:��������� X
IdentityIdentity	mul_3:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_1Identity	mul_3:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:��������� :��������� :��������� : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�9
�
E__inference_lstm_cell_layer_call_and_return_conditional_losses_262221

inputs

states
states_11
matmul_readvariableop_resource:	 �3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:��������� R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?p
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:��������� O
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2����[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:��������� T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?t
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:��������� Q
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:�
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� s
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� o
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:��������� T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?t
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:��������� Q
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:�
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� s
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� o
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:��������� T
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?t
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:��������� Q
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:�
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� s
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� o
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:��������� W
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0k
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:��������� W
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� N
ReluRelusplit:output:2*
T0*'
_output_shapes
:��������� _
mul_2MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:��������� V
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:��������� K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:��������� c
mul_3MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:��������� X
IdentityIdentity	mul_3:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_1Identity	mul_3:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:��������� :��������� :��������� : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates
�
�
/__inference_decoder_lstm_1_layer_call_fn_265791
inputs_0
unknown:	 �
	unknown_0:	 �
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_262518|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������ 
"
_user_specified_name
inputs/0
�:
�
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_262351

inputs#
lstm_cell_262267:	 �#
lstm_cell_262269:	 �
lstm_cell_262271:	�
identity

identity_1

identity_2��!lstm_cell/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������ D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask�
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_262267lstm_cell_262269lstm_cell_262271*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_262221n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_262267lstm_cell_262269lstm_cell_262271*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_262280*
condR
while_cond_262279*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������ _

Identity_1Identitywhile:output:4^NoOp*
T0*'
_output_shapes
:��������� _

Identity_2Identitywhile:output:5^NoOp*
T0*'
_output_shapes
:��������� r
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������ : : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������ 
 
_user_specified_nameinputs
�
�
,__inference_lstm_cell_1_layer_call_fn_266808

inputs
states_0
states_1
unknown:	 �
	unknown_0:	 �
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_262617o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:��������� q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:��������� :��������� :��������� : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�
�
/__inference_encoder_lstm_1_layer_call_fn_264952
inputs_0
unknown:	 �
	unknown_0:	 �
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *Z
_output_shapesH
F:������������������ :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_262351|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:��������� q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������ 
"
_user_specified_name
inputs/0
�Z
�
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_262963

inputs
mask
;
(lstm_cell_matmul_readvariableop_resource:	 �=
*lstm_cell_matmul_1_readvariableop_resource:	 �8
)lstm_cell_biasadd_readvariableop_resource:	�
identity

identity_1

identity_2�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:i��������� D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������m

ExpandDims
ExpandDimsmaskExpandDims/dim:output:0*
T0
*+
_output_shapes
:���������ie
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
transpose_1	TransposeExpandDims:output:0transpose_1/perm:output:0*
T0
*+
_output_shapes
:i���������f
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maska
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� ~
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell/MatMulMatMullstm_cell/mul:z:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:��������� j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:��������� s
lstm_cell/mul_1Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:��������� }
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:��������� t
lstm_cell/add_1AddV2lstm_cell/mul_1:z:0lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:��������� j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:��������� _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell/mul_3Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:��������� n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : h
TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2_2TensorListReserve&TensorArrayV2_2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
7TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensortranspose_1:y:0@TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:���^

zeros_like	ZerosLikelstm_cell/mul_3:z:0*
T0*'
_output_shapes
:��������� c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros_like:y:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:09TensorArrayUnstack_1/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *
bodyR
while_body_262855*
condR
while_cond_262854*`
output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:i��������� *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_2	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_2/perm:output:0*
T0*+
_output_shapes
:���������i [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_2:y:0^NoOp*
T0*+
_output_shapes
:���������i _

Identity_1Identitywhile:output:5^NoOp*
T0*'
_output_shapes
:��������� _

Identity_2Identitywhile:output:6^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������i :���������i: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������i 
 
_user_specified_nameinputs:MI
'
_output_shapes
:���������i

_user_specified_namemask
�
�
/__inference_encoder_lstm_1_layer_call_fn_264937
inputs_0
unknown:	 �
	unknown_0:	 �
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *Z
_output_shapesH
F:������������������ :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_262118|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:��������� q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������ 
"
_user_specified_name
inputs/0
�O
�
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_263140

inputs
mask

initial_state
initial_state_1=
*lstm_cell_1_matmul_readvariableop_resource:	 �?
,lstm_cell_1_matmul_1_readvariableop_resource:	 �:
+lstm_cell_1_biasadd_readvariableop_resource:	�
identity��"lstm_cell_1/BiasAdd/ReadVariableOp�!lstm_cell_1/MatMul/ReadVariableOp�#lstm_cell_1/MatMul_1/ReadVariableOp�whilec
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:i��������� B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
shrink_axis_maskY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������m

ExpandDims
ExpandDimsmaskExpandDims/dim:output:0*
T0
*+
_output_shapes
:���������ie
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
transpose_1	TransposeExpandDims:output:0transpose_1/perm:output:0*
T0
*+
_output_shapes
:i���������f
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maskc
lstm_cell_1/ones_like/ShapeShapestrided_slice_1:output:0*
T0*
_output_shapes
:`
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell_1/mulMulstrided_slice_1:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:��������� �
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell_1/MatMulMatMullstm_cell_1/mul:z:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell_1/MatMul_1MatMulinitial_state+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:��������� n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:��������� v
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid_1:y:0initial_state_1*
T0*'
_output_shapes
:��������� f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:��������� �
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:��������� z
lstm_cell_1/add_1AddV2lstm_cell_1/mul_1:z:0lstm_cell_1/mul_2:z:0*
T0*'
_output_shapes
:��������� n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:��������� c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell_1/mul_3Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:��������� n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : h
TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2_2TensorListReserve&TensorArrayV2_2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
7TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensortranspose_1:y:0@TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:���`

zeros_like	ZerosLikelstm_cell_1/mul_3:z:0*
T0*'
_output_shapes
:��������� c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros_like:y:0initial_stateinitial_state_1strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:09TensorArrayUnstack_1/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *
bodyR
while_body_263034*
condR
while_cond_263033*`
output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:i��������� *
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_2	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_2/perm:output:0*
T0*+
_output_shapes
:���������i [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_2:y:0^NoOp*
T0*+
_output_shapes
:���������i �
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:���������i :���������i:��������� :��������� : : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������i 
 
_user_specified_nameinputs:MI
'
_output_shapes
:���������i

_user_specified_namemask:VR
'
_output_shapes
:��������� 
'
_user_specified_nameinitial_state:VR
'
_output_shapes
:��������� 
'
_user_specified_nameinitial_state
�
�
*__inference_lstm_cell_layer_call_fn_266670

inputs
states_0
states_1
unknown:	 �
	unknown_0:	 �
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_262221o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:��������� q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:��������� q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:��������� :��������� :��������� : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�
�	
.seq2seq_model_decoder_lstm_1_while_cond_261828V
Rseq2seq_model_decoder_lstm_1_while_seq2seq_model_decoder_lstm_1_while_loop_counter\
Xseq2seq_model_decoder_lstm_1_while_seq2seq_model_decoder_lstm_1_while_maximum_iterations2
.seq2seq_model_decoder_lstm_1_while_placeholder4
0seq2seq_model_decoder_lstm_1_while_placeholder_14
0seq2seq_model_decoder_lstm_1_while_placeholder_24
0seq2seq_model_decoder_lstm_1_while_placeholder_34
0seq2seq_model_decoder_lstm_1_while_placeholder_4V
Rseq2seq_model_decoder_lstm_1_while_less_seq2seq_model_decoder_lstm_1_strided_slicen
jseq2seq_model_decoder_lstm_1_while_seq2seq_model_decoder_lstm_1_while_cond_261828___redundant_placeholder0n
jseq2seq_model_decoder_lstm_1_while_seq2seq_model_decoder_lstm_1_while_cond_261828___redundant_placeholder1n
jseq2seq_model_decoder_lstm_1_while_seq2seq_model_decoder_lstm_1_while_cond_261828___redundant_placeholder2n
jseq2seq_model_decoder_lstm_1_while_seq2seq_model_decoder_lstm_1_while_cond_261828___redundant_placeholder3n
jseq2seq_model_decoder_lstm_1_while_seq2seq_model_decoder_lstm_1_while_cond_261828___redundant_placeholder4/
+seq2seq_model_decoder_lstm_1_while_identity
�
'seq2seq_model/decoder_lstm_1/while/LessLess.seq2seq_model_decoder_lstm_1_while_placeholderRseq2seq_model_decoder_lstm_1_while_less_seq2seq_model_decoder_lstm_1_strided_slice*
T0*
_output_shapes
: �
+seq2seq_model/decoder_lstm_1/while/IdentityIdentity+seq2seq_model/decoder_lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "c
+seq2seq_model_decoder_lstm_1_while_identity4seq2seq_model/decoder_lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :��������� :��������� :��������� : :::::: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
��
�
 encoder_lstm_1_while_body_264515:
6encoder_lstm_1_while_encoder_lstm_1_while_loop_counter@
<encoder_lstm_1_while_encoder_lstm_1_while_maximum_iterations$
 encoder_lstm_1_while_placeholder&
"encoder_lstm_1_while_placeholder_1&
"encoder_lstm_1_while_placeholder_2&
"encoder_lstm_1_while_placeholder_3&
"encoder_lstm_1_while_placeholder_49
5encoder_lstm_1_while_encoder_lstm_1_strided_slice_1_0u
qencoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_encoder_lstm_1_tensorarrayunstack_tensorlistfromtensor_0y
uencoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_encoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensor_0R
?encoder_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0:	 �T
Aencoder_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0:	 �O
@encoder_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0:	�!
encoder_lstm_1_while_identity#
encoder_lstm_1_while_identity_1#
encoder_lstm_1_while_identity_2#
encoder_lstm_1_while_identity_3#
encoder_lstm_1_while_identity_4#
encoder_lstm_1_while_identity_5#
encoder_lstm_1_while_identity_67
3encoder_lstm_1_while_encoder_lstm_1_strided_slice_1s
oencoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_encoder_lstm_1_tensorarrayunstack_tensorlistfromtensorw
sencoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_encoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensorP
=encoder_lstm_1_while_lstm_cell_matmul_readvariableop_resource:	 �R
?encoder_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource:	 �M
>encoder_lstm_1_while_lstm_cell_biasadd_readvariableop_resource:	���5encoder_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp�4encoder_lstm_1/while/lstm_cell/MatMul/ReadVariableOp�6encoder_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp�
Fencoder_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
8encoder_lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqencoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_encoder_lstm_1_tensorarrayunstack_tensorlistfromtensor_0 encoder_lstm_1_while_placeholderOencoder_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype0�
Hencoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
:encoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemuencoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_encoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensor_0 encoder_lstm_1_while_placeholderQencoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
�
.encoder_lstm_1/while/lstm_cell/ones_like/ShapeShape?encoder_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:s
.encoder_lstm_1/while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
(encoder_lstm_1/while/lstm_cell/ones_likeFill7encoder_lstm_1/while/lstm_cell/ones_like/Shape:output:07encoder_lstm_1/while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� q
,encoder_lstm_1/while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
*encoder_lstm_1/while/lstm_cell/dropout/MulMul1encoder_lstm_1/while/lstm_cell/ones_like:output:05encoder_lstm_1/while/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:��������� �
,encoder_lstm_1/while/lstm_cell/dropout/ShapeShape1encoder_lstm_1/while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
Cencoder_lstm_1/while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform5encoder_lstm_1/while/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2����z
5encoder_lstm_1/while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
3encoder_lstm_1/while/lstm_cell/dropout/GreaterEqualGreaterEqualLencoder_lstm_1/while/lstm_cell/dropout/random_uniform/RandomUniform:output:0>encoder_lstm_1/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
+encoder_lstm_1/while/lstm_cell/dropout/CastCast7encoder_lstm_1/while/lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
,encoder_lstm_1/while/lstm_cell/dropout/Mul_1Mul.encoder_lstm_1/while/lstm_cell/dropout/Mul:z:0/encoder_lstm_1/while/lstm_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:��������� s
.encoder_lstm_1/while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
,encoder_lstm_1/while/lstm_cell/dropout_1/MulMul1encoder_lstm_1/while/lstm_cell/ones_like:output:07encoder_lstm_1/while/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:��������� �
.encoder_lstm_1/while/lstm_cell/dropout_1/ShapeShape1encoder_lstm_1/while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
Eencoder_lstm_1/while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform7encoder_lstm_1/while/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2|
7encoder_lstm_1/while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
5encoder_lstm_1/while/lstm_cell/dropout_1/GreaterEqualGreaterEqualNencoder_lstm_1/while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:0@encoder_lstm_1/while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
-encoder_lstm_1/while/lstm_cell/dropout_1/CastCast9encoder_lstm_1/while/lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
.encoder_lstm_1/while/lstm_cell/dropout_1/Mul_1Mul0encoder_lstm_1/while/lstm_cell/dropout_1/Mul:z:01encoder_lstm_1/while/lstm_cell/dropout_1/Cast:y:0*
T0*'
_output_shapes
:��������� s
.encoder_lstm_1/while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
,encoder_lstm_1/while/lstm_cell/dropout_2/MulMul1encoder_lstm_1/while/lstm_cell/ones_like:output:07encoder_lstm_1/while/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:��������� �
.encoder_lstm_1/while/lstm_cell/dropout_2/ShapeShape1encoder_lstm_1/while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
Eencoder_lstm_1/while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform7encoder_lstm_1/while/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2|
7encoder_lstm_1/while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
5encoder_lstm_1/while/lstm_cell/dropout_2/GreaterEqualGreaterEqualNencoder_lstm_1/while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:0@encoder_lstm_1/while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
-encoder_lstm_1/while/lstm_cell/dropout_2/CastCast9encoder_lstm_1/while/lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
.encoder_lstm_1/while/lstm_cell/dropout_2/Mul_1Mul0encoder_lstm_1/while/lstm_cell/dropout_2/Mul:z:01encoder_lstm_1/while/lstm_cell/dropout_2/Cast:y:0*
T0*'
_output_shapes
:��������� s
.encoder_lstm_1/while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
,encoder_lstm_1/while/lstm_cell/dropout_3/MulMul1encoder_lstm_1/while/lstm_cell/ones_like:output:07encoder_lstm_1/while/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:��������� �
.encoder_lstm_1/while/lstm_cell/dropout_3/ShapeShape1encoder_lstm_1/while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
Eencoder_lstm_1/while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform7encoder_lstm_1/while/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2|
7encoder_lstm_1/while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
5encoder_lstm_1/while/lstm_cell/dropout_3/GreaterEqualGreaterEqualNencoder_lstm_1/while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:0@encoder_lstm_1/while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
-encoder_lstm_1/while/lstm_cell/dropout_3/CastCast9encoder_lstm_1/while/lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
.encoder_lstm_1/while/lstm_cell/dropout_3/Mul_1Mul0encoder_lstm_1/while/lstm_cell/dropout_3/Mul:z:01encoder_lstm_1/while/lstm_cell/dropout_3/Cast:y:0*
T0*'
_output_shapes
:��������� �
"encoder_lstm_1/while/lstm_cell/mulMul?encoder_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:00encoder_lstm_1/while/lstm_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� �
4encoder_lstm_1/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp?encoder_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
%encoder_lstm_1/while/lstm_cell/MatMulMatMul&encoder_lstm_1/while/lstm_cell/mul:z:0<encoder_lstm_1/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
6encoder_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpAencoder_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
'encoder_lstm_1/while/lstm_cell/MatMul_1MatMul"encoder_lstm_1_while_placeholder_3>encoder_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"encoder_lstm_1/while/lstm_cell/addAddV2/encoder_lstm_1/while/lstm_cell/MatMul:product:01encoder_lstm_1/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
5encoder_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp@encoder_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
&encoder_lstm_1/while/lstm_cell/BiasAddBiasAdd&encoder_lstm_1/while/lstm_cell/add:z:0=encoder_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������p
.encoder_lstm_1/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
$encoder_lstm_1/while/lstm_cell/splitSplit7encoder_lstm_1/while/lstm_cell/split/split_dim:output:0/encoder_lstm_1/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split�
&encoder_lstm_1/while/lstm_cell/SigmoidSigmoid-encoder_lstm_1/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:��������� �
(encoder_lstm_1/while/lstm_cell/Sigmoid_1Sigmoid-encoder_lstm_1/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:��������� �
$encoder_lstm_1/while/lstm_cell/mul_1Mul,encoder_lstm_1/while/lstm_cell/Sigmoid_1:y:0"encoder_lstm_1_while_placeholder_4*
T0*'
_output_shapes
:��������� �
#encoder_lstm_1/while/lstm_cell/ReluRelu-encoder_lstm_1/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:��������� �
$encoder_lstm_1/while/lstm_cell/mul_2Mul*encoder_lstm_1/while/lstm_cell/Sigmoid:y:01encoder_lstm_1/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:��������� �
$encoder_lstm_1/while/lstm_cell/add_1AddV2(encoder_lstm_1/while/lstm_cell/mul_1:z:0(encoder_lstm_1/while/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:��������� �
(encoder_lstm_1/while/lstm_cell/Sigmoid_2Sigmoid-encoder_lstm_1/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:��������� �
%encoder_lstm_1/while/lstm_cell/Relu_1Relu(encoder_lstm_1/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:��������� �
$encoder_lstm_1/while/lstm_cell/mul_3Mul,encoder_lstm_1/while/lstm_cell/Sigmoid_2:y:03encoder_lstm_1/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:��������� t
#encoder_lstm_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
encoder_lstm_1/while/TileTileAencoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0,encoder_lstm_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
encoder_lstm_1/while/SelectV2SelectV2"encoder_lstm_1/while/Tile:output:0(encoder_lstm_1/while/lstm_cell/mul_3:z:0"encoder_lstm_1_while_placeholder_2*
T0*'
_output_shapes
:��������� v
%encoder_lstm_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
encoder_lstm_1/while/Tile_1TileAencoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0.encoder_lstm_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������v
%encoder_lstm_1/while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
encoder_lstm_1/while/Tile_2TileAencoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0.encoder_lstm_1/while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
encoder_lstm_1/while/SelectV2_1SelectV2$encoder_lstm_1/while/Tile_1:output:0(encoder_lstm_1/while/lstm_cell/mul_3:z:0"encoder_lstm_1_while_placeholder_3*
T0*'
_output_shapes
:��������� �
encoder_lstm_1/while/SelectV2_2SelectV2$encoder_lstm_1/while/Tile_2:output:0(encoder_lstm_1/while/lstm_cell/add_1:z:0"encoder_lstm_1_while_placeholder_4*
T0*'
_output_shapes
:��������� �
9encoder_lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"encoder_lstm_1_while_placeholder_1 encoder_lstm_1_while_placeholder&encoder_lstm_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���\
encoder_lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
encoder_lstm_1/while/addAddV2 encoder_lstm_1_while_placeholder#encoder_lstm_1/while/add/y:output:0*
T0*
_output_shapes
: ^
encoder_lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
encoder_lstm_1/while/add_1AddV26encoder_lstm_1_while_encoder_lstm_1_while_loop_counter%encoder_lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: �
encoder_lstm_1/while/IdentityIdentityencoder_lstm_1/while/add_1:z:0^encoder_lstm_1/while/NoOp*
T0*
_output_shapes
: �
encoder_lstm_1/while/Identity_1Identity<encoder_lstm_1_while_encoder_lstm_1_while_maximum_iterations^encoder_lstm_1/while/NoOp*
T0*
_output_shapes
: �
encoder_lstm_1/while/Identity_2Identityencoder_lstm_1/while/add:z:0^encoder_lstm_1/while/NoOp*
T0*
_output_shapes
: �
encoder_lstm_1/while/Identity_3IdentityIencoder_lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^encoder_lstm_1/while/NoOp*
T0*
_output_shapes
: �
encoder_lstm_1/while/Identity_4Identity&encoder_lstm_1/while/SelectV2:output:0^encoder_lstm_1/while/NoOp*
T0*'
_output_shapes
:��������� �
encoder_lstm_1/while/Identity_5Identity(encoder_lstm_1/while/SelectV2_1:output:0^encoder_lstm_1/while/NoOp*
T0*'
_output_shapes
:��������� �
encoder_lstm_1/while/Identity_6Identity(encoder_lstm_1/while/SelectV2_2:output:0^encoder_lstm_1/while/NoOp*
T0*'
_output_shapes
:��������� �
encoder_lstm_1/while/NoOpNoOp6^encoder_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp5^encoder_lstm_1/while/lstm_cell/MatMul/ReadVariableOp7^encoder_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "l
3encoder_lstm_1_while_encoder_lstm_1_strided_slice_15encoder_lstm_1_while_encoder_lstm_1_strided_slice_1_0"G
encoder_lstm_1_while_identity&encoder_lstm_1/while/Identity:output:0"K
encoder_lstm_1_while_identity_1(encoder_lstm_1/while/Identity_1:output:0"K
encoder_lstm_1_while_identity_2(encoder_lstm_1/while/Identity_2:output:0"K
encoder_lstm_1_while_identity_3(encoder_lstm_1/while/Identity_3:output:0"K
encoder_lstm_1_while_identity_4(encoder_lstm_1/while/Identity_4:output:0"K
encoder_lstm_1_while_identity_5(encoder_lstm_1/while/Identity_5:output:0"K
encoder_lstm_1_while_identity_6(encoder_lstm_1/while/Identity_6:output:0"�
>encoder_lstm_1_while_lstm_cell_biasadd_readvariableop_resource@encoder_lstm_1_while_lstm_cell_biasadd_readvariableop_resource_0"�
?encoder_lstm_1_while_lstm_cell_matmul_1_readvariableop_resourceAencoder_lstm_1_while_lstm_cell_matmul_1_readvariableop_resource_0"�
=encoder_lstm_1_while_lstm_cell_matmul_readvariableop_resource?encoder_lstm_1_while_lstm_cell_matmul_readvariableop_resource_0"�
sencoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_encoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensoruencoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_encoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensor_0"�
oencoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_encoder_lstm_1_tensorarrayunstack_tensorlistfromtensorqencoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_encoder_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :��������� :��������� :��������� : : : : : : 2n
5encoder_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp5encoder_lstm_1/while/lstm_cell/BiasAdd/ReadVariableOp2l
4encoder_lstm_1/while/lstm_cell/MatMul/ReadVariableOp4encoder_lstm_1/while/lstm_cell/MatMul/ReadVariableOp2p
6encoder_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp6encoder_lstm_1/while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
�
�
.__inference_seq2seq_model_layer_call_fn_264013
inputs_0
inputs_1
unknown:	� 
	unknown_0:	 �
	unknown_1:	 �
	unknown_2:	�
	unknown_3:	 �
	unknown_4:	 �
	unknown_5:	�
	unknown_6:	 �
	unknown_7:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������i�*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_seq2seq_model_layer_call_and_return_conditional_losses_263824t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:���������i�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������i:���������i: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:���������i
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������i
"
_user_specified_name
inputs/1
�
�	
.seq2seq_model_encoder_lstm_1_while_cond_261667V
Rseq2seq_model_encoder_lstm_1_while_seq2seq_model_encoder_lstm_1_while_loop_counter\
Xseq2seq_model_encoder_lstm_1_while_seq2seq_model_encoder_lstm_1_while_maximum_iterations2
.seq2seq_model_encoder_lstm_1_while_placeholder4
0seq2seq_model_encoder_lstm_1_while_placeholder_14
0seq2seq_model_encoder_lstm_1_while_placeholder_24
0seq2seq_model_encoder_lstm_1_while_placeholder_34
0seq2seq_model_encoder_lstm_1_while_placeholder_4X
Tseq2seq_model_encoder_lstm_1_while_less_seq2seq_model_encoder_lstm_1_strided_slice_1n
jseq2seq_model_encoder_lstm_1_while_seq2seq_model_encoder_lstm_1_while_cond_261667___redundant_placeholder0n
jseq2seq_model_encoder_lstm_1_while_seq2seq_model_encoder_lstm_1_while_cond_261667___redundant_placeholder1n
jseq2seq_model_encoder_lstm_1_while_seq2seq_model_encoder_lstm_1_while_cond_261667___redundant_placeholder2n
jseq2seq_model_encoder_lstm_1_while_seq2seq_model_encoder_lstm_1_while_cond_261667___redundant_placeholder3n
jseq2seq_model_encoder_lstm_1_while_seq2seq_model_encoder_lstm_1_while_cond_261667___redundant_placeholder4/
+seq2seq_model_encoder_lstm_1_while_identity
�
'seq2seq_model/encoder_lstm_1/while/LessLess.seq2seq_model_encoder_lstm_1_while_placeholderTseq2seq_model_encoder_lstm_1_while_less_seq2seq_model_encoder_lstm_1_strided_slice_1*
T0*
_output_shapes
: �
+seq2seq_model/encoder_lstm_1/while/IdentityIdentity+seq2seq_model/encoder_lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "c
+seq2seq_model_encoder_lstm_1_while_identity4seq2seq_model/encoder_lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :��������� :��������� :��������� : :::::: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�|
�
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_263741

inputs
mask
;
(lstm_cell_matmul_readvariableop_resource:	 �=
*lstm_cell_matmul_1_readvariableop_resource:	 �8
)lstm_cell_biasadd_readvariableop_resource:	�
identity

identity_1

identity_2�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:i��������� D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������m

ExpandDims
ExpandDimsmaskExpandDims/dim:output:0*
T0
*+
_output_shapes
:���������ie
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
transpose_1	TransposeExpandDims:output:0transpose_1/perm:output:0*
T0
*+
_output_shapes
:i���������f
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maska
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� \
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:��������� c
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2����e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell/dropout/CastCast"lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
lstm_cell/dropout/Mul_1Mullstm_cell/dropout/Mul:z:0lstm_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:��������� ^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:��������� e
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell/dropout_1/CastCast$lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
lstm_cell/dropout_1/Mul_1Mullstm_cell/dropout_1/Mul:z:0lstm_cell/dropout_1/Cast:y:0*
T0*'
_output_shapes
:��������� ^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:��������� e
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell/dropout_2/CastCast$lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
lstm_cell/dropout_2/Mul_1Mullstm_cell/dropout_2/Mul:z:0lstm_cell/dropout_2/Cast:y:0*
T0*'
_output_shapes
:��������� ^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:��������� e
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell/dropout_3/CastCast$lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
lstm_cell/dropout_3/Mul_1Mullstm_cell/dropout_3/Mul:z:0lstm_cell/dropout_3/Cast:y:0*
T0*'
_output_shapes
:��������� }
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell/MatMulMatMullstm_cell/mul:z:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:��������� j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:��������� s
lstm_cell/mul_1Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:��������� }
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:��������� t
lstm_cell/add_1AddV2lstm_cell/mul_1:z:0lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:��������� j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:��������� _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell/mul_3Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:��������� n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : h
TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2_2TensorListReserve&TensorArrayV2_2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
7TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensortranspose_1:y:0@TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:���^

zeros_like	ZerosLikelstm_cell/mul_3:z:0*
T0*'
_output_shapes
:��������� c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros_like:y:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:09TensorArrayUnstack_1/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *
bodyR
while_body_263601*
condR
while_cond_263600*`
output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:i��������� *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_2	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_2/perm:output:0*
T0*+
_output_shapes
:���������i [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_2:y:0^NoOp*
T0*+
_output_shapes
:���������i _

Identity_1Identitywhile:output:5^NoOp*
T0*'
_output_shapes
:��������� _

Identity_2Identitywhile:output:6^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������i :���������i: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������i 
 
_user_specified_nameinputs:MI
'
_output_shapes
:���������i

_user_specified_namemask
�H
�
__inference__traced_save_267029
file_prefix:
6savev2_shared_embedding_embeddings_read_readvariableop3
/savev2_decoder_dense_kernel_read_readvariableop1
-savev2_decoder_dense_bias_read_readvariableop>
:savev2_encoder_lstm_1_lstm_cell_kernel_read_readvariableopH
Dsavev2_encoder_lstm_1_lstm_cell_recurrent_kernel_read_readvariableop<
8savev2_encoder_lstm_1_lstm_cell_bias_read_readvariableop@
<savev2_decoder_lstm_1_lstm_cell_1_kernel_read_readvariableopJ
Fsavev2_decoder_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop>
:savev2_decoder_lstm_1_lstm_cell_1_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop<
8savev2_shared_embedding_embeddings_m_read_readvariableop5
1savev2_decoder_dense_kernel_m_read_readvariableop3
/savev2_decoder_dense_bias_m_read_readvariableop@
<savev2_encoder_lstm_1_lstm_cell_kernel_m_read_readvariableopJ
Fsavev2_encoder_lstm_1_lstm_cell_recurrent_kernel_m_read_readvariableop>
:savev2_encoder_lstm_1_lstm_cell_bias_m_read_readvariableopB
>savev2_decoder_lstm_1_lstm_cell_1_kernel_m_read_readvariableopL
Hsavev2_decoder_lstm_1_lstm_cell_1_recurrent_kernel_m_read_readvariableop@
<savev2_decoder_lstm_1_lstm_cell_1_bias_m_read_readvariableop<
8savev2_shared_embedding_embeddings_v_read_readvariableop5
1savev2_decoder_dense_kernel_v_read_readvariableop3
/savev2_decoder_dense_bias_v_read_readvariableop@
<savev2_encoder_lstm_1_lstm_cell_kernel_v_read_readvariableopJ
Fsavev2_encoder_lstm_1_lstm_cell_recurrent_kernel_v_read_readvariableop>
:savev2_encoder_lstm_1_lstm_cell_bias_v_read_readvariableopB
>savev2_decoder_lstm_1_lstm_cell_1_kernel_v_read_readvariableopL
Hsavev2_decoder_lstm_1_lstm_cell_1_recurrent_kernel_v_read_readvariableop@
<savev2_decoder_lstm_1_lstm_cell_1_bias_v_read_readvariableop
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
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:06savev2_shared_embedding_embeddings_read_readvariableop/savev2_decoder_dense_kernel_read_readvariableop-savev2_decoder_dense_bias_read_readvariableop:savev2_encoder_lstm_1_lstm_cell_kernel_read_readvariableopDsavev2_encoder_lstm_1_lstm_cell_recurrent_kernel_read_readvariableop8savev2_encoder_lstm_1_lstm_cell_bias_read_readvariableop<savev2_decoder_lstm_1_lstm_cell_1_kernel_read_readvariableopFsavev2_decoder_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop:savev2_decoder_lstm_1_lstm_cell_1_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop8savev2_shared_embedding_embeddings_m_read_readvariableop1savev2_decoder_dense_kernel_m_read_readvariableop/savev2_decoder_dense_bias_m_read_readvariableop<savev2_encoder_lstm_1_lstm_cell_kernel_m_read_readvariableopFsavev2_encoder_lstm_1_lstm_cell_recurrent_kernel_m_read_readvariableop:savev2_encoder_lstm_1_lstm_cell_bias_m_read_readvariableop>savev2_decoder_lstm_1_lstm_cell_1_kernel_m_read_readvariableopHsavev2_decoder_lstm_1_lstm_cell_1_recurrent_kernel_m_read_readvariableop<savev2_decoder_lstm_1_lstm_cell_1_bias_m_read_readvariableop8savev2_shared_embedding_embeddings_v_read_readvariableop1savev2_decoder_dense_kernel_v_read_readvariableop/savev2_decoder_dense_bias_v_read_readvariableop<savev2_encoder_lstm_1_lstm_cell_kernel_v_read_readvariableopFsavev2_encoder_lstm_1_lstm_cell_recurrent_kernel_v_read_readvariableop:savev2_encoder_lstm_1_lstm_cell_bias_v_read_readvariableop>savev2_decoder_lstm_1_lstm_cell_1_kernel_v_read_readvariableopHsavev2_decoder_lstm_1_lstm_cell_1_recurrent_kernel_v_read_readvariableop<savev2_decoder_lstm_1_lstm_cell_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *.
dtypes$
"2 �
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

identity_1Identity_1:output:0*�
_input_shapes�
�: :	� :	 �:�:	 �:	 �:�:	 �:	 �:�: : : : :	� :	 �:�:	 �:	 �:�:	 �:	 �:�:	� :	 �:�:	 �:	 �:�:	 �:	 �:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	� :%!

_output_shapes
:	 �:!

_output_shapes	
:�:%!

_output_shapes
:	 �:%!

_output_shapes
:	 �:!

_output_shapes	
:�:%!

_output_shapes
:	 �:%!

_output_shapes
:	 �:!	

_output_shapes	
:�:
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
: :%!

_output_shapes
:	� :%!

_output_shapes
:	 �:!

_output_shapes	
:�:%!

_output_shapes
:	 �:%!

_output_shapes
:	 �:!

_output_shapes	
:�:%!

_output_shapes
:	 �:%!

_output_shapes
:	 �:!

_output_shapes	
:�:%!

_output_shapes
:	� :%!

_output_shapes
:	 �:!

_output_shapes	
:�:%!

_output_shapes
:	 �:%!

_output_shapes
:	 �:!

_output_shapes	
:�:%!

_output_shapes
:	 �:%!

_output_shapes
:	 �:!

_output_shapes	
:�: 

_output_shapes
: 
��
�
"__inference__traced_restore_267132
file_prefix?
,assignvariableop_shared_embedding_embeddings:	� :
'assignvariableop_1_decoder_dense_kernel:	 �4
%assignvariableop_2_decoder_dense_bias:	�E
2assignvariableop_3_encoder_lstm_1_lstm_cell_kernel:	 �O
<assignvariableop_4_encoder_lstm_1_lstm_cell_recurrent_kernel:	 �?
0assignvariableop_5_encoder_lstm_1_lstm_cell_bias:	�G
4assignvariableop_6_decoder_lstm_1_lstm_cell_1_kernel:	 �Q
>assignvariableop_7_decoder_lstm_1_lstm_cell_1_recurrent_kernel:	 �A
2assignvariableop_8_decoder_lstm_1_lstm_cell_1_bias:	�$
assignvariableop_9_total_1: %
assignvariableop_10_count_1: #
assignvariableop_11_total: #
assignvariableop_12_count: D
1assignvariableop_13_shared_embedding_embeddings_m:	� =
*assignvariableop_14_decoder_dense_kernel_m:	 �7
(assignvariableop_15_decoder_dense_bias_m:	�H
5assignvariableop_16_encoder_lstm_1_lstm_cell_kernel_m:	 �R
?assignvariableop_17_encoder_lstm_1_lstm_cell_recurrent_kernel_m:	 �B
3assignvariableop_18_encoder_lstm_1_lstm_cell_bias_m:	�J
7assignvariableop_19_decoder_lstm_1_lstm_cell_1_kernel_m:	 �T
Aassignvariableop_20_decoder_lstm_1_lstm_cell_1_recurrent_kernel_m:	 �D
5assignvariableop_21_decoder_lstm_1_lstm_cell_1_bias_m:	�D
1assignvariableop_22_shared_embedding_embeddings_v:	� =
*assignvariableop_23_decoder_dense_kernel_v:	 �7
(assignvariableop_24_decoder_dense_bias_v:	�H
5assignvariableop_25_encoder_lstm_1_lstm_cell_kernel_v:	 �R
?assignvariableop_26_encoder_lstm_1_lstm_cell_recurrent_kernel_v:	 �B
3assignvariableop_27_encoder_lstm_1_lstm_cell_bias_v:	�J
7assignvariableop_28_decoder_lstm_1_lstm_cell_1_kernel_v:	 �T
Aassignvariableop_29_decoder_lstm_1_lstm_cell_1_recurrent_kernel_v:	 �D
5assignvariableop_30_decoder_lstm_1_lstm_cell_1_bias_v:	�
identity_32��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::*.
dtypes$
"2 [
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp,assignvariableop_shared_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp'assignvariableop_1_decoder_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp%assignvariableop_2_decoder_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp2assignvariableop_3_encoder_lstm_1_lstm_cell_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp<assignvariableop_4_encoder_lstm_1_lstm_cell_recurrent_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp0assignvariableop_5_encoder_lstm_1_lstm_cell_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp4assignvariableop_6_decoder_lstm_1_lstm_cell_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp>assignvariableop_7_decoder_lstm_1_lstm_cell_1_recurrent_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp2assignvariableop_8_decoder_lstm_1_lstm_cell_1_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_total_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_count_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp1assignvariableop_13_shared_embedding_embeddings_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp*assignvariableop_14_decoder_dense_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp(assignvariableop_15_decoder_dense_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp5assignvariableop_16_encoder_lstm_1_lstm_cell_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp?assignvariableop_17_encoder_lstm_1_lstm_cell_recurrent_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp3assignvariableop_18_encoder_lstm_1_lstm_cell_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp7assignvariableop_19_decoder_lstm_1_lstm_cell_1_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpAassignvariableop_20_decoder_lstm_1_lstm_cell_1_recurrent_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp5assignvariableop_21_decoder_lstm_1_lstm_cell_1_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp1assignvariableop_22_shared_embedding_embeddings_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp*assignvariableop_23_decoder_dense_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp(assignvariableop_24_decoder_dense_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp5assignvariableop_25_encoder_lstm_1_lstm_cell_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp?assignvariableop_26_encoder_lstm_1_lstm_cell_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp3assignvariableop_27_encoder_lstm_1_lstm_cell_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp7assignvariableop_28_decoder_lstm_1_lstm_cell_1_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpAassignvariableop_29_decoder_lstm_1_lstm_cell_1_recurrent_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp5assignvariableop_30_decoder_lstm_1_lstm_cell_1_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_31Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_32IdentityIdentity_31:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_32Identity_32:output:0*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_30AssignVariableOp_302(
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
�
�
E__inference_lstm_cell_layer_call_and_return_conditional_losses_262033

inputs

states
states_11
matmul_readvariableop_resource:	 �3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:��������� X
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:��������� u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0k
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:��������� W
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� N
ReluRelusplit:output:2*
T0*'
_output_shapes
:��������� _
mul_2MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:��������� V
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:��������� K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:��������� c
mul_3MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:��������� X
IdentityIdentity	mul_3:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_1Identity	mul_3:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:��������� :��������� :��������� : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates
�
�
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_262435

inputs

states
states_11
matmul_readvariableop_resource:	 �3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:��������� X
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:��������� u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0k
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:��������� W
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� N
ReluRelusplit:output:2*
T0*'
_output_shapes
:��������� _
mul_2MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:��������� V
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:��������� K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:��������� c
mul_3MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:��������� X
IdentityIdentity	mul_3:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_1Identity	mul_3:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:��������� :��������� :��������� : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates:OK
'
_output_shapes
:��������� 
 
_user_specified_namestates
�s
�
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_263468

inputs
mask

initial_state
initial_state_1=
*lstm_cell_1_matmul_readvariableop_resource:	 �?
,lstm_cell_1_matmul_1_readvariableop_resource:	 �:
+lstm_cell_1_biasadd_readvariableop_resource:	�
identity��"lstm_cell_1/BiasAdd/ReadVariableOp�!lstm_cell_1/MatMul/ReadVariableOp�#lstm_cell_1/MatMul_1/ReadVariableOp�whilec
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:i��������� B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
shrink_axis_maskY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������m

ExpandDims
ExpandDimsmaskExpandDims/dim:output:0*
T0
*+
_output_shapes
:���������ie
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
transpose_1	TransposeExpandDims:output:0transpose_1/perm:output:0*
T0
*+
_output_shapes
:i���������f
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maskc
lstm_cell_1/ones_like/ShapeShapestrided_slice_1:output:0*
T0*
_output_shapes
:`
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� ^
lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell_1/dropout/MulMullstm_cell_1/ones_like:output:0"lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:��������� g
lstm_cell_1/dropout/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
0lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2����g
"lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
 lstm_cell_1/dropout/GreaterEqualGreaterEqual9lstm_cell_1/dropout/random_uniform/RandomUniform:output:0+lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell_1/dropout/CastCast$lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
lstm_cell_1/dropout/Mul_1Mullstm_cell_1/dropout/Mul:z:0lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:��������� `
lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell_1/dropout_1/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:��������� i
lstm_cell_1/dropout_1/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
2lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2i
$lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
"lstm_cell_1/dropout_1/GreaterEqualGreaterEqual;lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell_1/dropout_1/CastCast&lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
lstm_cell_1/dropout_1/Mul_1Mullstm_cell_1/dropout_1/Mul:z:0lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:��������� `
lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell_1/dropout_2/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:��������� i
lstm_cell_1/dropout_2/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
2lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2i
$lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
"lstm_cell_1/dropout_2/GreaterEqualGreaterEqual;lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell_1/dropout_2/CastCast&lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
lstm_cell_1/dropout_2/Mul_1Mullstm_cell_1/dropout_2/Mul:z:0lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:��������� `
lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell_1/dropout_3/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:��������� i
lstm_cell_1/dropout_3/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
2lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2i
$lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
"lstm_cell_1/dropout_3/GreaterEqualGreaterEqual;lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell_1/dropout_3/CastCast&lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
lstm_cell_1/dropout_3/Mul_1Mullstm_cell_1/dropout_3/Mul:z:0lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:��������� �
lstm_cell_1/mulMulstrided_slice_1:output:0lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� �
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell_1/MatMulMatMullstm_cell_1/mul:z:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell_1/MatMul_1MatMulinitial_state+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:��������� n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:��������� v
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid_1:y:0initial_state_1*
T0*'
_output_shapes
:��������� f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:��������� �
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:��������� z
lstm_cell_1/add_1AddV2lstm_cell_1/mul_1:z:0lstm_cell_1/mul_2:z:0*
T0*'
_output_shapes
:��������� n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:��������� c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell_1/mul_3Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:��������� n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : h
TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2_2TensorListReserve&TensorArrayV2_2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
7TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensortranspose_1:y:0@TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:���`

zeros_like	ZerosLikelstm_cell_1/mul_3:z:0*
T0*'
_output_shapes
:��������� c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros_like:y:0initial_stateinitial_state_1strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:09TensorArrayUnstack_1/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *
bodyR
while_body_263330*
condR
while_cond_263329*`
output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:i��������� *
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_2	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_2/perm:output:0*
T0*+
_output_shapes
:���������i [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_2:y:0^NoOp*
T0*+
_output_shapes
:���������i �
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:���������i :���������i:��������� :��������� : : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������i 
 
_user_specified_nameinputs:MI
'
_output_shapes
:���������i

_user_specified_namemask:VR
'
_output_shapes
:��������� 
'
_user_specified_nameinitial_state:VR
'
_output_shapes
:��������� 
'
_user_specified_nameinitial_state
�
�
I__inference_decoder_dense_layer_call_and_return_conditional_losses_266636

inputs4
!tensordot_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	 �*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������i �
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:���������i�s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������i�[
SoftmaxSoftmaxBiasAdd:output:0*
T0*,
_output_shapes
:���������i�e
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*,
_output_shapes
:���������i�z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������i : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������i 
 
_user_specified_nameinputs
��
�	
I__inference_seq2seq_model_layer_call_and_return_conditional_losses_264905
inputs_0
inputs_1;
(shared_embedding_embedding_lookup_264400:	� J
7encoder_lstm_1_lstm_cell_matmul_readvariableop_resource:	 �L
9encoder_lstm_1_lstm_cell_matmul_1_readvariableop_resource:	 �G
8encoder_lstm_1_lstm_cell_biasadd_readvariableop_resource:	�L
9decoder_lstm_1_lstm_cell_1_matmul_readvariableop_resource:	 �N
;decoder_lstm_1_lstm_cell_1_matmul_1_readvariableop_resource:	 �I
:decoder_lstm_1_lstm_cell_1_biasadd_readvariableop_resource:	�B
/decoder_dense_tensordot_readvariableop_resource:	 �<
-decoder_dense_biasadd_readvariableop_resource:	�
identity��$decoder_dense/BiasAdd/ReadVariableOp�&decoder_dense/Tensordot/ReadVariableOp�1decoder_lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp�0decoder_lstm_1/lstm_cell_1/MatMul/ReadVariableOp�2decoder_lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp�decoder_lstm_1/while�/encoder_lstm_1/lstm_cell/BiasAdd/ReadVariableOp�.encoder_lstm_1/lstm_cell/MatMul/ReadVariableOp�0encoder_lstm_1/lstm_cell/MatMul_1/ReadVariableOp�encoder_lstm_1/while�!shared_embedding/embedding_lookup�#shared_embedding/embedding_lookup_1h
shared_embedding/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:���������i�
!shared_embedding/embedding_lookupResourceGather(shared_embedding_embedding_lookup_264400shared_embedding/Cast:y:0*
Tindices0*;
_class1
/-loc:@shared_embedding/embedding_lookup/264400*+
_output_shapes
:���������i *
dtype0�
*shared_embedding/embedding_lookup/IdentityIdentity*shared_embedding/embedding_lookup:output:0*
T0*;
_class1
/-loc:@shared_embedding/embedding_lookup/264400*+
_output_shapes
:���������i �
,shared_embedding/embedding_lookup/Identity_1Identity3shared_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������i `
shared_embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
shared_embedding/NotEqualNotEqualinputs_1$shared_embedding/NotEqual/y:output:0*
T0*'
_output_shapes
:���������ij
shared_embedding/Cast_1Castinputs_0*

DstT0*

SrcT0*'
_output_shapes
:���������i�
#shared_embedding/embedding_lookup_1ResourceGather(shared_embedding_embedding_lookup_264400shared_embedding/Cast_1:y:0*
Tindices0*;
_class1
/-loc:@shared_embedding/embedding_lookup/264400*+
_output_shapes
:���������i *
dtype0�
,shared_embedding/embedding_lookup_1/IdentityIdentity,shared_embedding/embedding_lookup_1:output:0*
T0*;
_class1
/-loc:@shared_embedding/embedding_lookup/264400*+
_output_shapes
:���������i �
.shared_embedding/embedding_lookup_1/Identity_1Identity5shared_embedding/embedding_lookup_1/Identity:output:0*
T0*+
_output_shapes
:���������i b
shared_embedding/NotEqual_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
shared_embedding/NotEqual_1NotEqualinputs_0&shared_embedding/NotEqual_1/y:output:0*
T0*'
_output_shapes
:���������i{
encoder_lstm_1/ShapeShape7shared_embedding/embedding_lookup_1/Identity_1:output:0*
T0*
_output_shapes
:l
"encoder_lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$encoder_lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$encoder_lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
encoder_lstm_1/strided_sliceStridedSliceencoder_lstm_1/Shape:output:0+encoder_lstm_1/strided_slice/stack:output:0-encoder_lstm_1/strided_slice/stack_1:output:0-encoder_lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
encoder_lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : �
encoder_lstm_1/zeros/packedPack%encoder_lstm_1/strided_slice:output:0&encoder_lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
encoder_lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
encoder_lstm_1/zerosFill$encoder_lstm_1/zeros/packed:output:0#encoder_lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:��������� a
encoder_lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : �
encoder_lstm_1/zeros_1/packedPack%encoder_lstm_1/strided_slice:output:0(encoder_lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:a
encoder_lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
encoder_lstm_1/zeros_1Fill&encoder_lstm_1/zeros_1/packed:output:0%encoder_lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� r
encoder_lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
encoder_lstm_1/transpose	Transpose7shared_embedding/embedding_lookup_1/Identity_1:output:0&encoder_lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:i��������� b
encoder_lstm_1/Shape_1Shapeencoder_lstm_1/transpose:y:0*
T0*
_output_shapes
:n
$encoder_lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&encoder_lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&encoder_lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
encoder_lstm_1/strided_slice_1StridedSliceencoder_lstm_1/Shape_1:output:0-encoder_lstm_1/strided_slice_1/stack:output:0/encoder_lstm_1/strided_slice_1/stack_1:output:0/encoder_lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
encoder_lstm_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
encoder_lstm_1/ExpandDims
ExpandDimsshared_embedding/NotEqual_1:z:0&encoder_lstm_1/ExpandDims/dim:output:0*
T0
*+
_output_shapes
:���������it
encoder_lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
encoder_lstm_1/transpose_1	Transpose"encoder_lstm_1/ExpandDims:output:0(encoder_lstm_1/transpose_1/perm:output:0*
T0
*+
_output_shapes
:i���������u
*encoder_lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
encoder_lstm_1/TensorArrayV2TensorListReserve3encoder_lstm_1/TensorArrayV2/element_shape:output:0'encoder_lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Dencoder_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
6encoder_lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorencoder_lstm_1/transpose:y:0Mencoder_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���n
$encoder_lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&encoder_lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&encoder_lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
encoder_lstm_1/strided_slice_2StridedSliceencoder_lstm_1/transpose:y:0-encoder_lstm_1/strided_slice_2/stack:output:0/encoder_lstm_1/strided_slice_2/stack_1:output:0/encoder_lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask
(encoder_lstm_1/lstm_cell/ones_like/ShapeShape'encoder_lstm_1/strided_slice_2:output:0*
T0*
_output_shapes
:m
(encoder_lstm_1/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
"encoder_lstm_1/lstm_cell/ones_likeFill1encoder_lstm_1/lstm_cell/ones_like/Shape:output:01encoder_lstm_1/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� k
&encoder_lstm_1/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$encoder_lstm_1/lstm_cell/dropout/MulMul+encoder_lstm_1/lstm_cell/ones_like:output:0/encoder_lstm_1/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:��������� �
&encoder_lstm_1/lstm_cell/dropout/ShapeShape+encoder_lstm_1/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
=encoder_lstm_1/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform/encoder_lstm_1/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2����t
/encoder_lstm_1/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
-encoder_lstm_1/lstm_cell/dropout/GreaterEqualGreaterEqualFencoder_lstm_1/lstm_cell/dropout/random_uniform/RandomUniform:output:08encoder_lstm_1/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
%encoder_lstm_1/lstm_cell/dropout/CastCast1encoder_lstm_1/lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
&encoder_lstm_1/lstm_cell/dropout/Mul_1Mul(encoder_lstm_1/lstm_cell/dropout/Mul:z:0)encoder_lstm_1/lstm_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:��������� m
(encoder_lstm_1/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
&encoder_lstm_1/lstm_cell/dropout_1/MulMul+encoder_lstm_1/lstm_cell/ones_like:output:01encoder_lstm_1/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:��������� �
(encoder_lstm_1/lstm_cell/dropout_1/ShapeShape+encoder_lstm_1/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
?encoder_lstm_1/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform1encoder_lstm_1/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2v
1encoder_lstm_1/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
/encoder_lstm_1/lstm_cell/dropout_1/GreaterEqualGreaterEqualHencoder_lstm_1/lstm_cell/dropout_1/random_uniform/RandomUniform:output:0:encoder_lstm_1/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
'encoder_lstm_1/lstm_cell/dropout_1/CastCast3encoder_lstm_1/lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
(encoder_lstm_1/lstm_cell/dropout_1/Mul_1Mul*encoder_lstm_1/lstm_cell/dropout_1/Mul:z:0+encoder_lstm_1/lstm_cell/dropout_1/Cast:y:0*
T0*'
_output_shapes
:��������� m
(encoder_lstm_1/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
&encoder_lstm_1/lstm_cell/dropout_2/MulMul+encoder_lstm_1/lstm_cell/ones_like:output:01encoder_lstm_1/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:��������� �
(encoder_lstm_1/lstm_cell/dropout_2/ShapeShape+encoder_lstm_1/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
?encoder_lstm_1/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform1encoder_lstm_1/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2v
1encoder_lstm_1/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
/encoder_lstm_1/lstm_cell/dropout_2/GreaterEqualGreaterEqualHencoder_lstm_1/lstm_cell/dropout_2/random_uniform/RandomUniform:output:0:encoder_lstm_1/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
'encoder_lstm_1/lstm_cell/dropout_2/CastCast3encoder_lstm_1/lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
(encoder_lstm_1/lstm_cell/dropout_2/Mul_1Mul*encoder_lstm_1/lstm_cell/dropout_2/Mul:z:0+encoder_lstm_1/lstm_cell/dropout_2/Cast:y:0*
T0*'
_output_shapes
:��������� m
(encoder_lstm_1/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
&encoder_lstm_1/lstm_cell/dropout_3/MulMul+encoder_lstm_1/lstm_cell/ones_like:output:01encoder_lstm_1/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:��������� �
(encoder_lstm_1/lstm_cell/dropout_3/ShapeShape+encoder_lstm_1/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
?encoder_lstm_1/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform1encoder_lstm_1/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2v
1encoder_lstm_1/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
/encoder_lstm_1/lstm_cell/dropout_3/GreaterEqualGreaterEqualHencoder_lstm_1/lstm_cell/dropout_3/random_uniform/RandomUniform:output:0:encoder_lstm_1/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
'encoder_lstm_1/lstm_cell/dropout_3/CastCast3encoder_lstm_1/lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
(encoder_lstm_1/lstm_cell/dropout_3/Mul_1Mul*encoder_lstm_1/lstm_cell/dropout_3/Mul:z:0+encoder_lstm_1/lstm_cell/dropout_3/Cast:y:0*
T0*'
_output_shapes
:��������� �
encoder_lstm_1/lstm_cell/mulMul'encoder_lstm_1/strided_slice_2:output:0*encoder_lstm_1/lstm_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� �
.encoder_lstm_1/lstm_cell/MatMul/ReadVariableOpReadVariableOp7encoder_lstm_1_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
encoder_lstm_1/lstm_cell/MatMulMatMul encoder_lstm_1/lstm_cell/mul:z:06encoder_lstm_1/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
0encoder_lstm_1/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp9encoder_lstm_1_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
!encoder_lstm_1/lstm_cell/MatMul_1MatMulencoder_lstm_1/zeros:output:08encoder_lstm_1/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
encoder_lstm_1/lstm_cell/addAddV2)encoder_lstm_1/lstm_cell/MatMul:product:0+encoder_lstm_1/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
/encoder_lstm_1/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp8encoder_lstm_1_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
 encoder_lstm_1/lstm_cell/BiasAddBiasAdd encoder_lstm_1/lstm_cell/add:z:07encoder_lstm_1/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������j
(encoder_lstm_1/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
encoder_lstm_1/lstm_cell/splitSplit1encoder_lstm_1/lstm_cell/split/split_dim:output:0)encoder_lstm_1/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split�
 encoder_lstm_1/lstm_cell/SigmoidSigmoid'encoder_lstm_1/lstm_cell/split:output:0*
T0*'
_output_shapes
:��������� �
"encoder_lstm_1/lstm_cell/Sigmoid_1Sigmoid'encoder_lstm_1/lstm_cell/split:output:1*
T0*'
_output_shapes
:��������� �
encoder_lstm_1/lstm_cell/mul_1Mul&encoder_lstm_1/lstm_cell/Sigmoid_1:y:0encoder_lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:��������� �
encoder_lstm_1/lstm_cell/ReluRelu'encoder_lstm_1/lstm_cell/split:output:2*
T0*'
_output_shapes
:��������� �
encoder_lstm_1/lstm_cell/mul_2Mul$encoder_lstm_1/lstm_cell/Sigmoid:y:0+encoder_lstm_1/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:��������� �
encoder_lstm_1/lstm_cell/add_1AddV2"encoder_lstm_1/lstm_cell/mul_1:z:0"encoder_lstm_1/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:��������� �
"encoder_lstm_1/lstm_cell/Sigmoid_2Sigmoid'encoder_lstm_1/lstm_cell/split:output:3*
T0*'
_output_shapes
:��������� }
encoder_lstm_1/lstm_cell/Relu_1Relu"encoder_lstm_1/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:��������� �
encoder_lstm_1/lstm_cell/mul_3Mul&encoder_lstm_1/lstm_cell/Sigmoid_2:y:0-encoder_lstm_1/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:��������� }
,encoder_lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
encoder_lstm_1/TensorArrayV2_1TensorListReserve5encoder_lstm_1/TensorArrayV2_1/element_shape:output:0'encoder_lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���U
encoder_lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,encoder_lstm_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
encoder_lstm_1/TensorArrayV2_2TensorListReserve5encoder_lstm_1/TensorArrayV2_2/element_shape:output:0'encoder_lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
Fencoder_lstm_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
8encoder_lstm_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensorencoder_lstm_1/transpose_1:y:0Oencoder_lstm_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:���|
encoder_lstm_1/zeros_like	ZerosLike"encoder_lstm_1/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:��������� r
'encoder_lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������c
!encoder_lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
encoder_lstm_1/whileWhile*encoder_lstm_1/while/loop_counter:output:00encoder_lstm_1/while/maximum_iterations:output:0encoder_lstm_1/time:output:0'encoder_lstm_1/TensorArrayV2_1:handle:0encoder_lstm_1/zeros_like:y:0encoder_lstm_1/zeros:output:0encoder_lstm_1/zeros_1:output:0'encoder_lstm_1/strided_slice_1:output:0Fencoder_lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Hencoder_lstm_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:07encoder_lstm_1_lstm_cell_matmul_readvariableop_resource9encoder_lstm_1_lstm_cell_matmul_1_readvariableop_resource8encoder_lstm_1_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *,
body$R"
 encoder_lstm_1_while_body_264515*,
cond$R"
 encoder_lstm_1_while_cond_264514*`
output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *
parallel_iterations �
?encoder_lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
1encoder_lstm_1/TensorArrayV2Stack/TensorListStackTensorListStackencoder_lstm_1/while:output:3Hencoder_lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:i��������� *
element_dtype0w
$encoder_lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������p
&encoder_lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&encoder_lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
encoder_lstm_1/strided_slice_3StridedSlice:encoder_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0-encoder_lstm_1/strided_slice_3/stack:output:0/encoder_lstm_1/strided_slice_3/stack_1:output:0/encoder_lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maskt
encoder_lstm_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
encoder_lstm_1/transpose_2	Transpose:encoder_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0(encoder_lstm_1/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������i j
encoder_lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    r
decoder_lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
decoder_lstm_1/transpose	Transpose5shared_embedding/embedding_lookup/Identity_1:output:0&decoder_lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:i��������� `
decoder_lstm_1/ShapeShapedecoder_lstm_1/transpose:y:0*
T0*
_output_shapes
:l
"decoder_lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$decoder_lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$decoder_lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
decoder_lstm_1/strided_sliceStridedSlicedecoder_lstm_1/Shape:output:0+decoder_lstm_1/strided_slice/stack:output:0-decoder_lstm_1/strided_slice/stack_1:output:0-decoder_lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
decoder_lstm_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
decoder_lstm_1/ExpandDims
ExpandDimsshared_embedding/NotEqual:z:0&decoder_lstm_1/ExpandDims/dim:output:0*
T0
*+
_output_shapes
:���������it
decoder_lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
decoder_lstm_1/transpose_1	Transpose"decoder_lstm_1/ExpandDims:output:0(decoder_lstm_1/transpose_1/perm:output:0*
T0
*+
_output_shapes
:i���������u
*decoder_lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
decoder_lstm_1/TensorArrayV2TensorListReserve3decoder_lstm_1/TensorArrayV2/element_shape:output:0%decoder_lstm_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Ddecoder_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
6decoder_lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensordecoder_lstm_1/transpose:y:0Mdecoder_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���n
$decoder_lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&decoder_lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&decoder_lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
decoder_lstm_1/strided_slice_1StridedSlicedecoder_lstm_1/transpose:y:0-decoder_lstm_1/strided_slice_1/stack:output:0/decoder_lstm_1/strided_slice_1/stack_1:output:0/decoder_lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask�
*decoder_lstm_1/lstm_cell_1/ones_like/ShapeShape'decoder_lstm_1/strided_slice_1:output:0*
T0*
_output_shapes
:o
*decoder_lstm_1/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
$decoder_lstm_1/lstm_cell_1/ones_likeFill3decoder_lstm_1/lstm_cell_1/ones_like/Shape:output:03decoder_lstm_1/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� m
(decoder_lstm_1/lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
&decoder_lstm_1/lstm_cell_1/dropout/MulMul-decoder_lstm_1/lstm_cell_1/ones_like:output:01decoder_lstm_1/lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:��������� �
(decoder_lstm_1/lstm_cell_1/dropout/ShapeShape-decoder_lstm_1/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
?decoder_lstm_1/lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform1decoder_lstm_1/lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2v
1decoder_lstm_1/lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
/decoder_lstm_1/lstm_cell_1/dropout/GreaterEqualGreaterEqualHdecoder_lstm_1/lstm_cell_1/dropout/random_uniform/RandomUniform:output:0:decoder_lstm_1/lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
'decoder_lstm_1/lstm_cell_1/dropout/CastCast3decoder_lstm_1/lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
(decoder_lstm_1/lstm_cell_1/dropout/Mul_1Mul*decoder_lstm_1/lstm_cell_1/dropout/Mul:z:0+decoder_lstm_1/lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:��������� o
*decoder_lstm_1/lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
(decoder_lstm_1/lstm_cell_1/dropout_1/MulMul-decoder_lstm_1/lstm_cell_1/ones_like:output:03decoder_lstm_1/lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:��������� �
*decoder_lstm_1/lstm_cell_1/dropout_1/ShapeShape-decoder_lstm_1/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
Adecoder_lstm_1/lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform3decoder_lstm_1/lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2x
3decoder_lstm_1/lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
1decoder_lstm_1/lstm_cell_1/dropout_1/GreaterEqualGreaterEqualJdecoder_lstm_1/lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:0<decoder_lstm_1/lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
)decoder_lstm_1/lstm_cell_1/dropout_1/CastCast5decoder_lstm_1/lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
*decoder_lstm_1/lstm_cell_1/dropout_1/Mul_1Mul,decoder_lstm_1/lstm_cell_1/dropout_1/Mul:z:0-decoder_lstm_1/lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:��������� o
*decoder_lstm_1/lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
(decoder_lstm_1/lstm_cell_1/dropout_2/MulMul-decoder_lstm_1/lstm_cell_1/ones_like:output:03decoder_lstm_1/lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:��������� �
*decoder_lstm_1/lstm_cell_1/dropout_2/ShapeShape-decoder_lstm_1/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
Adecoder_lstm_1/lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform3decoder_lstm_1/lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2x
3decoder_lstm_1/lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
1decoder_lstm_1/lstm_cell_1/dropout_2/GreaterEqualGreaterEqualJdecoder_lstm_1/lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:0<decoder_lstm_1/lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
)decoder_lstm_1/lstm_cell_1/dropout_2/CastCast5decoder_lstm_1/lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
*decoder_lstm_1/lstm_cell_1/dropout_2/Mul_1Mul,decoder_lstm_1/lstm_cell_1/dropout_2/Mul:z:0-decoder_lstm_1/lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:��������� o
*decoder_lstm_1/lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
(decoder_lstm_1/lstm_cell_1/dropout_3/MulMul-decoder_lstm_1/lstm_cell_1/ones_like:output:03decoder_lstm_1/lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:��������� �
*decoder_lstm_1/lstm_cell_1/dropout_3/ShapeShape-decoder_lstm_1/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
Adecoder_lstm_1/lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform3decoder_lstm_1/lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2x
3decoder_lstm_1/lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
1decoder_lstm_1/lstm_cell_1/dropout_3/GreaterEqualGreaterEqualJdecoder_lstm_1/lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:0<decoder_lstm_1/lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
)decoder_lstm_1/lstm_cell_1/dropout_3/CastCast5decoder_lstm_1/lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
*decoder_lstm_1/lstm_cell_1/dropout_3/Mul_1Mul,decoder_lstm_1/lstm_cell_1/dropout_3/Mul:z:0-decoder_lstm_1/lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:��������� �
decoder_lstm_1/lstm_cell_1/mulMul'decoder_lstm_1/strided_slice_1:output:0,decoder_lstm_1/lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� �
0decoder_lstm_1/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp9decoder_lstm_1_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
!decoder_lstm_1/lstm_cell_1/MatMulMatMul"decoder_lstm_1/lstm_cell_1/mul:z:08decoder_lstm_1/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2decoder_lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp;decoder_lstm_1_lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
#decoder_lstm_1/lstm_cell_1/MatMul_1MatMulencoder_lstm_1/while:output:5:decoder_lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
decoder_lstm_1/lstm_cell_1/addAddV2+decoder_lstm_1/lstm_cell_1/MatMul:product:0-decoder_lstm_1/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
1decoder_lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp:decoder_lstm_1_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"decoder_lstm_1/lstm_cell_1/BiasAddBiasAdd"decoder_lstm_1/lstm_cell_1/add:z:09decoder_lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������l
*decoder_lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 decoder_lstm_1/lstm_cell_1/splitSplit3decoder_lstm_1/lstm_cell_1/split/split_dim:output:0+decoder_lstm_1/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split�
"decoder_lstm_1/lstm_cell_1/SigmoidSigmoid)decoder_lstm_1/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:��������� �
$decoder_lstm_1/lstm_cell_1/Sigmoid_1Sigmoid)decoder_lstm_1/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:��������� �
 decoder_lstm_1/lstm_cell_1/mul_1Mul(decoder_lstm_1/lstm_cell_1/Sigmoid_1:y:0encoder_lstm_1/while:output:6*
T0*'
_output_shapes
:��������� �
decoder_lstm_1/lstm_cell_1/ReluRelu)decoder_lstm_1/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:��������� �
 decoder_lstm_1/lstm_cell_1/mul_2Mul&decoder_lstm_1/lstm_cell_1/Sigmoid:y:0-decoder_lstm_1/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:��������� �
 decoder_lstm_1/lstm_cell_1/add_1AddV2$decoder_lstm_1/lstm_cell_1/mul_1:z:0$decoder_lstm_1/lstm_cell_1/mul_2:z:0*
T0*'
_output_shapes
:��������� �
$decoder_lstm_1/lstm_cell_1/Sigmoid_2Sigmoid)decoder_lstm_1/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:��������� �
!decoder_lstm_1/lstm_cell_1/Relu_1Relu$decoder_lstm_1/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:��������� �
 decoder_lstm_1/lstm_cell_1/mul_3Mul(decoder_lstm_1/lstm_cell_1/Sigmoid_2:y:0/decoder_lstm_1/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:��������� }
,decoder_lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
decoder_lstm_1/TensorArrayV2_1TensorListReserve5decoder_lstm_1/TensorArrayV2_1/element_shape:output:0%decoder_lstm_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���U
decoder_lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,decoder_lstm_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
decoder_lstm_1/TensorArrayV2_2TensorListReserve5decoder_lstm_1/TensorArrayV2_2/element_shape:output:0%decoder_lstm_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
Fdecoder_lstm_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
8decoder_lstm_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensordecoder_lstm_1/transpose_1:y:0Odecoder_lstm_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:���~
decoder_lstm_1/zeros_like	ZerosLike$decoder_lstm_1/lstm_cell_1/mul_3:z:0*
T0*'
_output_shapes
:��������� r
'decoder_lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������c
!decoder_lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
decoder_lstm_1/whileWhile*decoder_lstm_1/while/loop_counter:output:00decoder_lstm_1/while/maximum_iterations:output:0decoder_lstm_1/time:output:0'decoder_lstm_1/TensorArrayV2_1:handle:0decoder_lstm_1/zeros_like:y:0encoder_lstm_1/while:output:5encoder_lstm_1/while:output:6%decoder_lstm_1/strided_slice:output:0Fdecoder_lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Hdecoder_lstm_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:09decoder_lstm_1_lstm_cell_1_matmul_readvariableop_resource;decoder_lstm_1_lstm_cell_1_matmul_1_readvariableop_resource:decoder_lstm_1_lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *,
body$R"
 decoder_lstm_1_while_body_264740*,
cond$R"
 decoder_lstm_1_while_cond_264739*`
output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *
parallel_iterations �
?decoder_lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
1decoder_lstm_1/TensorArrayV2Stack/TensorListStackTensorListStackdecoder_lstm_1/while:output:3Hdecoder_lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:i��������� *
element_dtype0w
$decoder_lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������p
&decoder_lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&decoder_lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
decoder_lstm_1/strided_slice_2StridedSlice:decoder_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0-decoder_lstm_1/strided_slice_2/stack:output:0/decoder_lstm_1/strided_slice_2/stack_1:output:0/decoder_lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maskt
decoder_lstm_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
decoder_lstm_1/transpose_2	Transpose:decoder_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0(decoder_lstm_1/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������i j
decoder_lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
&decoder_dense/Tensordot/ReadVariableOpReadVariableOp/decoder_dense_tensordot_readvariableop_resource*
_output_shapes
:	 �*
dtype0f
decoder_dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:m
decoder_dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       k
decoder_dense/Tensordot/ShapeShapedecoder_lstm_1/transpose_2:y:0*
T0*
_output_shapes
:g
%decoder_dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
 decoder_dense/Tensordot/GatherV2GatherV2&decoder_dense/Tensordot/Shape:output:0%decoder_dense/Tensordot/free:output:0.decoder_dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:i
'decoder_dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
"decoder_dense/Tensordot/GatherV2_1GatherV2&decoder_dense/Tensordot/Shape:output:0%decoder_dense/Tensordot/axes:output:00decoder_dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:g
decoder_dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
decoder_dense/Tensordot/ProdProd)decoder_dense/Tensordot/GatherV2:output:0&decoder_dense/Tensordot/Const:output:0*
T0*
_output_shapes
: i
decoder_dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
decoder_dense/Tensordot/Prod_1Prod+decoder_dense/Tensordot/GatherV2_1:output:0(decoder_dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: e
#decoder_dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
decoder_dense/Tensordot/concatConcatV2%decoder_dense/Tensordot/free:output:0%decoder_dense/Tensordot/axes:output:0,decoder_dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
decoder_dense/Tensordot/stackPack%decoder_dense/Tensordot/Prod:output:0'decoder_dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
!decoder_dense/Tensordot/transpose	Transposedecoder_lstm_1/transpose_2:y:0'decoder_dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������i �
decoder_dense/Tensordot/ReshapeReshape%decoder_dense/Tensordot/transpose:y:0&decoder_dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
decoder_dense/Tensordot/MatMulMatMul(decoder_dense/Tensordot/Reshape:output:0.decoder_dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������j
decoder_dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�g
%decoder_dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
 decoder_dense/Tensordot/concat_1ConcatV2)decoder_dense/Tensordot/GatherV2:output:0(decoder_dense/Tensordot/Const_2:output:0.decoder_dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
decoder_dense/TensordotReshape(decoder_dense/Tensordot/MatMul:product:0)decoder_dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:���������i��
$decoder_dense/BiasAdd/ReadVariableOpReadVariableOp-decoder_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
decoder_dense/BiasAddBiasAdd decoder_dense/Tensordot:output:0,decoder_dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������i�w
decoder_dense/SoftmaxSoftmaxdecoder_dense/BiasAdd:output:0*
T0*,
_output_shapes
:���������i�s
IdentityIdentitydecoder_dense/Softmax:softmax:0^NoOp*
T0*,
_output_shapes
:���������i��
NoOpNoOp%^decoder_dense/BiasAdd/ReadVariableOp'^decoder_dense/Tensordot/ReadVariableOp2^decoder_lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp1^decoder_lstm_1/lstm_cell_1/MatMul/ReadVariableOp3^decoder_lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp^decoder_lstm_1/while0^encoder_lstm_1/lstm_cell/BiasAdd/ReadVariableOp/^encoder_lstm_1/lstm_cell/MatMul/ReadVariableOp1^encoder_lstm_1/lstm_cell/MatMul_1/ReadVariableOp^encoder_lstm_1/while"^shared_embedding/embedding_lookup$^shared_embedding/embedding_lookup_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������i:���������i: : : : : : : : : 2L
$decoder_dense/BiasAdd/ReadVariableOp$decoder_dense/BiasAdd/ReadVariableOp2P
&decoder_dense/Tensordot/ReadVariableOp&decoder_dense/Tensordot/ReadVariableOp2f
1decoder_lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp1decoder_lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp2d
0decoder_lstm_1/lstm_cell_1/MatMul/ReadVariableOp0decoder_lstm_1/lstm_cell_1/MatMul/ReadVariableOp2h
2decoder_lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp2decoder_lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp2,
decoder_lstm_1/whiledecoder_lstm_1/while2b
/encoder_lstm_1/lstm_cell/BiasAdd/ReadVariableOp/encoder_lstm_1/lstm_cell/BiasAdd/ReadVariableOp2`
.encoder_lstm_1/lstm_cell/MatMul/ReadVariableOp.encoder_lstm_1/lstm_cell/MatMul/ReadVariableOp2d
0encoder_lstm_1/lstm_cell/MatMul_1/ReadVariableOp0encoder_lstm_1/lstm_cell/MatMul_1/ReadVariableOp2,
encoder_lstm_1/whileencoder_lstm_1/while2F
!shared_embedding/embedding_lookup!shared_embedding/embedding_lookup2J
#shared_embedding/embedding_lookup_1#shared_embedding/embedding_lookup_1:Q M
'
_output_shapes
:���������i
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:���������i
"
_user_specified_name
inputs/1
�s
�
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_266596

inputs
mask

initial_state_0
initial_state_1=
*lstm_cell_1_matmul_readvariableop_resource:	 �?
,lstm_cell_1_matmul_1_readvariableop_resource:	 �:
+lstm_cell_1_biasadd_readvariableop_resource:	�
identity��"lstm_cell_1/BiasAdd/ReadVariableOp�!lstm_cell_1/MatMul/ReadVariableOp�#lstm_cell_1/MatMul_1/ReadVariableOp�whilec
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:i��������� B
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
shrink_axis_maskY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������m

ExpandDims
ExpandDimsmaskExpandDims/dim:output:0*
T0
*+
_output_shapes
:���������ie
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
transpose_1	TransposeExpandDims:output:0transpose_1/perm:output:0*
T0
*+
_output_shapes
:i���������f
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maskc
lstm_cell_1/ones_like/ShapeShapestrided_slice_1:output:0*
T0*
_output_shapes
:`
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� ^
lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell_1/dropout/MulMullstm_cell_1/ones_like:output:0"lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:��������� g
lstm_cell_1/dropout/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
0lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2����g
"lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
 lstm_cell_1/dropout/GreaterEqualGreaterEqual9lstm_cell_1/dropout/random_uniform/RandomUniform:output:0+lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell_1/dropout/CastCast$lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
lstm_cell_1/dropout/Mul_1Mullstm_cell_1/dropout/Mul:z:0lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:��������� `
lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell_1/dropout_1/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:��������� i
lstm_cell_1/dropout_1/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
2lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2i
$lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
"lstm_cell_1/dropout_1/GreaterEqualGreaterEqual;lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell_1/dropout_1/CastCast&lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
lstm_cell_1/dropout_1/Mul_1Mullstm_cell_1/dropout_1/Mul:z:0lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:��������� `
lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell_1/dropout_2/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:��������� i
lstm_cell_1/dropout_2/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
2lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2i
$lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
"lstm_cell_1/dropout_2/GreaterEqualGreaterEqual;lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell_1/dropout_2/CastCast&lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
lstm_cell_1/dropout_2/Mul_1Mullstm_cell_1/dropout_2/Mul:z:0lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:��������� `
lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell_1/dropout_3/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:��������� i
lstm_cell_1/dropout_3/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
2lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2i
$lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
"lstm_cell_1/dropout_3/GreaterEqualGreaterEqual;lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell_1/dropout_3/CastCast&lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
lstm_cell_1/dropout_3/Mul_1Mullstm_cell_1/dropout_3/Mul:z:0lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:��������� �
lstm_cell_1/mulMulstrided_slice_1:output:0lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� �
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell_1/MatMulMatMullstm_cell_1/mul:z:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell_1/MatMul_1MatMulinitial_state_0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:��������� n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:��������� v
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid_1:y:0initial_state_1*
T0*'
_output_shapes
:��������� f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:��������� �
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:��������� z
lstm_cell_1/add_1AddV2lstm_cell_1/mul_1:z:0lstm_cell_1/mul_2:z:0*
T0*'
_output_shapes
:��������� n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:��������� c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell_1/mul_3Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:��������� n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : h
TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2_2TensorListReserve&TensorArrayV2_2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
7TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensortranspose_1:y:0@TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:���`

zeros_like	ZerosLikelstm_cell_1/mul_3:z:0*
T0*'
_output_shapes
:��������� c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros_like:y:0initial_state_0initial_state_1strided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:09TensorArrayUnstack_1/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *
bodyR
while_body_266458*
condR
while_cond_266457*`
output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:i��������� *
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_2	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_2/perm:output:0*
T0*+
_output_shapes
:���������i [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_2:y:0^NoOp*
T0*+
_output_shapes
:���������i �
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:���������i :���������i:��������� :��������� : : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������i 
 
_user_specified_nameinputs:MI
'
_output_shapes
:���������i

_user_specified_namemask:XT
'
_output_shapes
:��������� 
)
_user_specified_nameinitial_state/0:XT
'
_output_shapes
:��������� 
)
_user_specified_nameinitial_state/1
�r
�
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_266196
inputs_0=
*lstm_cell_1_matmul_readvariableop_resource:	 �?
,lstm_cell_1_matmul_1_readvariableop_resource:	 �:
+lstm_cell_1_biasadd_readvariableop_resource:	�
identity��"lstm_cell_1/BiasAdd/ReadVariableOp�!lstm_cell_1/MatMul/ReadVariableOp�#lstm_cell_1/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������ D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maskc
lstm_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:`
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� ^
lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell_1/dropout/MulMullstm_cell_1/ones_like:output:0"lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:��������� g
lstm_cell_1/dropout/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
0lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2����g
"lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
 lstm_cell_1/dropout/GreaterEqualGreaterEqual9lstm_cell_1/dropout/random_uniform/RandomUniform:output:0+lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell_1/dropout/CastCast$lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
lstm_cell_1/dropout/Mul_1Mullstm_cell_1/dropout/Mul:z:0lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:��������� `
lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell_1/dropout_1/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:��������� i
lstm_cell_1/dropout_1/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
2lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2i
$lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
"lstm_cell_1/dropout_1/GreaterEqualGreaterEqual;lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell_1/dropout_1/CastCast&lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
lstm_cell_1/dropout_1/Mul_1Mullstm_cell_1/dropout_1/Mul:z:0lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:��������� `
lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell_1/dropout_2/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:��������� i
lstm_cell_1/dropout_2/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
2lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2i
$lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
"lstm_cell_1/dropout_2/GreaterEqualGreaterEqual;lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell_1/dropout_2/CastCast&lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
lstm_cell_1/dropout_2/Mul_1Mullstm_cell_1/dropout_2/Mul:z:0lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:��������� `
lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell_1/dropout_3/MulMullstm_cell_1/ones_like:output:0$lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:��������� i
lstm_cell_1/dropout_3/ShapeShapelstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
2lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2i
$lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
"lstm_cell_1/dropout_3/GreaterEqualGreaterEqual;lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell_1/dropout_3/CastCast&lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
lstm_cell_1/dropout_3/Mul_1Mullstm_cell_1/dropout_3/Mul:z:0lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:��������� �
lstm_cell_1/mulMulstrided_slice_2:output:0lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� �
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell_1/MatMulMatMullstm_cell_1/mul:z:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:��������� n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:��������� w
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:��������� �
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:��������� z
lstm_cell_1/add_1AddV2lstm_cell_1/mul_1:z:0lstm_cell_1/mul_2:z:0*
T0*'
_output_shapes
:��������� n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:��������� c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell_1/mul_3Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:��������� n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_266076*
condR
while_cond_266075*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������ �
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������ : : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������ 
"
_user_specified_name
inputs/0
�
�
 encoder_lstm_1_while_cond_264514:
6encoder_lstm_1_while_encoder_lstm_1_while_loop_counter@
<encoder_lstm_1_while_encoder_lstm_1_while_maximum_iterations$
 encoder_lstm_1_while_placeholder&
"encoder_lstm_1_while_placeholder_1&
"encoder_lstm_1_while_placeholder_2&
"encoder_lstm_1_while_placeholder_3&
"encoder_lstm_1_while_placeholder_4<
8encoder_lstm_1_while_less_encoder_lstm_1_strided_slice_1R
Nencoder_lstm_1_while_encoder_lstm_1_while_cond_264514___redundant_placeholder0R
Nencoder_lstm_1_while_encoder_lstm_1_while_cond_264514___redundant_placeholder1R
Nencoder_lstm_1_while_encoder_lstm_1_while_cond_264514___redundant_placeholder2R
Nencoder_lstm_1_while_encoder_lstm_1_while_cond_264514___redundant_placeholder3R
Nencoder_lstm_1_while_encoder_lstm_1_while_cond_264514___redundant_placeholder4!
encoder_lstm_1_while_identity
�
encoder_lstm_1/while/LessLess encoder_lstm_1_while_placeholder8encoder_lstm_1_while_less_encoder_lstm_1_strided_slice_1*
T0*
_output_shapes
: i
encoder_lstm_1/while/IdentityIdentityencoder_lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "G
encoder_lstm_1_while_identity&encoder_lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :��������� :��������� :��������� : :::::: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�	
�
while_cond_266257
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_less_strided_slice4
0while_while_cond_266257___redundant_placeholder04
0while_while_cond_266257___redundant_placeholder14
0while_while_cond_266257___redundant_placeholder24
0while_while_cond_266257___redundant_placeholder34
0while_while_cond_266257___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :��������� :��������� :��������� : :::::: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�
�
I__inference_decoder_dense_layer_call_and_return_conditional_losses_263179

inputs4
!tensordot_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	 �*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������i �
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:���������i�s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������i�[
SoftmaxSoftmaxBiasAdd:output:0*
T0*,
_output_shapes
:���������i�e
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*,
_output_shapes
:���������i�z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������i : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:���������i 
 
_user_specified_nameinputs
�	
�
while_cond_263600
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_less_strided_slice_14
0while_while_cond_263600___redundant_placeholder04
0while_while_cond_263600___redundant_placeholder14
0while_while_cond_263600___redundant_placeholder24
0while_while_cond_263600___redundant_placeholder34
0while_while_cond_263600___redundant_placeholder4
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :��������� :��������� :��������� : :::::: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�
�
.__inference_seq2seq_model_layer_call_fn_263869
encoder_inputs
decoder_inputs
unknown:	� 
	unknown_0:	 �
	unknown_1:	 �
	unknown_2:	�
	unknown_3:	 �
	unknown_4:	 �
	unknown_5:	�
	unknown_6:	 �
	unknown_7:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallencoder_inputsdecoder_inputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������i�*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_seq2seq_model_layer_call_and_return_conditional_losses_263824t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:���������i�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������i:���������i: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:���������i
(
_user_specified_nameencoder_inputs:WS
'
_output_shapes
:���������i
(
_user_specified_namedecoder_inputs
�
�
while_cond_266075
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_266075___redundant_placeholder04
0while_while_cond_266075___redundant_placeholder14
0while_while_cond_266075___redundant_placeholder24
0while_while_cond_266075___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�	
�
while_cond_263329
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_less_strided_slice4
0while_while_cond_263329___redundant_placeholder04
0while_while_cond_263329___redundant_placeholder14
0while_while_cond_263329___redundant_placeholder24
0while_while_cond_263329___redundant_placeholder34
0while_while_cond_263329___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :��������� :��������� :��������� : :::::: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�
�
while_cond_262046
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_262046___redundant_placeholder04
0while_while_cond_262046___redundant_placeholder14
0while_while_cond_262046___redundant_placeholder24
0while_while_cond_262046___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�:
�
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_266912

inputs
states_0
states_11
matmul_readvariableop_resource:	 �3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:��������� R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?p
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:��������� O
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2����[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:��������� T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?t
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:��������� Q
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:�
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� s
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� o
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:��������� T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?t
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:��������� Q
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:�
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� s
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� o
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:��������� T
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?t
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:��������� Q
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:�
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� s
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� o
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:��������� W
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0k
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:��������� W
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� N
ReluRelusplit:output:2*
T0*'
_output_shapes
:��������� _
mul_2MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:��������� V
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:��������� K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:��������� c
mul_3MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:��������� X
IdentityIdentity	mul_3:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_1Identity	mul_3:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:��������� :��������� :��������� : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�N
�
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_265981
inputs_0=
*lstm_cell_1_matmul_readvariableop_resource:	 �?
,lstm_cell_1_matmul_1_readvariableop_resource:	 �:
+lstm_cell_1_biasadd_readvariableop_resource:	�
identity��"lstm_cell_1/BiasAdd/ReadVariableOp�!lstm_cell_1/MatMul/ReadVariableOp�#lstm_cell_1/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������ D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maskc
lstm_cell_1/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:`
lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell_1/ones_likeFill$lstm_cell_1/ones_like/Shape:output:0$lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell_1/mulMulstrided_slice_2:output:0lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:��������� �
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell_1/MatMulMatMullstm_cell_1/mul:z:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitl
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*'
_output_shapes
:��������� n
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*'
_output_shapes
:��������� w
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� f
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*'
_output_shapes
:��������� �
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:��������� z
lstm_cell_1/add_1AddV2lstm_cell_1/mul_1:z:0lstm_cell_1/mul_2:z:0*
T0*'
_output_shapes
:��������� n
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*'
_output_shapes
:��������� c
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell_1/mul_3Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:��������� n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_265893*
condR
while_cond_265892*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������ �
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������ : : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������ 
"
_user_specified_name
inputs/0
�f
�
 decoder_lstm_1_while_body_264262:
6decoder_lstm_1_while_decoder_lstm_1_while_loop_counter@
<decoder_lstm_1_while_decoder_lstm_1_while_maximum_iterations$
 decoder_lstm_1_while_placeholder&
"decoder_lstm_1_while_placeholder_1&
"decoder_lstm_1_while_placeholder_2&
"decoder_lstm_1_while_placeholder_3&
"decoder_lstm_1_while_placeholder_47
3decoder_lstm_1_while_decoder_lstm_1_strided_slice_0u
qdecoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_decoder_lstm_1_tensorarrayunstack_tensorlistfromtensor_0y
udecoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_decoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensor_0T
Adecoder_lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0:	 �V
Cdecoder_lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0:	 �Q
Bdecoder_lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0:	�!
decoder_lstm_1_while_identity#
decoder_lstm_1_while_identity_1#
decoder_lstm_1_while_identity_2#
decoder_lstm_1_while_identity_3#
decoder_lstm_1_while_identity_4#
decoder_lstm_1_while_identity_5#
decoder_lstm_1_while_identity_65
1decoder_lstm_1_while_decoder_lstm_1_strided_slices
odecoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_decoder_lstm_1_tensorarrayunstack_tensorlistfromtensorw
sdecoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_decoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensorR
?decoder_lstm_1_while_lstm_cell_1_matmul_readvariableop_resource:	 �T
Adecoder_lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource:	 �O
@decoder_lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource:	���7decoder_lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp�6decoder_lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp�8decoder_lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp�
Fdecoder_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
8decoder_lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqdecoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_decoder_lstm_1_tensorarrayunstack_tensorlistfromtensor_0 decoder_lstm_1_while_placeholderOdecoder_lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype0�
Hdecoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
:decoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemudecoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_decoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensor_0 decoder_lstm_1_while_placeholderQdecoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
�
0decoder_lstm_1/while/lstm_cell_1/ones_like/ShapeShape?decoder_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:u
0decoder_lstm_1/while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
*decoder_lstm_1/while/lstm_cell_1/ones_likeFill9decoder_lstm_1/while/lstm_cell_1/ones_like/Shape:output:09decoder_lstm_1/while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� �
$decoder_lstm_1/while/lstm_cell_1/mulMul?decoder_lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:03decoder_lstm_1/while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:��������� �
6decoder_lstm_1/while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOpAdecoder_lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
'decoder_lstm_1/while/lstm_cell_1/MatMulMatMul(decoder_lstm_1/while/lstm_cell_1/mul:z:0>decoder_lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8decoder_lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpCdecoder_lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
)decoder_lstm_1/while/lstm_cell_1/MatMul_1MatMul"decoder_lstm_1_while_placeholder_3@decoder_lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$decoder_lstm_1/while/lstm_cell_1/addAddV21decoder_lstm_1/while/lstm_cell_1/MatMul:product:03decoder_lstm_1/while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
7decoder_lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOpBdecoder_lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
(decoder_lstm_1/while/lstm_cell_1/BiasAddBiasAdd(decoder_lstm_1/while/lstm_cell_1/add:z:0?decoder_lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������r
0decoder_lstm_1/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
&decoder_lstm_1/while/lstm_cell_1/splitSplit9decoder_lstm_1/while/lstm_cell_1/split/split_dim:output:01decoder_lstm_1/while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split�
(decoder_lstm_1/while/lstm_cell_1/SigmoidSigmoid/decoder_lstm_1/while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:��������� �
*decoder_lstm_1/while/lstm_cell_1/Sigmoid_1Sigmoid/decoder_lstm_1/while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:��������� �
&decoder_lstm_1/while/lstm_cell_1/mul_1Mul.decoder_lstm_1/while/lstm_cell_1/Sigmoid_1:y:0"decoder_lstm_1_while_placeholder_4*
T0*'
_output_shapes
:��������� �
%decoder_lstm_1/while/lstm_cell_1/ReluRelu/decoder_lstm_1/while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:��������� �
&decoder_lstm_1/while/lstm_cell_1/mul_2Mul,decoder_lstm_1/while/lstm_cell_1/Sigmoid:y:03decoder_lstm_1/while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:��������� �
&decoder_lstm_1/while/lstm_cell_1/add_1AddV2*decoder_lstm_1/while/lstm_cell_1/mul_1:z:0*decoder_lstm_1/while/lstm_cell_1/mul_2:z:0*
T0*'
_output_shapes
:��������� �
*decoder_lstm_1/while/lstm_cell_1/Sigmoid_2Sigmoid/decoder_lstm_1/while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:��������� �
'decoder_lstm_1/while/lstm_cell_1/Relu_1Relu*decoder_lstm_1/while/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:��������� �
&decoder_lstm_1/while/lstm_cell_1/mul_3Mul.decoder_lstm_1/while/lstm_cell_1/Sigmoid_2:y:05decoder_lstm_1/while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:��������� t
#decoder_lstm_1/while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
decoder_lstm_1/while/TileTileAdecoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0,decoder_lstm_1/while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
decoder_lstm_1/while/SelectV2SelectV2"decoder_lstm_1/while/Tile:output:0*decoder_lstm_1/while/lstm_cell_1/mul_3:z:0"decoder_lstm_1_while_placeholder_2*
T0*'
_output_shapes
:��������� v
%decoder_lstm_1/while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
decoder_lstm_1/while/Tile_1TileAdecoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0.decoder_lstm_1/while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������v
%decoder_lstm_1/while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
decoder_lstm_1/while/Tile_2TileAdecoder_lstm_1/while/TensorArrayV2Read_1/TensorListGetItem:item:0.decoder_lstm_1/while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
decoder_lstm_1/while/SelectV2_1SelectV2$decoder_lstm_1/while/Tile_1:output:0*decoder_lstm_1/while/lstm_cell_1/mul_3:z:0"decoder_lstm_1_while_placeholder_3*
T0*'
_output_shapes
:��������� �
decoder_lstm_1/while/SelectV2_2SelectV2$decoder_lstm_1/while/Tile_2:output:0*decoder_lstm_1/while/lstm_cell_1/add_1:z:0"decoder_lstm_1_while_placeholder_4*
T0*'
_output_shapes
:��������� �
9decoder_lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"decoder_lstm_1_while_placeholder_1 decoder_lstm_1_while_placeholder&decoder_lstm_1/while/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���\
decoder_lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
decoder_lstm_1/while/addAddV2 decoder_lstm_1_while_placeholder#decoder_lstm_1/while/add/y:output:0*
T0*
_output_shapes
: ^
decoder_lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
decoder_lstm_1/while/add_1AddV26decoder_lstm_1_while_decoder_lstm_1_while_loop_counter%decoder_lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: �
decoder_lstm_1/while/IdentityIdentitydecoder_lstm_1/while/add_1:z:0^decoder_lstm_1/while/NoOp*
T0*
_output_shapes
: �
decoder_lstm_1/while/Identity_1Identity<decoder_lstm_1_while_decoder_lstm_1_while_maximum_iterations^decoder_lstm_1/while/NoOp*
T0*
_output_shapes
: �
decoder_lstm_1/while/Identity_2Identitydecoder_lstm_1/while/add:z:0^decoder_lstm_1/while/NoOp*
T0*
_output_shapes
: �
decoder_lstm_1/while/Identity_3IdentityIdecoder_lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^decoder_lstm_1/while/NoOp*
T0*
_output_shapes
: �
decoder_lstm_1/while/Identity_4Identity&decoder_lstm_1/while/SelectV2:output:0^decoder_lstm_1/while/NoOp*
T0*'
_output_shapes
:��������� �
decoder_lstm_1/while/Identity_5Identity(decoder_lstm_1/while/SelectV2_1:output:0^decoder_lstm_1/while/NoOp*
T0*'
_output_shapes
:��������� �
decoder_lstm_1/while/Identity_6Identity(decoder_lstm_1/while/SelectV2_2:output:0^decoder_lstm_1/while/NoOp*
T0*'
_output_shapes
:��������� �
decoder_lstm_1/while/NoOpNoOp8^decoder_lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp7^decoder_lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp9^decoder_lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "h
1decoder_lstm_1_while_decoder_lstm_1_strided_slice3decoder_lstm_1_while_decoder_lstm_1_strided_slice_0"G
decoder_lstm_1_while_identity&decoder_lstm_1/while/Identity:output:0"K
decoder_lstm_1_while_identity_1(decoder_lstm_1/while/Identity_1:output:0"K
decoder_lstm_1_while_identity_2(decoder_lstm_1/while/Identity_2:output:0"K
decoder_lstm_1_while_identity_3(decoder_lstm_1/while/Identity_3:output:0"K
decoder_lstm_1_while_identity_4(decoder_lstm_1/while/Identity_4:output:0"K
decoder_lstm_1_while_identity_5(decoder_lstm_1/while/Identity_5:output:0"K
decoder_lstm_1_while_identity_6(decoder_lstm_1/while/Identity_6:output:0"�
@decoder_lstm_1_while_lstm_cell_1_biasadd_readvariableop_resourceBdecoder_lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0"�
Adecoder_lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resourceCdecoder_lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0"�
?decoder_lstm_1_while_lstm_cell_1_matmul_readvariableop_resourceAdecoder_lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0"�
sdecoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_decoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensorudecoder_lstm_1_while_tensorarrayv2read_1_tensorlistgetitem_decoder_lstm_1_tensorarrayunstack_1_tensorlistfromtensor_0"�
odecoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_decoder_lstm_1_tensorarrayunstack_tensorlistfromtensorqdecoder_lstm_1_while_tensorarrayv2read_tensorlistgetitem_decoder_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :��������� :��������� :��������� : : : : : : 2r
7decoder_lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp7decoder_lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp2p
6decoder_lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp6decoder_lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp2t
8decoder_lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp8decoder_lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
�:
�
while_body_265047
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	 �E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	 �@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	 �C
0while_lstm_cell_matmul_1_readvariableop_resource:	 �>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype0
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:��������� �
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:��������� v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:��������� �
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:��������� �
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/add_1AddV2while/lstm_cell/mul_1:z:0while/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:��������� v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:��������� k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/mul_3Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_3:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_3:z:0^while/NoOp*
T0*'
_output_shapes
:��������� v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� �

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�u
�

while_body_266458
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0[
Wwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	 �G
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:	 �B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_identity_6
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorY
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	 �E
2while_lstm_cell_1_matmul_1_readvariableop_resource:	 �@
1while_lstm_cell_1_biasadd_readvariableop_resource:	���(while/lstm_cell_1/BiasAdd/ReadVariableOp�'while/lstm_cell_1/MatMul/ReadVariableOp�)while/lstm_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype0�
9while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
+while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0while_placeholderBwhile/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
�
!while/lstm_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:f
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� d
while/lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell_1/dropout/MulMul$while/lstm_cell_1/ones_like:output:0(while/lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:��������� s
while/lstm_cell_1/dropout/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
6while/lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2����m
(while/lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
&while/lstm_cell_1/dropout/GreaterEqualGreaterEqual?while/lstm_cell_1/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/dropout/CastCast*while/lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
while/lstm_cell_1/dropout/Mul_1Mul!while/lstm_cell_1/dropout/Mul:z:0"while/lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:��������� f
!while/lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell_1/dropout_1/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:��������� u
!while/lstm_cell_1/dropout_1/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
8while/lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2o
*while/lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
(while/lstm_cell_1/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
 while/lstm_cell_1/dropout_1/CastCast,while/lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
!while/lstm_cell_1/dropout_1/Mul_1Mul#while/lstm_cell_1/dropout_1/Mul:z:0$while/lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:��������� f
!while/lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell_1/dropout_2/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:��������� u
!while/lstm_cell_1/dropout_2/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
8while/lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2o
*while/lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
(while/lstm_cell_1/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
 while/lstm_cell_1/dropout_2/CastCast,while/lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
!while/lstm_cell_1/dropout_2/Mul_1Mul#while/lstm_cell_1/dropout_2/Mul:z:0$while/lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:��������� f
!while/lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell_1/dropout_3/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:��������� u
!while/lstm_cell_1/dropout_3/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
8while/lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2o
*while/lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
(while/lstm_cell_1/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
 while/lstm_cell_1/dropout_3/CastCast,while/lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
!while/lstm_cell_1/dropout_3/Mul_1Mul#while/lstm_cell_1/dropout_3/Mul:z:0$while/lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� �
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell_1/MatMulMatMulwhile/lstm_cell_1/mul:z:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_31while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:��������� z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_4*
T0*'
_output_shapes
:��������� r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul_1:z:0while/lstm_cell_1/mul_2:z:0*
T0*'
_output_shapes
:��������� z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:��������� o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/mul_3Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:��������� e
while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �

while/TileTile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
while/SelectV2SelectV2while/Tile:output:0while/lstm_cell_1/mul_3:z:0while_placeholder_2*
T0*'
_output_shapes
:��������� g
while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
while/Tile_1Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������g
while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
while/Tile_2Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
while/SelectV2_1SelectV2while/Tile_1:output:0while/lstm_cell_1/mul_3:z:0while_placeholder_3*
T0*'
_output_shapes
:��������� �
while/SelectV2_2SelectV2while/Tile_2:output:0while/lstm_cell_1/add_1:z:0while_placeholder_4*
T0*'
_output_shapes
:��������� �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: t
while/Identity_4Identitywhile/SelectV2:output:0^while/NoOp*
T0*'
_output_shapes
:��������� v
while/Identity_5Identitywhile/SelectV2_1:output:0^while/NoOp*
T0*'
_output_shapes
:��������� v
while/Identity_6Identitywhile/SelectV2_2:output:0^while/NoOp*
T0*'
_output_shapes
:��������� �

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"-
while_identity_6while/Identity_6:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"�
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :��������� :��������� :��������� : : : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
�`
�
while_body_265232
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	 �E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	 �@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	 �C
0while_lstm_cell_matmul_1_readvariableop_resource:	 �>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype0
while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� b
while/lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell/dropout/MulMul"while/lstm_cell/ones_like:output:0&while/lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:��������� o
while/lstm_cell/dropout/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
4while/lstm_cell/dropout/random_uniform/RandomUniformRandomUniform&while/lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2����k
&while/lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
$while/lstm_cell/dropout/GreaterEqualGreaterEqual=while/lstm_cell/dropout/random_uniform/RandomUniform:output:0/while/lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/dropout/CastCast(while/lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
while/lstm_cell/dropout/Mul_1Mulwhile/lstm_cell/dropout/Mul:z:0 while/lstm_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:��������� d
while/lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell/dropout_1/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:��������� q
while/lstm_cell/dropout_1/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
6while/lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2m
(while/lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
&while/lstm_cell/dropout_1/GreaterEqualGreaterEqual?while/lstm_cell/dropout_1/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/dropout_1/CastCast*while/lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
while/lstm_cell/dropout_1/Mul_1Mul!while/lstm_cell/dropout_1/Mul:z:0"while/lstm_cell/dropout_1/Cast:y:0*
T0*'
_output_shapes
:��������� d
while/lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell/dropout_2/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:��������� q
while/lstm_cell/dropout_2/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
6while/lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2m
(while/lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
&while/lstm_cell/dropout_2/GreaterEqualGreaterEqual?while/lstm_cell/dropout_2/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/dropout_2/CastCast*while/lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
while/lstm_cell/dropout_2/Mul_1Mul!while/lstm_cell/dropout_2/Mul:z:0"while/lstm_cell/dropout_2/Cast:y:0*
T0*'
_output_shapes
:��������� d
while/lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell/dropout_3/MulMul"while/lstm_cell/ones_like:output:0(while/lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:��������� q
while/lstm_cell/dropout_3/ShapeShape"while/lstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
6while/lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform(while/lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2m
(while/lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
&while/lstm_cell/dropout_3/GreaterEqualGreaterEqual?while/lstm_cell/dropout_3/random_uniform/RandomUniform:output:01while/lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/dropout_3/CastCast*while/lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
while/lstm_cell/dropout_3/Mul_1Mul!while/lstm_cell/dropout_3/Mul:z:0"while/lstm_cell/dropout_3/Cast:y:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� �
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:��������� v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:��������� �
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:��������� �
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/add_1AddV2while/lstm_cell/mul_1:z:0while/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:��������� v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:��������� k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/mul_3Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_3:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_3:z:0^while/NoOp*
T0*'
_output_shapes
:��������� v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� �

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�:
�
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_262118

inputs#
lstm_cell_262034:	 �#
lstm_cell_262036:	 �
lstm_cell_262038:	�
identity

identity_1

identity_2��!lstm_cell/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������ D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask�
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_262034lstm_cell_262036lstm_cell_262038*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:��������� :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_262033n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_262034lstm_cell_262036lstm_cell_262038*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_262047*
condR
while_cond_262046*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������ _

Identity_1Identitywhile:output:4^NoOp*
T0*'
_output_shapes
:��������� _

Identity_2Identitywhile:output:5^NoOp*
T0*'
_output_shapes
:��������� r
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������ : : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������ 
 
_user_specified_nameinputs
�
�
 encoder_lstm_1_while_cond_264100:
6encoder_lstm_1_while_encoder_lstm_1_while_loop_counter@
<encoder_lstm_1_while_encoder_lstm_1_while_maximum_iterations$
 encoder_lstm_1_while_placeholder&
"encoder_lstm_1_while_placeholder_1&
"encoder_lstm_1_while_placeholder_2&
"encoder_lstm_1_while_placeholder_3&
"encoder_lstm_1_while_placeholder_4<
8encoder_lstm_1_while_less_encoder_lstm_1_strided_slice_1R
Nencoder_lstm_1_while_encoder_lstm_1_while_cond_264100___redundant_placeholder0R
Nencoder_lstm_1_while_encoder_lstm_1_while_cond_264100___redundant_placeholder1R
Nencoder_lstm_1_while_encoder_lstm_1_while_cond_264100___redundant_placeholder2R
Nencoder_lstm_1_while_encoder_lstm_1_while_cond_264100___redundant_placeholder3R
Nencoder_lstm_1_while_encoder_lstm_1_while_cond_264100___redundant_placeholder4!
encoder_lstm_1_while_identity
�
encoder_lstm_1/while/LessLess encoder_lstm_1_while_placeholder8encoder_lstm_1_while_less_encoder_lstm_1_strided_slice_1*
T0*
_output_shapes
: i
encoder_lstm_1/while/IdentityIdentityencoder_lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "G
encoder_lstm_1_while_identity&encoder_lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :��������� :��������� :��������� : :::::: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�
�
 decoder_lstm_1_while_cond_264261:
6decoder_lstm_1_while_decoder_lstm_1_while_loop_counter@
<decoder_lstm_1_while_decoder_lstm_1_while_maximum_iterations$
 decoder_lstm_1_while_placeholder&
"decoder_lstm_1_while_placeholder_1&
"decoder_lstm_1_while_placeholder_2&
"decoder_lstm_1_while_placeholder_3&
"decoder_lstm_1_while_placeholder_4:
6decoder_lstm_1_while_less_decoder_lstm_1_strided_sliceR
Ndecoder_lstm_1_while_decoder_lstm_1_while_cond_264261___redundant_placeholder0R
Ndecoder_lstm_1_while_decoder_lstm_1_while_cond_264261___redundant_placeholder1R
Ndecoder_lstm_1_while_decoder_lstm_1_while_cond_264261___redundant_placeholder2R
Ndecoder_lstm_1_while_decoder_lstm_1_while_cond_264261___redundant_placeholder3R
Ndecoder_lstm_1_while_decoder_lstm_1_while_cond_264261___redundant_placeholder4!
decoder_lstm_1_while_identity
�
decoder_lstm_1/while/LessLess decoder_lstm_1_while_placeholder6decoder_lstm_1_while_less_decoder_lstm_1_strided_slice*
T0*
_output_shapes
: i
decoder_lstm_1/while/IdentityIdentitydecoder_lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "G
decoder_lstm_1_while_identity&decoder_lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :��������� :��������� :��������� : :::::: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�;
�
while_body_265893
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	 �G
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:	 �B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	 �E
2while_lstm_cell_1_matmul_1_readvariableop_resource:	 �@
1while_lstm_cell_1_biasadd_readvariableop_resource:	���(while/lstm_cell_1/BiasAdd/ReadVariableOp�'while/lstm_cell_1/MatMul/ReadVariableOp�)while/lstm_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype0�
!while/lstm_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:f
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:��������� �
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell_1/MatMulMatMulwhile/lstm_cell_1/mul:z:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:��������� z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:��������� r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul_1:z:0while/lstm_cell_1/mul_2:z:0*
T0*'
_output_shapes
:��������� z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:��������� o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/mul_3Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_3:z:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: x
while/Identity_4Identitywhile/lstm_cell_1/mul_3:z:0^while/NoOp*
T0*'
_output_shapes
:��������� x
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:��������� �

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :��������� :��������� : : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: 
�
�
/__inference_decoder_lstm_1_layer_call_fn_265816

inputs
mask

initial_state_0
initial_state_1
unknown:	 �
	unknown_0:	 �
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsmaskinitial_state_0initial_state_1unknown	unknown_0	unknown_1*
Tin
	2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_263140s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������i `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:���������i :���������i:��������� :��������� : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������i 
 
_user_specified_nameinputs:MI
'
_output_shapes
:���������i

_user_specified_namemask:XT
'
_output_shapes
:��������� 
)
_user_specified_nameinitial_state/0:XT
'
_output_shapes
:��������� 
)
_user_specified_nameinitial_state/1
�$
�
I__inference_seq2seq_model_layer_call_and_return_conditional_losses_263904
encoder_inputs
decoder_inputs*
shared_embedding_263873:	� (
encoder_lstm_1_263882:	 �(
encoder_lstm_1_263884:	 �$
encoder_lstm_1_263886:	�(
decoder_lstm_1_263891:	 �(
decoder_lstm_1_263893:	 �$
decoder_lstm_1_263895:	�'
decoder_dense_263898:	 �#
decoder_dense_263900:	�
identity��%decoder_dense/StatefulPartitionedCall�&decoder_lstm_1/StatefulPartitionedCall�&encoder_lstm_1/StatefulPartitionedCall�(shared_embedding/StatefulPartitionedCall�*shared_embedding/StatefulPartitionedCall_1�
(shared_embedding/StatefulPartitionedCallStatefulPartitionedCalldecoder_inputsshared_embedding_263873*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_shared_embedding_layer_call_and_return_conditional_losses_262773`
shared_embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
shared_embedding/NotEqualNotEqualdecoder_inputs$shared_embedding/NotEqual/y:output:0*
T0*'
_output_shapes
:���������i�
*shared_embedding/StatefulPartitionedCall_1StatefulPartitionedCallencoder_inputsshared_embedding_263873*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_shared_embedding_layer_call_and_return_conditional_losses_262773b
shared_embedding/NotEqual_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
shared_embedding/NotEqual_1NotEqualencoder_inputs&shared_embedding/NotEqual_1/y:output:0*
T0*'
_output_shapes
:���������i�
&encoder_lstm_1/StatefulPartitionedCallStatefulPartitionedCall3shared_embedding/StatefulPartitionedCall_1:output:0shared_embedding/NotEqual_1:z:0encoder_lstm_1_263882encoder_lstm_1_263884encoder_lstm_1_263886*
Tin	
2
*
Tout
2*
_collective_manager_ids
 *Q
_output_shapes?
=:���������i :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_262963�
&decoder_lstm_1/StatefulPartitionedCallStatefulPartitionedCall1shared_embedding/StatefulPartitionedCall:output:0shared_embedding/NotEqual:z:0/encoder_lstm_1/StatefulPartitionedCall:output:1/encoder_lstm_1/StatefulPartitionedCall:output:2decoder_lstm_1_263891decoder_lstm_1_263893decoder_lstm_1_263895*
Tin
	2
*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_263140�
%decoder_dense/StatefulPartitionedCallStatefulPartitionedCall/decoder_lstm_1/StatefulPartitionedCall:output:0decoder_dense_263898decoder_dense_263900*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������i�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *R
fMRK
I__inference_decoder_dense_layer_call_and_return_conditional_losses_263179�
IdentityIdentity.decoder_dense/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:���������i��
NoOpNoOp&^decoder_dense/StatefulPartitionedCall'^decoder_lstm_1/StatefulPartitionedCall'^encoder_lstm_1/StatefulPartitionedCall)^shared_embedding/StatefulPartitionedCall+^shared_embedding/StatefulPartitionedCall_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������i:���������i: : : : : : : : : 2N
%decoder_dense/StatefulPartitionedCall%decoder_dense/StatefulPartitionedCall2P
&decoder_lstm_1/StatefulPartitionedCall&decoder_lstm_1/StatefulPartitionedCall2P
&encoder_lstm_1/StatefulPartitionedCall&encoder_lstm_1/StatefulPartitionedCall2T
(shared_embedding/StatefulPartitionedCall(shared_embedding/StatefulPartitionedCall2X
*shared_embedding/StatefulPartitionedCall_1*shared_embedding/StatefulPartitionedCall_1:W S
'
_output_shapes
:���������i
(
_user_specified_nameencoder_inputs:WS
'
_output_shapes
:���������i
(
_user_specified_namedecoder_inputs
�
�
while_cond_265231
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_265231___redundant_placeholder04
0while_while_cond_265231___redundant_placeholder14
0while_while_cond_265231___redundant_placeholder24
0while_while_cond_265231___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�
�
E__inference_lstm_cell_layer_call_and_return_conditional_losses_266706

inputs
states_0
states_11
matmul_readvariableop_resource:	 �3
 matmul_1_readvariableop_resource:	 �.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:��������� X
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:��������� u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0k
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������y
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:��������� W
mul_1MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:��������� N
ReluRelusplit:output:2*
T0*'
_output_shapes
:��������� _
mul_2MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:��������� V
add_1AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:��������� V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:��������� K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:��������� c
mul_3MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:��������� X
IdentityIdentity	mul_3:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_1Identity	mul_3:z:0^NoOp*
T0*'
_output_shapes
:��������� Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:��������� :��������� :��������� : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/0:QM
'
_output_shapes
:��������� 
"
_user_specified_name
states/1
�
�
$__inference_signature_wrapper_263965
decoder_inputs
encoder_inputs
unknown:	� 
	unknown_0:	 �
	unknown_1:	 �
	unknown_2:	�
	unknown_3:	 �
	unknown_4:	 �
	unknown_5:	�
	unknown_6:	 �
	unknown_7:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallencoder_inputsdecoder_inputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������i�*+
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_261962t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:���������i�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������i:���������i: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:���������i
(
_user_specified_namedecoder_inputs:WS
'
_output_shapes
:���������i
(
_user_specified_nameencoder_inputs
�r
�
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_265354
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	 �=
*lstm_cell_matmul_1_readvariableop_resource:	 �8
)lstm_cell_biasadd_readvariableop_resource:	�
identity

identity_1

identity_2�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������ D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maska
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� \
lstm_cell/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell/dropout/MulMullstm_cell/ones_like:output:0 lstm_cell/dropout/Const:output:0*
T0*'
_output_shapes
:��������� c
lstm_cell/dropout/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
.lstm_cell/dropout/random_uniform/RandomUniformRandomUniform lstm_cell/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2����e
 lstm_cell/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
lstm_cell/dropout/GreaterEqualGreaterEqual7lstm_cell/dropout/random_uniform/RandomUniform:output:0)lstm_cell/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell/dropout/CastCast"lstm_cell/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
lstm_cell/dropout/Mul_1Mullstm_cell/dropout/Mul:z:0lstm_cell/dropout/Cast:y:0*
T0*'
_output_shapes
:��������� ^
lstm_cell/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell/dropout_1/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_1/Const:output:0*
T0*'
_output_shapes
:��������� e
lstm_cell/dropout_1/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
0lstm_cell/dropout_1/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_1/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2g
"lstm_cell/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
 lstm_cell/dropout_1/GreaterEqualGreaterEqual9lstm_cell/dropout_1/random_uniform/RandomUniform:output:0+lstm_cell/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell/dropout_1/CastCast$lstm_cell/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
lstm_cell/dropout_1/Mul_1Mullstm_cell/dropout_1/Mul:z:0lstm_cell/dropout_1/Cast:y:0*
T0*'
_output_shapes
:��������� ^
lstm_cell/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell/dropout_2/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_2/Const:output:0*
T0*'
_output_shapes
:��������� e
lstm_cell/dropout_2/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
0lstm_cell/dropout_2/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_2/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2g
"lstm_cell/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
 lstm_cell/dropout_2/GreaterEqualGreaterEqual9lstm_cell/dropout_2/random_uniform/RandomUniform:output:0+lstm_cell/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell/dropout_2/CastCast$lstm_cell/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
lstm_cell/dropout_2/Mul_1Mullstm_cell/dropout_2/Mul:z:0lstm_cell/dropout_2/Cast:y:0*
T0*'
_output_shapes
:��������� ^
lstm_cell/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell/dropout_3/MulMullstm_cell/ones_like:output:0"lstm_cell/dropout_3/Const:output:0*
T0*'
_output_shapes
:��������� e
lstm_cell/dropout_3/ShapeShapelstm_cell/ones_like:output:0*
T0*
_output_shapes
:�
0lstm_cell/dropout_3/random_uniform/RandomUniformRandomUniform"lstm_cell/dropout_3/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2g
"lstm_cell/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
 lstm_cell/dropout_3/GreaterEqualGreaterEqual9lstm_cell/dropout_3/random_uniform/RandomUniform:output:0+lstm_cell/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell/dropout_3/CastCast$lstm_cell/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
lstm_cell/dropout_3/Mul_1Mullstm_cell/dropout_3/Mul:z:0lstm_cell/dropout_3/Cast:y:0*
T0*'
_output_shapes
:��������� }
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/dropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell/MatMulMatMullstm_cell/mul:z:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:��������� j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:��������� s
lstm_cell/mul_1Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:��������� }
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:��������� t
lstm_cell/add_1AddV2lstm_cell/mul_1:z:0lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:��������� j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:��������� _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell/mul_3Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:��������� n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_265232*
condR
while_cond_265231*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������ _

Identity_1Identitywhile:output:4^NoOp*
T0*'
_output_shapes
:��������� _

Identity_2Identitywhile:output:5^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������ : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������ 
"
_user_specified_name
inputs/0
�O
�
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_265137
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	 �=
*lstm_cell_matmul_1_readvariableop_resource:	 �8
)lstm_cell_biasadd_readvariableop_resource:	�
identity

identity_1

identity_2�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������ D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maska
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� ~
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell/MatMulMatMullstm_cell/mul:z:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:��������� j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:��������� s
lstm_cell/mul_1Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:��������� }
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:��������� t
lstm_cell/add_1AddV2lstm_cell/mul_1:z:0lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:��������� j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:��������� _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell/mul_3Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:��������� n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :��������� :��������� : : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_265047*
condR
while_cond_265046*K
output_shapes:
8: : : : :��������� :��������� : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :������������������ *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :������������������ [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :������������������ _

Identity_1Identitywhile:output:4^NoOp*
T0*'
_output_shapes
:��������� _

Identity_2Identitywhile:output:5^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������ : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������ 
"
_user_specified_name
inputs/0
�
�
/__inference_decoder_lstm_1_layer_call_fn_265802
inputs_0
unknown:	 �
	unknown_0:	 �
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :������������������ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_262745|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :������������������ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������ 
"
_user_specified_name
inputs/0
�N
�

while_body_263034
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0[
Wwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	 �G
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:	 �B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_identity_6
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorY
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	 �E
2while_lstm_cell_1_matmul_1_readvariableop_resource:	 �@
1while_lstm_cell_1_biasadd_readvariableop_resource:	���(while/lstm_cell_1/BiasAdd/ReadVariableOp�'while/lstm_cell_1/MatMul/ReadVariableOp�)while/lstm_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype0�
9while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
+while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0while_placeholderBwhile/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
�
!while/lstm_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:f
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:��������� �
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell_1/MatMulMatMulwhile/lstm_cell_1/mul:z:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_31while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:��������� z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_4*
T0*'
_output_shapes
:��������� r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul_1:z:0while/lstm_cell_1/mul_2:z:0*
T0*'
_output_shapes
:��������� z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:��������� o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/mul_3Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:��������� e
while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �

while/TileTile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
while/SelectV2SelectV2while/Tile:output:0while/lstm_cell_1/mul_3:z:0while_placeholder_2*
T0*'
_output_shapes
:��������� g
while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
while/Tile_1Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������g
while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
while/Tile_2Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
while/SelectV2_1SelectV2while/Tile_1:output:0while/lstm_cell_1/mul_3:z:0while_placeholder_3*
T0*'
_output_shapes
:��������� �
while/SelectV2_2SelectV2while/Tile_2:output:0while/lstm_cell_1/add_1:z:0while_placeholder_4*
T0*'
_output_shapes
:��������� �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: t
while/Identity_4Identitywhile/SelectV2:output:0^while/NoOp*
T0*'
_output_shapes
:��������� v
while/Identity_5Identitywhile/SelectV2_1:output:0^while/NoOp*
T0*'
_output_shapes
:��������� v
while/Identity_6Identitywhile/SelectV2_2:output:0^while/NoOp*
T0*'
_output_shapes
:��������� �

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"-
while_identity_6while/Identity_6:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"�
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :��������� :��������� :��������� : : : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
�u
�

while_body_263330
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0[
Wwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	 �G
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:	 �B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_identity_6
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorY
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	 �E
2while_lstm_cell_1_matmul_1_readvariableop_resource:	 �@
1while_lstm_cell_1_biasadd_readvariableop_resource:	���(while/lstm_cell_1/BiasAdd/ReadVariableOp�'while/lstm_cell_1/MatMul/ReadVariableOp�)while/lstm_cell_1/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype0�
9while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
+while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0while_placeholderBwhile/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0
�
!while/lstm_cell_1/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:f
!while/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell_1/ones_likeFill*while/lstm_cell_1/ones_like/Shape:output:0*while/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� d
while/lstm_cell_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell_1/dropout/MulMul$while/lstm_cell_1/ones_like:output:0(while/lstm_cell_1/dropout/Const:output:0*
T0*'
_output_shapes
:��������� s
while/lstm_cell_1/dropout/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
6while/lstm_cell_1/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_1/dropout/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2����m
(while/lstm_cell_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
&while/lstm_cell_1/dropout/GreaterEqualGreaterEqual?while/lstm_cell_1/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/dropout/CastCast*while/lstm_cell_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
while/lstm_cell_1/dropout/Mul_1Mul!while/lstm_cell_1/dropout/Mul:z:0"while/lstm_cell_1/dropout/Cast:y:0*
T0*'
_output_shapes
:��������� f
!while/lstm_cell_1/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell_1/dropout_1/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_1/Const:output:0*
T0*'
_output_shapes
:��������� u
!while/lstm_cell_1/dropout_1/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
8while/lstm_cell_1/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_1/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2o
*while/lstm_cell_1/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
(while/lstm_cell_1/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
 while/lstm_cell_1/dropout_1/CastCast,while/lstm_cell_1/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
!while/lstm_cell_1/dropout_1/Mul_1Mul#while/lstm_cell_1/dropout_1/Mul:z:0$while/lstm_cell_1/dropout_1/Cast:y:0*
T0*'
_output_shapes
:��������� f
!while/lstm_cell_1/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell_1/dropout_2/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_2/Const:output:0*
T0*'
_output_shapes
:��������� u
!while/lstm_cell_1/dropout_2/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
8while/lstm_cell_1/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_2/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2o
*while/lstm_cell_1/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
(while/lstm_cell_1/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
 while/lstm_cell_1/dropout_2/CastCast,while/lstm_cell_1/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
!while/lstm_cell_1/dropout_2/Mul_1Mul#while/lstm_cell_1/dropout_2/Mul:z:0$while/lstm_cell_1/dropout_2/Cast:y:0*
T0*'
_output_shapes
:��������� f
!while/lstm_cell_1/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell_1/dropout_3/MulMul$while/lstm_cell_1/ones_like:output:0*while/lstm_cell_1/dropout_3/Const:output:0*
T0*'
_output_shapes
:��������� u
!while/lstm_cell_1/dropout_3/ShapeShape$while/lstm_cell_1/ones_like:output:0*
T0*
_output_shapes
:�
8while/lstm_cell_1/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_1/dropout_3/Shape:output:0*
T0*'
_output_shapes
:��������� *
dtype0*
seed2o
*while/lstm_cell_1/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
(while/lstm_cell_1/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_1/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_1/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:��������� �
 while/lstm_cell_1/dropout_3/CastCast,while/lstm_cell_1/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:��������� �
!while/lstm_cell_1/dropout_3/Mul_1Mul#while/lstm_cell_1/dropout_3/Mul:z:0$while/lstm_cell_1/dropout_3/Cast:y:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:��������� �
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell_1/MatMulMatMulwhile/lstm_cell_1/mul:z:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_31while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������c
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitx
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:��������� z
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_4*
T0*'
_output_shapes
:��������� r
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul_1:z:0while/lstm_cell_1/mul_2:z:0*
T0*'
_output_shapes
:��������� z
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:��������� o
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell_1/mul_3Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:��������� e
while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �

while/TileTile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
while/SelectV2SelectV2while/Tile:output:0while/lstm_cell_1/mul_3:z:0while_placeholder_2*
T0*'
_output_shapes
:��������� g
while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
while/Tile_1Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������g
while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
while/Tile_2Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
while/SelectV2_1SelectV2while/Tile_1:output:0while/lstm_cell_1/mul_3:z:0while_placeholder_3*
T0*'
_output_shapes
:��������� �
while/SelectV2_2SelectV2while/Tile_2:output:0while/lstm_cell_1/add_1:z:0while_placeholder_4*
T0*'
_output_shapes
:��������� �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: t
while/Identity_4Identitywhile/SelectV2:output:0^while/NoOp*
T0*'
_output_shapes
:��������� v
while/Identity_5Identitywhile/SelectV2_1:output:0^while/NoOp*
T0*'
_output_shapes
:��������� v
while/Identity_6Identitywhile/SelectV2_2:output:0^while/NoOp*
T0*'
_output_shapes
:��������� �

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"-
while_identity_6while/Identity_6:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0",
while_strided_slicewhile_strided_slice_0"�
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :��������� :��������� :��������� : : : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: 
�
�
/__inference_encoder_lstm_1_layer_call_fn_264984

inputs
mask

unknown:	 �
	unknown_0:	 �
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsmaskunknown	unknown_0	unknown_1*
Tin	
2
*
Tout
2*
_collective_manager_ids
 *Q
_output_shapes?
=:���������i :��������� :��������� *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_263741s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������i q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:��������� q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:��������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������i :���������i: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������i 
 
_user_specified_nameinputs:MI
'
_output_shapes
:���������i

_user_specified_namemask
�Z
�
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_265535

inputs
mask
;
(lstm_cell_matmul_readvariableop_resource:	 �=
*lstm_cell_matmul_1_readvariableop_resource:	 �8
)lstm_cell_biasadd_readvariableop_resource:	�
identity

identity_1

identity_2�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:��������� R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:i��������� D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������m

ExpandDims
ExpandDimsmaskExpandDims/dim:output:0*
T0
*+
_output_shapes
:���������ie
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ~
transpose_1	TransposeExpandDims:output:0transpose_1/perm:output:0*
T0
*+
_output_shapes
:i���������f
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maska
lstm_cell/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:^
lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
lstm_cell/ones_likeFill"lstm_cell/ones_like/Shape:output:0"lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� ~
lstm_cell/mulMulstrided_slice_2:output:0lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:��������� �
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell/MatMulMatMullstm_cell/mul:z:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:��������� j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:��������� s
lstm_cell/mul_1Mullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:��������� b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:��������� }
lstm_cell/mul_2Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:��������� t
lstm_cell/add_1AddV2lstm_cell/mul_1:z:0lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:��������� j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:��������� _
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:��������� �
lstm_cell/mul_3Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:��������� n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : h
TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2_2TensorListReserve&TensorArrayV2_2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
7TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensortranspose_1:y:0@TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:���^

zeros_like	ZerosLikelstm_cell/mul_3:z:0*
T0*'
_output_shapes
:��������� c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros_like:y:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:09TensorArrayUnstack_1/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *
bodyR
while_body_265427*
condR
while_cond_265426*`
output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:i��������� *
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_maske
transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_2	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_2/perm:output:0*
T0*+
_output_shapes
:���������i [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_2:y:0^NoOp*
T0*+
_output_shapes
:���������i _

Identity_1Identitywhile:output:5^NoOp*
T0*'
_output_shapes
:��������� _

Identity_2Identitywhile:output:6^NoOp*
T0*'
_output_shapes
:��������� �
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:���������i :���������i: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������i 
 
_user_specified_nameinputs:MI
'
_output_shapes
:���������i

_user_specified_namemask
�	
�
while_cond_263033
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_less_strided_slice4
0while_while_cond_263033___redundant_placeholder04
0while_while_cond_263033___redundant_placeholder14
0while_while_cond_263033___redundant_placeholder24
0while_while_cond_263033___redundant_placeholder34
0while_while_cond_263033___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*j
_input_shapesY
W: : : : :��������� :��������� :��������� : :::::: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
::	

_output_shapes
:
�
�
while_cond_262675
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_262675___redundant_placeholder04
0while_while_cond_262675___redundant_placeholder14
0while_while_cond_262675___redundant_placeholder24
0while_while_cond_262675___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :��������� :��������� : ::::: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
:
�
�
!__inference__wrapped_model_261962
encoder_inputs
decoder_inputsI
6seq2seq_model_shared_embedding_embedding_lookup_261585:	� X
Eseq2seq_model_encoder_lstm_1_lstm_cell_matmul_readvariableop_resource:	 �Z
Gseq2seq_model_encoder_lstm_1_lstm_cell_matmul_1_readvariableop_resource:	 �U
Fseq2seq_model_encoder_lstm_1_lstm_cell_biasadd_readvariableop_resource:	�Z
Gseq2seq_model_decoder_lstm_1_lstm_cell_1_matmul_readvariableop_resource:	 �\
Iseq2seq_model_decoder_lstm_1_lstm_cell_1_matmul_1_readvariableop_resource:	 �W
Hseq2seq_model_decoder_lstm_1_lstm_cell_1_biasadd_readvariableop_resource:	�P
=seq2seq_model_decoder_dense_tensordot_readvariableop_resource:	 �J
;seq2seq_model_decoder_dense_biasadd_readvariableop_resource:	�
identity��2seq2seq_model/decoder_dense/BiasAdd/ReadVariableOp�4seq2seq_model/decoder_dense/Tensordot/ReadVariableOp�?seq2seq_model/decoder_lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp�>seq2seq_model/decoder_lstm_1/lstm_cell_1/MatMul/ReadVariableOp�@seq2seq_model/decoder_lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp�"seq2seq_model/decoder_lstm_1/while�=seq2seq_model/encoder_lstm_1/lstm_cell/BiasAdd/ReadVariableOp�<seq2seq_model/encoder_lstm_1/lstm_cell/MatMul/ReadVariableOp�>seq2seq_model/encoder_lstm_1/lstm_cell/MatMul_1/ReadVariableOp�"seq2seq_model/encoder_lstm_1/while�/seq2seq_model/shared_embedding/embedding_lookup�1seq2seq_model/shared_embedding/embedding_lookup_1|
#seq2seq_model/shared_embedding/CastCastdecoder_inputs*

DstT0*

SrcT0*'
_output_shapes
:���������i�
/seq2seq_model/shared_embedding/embedding_lookupResourceGather6seq2seq_model_shared_embedding_embedding_lookup_261585'seq2seq_model/shared_embedding/Cast:y:0*
Tindices0*I
_class?
=;loc:@seq2seq_model/shared_embedding/embedding_lookup/261585*+
_output_shapes
:���������i *
dtype0�
8seq2seq_model/shared_embedding/embedding_lookup/IdentityIdentity8seq2seq_model/shared_embedding/embedding_lookup:output:0*
T0*I
_class?
=;loc:@seq2seq_model/shared_embedding/embedding_lookup/261585*+
_output_shapes
:���������i �
:seq2seq_model/shared_embedding/embedding_lookup/Identity_1IdentityAseq2seq_model/shared_embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:���������i n
)seq2seq_model/shared_embedding/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
'seq2seq_model/shared_embedding/NotEqualNotEqualdecoder_inputs2seq2seq_model/shared_embedding/NotEqual/y:output:0*
T0*'
_output_shapes
:���������i~
%seq2seq_model/shared_embedding/Cast_1Castencoder_inputs*

DstT0*

SrcT0*'
_output_shapes
:���������i�
1seq2seq_model/shared_embedding/embedding_lookup_1ResourceGather6seq2seq_model_shared_embedding_embedding_lookup_261585)seq2seq_model/shared_embedding/Cast_1:y:0*
Tindices0*I
_class?
=;loc:@seq2seq_model/shared_embedding/embedding_lookup/261585*+
_output_shapes
:���������i *
dtype0�
:seq2seq_model/shared_embedding/embedding_lookup_1/IdentityIdentity:seq2seq_model/shared_embedding/embedding_lookup_1:output:0*
T0*I
_class?
=;loc:@seq2seq_model/shared_embedding/embedding_lookup/261585*+
_output_shapes
:���������i �
<seq2seq_model/shared_embedding/embedding_lookup_1/Identity_1IdentityCseq2seq_model/shared_embedding/embedding_lookup_1/Identity:output:0*
T0*+
_output_shapes
:���������i p
+seq2seq_model/shared_embedding/NotEqual_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *    �
)seq2seq_model/shared_embedding/NotEqual_1NotEqualencoder_inputs4seq2seq_model/shared_embedding/NotEqual_1/y:output:0*
T0*'
_output_shapes
:���������i�
"seq2seq_model/encoder_lstm_1/ShapeShapeEseq2seq_model/shared_embedding/embedding_lookup_1/Identity_1:output:0*
T0*
_output_shapes
:z
0seq2seq_model/encoder_lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2seq2seq_model/encoder_lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2seq2seq_model/encoder_lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*seq2seq_model/encoder_lstm_1/strided_sliceStridedSlice+seq2seq_model/encoder_lstm_1/Shape:output:09seq2seq_model/encoder_lstm_1/strided_slice/stack:output:0;seq2seq_model/encoder_lstm_1/strided_slice/stack_1:output:0;seq2seq_model/encoder_lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
+seq2seq_model/encoder_lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : �
)seq2seq_model/encoder_lstm_1/zeros/packedPack3seq2seq_model/encoder_lstm_1/strided_slice:output:04seq2seq_model/encoder_lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:m
(seq2seq_model/encoder_lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
"seq2seq_model/encoder_lstm_1/zerosFill2seq2seq_model/encoder_lstm_1/zeros/packed:output:01seq2seq_model/encoder_lstm_1/zeros/Const:output:0*
T0*'
_output_shapes
:��������� o
-seq2seq_model/encoder_lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : �
+seq2seq_model/encoder_lstm_1/zeros_1/packedPack3seq2seq_model/encoder_lstm_1/strided_slice:output:06seq2seq_model/encoder_lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:o
*seq2seq_model/encoder_lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$seq2seq_model/encoder_lstm_1/zeros_1Fill4seq2seq_model/encoder_lstm_1/zeros_1/packed:output:03seq2seq_model/encoder_lstm_1/zeros_1/Const:output:0*
T0*'
_output_shapes
:��������� �
+seq2seq_model/encoder_lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
&seq2seq_model/encoder_lstm_1/transpose	TransposeEseq2seq_model/shared_embedding/embedding_lookup_1/Identity_1:output:04seq2seq_model/encoder_lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:i��������� ~
$seq2seq_model/encoder_lstm_1/Shape_1Shape*seq2seq_model/encoder_lstm_1/transpose:y:0*
T0*
_output_shapes
:|
2seq2seq_model/encoder_lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4seq2seq_model/encoder_lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4seq2seq_model/encoder_lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,seq2seq_model/encoder_lstm_1/strided_slice_1StridedSlice-seq2seq_model/encoder_lstm_1/Shape_1:output:0;seq2seq_model/encoder_lstm_1/strided_slice_1/stack:output:0=seq2seq_model/encoder_lstm_1/strided_slice_1/stack_1:output:0=seq2seq_model/encoder_lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+seq2seq_model/encoder_lstm_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
'seq2seq_model/encoder_lstm_1/ExpandDims
ExpandDims-seq2seq_model/shared_embedding/NotEqual_1:z:04seq2seq_model/encoder_lstm_1/ExpandDims/dim:output:0*
T0
*+
_output_shapes
:���������i�
-seq2seq_model/encoder_lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
(seq2seq_model/encoder_lstm_1/transpose_1	Transpose0seq2seq_model/encoder_lstm_1/ExpandDims:output:06seq2seq_model/encoder_lstm_1/transpose_1/perm:output:0*
T0
*+
_output_shapes
:i����������
8seq2seq_model/encoder_lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
*seq2seq_model/encoder_lstm_1/TensorArrayV2TensorListReserveAseq2seq_model/encoder_lstm_1/TensorArrayV2/element_shape:output:05seq2seq_model/encoder_lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Rseq2seq_model/encoder_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
Dseq2seq_model/encoder_lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor*seq2seq_model/encoder_lstm_1/transpose:y:0[seq2seq_model/encoder_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���|
2seq2seq_model/encoder_lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4seq2seq_model/encoder_lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4seq2seq_model/encoder_lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,seq2seq_model/encoder_lstm_1/strided_slice_2StridedSlice*seq2seq_model/encoder_lstm_1/transpose:y:0;seq2seq_model/encoder_lstm_1/strided_slice_2/stack:output:0=seq2seq_model/encoder_lstm_1/strided_slice_2/stack_1:output:0=seq2seq_model/encoder_lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask�
6seq2seq_model/encoder_lstm_1/lstm_cell/ones_like/ShapeShape5seq2seq_model/encoder_lstm_1/strided_slice_2:output:0*
T0*
_output_shapes
:{
6seq2seq_model/encoder_lstm_1/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
0seq2seq_model/encoder_lstm_1/lstm_cell/ones_likeFill?seq2seq_model/encoder_lstm_1/lstm_cell/ones_like/Shape:output:0?seq2seq_model/encoder_lstm_1/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� �
*seq2seq_model/encoder_lstm_1/lstm_cell/mulMul5seq2seq_model/encoder_lstm_1/strided_slice_2:output:09seq2seq_model/encoder_lstm_1/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:��������� �
<seq2seq_model/encoder_lstm_1/lstm_cell/MatMul/ReadVariableOpReadVariableOpEseq2seq_model_encoder_lstm_1_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
-seq2seq_model/encoder_lstm_1/lstm_cell/MatMulMatMul.seq2seq_model/encoder_lstm_1/lstm_cell/mul:z:0Dseq2seq_model/encoder_lstm_1/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
>seq2seq_model/encoder_lstm_1/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpGseq2seq_model_encoder_lstm_1_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
/seq2seq_model/encoder_lstm_1/lstm_cell/MatMul_1MatMul+seq2seq_model/encoder_lstm_1/zeros:output:0Fseq2seq_model/encoder_lstm_1/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
*seq2seq_model/encoder_lstm_1/lstm_cell/addAddV27seq2seq_model/encoder_lstm_1/lstm_cell/MatMul:product:09seq2seq_model/encoder_lstm_1/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
=seq2seq_model/encoder_lstm_1/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpFseq2seq_model_encoder_lstm_1_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.seq2seq_model/encoder_lstm_1/lstm_cell/BiasAddBiasAdd.seq2seq_model/encoder_lstm_1/lstm_cell/add:z:0Eseq2seq_model/encoder_lstm_1/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������x
6seq2seq_model/encoder_lstm_1/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
,seq2seq_model/encoder_lstm_1/lstm_cell/splitSplit?seq2seq_model/encoder_lstm_1/lstm_cell/split/split_dim:output:07seq2seq_model/encoder_lstm_1/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split�
.seq2seq_model/encoder_lstm_1/lstm_cell/SigmoidSigmoid5seq2seq_model/encoder_lstm_1/lstm_cell/split:output:0*
T0*'
_output_shapes
:��������� �
0seq2seq_model/encoder_lstm_1/lstm_cell/Sigmoid_1Sigmoid5seq2seq_model/encoder_lstm_1/lstm_cell/split:output:1*
T0*'
_output_shapes
:��������� �
,seq2seq_model/encoder_lstm_1/lstm_cell/mul_1Mul4seq2seq_model/encoder_lstm_1/lstm_cell/Sigmoid_1:y:0-seq2seq_model/encoder_lstm_1/zeros_1:output:0*
T0*'
_output_shapes
:��������� �
+seq2seq_model/encoder_lstm_1/lstm_cell/ReluRelu5seq2seq_model/encoder_lstm_1/lstm_cell/split:output:2*
T0*'
_output_shapes
:��������� �
,seq2seq_model/encoder_lstm_1/lstm_cell/mul_2Mul2seq2seq_model/encoder_lstm_1/lstm_cell/Sigmoid:y:09seq2seq_model/encoder_lstm_1/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:��������� �
,seq2seq_model/encoder_lstm_1/lstm_cell/add_1AddV20seq2seq_model/encoder_lstm_1/lstm_cell/mul_1:z:00seq2seq_model/encoder_lstm_1/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:��������� �
0seq2seq_model/encoder_lstm_1/lstm_cell/Sigmoid_2Sigmoid5seq2seq_model/encoder_lstm_1/lstm_cell/split:output:3*
T0*'
_output_shapes
:��������� �
-seq2seq_model/encoder_lstm_1/lstm_cell/Relu_1Relu0seq2seq_model/encoder_lstm_1/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:��������� �
,seq2seq_model/encoder_lstm_1/lstm_cell/mul_3Mul4seq2seq_model/encoder_lstm_1/lstm_cell/Sigmoid_2:y:0;seq2seq_model/encoder_lstm_1/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
:seq2seq_model/encoder_lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
,seq2seq_model/encoder_lstm_1/TensorArrayV2_1TensorListReserveCseq2seq_model/encoder_lstm_1/TensorArrayV2_1/element_shape:output:05seq2seq_model/encoder_lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���c
!seq2seq_model/encoder_lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : �
:seq2seq_model/encoder_lstm_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
,seq2seq_model/encoder_lstm_1/TensorArrayV2_2TensorListReserveCseq2seq_model/encoder_lstm_1/TensorArrayV2_2/element_shape:output:05seq2seq_model/encoder_lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
Tseq2seq_model/encoder_lstm_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Fseq2seq_model/encoder_lstm_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor,seq2seq_model/encoder_lstm_1/transpose_1:y:0]seq2seq_model/encoder_lstm_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
'seq2seq_model/encoder_lstm_1/zeros_like	ZerosLike0seq2seq_model/encoder_lstm_1/lstm_cell/mul_3:z:0*
T0*'
_output_shapes
:��������� �
5seq2seq_model/encoder_lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������q
/seq2seq_model/encoder_lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �

"seq2seq_model/encoder_lstm_1/whileWhile8seq2seq_model/encoder_lstm_1/while/loop_counter:output:0>seq2seq_model/encoder_lstm_1/while/maximum_iterations:output:0*seq2seq_model/encoder_lstm_1/time:output:05seq2seq_model/encoder_lstm_1/TensorArrayV2_1:handle:0+seq2seq_model/encoder_lstm_1/zeros_like:y:0+seq2seq_model/encoder_lstm_1/zeros:output:0-seq2seq_model/encoder_lstm_1/zeros_1:output:05seq2seq_model/encoder_lstm_1/strided_slice_1:output:0Tseq2seq_model/encoder_lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Vseq2seq_model/encoder_lstm_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Eseq2seq_model_encoder_lstm_1_lstm_cell_matmul_readvariableop_resourceGseq2seq_model_encoder_lstm_1_lstm_cell_matmul_1_readvariableop_resourceFseq2seq_model_encoder_lstm_1_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *:
body2R0
.seq2seq_model_encoder_lstm_1_while_body_261668*:
cond2R0
.seq2seq_model_encoder_lstm_1_while_cond_261667*`
output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *
parallel_iterations �
Mseq2seq_model/encoder_lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
?seq2seq_model/encoder_lstm_1/TensorArrayV2Stack/TensorListStackTensorListStack+seq2seq_model/encoder_lstm_1/while:output:3Vseq2seq_model/encoder_lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:i��������� *
element_dtype0�
2seq2seq_model/encoder_lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������~
4seq2seq_model/encoder_lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4seq2seq_model/encoder_lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,seq2seq_model/encoder_lstm_1/strided_slice_3StridedSliceHseq2seq_model/encoder_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0;seq2seq_model/encoder_lstm_1/strided_slice_3/stack:output:0=seq2seq_model/encoder_lstm_1/strided_slice_3/stack_1:output:0=seq2seq_model/encoder_lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask�
-seq2seq_model/encoder_lstm_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
(seq2seq_model/encoder_lstm_1/transpose_2	TransposeHseq2seq_model/encoder_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:06seq2seq_model/encoder_lstm_1/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������i x
$seq2seq_model/encoder_lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
+seq2seq_model/decoder_lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
&seq2seq_model/decoder_lstm_1/transpose	TransposeCseq2seq_model/shared_embedding/embedding_lookup/Identity_1:output:04seq2seq_model/decoder_lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:i��������� |
"seq2seq_model/decoder_lstm_1/ShapeShape*seq2seq_model/decoder_lstm_1/transpose:y:0*
T0*
_output_shapes
:z
0seq2seq_model/decoder_lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2seq2seq_model/decoder_lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2seq2seq_model/decoder_lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
*seq2seq_model/decoder_lstm_1/strided_sliceStridedSlice+seq2seq_model/decoder_lstm_1/Shape:output:09seq2seq_model/decoder_lstm_1/strided_slice/stack:output:0;seq2seq_model/decoder_lstm_1/strided_slice/stack_1:output:0;seq2seq_model/decoder_lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+seq2seq_model/decoder_lstm_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
'seq2seq_model/decoder_lstm_1/ExpandDims
ExpandDims+seq2seq_model/shared_embedding/NotEqual:z:04seq2seq_model/decoder_lstm_1/ExpandDims/dim:output:0*
T0
*+
_output_shapes
:���������i�
-seq2seq_model/decoder_lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
(seq2seq_model/decoder_lstm_1/transpose_1	Transpose0seq2seq_model/decoder_lstm_1/ExpandDims:output:06seq2seq_model/decoder_lstm_1/transpose_1/perm:output:0*
T0
*+
_output_shapes
:i����������
8seq2seq_model/decoder_lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
*seq2seq_model/decoder_lstm_1/TensorArrayV2TensorListReserveAseq2seq_model/decoder_lstm_1/TensorArrayV2/element_shape:output:03seq2seq_model/decoder_lstm_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Rseq2seq_model/decoder_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
Dseq2seq_model/decoder_lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor*seq2seq_model/decoder_lstm_1/transpose:y:0[seq2seq_model/decoder_lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���|
2seq2seq_model/decoder_lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4seq2seq_model/decoder_lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4seq2seq_model/decoder_lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,seq2seq_model/decoder_lstm_1/strided_slice_1StridedSlice*seq2seq_model/decoder_lstm_1/transpose:y:0;seq2seq_model/decoder_lstm_1/strided_slice_1/stack:output:0=seq2seq_model/decoder_lstm_1/strided_slice_1/stack_1:output:0=seq2seq_model/decoder_lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask�
8seq2seq_model/decoder_lstm_1/lstm_cell_1/ones_like/ShapeShape5seq2seq_model/decoder_lstm_1/strided_slice_1:output:0*
T0*
_output_shapes
:}
8seq2seq_model/decoder_lstm_1/lstm_cell_1/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
2seq2seq_model/decoder_lstm_1/lstm_cell_1/ones_likeFillAseq2seq_model/decoder_lstm_1/lstm_cell_1/ones_like/Shape:output:0Aseq2seq_model/decoder_lstm_1/lstm_cell_1/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� �
,seq2seq_model/decoder_lstm_1/lstm_cell_1/mulMul5seq2seq_model/decoder_lstm_1/strided_slice_1:output:0;seq2seq_model/decoder_lstm_1/lstm_cell_1/ones_like:output:0*
T0*'
_output_shapes
:��������� �
>seq2seq_model/decoder_lstm_1/lstm_cell_1/MatMul/ReadVariableOpReadVariableOpGseq2seq_model_decoder_lstm_1_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
/seq2seq_model/decoder_lstm_1/lstm_cell_1/MatMulMatMul0seq2seq_model/decoder_lstm_1/lstm_cell_1/mul:z:0Fseq2seq_model/decoder_lstm_1/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
@seq2seq_model/decoder_lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpIseq2seq_model_decoder_lstm_1_lstm_cell_1_matmul_1_readvariableop_resource*
_output_shapes
:	 �*
dtype0�
1seq2seq_model/decoder_lstm_1/lstm_cell_1/MatMul_1MatMul+seq2seq_model/encoder_lstm_1/while:output:5Hseq2seq_model/decoder_lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
,seq2seq_model/decoder_lstm_1/lstm_cell_1/addAddV29seq2seq_model/decoder_lstm_1/lstm_cell_1/MatMul:product:0;seq2seq_model/decoder_lstm_1/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
?seq2seq_model/decoder_lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOpHseq2seq_model_decoder_lstm_1_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
0seq2seq_model/decoder_lstm_1/lstm_cell_1/BiasAddBiasAdd0seq2seq_model/decoder_lstm_1/lstm_cell_1/add:z:0Gseq2seq_model/decoder_lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
8seq2seq_model/decoder_lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
.seq2seq_model/decoder_lstm_1/lstm_cell_1/splitSplitAseq2seq_model/decoder_lstm_1/lstm_cell_1/split/split_dim:output:09seq2seq_model/decoder_lstm_1/lstm_cell_1/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_split�
0seq2seq_model/decoder_lstm_1/lstm_cell_1/SigmoidSigmoid7seq2seq_model/decoder_lstm_1/lstm_cell_1/split:output:0*
T0*'
_output_shapes
:��������� �
2seq2seq_model/decoder_lstm_1/lstm_cell_1/Sigmoid_1Sigmoid7seq2seq_model/decoder_lstm_1/lstm_cell_1/split:output:1*
T0*'
_output_shapes
:��������� �
.seq2seq_model/decoder_lstm_1/lstm_cell_1/mul_1Mul6seq2seq_model/decoder_lstm_1/lstm_cell_1/Sigmoid_1:y:0+seq2seq_model/encoder_lstm_1/while:output:6*
T0*'
_output_shapes
:��������� �
-seq2seq_model/decoder_lstm_1/lstm_cell_1/ReluRelu7seq2seq_model/decoder_lstm_1/lstm_cell_1/split:output:2*
T0*'
_output_shapes
:��������� �
.seq2seq_model/decoder_lstm_1/lstm_cell_1/mul_2Mul4seq2seq_model/decoder_lstm_1/lstm_cell_1/Sigmoid:y:0;seq2seq_model/decoder_lstm_1/lstm_cell_1/Relu:activations:0*
T0*'
_output_shapes
:��������� �
.seq2seq_model/decoder_lstm_1/lstm_cell_1/add_1AddV22seq2seq_model/decoder_lstm_1/lstm_cell_1/mul_1:z:02seq2seq_model/decoder_lstm_1/lstm_cell_1/mul_2:z:0*
T0*'
_output_shapes
:��������� �
2seq2seq_model/decoder_lstm_1/lstm_cell_1/Sigmoid_2Sigmoid7seq2seq_model/decoder_lstm_1/lstm_cell_1/split:output:3*
T0*'
_output_shapes
:��������� �
/seq2seq_model/decoder_lstm_1/lstm_cell_1/Relu_1Relu2seq2seq_model/decoder_lstm_1/lstm_cell_1/add_1:z:0*
T0*'
_output_shapes
:��������� �
.seq2seq_model/decoder_lstm_1/lstm_cell_1/mul_3Mul6seq2seq_model/decoder_lstm_1/lstm_cell_1/Sigmoid_2:y:0=seq2seq_model/decoder_lstm_1/lstm_cell_1/Relu_1:activations:0*
T0*'
_output_shapes
:��������� �
:seq2seq_model/decoder_lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
,seq2seq_model/decoder_lstm_1/TensorArrayV2_1TensorListReserveCseq2seq_model/decoder_lstm_1/TensorArrayV2_1/element_shape:output:03seq2seq_model/decoder_lstm_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���c
!seq2seq_model/decoder_lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : �
:seq2seq_model/decoder_lstm_1/TensorArrayV2_2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
,seq2seq_model/decoder_lstm_1/TensorArrayV2_2TensorListReserveCseq2seq_model/decoder_lstm_1/TensorArrayV2_2/element_shape:output:03seq2seq_model/decoder_lstm_1/strided_slice:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
Tseq2seq_model/decoder_lstm_1/TensorArrayUnstack_1/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
Fseq2seq_model/decoder_lstm_1/TensorArrayUnstack_1/TensorListFromTensorTensorListFromTensor,seq2seq_model/decoder_lstm_1/transpose_1:y:0]seq2seq_model/decoder_lstm_1/TensorArrayUnstack_1/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0
*

shape_type0:����
'seq2seq_model/decoder_lstm_1/zeros_like	ZerosLike2seq2seq_model/decoder_lstm_1/lstm_cell_1/mul_3:z:0*
T0*'
_output_shapes
:��������� �
5seq2seq_model/decoder_lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������q
/seq2seq_model/decoder_lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �

"seq2seq_model/decoder_lstm_1/whileWhile8seq2seq_model/decoder_lstm_1/while/loop_counter:output:0>seq2seq_model/decoder_lstm_1/while/maximum_iterations:output:0*seq2seq_model/decoder_lstm_1/time:output:05seq2seq_model/decoder_lstm_1/TensorArrayV2_1:handle:0+seq2seq_model/decoder_lstm_1/zeros_like:y:0+seq2seq_model/encoder_lstm_1/while:output:5+seq2seq_model/encoder_lstm_1/while:output:63seq2seq_model/decoder_lstm_1/strided_slice:output:0Tseq2seq_model/decoder_lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Vseq2seq_model/decoder_lstm_1/TensorArrayUnstack_1/TensorListFromTensor:output_handle:0Gseq2seq_model_decoder_lstm_1_lstm_cell_1_matmul_readvariableop_resourceIseq2seq_model_decoder_lstm_1_lstm_cell_1_matmul_1_readvariableop_resourceHseq2seq_model_decoder_lstm_1_lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*a
_output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *%
_read_only_resource_inputs

*
_stateful_parallelism( *:
body2R0
.seq2seq_model_decoder_lstm_1_while_body_261829*:
cond2R0
.seq2seq_model_decoder_lstm_1_while_cond_261828*`
output_shapesO
M: : : : :��������� :��������� :��������� : : : : : : *
parallel_iterations �
Mseq2seq_model/decoder_lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
?seq2seq_model/decoder_lstm_1/TensorArrayV2Stack/TensorListStackTensorListStack+seq2seq_model/decoder_lstm_1/while:output:3Vseq2seq_model/decoder_lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:i��������� *
element_dtype0�
2seq2seq_model/decoder_lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������~
4seq2seq_model/decoder_lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ~
4seq2seq_model/decoder_lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,seq2seq_model/decoder_lstm_1/strided_slice_2StridedSliceHseq2seq_model/decoder_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0;seq2seq_model/decoder_lstm_1/strided_slice_2/stack:output:0=seq2seq_model/decoder_lstm_1/strided_slice_2/stack_1:output:0=seq2seq_model/decoder_lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask�
-seq2seq_model/decoder_lstm_1/transpose_2/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
(seq2seq_model/decoder_lstm_1/transpose_2	TransposeHseq2seq_model/decoder_lstm_1/TensorArrayV2Stack/TensorListStack:tensor:06seq2seq_model/decoder_lstm_1/transpose_2/perm:output:0*
T0*+
_output_shapes
:���������i x
$seq2seq_model/decoder_lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
4seq2seq_model/decoder_dense/Tensordot/ReadVariableOpReadVariableOp=seq2seq_model_decoder_dense_tensordot_readvariableop_resource*
_output_shapes
:	 �*
dtype0t
*seq2seq_model/decoder_dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:{
*seq2seq_model/decoder_dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
+seq2seq_model/decoder_dense/Tensordot/ShapeShape,seq2seq_model/decoder_lstm_1/transpose_2:y:0*
T0*
_output_shapes
:u
3seq2seq_model/decoder_dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
.seq2seq_model/decoder_dense/Tensordot/GatherV2GatherV24seq2seq_model/decoder_dense/Tensordot/Shape:output:03seq2seq_model/decoder_dense/Tensordot/free:output:0<seq2seq_model/decoder_dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:w
5seq2seq_model/decoder_dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
0seq2seq_model/decoder_dense/Tensordot/GatherV2_1GatherV24seq2seq_model/decoder_dense/Tensordot/Shape:output:03seq2seq_model/decoder_dense/Tensordot/axes:output:0>seq2seq_model/decoder_dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:u
+seq2seq_model/decoder_dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
*seq2seq_model/decoder_dense/Tensordot/ProdProd7seq2seq_model/decoder_dense/Tensordot/GatherV2:output:04seq2seq_model/decoder_dense/Tensordot/Const:output:0*
T0*
_output_shapes
: w
-seq2seq_model/decoder_dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
,seq2seq_model/decoder_dense/Tensordot/Prod_1Prod9seq2seq_model/decoder_dense/Tensordot/GatherV2_1:output:06seq2seq_model/decoder_dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: s
1seq2seq_model/decoder_dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
,seq2seq_model/decoder_dense/Tensordot/concatConcatV23seq2seq_model/decoder_dense/Tensordot/free:output:03seq2seq_model/decoder_dense/Tensordot/axes:output:0:seq2seq_model/decoder_dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
+seq2seq_model/decoder_dense/Tensordot/stackPack3seq2seq_model/decoder_dense/Tensordot/Prod:output:05seq2seq_model/decoder_dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
/seq2seq_model/decoder_dense/Tensordot/transpose	Transpose,seq2seq_model/decoder_lstm_1/transpose_2:y:05seq2seq_model/decoder_dense/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������i �
-seq2seq_model/decoder_dense/Tensordot/ReshapeReshape3seq2seq_model/decoder_dense/Tensordot/transpose:y:04seq2seq_model/decoder_dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
,seq2seq_model/decoder_dense/Tensordot/MatMulMatMul6seq2seq_model/decoder_dense/Tensordot/Reshape:output:0<seq2seq_model/decoder_dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������x
-seq2seq_model/decoder_dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�u
3seq2seq_model/decoder_dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
.seq2seq_model/decoder_dense/Tensordot/concat_1ConcatV27seq2seq_model/decoder_dense/Tensordot/GatherV2:output:06seq2seq_model/decoder_dense/Tensordot/Const_2:output:0<seq2seq_model/decoder_dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
%seq2seq_model/decoder_dense/TensordotReshape6seq2seq_model/decoder_dense/Tensordot/MatMul:product:07seq2seq_model/decoder_dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:���������i��
2seq2seq_model/decoder_dense/BiasAdd/ReadVariableOpReadVariableOp;seq2seq_model_decoder_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
#seq2seq_model/decoder_dense/BiasAddBiasAdd.seq2seq_model/decoder_dense/Tensordot:output:0:seq2seq_model/decoder_dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������i��
#seq2seq_model/decoder_dense/SoftmaxSoftmax,seq2seq_model/decoder_dense/BiasAdd:output:0*
T0*,
_output_shapes
:���������i��
IdentityIdentity-seq2seq_model/decoder_dense/Softmax:softmax:0^NoOp*
T0*,
_output_shapes
:���������i��
NoOpNoOp3^seq2seq_model/decoder_dense/BiasAdd/ReadVariableOp5^seq2seq_model/decoder_dense/Tensordot/ReadVariableOp@^seq2seq_model/decoder_lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp?^seq2seq_model/decoder_lstm_1/lstm_cell_1/MatMul/ReadVariableOpA^seq2seq_model/decoder_lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp#^seq2seq_model/decoder_lstm_1/while>^seq2seq_model/encoder_lstm_1/lstm_cell/BiasAdd/ReadVariableOp=^seq2seq_model/encoder_lstm_1/lstm_cell/MatMul/ReadVariableOp?^seq2seq_model/encoder_lstm_1/lstm_cell/MatMul_1/ReadVariableOp#^seq2seq_model/encoder_lstm_1/while0^seq2seq_model/shared_embedding/embedding_lookup2^seq2seq_model/shared_embedding/embedding_lookup_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:���������i:���������i: : : : : : : : : 2h
2seq2seq_model/decoder_dense/BiasAdd/ReadVariableOp2seq2seq_model/decoder_dense/BiasAdd/ReadVariableOp2l
4seq2seq_model/decoder_dense/Tensordot/ReadVariableOp4seq2seq_model/decoder_dense/Tensordot/ReadVariableOp2�
?seq2seq_model/decoder_lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp?seq2seq_model/decoder_lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp2�
>seq2seq_model/decoder_lstm_1/lstm_cell_1/MatMul/ReadVariableOp>seq2seq_model/decoder_lstm_1/lstm_cell_1/MatMul/ReadVariableOp2�
@seq2seq_model/decoder_lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp@seq2seq_model/decoder_lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp2H
"seq2seq_model/decoder_lstm_1/while"seq2seq_model/decoder_lstm_1/while2~
=seq2seq_model/encoder_lstm_1/lstm_cell/BiasAdd/ReadVariableOp=seq2seq_model/encoder_lstm_1/lstm_cell/BiasAdd/ReadVariableOp2|
<seq2seq_model/encoder_lstm_1/lstm_cell/MatMul/ReadVariableOp<seq2seq_model/encoder_lstm_1/lstm_cell/MatMul/ReadVariableOp2�
>seq2seq_model/encoder_lstm_1/lstm_cell/MatMul_1/ReadVariableOp>seq2seq_model/encoder_lstm_1/lstm_cell/MatMul_1/ReadVariableOp2H
"seq2seq_model/encoder_lstm_1/while"seq2seq_model/encoder_lstm_1/while2b
/seq2seq_model/shared_embedding/embedding_lookup/seq2seq_model/shared_embedding/embedding_lookup2f
1seq2seq_model/shared_embedding/embedding_lookup_11seq2seq_model/shared_embedding/embedding_lookup_1:W S
'
_output_shapes
:���������i
(
_user_specified_nameencoder_inputs:WS
'
_output_shapes
:���������i
(
_user_specified_namedecoder_inputs
�M
�

while_body_262855
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_placeholder_4
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0[
Wwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	 �E
2while_lstm_cell_matmul_1_readvariableop_resource_0:	 �@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_identity_6
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorY
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	 �C
0while_lstm_cell_matmul_1_readvariableop_resource:	 �>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype0�
9while/TensorArrayV2Read_1/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
+while/TensorArrayV2Read_1/TensorListGetItemTensorListGetItemWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0while_placeholderBwhile/TensorArrayV2Read_1/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0

while/lstm_cell/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:d
while/lstm_cell/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
while/lstm_cell/ones_likeFill(while/lstm_cell/ones_like/Shape:output:0(while/lstm_cell/ones_like/Const:output:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0"while/lstm_cell/ones_like:output:0*
T0*'
_output_shapes
:��������� �
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell/MatMulMatMulwhile/lstm_cell/mul:z:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 �*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_3/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:��������� :��������� :��������� :��������� *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:��������� v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:��������� �
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_4*
T0*'
_output_shapes
:��������� n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:��������� �
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/add_1AddV2while/lstm_cell/mul_1:z:0while/lstm_cell/mul_2:z:0*
T0*'
_output_shapes
:��������� v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:��������� k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:��������� �
while/lstm_cell/mul_3Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:��������� e
while/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �

while/TileTile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile/multiples:output:0*
T0
*'
_output_shapes
:����������
while/SelectV2SelectV2while/Tile:output:0while/lstm_cell/mul_3:z:0while_placeholder_2*
T0*'
_output_shapes
:��������� g
while/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
while/Tile_1Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_1/multiples:output:0*
T0
*'
_output_shapes
:���������g
while/Tile_2/multiplesConst*
_output_shapes
:*
dtype0*
valueB"      �
while/Tile_2Tile2while/TensorArrayV2Read_1/TensorListGetItem:item:0while/Tile_2/multiples:output:0*
T0
*'
_output_shapes
:����������
while/SelectV2_1SelectV2while/Tile_1:output:0while/lstm_cell/mul_3:z:0while_placeholder_3*
T0*'
_output_shapes
:��������� �
while/SelectV2_2SelectV2while/Tile_2:output:0while/lstm_cell/add_1:z:0while_placeholder_4*
T0*'
_output_shapes
:��������� �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/SelectV2:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: t
while/Identity_4Identitywhile/SelectV2:output:0^while/NoOp*
T0*'
_output_shapes
:��������� v
while/Identity_5Identitywhile/SelectV2_1:output:0^while/NoOp*
T0*'
_output_shapes
:��������� v
while/Identity_6Identitywhile/SelectV2_2:output:0^while/NoOp*
T0*'
_output_shapes
:��������� �

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"-
while_identity_6while/Identity_6:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Uwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensorWwhile_tensorarrayv2read_1_tensorlistgetitem_tensorarrayunstack_1_tensorlistfromtensor_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M: : : : :��������� :��������� :��������� : : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 
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
: :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :-)
'
_output_shapes
:��������� :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: "�	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
I
decoder_inputs7
 serving_default_decoder_inputs:0���������i
I
encoder_inputs7
 serving_default_encoder_inputs:0���������iF
decoder_dense5
StatefulPartitionedCall:0���������i�tensorflow/serving/predict:��
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
	variables
trainable_variables
	regularization_losses

	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
�
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses
&_random_generator
'cell
(
state_spec"
_tf_keras_rnn_layer
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses

/kernel
0bias"
_tf_keras_layer
_
0
11
22
33
44
55
66
/7
08"
trackable_list_wrapper
_
0
11
22
33
44
55
66
/7
08"
trackable_list_wrapper
 "
trackable_list_wrapper
�
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
	regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
<trace_0
=trace_1
>trace_2
?trace_32�
.__inference_seq2seq_model_layer_call_fn_263207
.__inference_seq2seq_model_layer_call_fn_263989
.__inference_seq2seq_model_layer_call_fn_264013
.__inference_seq2seq_model_layer_call_fn_263869�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z<trace_0z=trace_1z>trace_2z?trace_3
�
@trace_0
Atrace_1
Btrace_2
Ctrace_32�
I__inference_seq2seq_model_layer_call_and_return_conditional_losses_264395
I__inference_seq2seq_model_layer_call_and_return_conditional_losses_264905
I__inference_seq2seq_model_layer_call_and_return_conditional_losses_263904
I__inference_seq2seq_model_layer_call_and_return_conditional_losses_263939�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z@trace_0zAtrace_1zBtrace_2zCtrace_3
�B�
!__inference__wrapped_model_261962encoder_inputsdecoder_inputs"�
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
�m�/m�0m�1m�2m�3m�4m�5m�6m�v�/v�0v�1v�2v�3v�4v�5v�6v�"
	optimizer
,
Dserving_default"
signature_map
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Jtrace_02�
1__inference_shared_embedding_layer_call_fn_264912�
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
 zJtrace_0
�
Ktrace_02�
L__inference_shared_embedding_layer_call_and_return_conditional_losses_264922�
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
 zKtrace_0
.:,	� 2shared_embedding/embeddings
5
10
21
32"
trackable_list_wrapper
5
10
21
32"
trackable_list_wrapper
 "
trackable_list_wrapper
�

Lstates
Mnon_trainable_variables

Nlayers
Ometrics
Player_regularization_losses
Qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Rtrace_0
Strace_1
Ttrace_2
Utrace_32�
/__inference_encoder_lstm_1_layer_call_fn_264937
/__inference_encoder_lstm_1_layer_call_fn_264952
/__inference_encoder_lstm_1_layer_call_fn_264968
/__inference_encoder_lstm_1_layer_call_fn_264984�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zRtrace_0zStrace_1zTtrace_2zUtrace_3
�
Vtrace_0
Wtrace_1
Xtrace_2
Ytrace_32�
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_265137
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_265354
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_265535
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_265780�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zVtrace_0zWtrace_1zXtrace_2zYtrace_3
"
_generic_user_object
�
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses
`_random_generator
a
state_size

1kernel
2recurrent_kernel
3bias"
_tf_keras_layer
 "
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
 "
trackable_list_wrapper
�

bstates
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
�
htrace_0
itrace_1
jtrace_2
ktrace_32�
/__inference_decoder_lstm_1_layer_call_fn_265791
/__inference_decoder_lstm_1_layer_call_fn_265802
/__inference_decoder_lstm_1_layer_call_fn_265816
/__inference_decoder_lstm_1_layer_call_fn_265830�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zhtrace_0zitrace_1zjtrace_2zktrace_3
�
ltrace_0
mtrace_1
ntrace_2
otrace_32�
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_265981
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_266196
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_266364
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_266596�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zltrace_0zmtrace_1zntrace_2zotrace_3
"
_generic_user_object
�
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses
v_random_generator
w
state_size

4kernel
5recurrent_kernel
6bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
 "
trackable_list_wrapper
�
xnon_trainable_variables

ylayers
zmetrics
{layer_regularization_losses
|layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
�
}trace_02�
.__inference_decoder_dense_layer_call_fn_266605�
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
 z}trace_0
�
~trace_02�
I__inference_decoder_dense_layer_call_and_return_conditional_losses_266636�
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
 z~trace_0
':%	 �2decoder_dense/kernel
!:�2decoder_dense/bias
2:0	 �2encoder_lstm_1/lstm_cell/kernel
<::	 �2)encoder_lstm_1/lstm_cell/recurrent_kernel
,:*�2encoder_lstm_1/lstm_cell/bias
4:2	 �2!decoder_lstm_1/lstm_cell_1/kernel
>:<	 �2+decoder_lstm_1/lstm_cell_1/recurrent_kernel
.:,�2decoder_lstm_1/lstm_cell_1/bias
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
/
0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_seq2seq_model_layer_call_fn_263207encoder_inputsdecoder_inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_seq2seq_model_layer_call_fn_263989inputs/0inputs/1"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_seq2seq_model_layer_call_fn_264013inputs/0inputs/1"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
.__inference_seq2seq_model_layer_call_fn_263869encoder_inputsdecoder_inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_seq2seq_model_layer_call_and_return_conditional_losses_264395inputs/0inputs/1"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_seq2seq_model_layer_call_and_return_conditional_losses_264905inputs/0inputs/1"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_seq2seq_model_layer_call_and_return_conditional_losses_263904encoder_inputsdecoder_inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
I__inference_seq2seq_model_layer_call_and_return_conditional_losses_263939encoder_inputsdecoder_inputs"�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_signature_wrapper_263965decoder_inputsencoder_inputs"�
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
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_shared_embedding_layer_call_fn_264912inputs"�
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
L__inference_shared_embedding_layer_call_and_return_conditional_losses_264922inputs"�
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
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_encoder_lstm_1_layer_call_fn_264937inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_encoder_lstm_1_layer_call_fn_264952inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_encoder_lstm_1_layer_call_fn_264968inputsmask"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_encoder_lstm_1_layer_call_fn_264984inputsmask"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_265137inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_265354inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_265535inputsmask"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_265780inputsmask"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
5
10
21
32"
trackable_list_wrapper
5
10
21
32"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
*__inference_lstm_cell_layer_call_fn_266653
*__inference_lstm_cell_layer_call_fn_266670�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
E__inference_lstm_cell_layer_call_and_return_conditional_losses_266706
E__inference_lstm_cell_layer_call_and_return_conditional_losses_266774�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
'0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_decoder_lstm_1_layer_call_fn_265791inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_decoder_lstm_1_layer_call_fn_265802inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_decoder_lstm_1_layer_call_fn_265816inputsmaskinitial_state/0initial_state/1"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
/__inference_decoder_lstm_1_layer_call_fn_265830inputsmaskinitial_state/0initial_state/1"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_265981inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_266196inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_266364inputsmaskinitial_state/0initial_state/1"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_266596inputsmaskinitial_state/0initial_state/1"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
5
40
51
62"
trackable_list_wrapper
5
40
51
62"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_lstm_cell_1_layer_call_fn_266791
,__inference_lstm_cell_1_layer_call_fn_266808�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_266844
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_266912�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
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
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference_decoder_dense_layer_call_fn_266605inputs"�
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
I__inference_decoder_dense_layer_call_and_return_conditional_losses_266636inputs"�
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
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
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
�B�
*__inference_lstm_cell_layer_call_fn_266653inputsstates/0states/1"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_lstm_cell_layer_call_fn_266670inputsstates/0states/1"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_lstm_cell_layer_call_and_return_conditional_losses_266706inputsstates/0states/1"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_lstm_cell_layer_call_and_return_conditional_losses_266774inputsstates/0states/1"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

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
�B�
,__inference_lstm_cell_1_layer_call_fn_266791inputsstates/0states/1"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_lstm_cell_1_layer_call_fn_266808inputsstates/0states/1"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_266844inputsstates/0states/1"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_266912inputsstates/0states/1"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.:,	� 2shared_embedding/embeddings/m
':%	 �2decoder_dense/kernel/m
!:�2decoder_dense/bias/m
2:0	 �2!encoder_lstm_1/lstm_cell/kernel/m
<::	 �2+encoder_lstm_1/lstm_cell/recurrent_kernel/m
,:*�2encoder_lstm_1/lstm_cell/bias/m
4:2	 �2#decoder_lstm_1/lstm_cell_1/kernel/m
>:<	 �2-decoder_lstm_1/lstm_cell_1/recurrent_kernel/m
.:,�2!decoder_lstm_1/lstm_cell_1/bias/m
.:,	� 2shared_embedding/embeddings/v
':%	 �2decoder_dense/kernel/v
!:�2decoder_dense/bias/v
2:0	 �2!encoder_lstm_1/lstm_cell/kernel/v
<::	 �2+encoder_lstm_1/lstm_cell/recurrent_kernel/v
,:*�2encoder_lstm_1/lstm_cell/bias/v
4:2	 �2#decoder_lstm_1/lstm_cell_1/kernel/v
>:<	 �2-decoder_lstm_1/lstm_cell_1/recurrent_kernel/v
.:,�2!decoder_lstm_1/lstm_cell_1/bias/v�
!__inference__wrapped_model_261962�	123456/0f�c
\�Y
W�T
(�%
encoder_inputs���������i
(�%
decoder_inputs���������i
� "B�?
=
decoder_dense,�)
decoder_dense���������i��
I__inference_decoder_dense_layer_call_and_return_conditional_losses_266636e/03�0
)�&
$�!
inputs���������i 
� "*�'
 �
0���������i�
� �
.__inference_decoder_dense_layer_call_fn_266605X/03�0
)�&
$�!
inputs���������i 
� "����������i��
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_265981�456O�L
E�B
4�1
/�,
inputs/0������������������ 

 
p 

 
� "2�/
(�%
0������������������ 
� �
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_266196�456O�L
E�B
4�1
/�,
inputs/0������������������ 

 
p

 
� "2�/
(�%
0������������������ 
� �
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_266364�456���
���
$�!
inputs���������i 
�
mask���������i

p 
Y�V
)�&
initial_state/0��������� 
)�&
initial_state/1��������� 
� ")�&
�
0���������i 
� �
J__inference_decoder_lstm_1_layer_call_and_return_conditional_losses_266596�456���
���
$�!
inputs���������i 
�
mask���������i

p
Y�V
)�&
initial_state/0��������� 
)�&
initial_state/1��������� 
� ")�&
�
0���������i 
� �
/__inference_decoder_lstm_1_layer_call_fn_265791}456O�L
E�B
4�1
/�,
inputs/0������������������ 

 
p 

 
� "%�"������������������ �
/__inference_decoder_lstm_1_layer_call_fn_265802}456O�L
E�B
4�1
/�,
inputs/0������������������ 

 
p

 
� "%�"������������������ �
/__inference_decoder_lstm_1_layer_call_fn_265816�456���
���
$�!
inputs���������i 
�
mask���������i

p 
Y�V
)�&
initial_state/0��������� 
)�&
initial_state/1��������� 
� "����������i �
/__inference_decoder_lstm_1_layer_call_fn_265830�456���
���
$�!
inputs���������i 
�
mask���������i

p
Y�V
)�&
initial_state/0��������� 
)�&
initial_state/1��������� 
� "����������i �
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_265137�123O�L
E�B
4�1
/�,
inputs/0������������������ 

 
p 

 
� "w�t
m�j
*�'
0/0������������������ 
�
0/1��������� 
�
0/2��������� 
� �
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_265354�123O�L
E�B
4�1
/�,
inputs/0������������������ 

 
p

 
� "w�t
m�j
*�'
0/0������������������ 
�
0/1��������� 
�
0/2��������� 
� �
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_265535�123[�X
Q�N
$�!
inputs���������i 
�
mask���������i

p 

 
� "n�k
d�a
!�
0/0���������i 
�
0/1��������� 
�
0/2��������� 
� �
J__inference_encoder_lstm_1_layer_call_and_return_conditional_losses_265780�123[�X
Q�N
$�!
inputs���������i 
�
mask���������i

p

 
� "n�k
d�a
!�
0/0���������i 
�
0/1��������� 
�
0/2��������� 
� �
/__inference_encoder_lstm_1_layer_call_fn_264937�123O�L
E�B
4�1
/�,
inputs/0������������������ 

 
p 

 
� "g�d
(�%
0������������������ 
�
1��������� 
�
2��������� �
/__inference_encoder_lstm_1_layer_call_fn_264952�123O�L
E�B
4�1
/�,
inputs/0������������������ 

 
p

 
� "g�d
(�%
0������������������ 
�
1��������� 
�
2��������� �
/__inference_encoder_lstm_1_layer_call_fn_264968�123[�X
Q�N
$�!
inputs���������i 
�
mask���������i

p 

 
� "^�[
�
0���������i 
�
1��������� 
�
2��������� �
/__inference_encoder_lstm_1_layer_call_fn_264984�123[�X
Q�N
$�!
inputs���������i 
�
mask���������i

p

 
� "^�[
�
0���������i 
�
1��������� 
�
2��������� �
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_266844�456��}
v�s
 �
inputs��������� 
K�H
"�
states/0��������� 
"�
states/1��������� 
p 
� "s�p
i�f
�
0/0��������� 
E�B
�
0/1/0��������� 
�
0/1/1��������� 
� �
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_266912�456��}
v�s
 �
inputs��������� 
K�H
"�
states/0��������� 
"�
states/1��������� 
p
� "s�p
i�f
�
0/0��������� 
E�B
�
0/1/0��������� 
�
0/1/1��������� 
� �
,__inference_lstm_cell_1_layer_call_fn_266791�456��}
v�s
 �
inputs��������� 
K�H
"�
states/0��������� 
"�
states/1��������� 
p 
� "c�`
�
0��������� 
A�>
�
1/0��������� 
�
1/1��������� �
,__inference_lstm_cell_1_layer_call_fn_266808�456��}
v�s
 �
inputs��������� 
K�H
"�
states/0��������� 
"�
states/1��������� 
p
� "c�`
�
0��������� 
A�>
�
1/0��������� 
�
1/1��������� �
E__inference_lstm_cell_layer_call_and_return_conditional_losses_266706�123��}
v�s
 �
inputs��������� 
K�H
"�
states/0��������� 
"�
states/1��������� 
p 
� "s�p
i�f
�
0/0��������� 
E�B
�
0/1/0��������� 
�
0/1/1��������� 
� �
E__inference_lstm_cell_layer_call_and_return_conditional_losses_266774�123��}
v�s
 �
inputs��������� 
K�H
"�
states/0��������� 
"�
states/1��������� 
p
� "s�p
i�f
�
0/0��������� 
E�B
�
0/1/0��������� 
�
0/1/1��������� 
� �
*__inference_lstm_cell_layer_call_fn_266653�123��}
v�s
 �
inputs��������� 
K�H
"�
states/0��������� 
"�
states/1��������� 
p 
� "c�`
�
0��������� 
A�>
�
1/0��������� 
�
1/1��������� �
*__inference_lstm_cell_layer_call_fn_266670�123��}
v�s
 �
inputs��������� 
K�H
"�
states/0��������� 
"�
states/1��������� 
p
� "c�`
�
0��������� 
A�>
�
1/0��������� 
�
1/1��������� �
I__inference_seq2seq_model_layer_call_and_return_conditional_losses_263904�	123456/0n�k
d�a
W�T
(�%
encoder_inputs���������i
(�%
decoder_inputs���������i
p 

 
� "*�'
 �
0���������i�
� �
I__inference_seq2seq_model_layer_call_and_return_conditional_losses_263939�	123456/0n�k
d�a
W�T
(�%
encoder_inputs���������i
(�%
decoder_inputs���������i
p

 
� "*�'
 �
0���������i�
� �
I__inference_seq2seq_model_layer_call_and_return_conditional_losses_264395�	123456/0b�_
X�U
K�H
"�
inputs/0���������i
"�
inputs/1���������i
p 

 
� "*�'
 �
0���������i�
� �
I__inference_seq2seq_model_layer_call_and_return_conditional_losses_264905�	123456/0b�_
X�U
K�H
"�
inputs/0���������i
"�
inputs/1���������i
p

 
� "*�'
 �
0���������i�
� �
.__inference_seq2seq_model_layer_call_fn_263207�	123456/0n�k
d�a
W�T
(�%
encoder_inputs���������i
(�%
decoder_inputs���������i
p 

 
� "����������i��
.__inference_seq2seq_model_layer_call_fn_263869�	123456/0n�k
d�a
W�T
(�%
encoder_inputs���������i
(�%
decoder_inputs���������i
p

 
� "����������i��
.__inference_seq2seq_model_layer_call_fn_263989�	123456/0b�_
X�U
K�H
"�
inputs/0���������i
"�
inputs/1���������i
p 

 
� "����������i��
.__inference_seq2seq_model_layer_call_fn_264013�	123456/0b�_
X�U
K�H
"�
inputs/0���������i
"�
inputs/1���������i
p

 
� "����������i��
L__inference_shared_embedding_layer_call_and_return_conditional_losses_264922_/�,
%�"
 �
inputs���������i
� ")�&
�
0���������i 
� �
1__inference_shared_embedding_layer_call_fn_264912R/�,
%�"
 �
inputs���������i
� "����������i �
$__inference_signature_wrapper_263965�	123456/0���
� 
{�x
:
decoder_inputs(�%
decoder_inputs���������i
:
encoder_inputs(�%
encoder_inputs���������i"B�?
=
decoder_dense,�)
decoder_dense���������i�