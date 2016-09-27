% AIDL(1) | 7.0.0_r1 (24.0.0)
% The Android Open Source Project
% 22 August 2016

# NAME

aidl - Java bindings generator of AIDL interfaces

# SYNOPSIS

**aidl** _OPTIONS_ _INPUT_ [_OUTPUT_]

**aidl** --preprocess _OUTPUT_ _INPUT..._

# OPTIONS

-I\<DIR\>
: Search path for import statements.

-d\<FILE\>
: Generate dependency file.

-a
: Generate dependency file next to the output file with the name based on the
  input file.

-p\<FILE\>
: File created by **--preprocess** to import.

-o\<FOLDER\>
: Base output folder for generated files.

-b
: Fail when trying to compile a parcelable.

_INPUT_
: An aidl interface file.

_OUTPUT_
: The generated interface files.

If _OUTPUT_ is omitted and the **-o** option is not used, the input filename
is used, with the **.aidl** extension changed to a **.java** extension.

If the **-o** option is used, the generated files will be placed in the base
output folder under their package folder.

# SEE ALSO

https://developer.android.com/guide/components/aidl.html