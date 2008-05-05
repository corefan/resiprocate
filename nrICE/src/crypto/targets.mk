# Copyright (c) 2007, Adobe Systems, Incorporated
# All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
# 
# * Redistributions of source code must retain the above copyright
#   notice, this list of conditions and the following disclaimer.
# 
# * Redistributions in binary form must reproduce the above copyright
#   notice, this list of conditions and the following disclaimer in the
#   documentation and/or other materials provided with the distribution.
# 
# * Neither the name of Adobe Systems, Network Resonance nor the names of its
#   contributors may be used to endorse or promote products derived from
#   this software without specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
# A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
# OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

# ICE_CRYPTO_ARCHIVE:
#    source files to compile to object and to place in a library archive
#
# ICE_CRYPTO_ARCHIVE_NAME:
#    the library name to use to archive the object files
#
# ICE_CRYPTO_ARCHIVE_TYPE:
#    either 'static', 'dynamic', or 'jni' (the default is 'static')
#
# ICE_CRYPTO_AUTOGENERATED:
#    whether this targets.mk is autogenerated (either 'true' or 'false')
#
# ICE_CRYPTO_COMPILE:
#    source files to compile to object
#
# ICE_CRYPTO_COPY:
#    files to copy to the build directory
#
# ICE_CRYPTO_GLOBAL_CFLAGS:
#    preprocessor and compile-time flags specific to compiling
#    everything
#
# ICE_CRYPTO_GLOBAL_LDFLAGS:
#    link-time flags specific to linking everything
#
# ICE_CRYPTO_LINK:
#    source files compile and link
#
# ICE_CRYPTO_LOCAL_CFLAGS:
#    preprocessor and compile-time flags specific to compiling only
#    the files in this module directory
#
# ICE_CRYPTO_LOCAL_LDFLAGS:
#    link-time flags specific to linking only the files in
#    this module directory
#
# ICE_CRYPTO_PREFIX:
#    defines the module name, which also serves as the
#    prefix for all the variable names defined in this file
#
# ICE_CRYPTO_SUBDIRS:
#    subdirectories containing additional targets.mk files
#
ICE_CRYPTO_ARCHIVE                = nr_crypto.c nr_crypto_openssl.c
ICE_CRYPTO_ARCHIVE_NAME           =
ICE_CRYPTO_ARCHIVE_TYPE           =
ICE_CRYPTO_AUTOGENERATED          = true
ICE_CRYPTO_COMPILE                =
ICE_CRYPTO_COPY                   =
ICE_CRYPTO_GLOBAL_CFLAGS          =
ICE_CRYPTO_GLOBAL_LDFLAGS         =
ICE_CRYPTO_LINK                   =
ICE_CRYPTO_LOCAL_CFLAGS           =
ICE_CRYPTO_LOCAL_LDFLAGS          =
ICE_CRYPTO_PREFIX                 = ICE_CRYPTO
ICE_CRYPTO_SUBDIRS                =



#
#    AUTOMATICALLY-GENERATED SECTION
#



#
#    LOCAL ENVIRONMENT
#
ICE_CRYPTO_BUILD                  = nr_crypto.$(OBJSUFFIX) nr_crypto.d \
                                    nr_crypto_openssl.$(OBJSUFFIX) \
                                    nr_crypto_openssl.d



#
#    GLOBAL ENVIRONMENT
#
GLOBAL_BUILD                     += $(ICE_CRYPTO_BUILD)
GLOBAL_CFLAGS                    += $(ICE_CRYPTO_GLOBAL_CFLAGS) \
                                 -I$(ICE_CRYPTO_SRCDIR)
GLOBAL_LDFLAGS                   += $(ICE_CRYPTO_GLOBAL_LDFLAGS)



#
#    GENERIC DEPENDENCIES
#
all:                                $(ICE_CRYPTO_BUILD)
depend:                             nr_crypto.d
depend:                             nr_crypto_openssl.d



#
#    BUILD DEPENDENCIES
#

nr_crypto.$(OBJSUFFIX): $(ICE_CRYPTO_SRCDIR)nr_crypto.c nr_crypto.d
	$(COMPILE.c) $@ $< $(ICE_CRYPTO_LOCAL_CFLAGS) $(GLOBAL_CFLAGS)

nr_crypto.d: $(ICE_CRYPTO_SRCDIR)nr_crypto.c
	$(COMPILE.c) $@ $< -MM -MG $(ICE_CRYPTO_LOCAL_CFLAGS) $(GLOBAL_CFLAGS)

nr_crypto_openssl.$(OBJSUFFIX): $(ICE_CRYPTO_SRCDIR)nr_crypto_openssl.c nr_crypto_openssl.d
	$(COMPILE.c) $@ $< $(ICE_CRYPTO_LOCAL_CFLAGS) $(GLOBAL_CFLAGS)

nr_crypto_openssl.d: $(ICE_CRYPTO_SRCDIR)nr_crypto_openssl.c
	$(COMPILE.c) $@ $< -MM -MG $(ICE_CRYPTO_LOCAL_CFLAGS) $(GLOBAL_CFLAGS)

$(GLOBAL_LIBNAME): nr_crypto.$(OBJSUFFIX)

$(GLOBAL_LIBNAME): nr_crypto_openssl.$(OBJSUFFIX)
