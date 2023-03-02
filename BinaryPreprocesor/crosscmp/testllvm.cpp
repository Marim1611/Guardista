//===---- IRReader.cpp - Reader for LLVM IR files -------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
 




#include "llvm/IRReader/IRReader.h"
#include "llvm-c/IRReader.h"
#include "llvm/AsmParser/Parser.h"
#include "llvm/Bitcode/BitcodeReader.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/MemoryBuffer.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/Timer.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/IRBuilder.h"
#include <optional>
#include <system_error>
 
using namespace llvm;
 
namespace llvm {
  extern bool TimePassesIsEnabled;
}




static LLVMContext TheContext;
static IRBuilder<> Builder(TheContext);


/*
int main(int argc, char **argv){
    MemoryBufferRef file = *MemoryBuffer::getFile(argv[1]).get();
    Expected<std::unique_ptr<llvm::Module>> mod = llvm::parseIRFile(file, TheContext);
    errs() << toString(std::move(mod.takeError())) << "\n";
    return 0;
}

*/


int main(int argc, char **argv) {
  if (argc < 2) {
    errs() << "Usage: " << argv[0] << " <IR file>\n";
    return 1;
  }

  // Parse the input LLVM IR file into a module.
  SMDiagnostic Err;
  std::unique_ptr<llvm::Module> Mod = llvm::parseIRFile(argv[1],Err, TheContext);
  if (!Mod) {
    Err.print(argv[0], errs());
    return 1;
  }

  // ... use module


  std::cout<< *Mod<<endl;



/*

  for (llvm::Module M = Mod)

  for (Module::iterator F = Mod.begin(), E = Mod.end(); F != E; ++F){
    for(Function::iterator bb = F.begin(), e = F.end(); bb != e; ++bb) {
        for(BasicBlock::iterator i = bb->begin(), e = bb->end(); i != e; ++i) {
          
          }
        }
  }
*/













}