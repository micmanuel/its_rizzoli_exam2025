˖
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.17.02v2.17.0-rc1-2-gad6d8cc177d8��
z
out_bVarHandleOp*
_output_shapes
: *

debug_nameout_b/*
dtype0*
shape:*
shared_nameout_b
[
out_b/Read/ReadVariableOpReadVariableOpout_b*
_output_shapes
:*
dtype0

out_wVarHandleOp*
_output_shapes
: *

debug_nameout_w/*
dtype0*
shape:	�*
shared_nameout_w
`
out_w/Read/ReadVariableOpReadVariableOpout_w*
_output_shapes
:	�*
dtype0
{
fc1_bVarHandleOp*
_output_shapes
: *

debug_namefc1_b/*
dtype0*
shape:�*
shared_namefc1_b
\
fc1_b/Read/ReadVariableOpReadVariableOpfc1_b*
_output_shapes	
:�*
dtype0
�
fc1_wVarHandleOp*
_output_shapes
: *

debug_namefc1_w/*
dtype0*
shape:
��*
shared_namefc1_w
a
fc1_w/Read/ReadVariableOpReadVariableOpfc1_w* 
_output_shapes
:
��*
dtype0
�
conv2_bVarHandleOp*
_output_shapes
: *

debug_name
conv2_b/*
dtype0*
shape:@*
shared_name	conv2_b
_
conv2_b/Read/ReadVariableOpReadVariableOpconv2_b*
_output_shapes
:@*
dtype0
�
conv2_wVarHandleOp*
_output_shapes
: *

debug_name
conv2_w/*
dtype0*
shape: @*
shared_name	conv2_w
k
conv2_w/Read/ReadVariableOpReadVariableOpconv2_w*&
_output_shapes
: @*
dtype0
�
conv1_bVarHandleOp*
_output_shapes
: *

debug_name
conv1_b/*
dtype0*
shape: *
shared_name	conv1_b
_
conv1_b/Read/ReadVariableOpReadVariableOpconv1_b*
_output_shapes
: *
dtype0
�
conv1_wVarHandleOp*
_output_shapes
: *

debug_name
conv1_w/*
dtype0*
shape: *
shared_name	conv1_w
k
conv1_w/Read/ReadVariableOpReadVariableOpconv1_w*&
_output_shapes
: *
dtype0

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
t
conv1_w
conv1_b
conv2_w
conv2_b
	fc1_w
	fc1_b
	out_w
	out_b
	
signatures*
C=
VARIABLE_VALUEconv1_w"conv1_w/.ATTRIBUTES/VARIABLE_VALUE*
C=
VARIABLE_VALUEconv1_b"conv1_b/.ATTRIBUTES/VARIABLE_VALUE*
C=
VARIABLE_VALUEconv2_w"conv2_w/.ATTRIBUTES/VARIABLE_VALUE*
C=
VARIABLE_VALUEconv2_b"conv2_b/.ATTRIBUTES/VARIABLE_VALUE*
?9
VARIABLE_VALUEfc1_w fc1_w/.ATTRIBUTES/VARIABLE_VALUE*
?9
VARIABLE_VALUEfc1_b fc1_b/.ATTRIBUTES/VARIABLE_VALUE*
?9
VARIABLE_VALUEout_w out_w/.ATTRIBUTES/VARIABLE_VALUE*
?9
VARIABLE_VALUEout_b out_b/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCallStatefulPartitionedCallsaver_filenameconv1_wconv1_bconv2_wconv2_bfc1_wfc1_bout_wout_bConst*
Tin
2
*
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
GPU 2J 8� *'
f"R 
__inference__traced_save_27845
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv1_wconv1_bconv2_wconv2_bfc1_wfc1_bout_wout_b*
Tin
2	*
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
GPU 2J 8� **
f%R#
!__inference__traced_restore_27878�k
�'
�
!__inference__traced_restore_27878
file_prefix2
assignvariableop_conv1_w: (
assignvariableop_1_conv1_b: 4
assignvariableop_2_conv2_w: @(
assignvariableop_3_conv2_b:@,
assignvariableop_4_fc1_w:
��'
assignvariableop_5_fc1_b:	�+
assignvariableop_6_out_w:	�&
assignvariableop_7_out_b:

identity_9��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*�
value�B�	B"conv1_w/.ATTRIBUTES/VARIABLE_VALUEB"conv1_b/.ATTRIBUTES/VARIABLE_VALUEB"conv2_w/.ATTRIBUTES/VARIABLE_VALUEB"conv2_b/.ATTRIBUTES/VARIABLE_VALUEB fc1_w/.ATTRIBUTES/VARIABLE_VALUEB fc1_b/.ATTRIBUTES/VARIABLE_VALUEB out_w/.ATTRIBUTES/VARIABLE_VALUEB out_b/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*8
_output_shapes&
$:::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_conv1_wIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv1_bIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_conv2_wIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_conv2_bIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_fc1_wIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_fc1_bIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_out_wIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_out_bIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �

Identity_8Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_9IdentityIdentity_8:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7*
_output_shapes
 "!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : : : : : 2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72$
AssignVariableOpAssignVariableOp:%!

_user_specified_nameout_b:%!

_user_specified_nameout_w:%!

_user_specified_namefc1_b:%!

_user_specified_namefc1_w:'#
!
_user_specified_name	conv2_b:'#
!
_user_specified_name	conv2_w:'#
!
_user_specified_name	conv1_b:'#
!
_user_specified_name	conv1_w:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�D
�
__inference__traced_save_27845
file_prefix8
read_disablecopyonread_conv1_w: .
 read_1_disablecopyonread_conv1_b: :
 read_2_disablecopyonread_conv2_w: @.
 read_3_disablecopyonread_conv2_b:@2
read_4_disablecopyonread_fc1_w:
��-
read_5_disablecopyonread_fc1_b:	�1
read_6_disablecopyonread_out_w:	�,
read_7_disablecopyonread_out_b:
savev2_const
identity_17��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOpw
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
: a
Read/DisableCopyOnReadDisableCopyOnReadread_disablecopyonread_conv1_w*
_output_shapes
 �
Read/ReadVariableOpReadVariableOpread_disablecopyonread_conv1_w^Read/DisableCopyOnRead*&
_output_shapes
: *
dtype0b
IdentityIdentityRead/ReadVariableOp:value:0*
T0*&
_output_shapes
: i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
: e
Read_1/DisableCopyOnReadDisableCopyOnRead read_1_disablecopyonread_conv1_b*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp read_1_disablecopyonread_conv1_b^Read_1/DisableCopyOnRead*
_output_shapes
: *
dtype0Z

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: e
Read_2/DisableCopyOnReadDisableCopyOnRead read_2_disablecopyonread_conv2_w*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp read_2_disablecopyonread_conv2_w^Read_2/DisableCopyOnRead*&
_output_shapes
: @*
dtype0f

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*&
_output_shapes
: @k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
: @e
Read_3/DisableCopyOnReadDisableCopyOnRead read_3_disablecopyonread_conv2_b*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp read_3_disablecopyonread_conv2_b^Read_3/DisableCopyOnRead*
_output_shapes
:@*
dtype0Z

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes
:@_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:@c
Read_4/DisableCopyOnReadDisableCopyOnReadread_4_disablecopyonread_fc1_w*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOpread_4_disablecopyonread_fc1_w^Read_4/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0`

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��e

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��c
Read_5/DisableCopyOnReadDisableCopyOnReadread_5_disablecopyonread_fc1_b*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOpread_5_disablecopyonread_fc1_b^Read_5/DisableCopyOnRead*
_output_shapes	
:�*
dtype0\
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:�c
Read_6/DisableCopyOnReadDisableCopyOnReadread_6_disablecopyonread_out_w*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOpread_6_disablecopyonread_out_w^Read_6/DisableCopyOnRead*
_output_shapes
:	�*
dtype0`
Identity_12IdentityRead_6/ReadVariableOp:value:0*
T0*
_output_shapes
:	�f
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:	�c
Read_7/DisableCopyOnReadDisableCopyOnReadread_7_disablecopyonread_out_b*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOpread_7_disablecopyonread_out_b^Read_7/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_14IdentityRead_7/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:L

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
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*�
value�B�	B"conv1_w/.ATTRIBUTES/VARIABLE_VALUEB"conv1_b/.ATTRIBUTES/VARIABLE_VALUEB"conv2_w/.ATTRIBUTES/VARIABLE_VALUEB"conv2_b/.ATTRIBUTES/VARIABLE_VALUEB fc1_w/.ATTRIBUTES/VARIABLE_VALUEB fc1_b/.ATTRIBUTES/VARIABLE_VALUEB out_w/.ATTRIBUTES/VARIABLE_VALUEB out_b/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:	*
dtype0*%
valueB	B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_16Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_17IdentityIdentity_16:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp*
_output_shapes
 "#
identity_17Identity_17:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
: : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp:=	9

_output_shapes
: 

_user_specified_nameConst:%!

_user_specified_nameout_b:%!

_user_specified_nameout_w:%!

_user_specified_namefc1_b:%!

_user_specified_namefc1_w:'#
!
_user_specified_name	conv2_b:'#
!
_user_specified_name	conv2_w:'#
!
_user_specified_name	conv1_b:'#
!
_user_specified_name	conv1_w:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"�J
saver_filename:0StatefulPartitionedCall:0StatefulPartitionedCall_18"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp:�
�
conv1_w
conv1_b
conv2_w
conv2_b
	fc1_w
	fc1_b
	out_w
	out_b
	
signatures"
_generic_user_object
!: 2conv1_w
: 2conv1_b
!: @2conv2_w
:@2conv2_b
:
��2fc1_w
:�2fc1_b
:	�2out_w
:2out_b
"
signature_map