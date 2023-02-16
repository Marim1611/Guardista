/* ###
 * IP: Apache License 2.0 with LLVM Exceptions
 */
/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 4.0.1
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package SWIG;

public final class PathType {
  public final static PathType ePathTypeLLDBShlibDir = new PathType("ePathTypeLLDBShlibDir");
  public final static PathType ePathTypeSupportExecutableDir = new PathType("ePathTypeSupportExecutableDir");
  public final static PathType ePathTypeHeaderDir = new PathType("ePathTypeHeaderDir");
  public final static PathType ePathTypePythonDir = new PathType("ePathTypePythonDir");
  public final static PathType ePathTypeLLDBSystemPlugins = new PathType("ePathTypeLLDBSystemPlugins");
  public final static PathType ePathTypeLLDBUserPlugins = new PathType("ePathTypeLLDBUserPlugins");
  public final static PathType ePathTypeLLDBTempSystemDir = new PathType("ePathTypeLLDBTempSystemDir");
  public final static PathType ePathTypeGlobalLLDBTempSystemDir = new PathType("ePathTypeGlobalLLDBTempSystemDir");
  public final static PathType ePathTypeClangDir = new PathType("ePathTypeClangDir");

  public final int swigValue() {
    return swigValue;
  }

  public String toString() {
    return swigName;
  }

  public static PathType swigToEnum(int swigValue) {
    if (swigValue < swigValues.length && swigValue >= 0 && swigValues[swigValue].swigValue == swigValue)
      return swigValues[swigValue];
    for (int i = 0; i < swigValues.length; i++)
      if (swigValues[i].swigValue == swigValue)
        return swigValues[i];
    throw new IllegalArgumentException("No enum " + PathType.class + " with value " + swigValue);
  }

  private PathType(String swigName) {
    this.swigName = swigName;
    this.swigValue = swigNext++;
  }

  private PathType(String swigName, int swigValue) {
    this.swigName = swigName;
    this.swigValue = swigValue;
    swigNext = swigValue+1;
  }

  private PathType(String swigName, PathType swigEnum) {
    this.swigName = swigName;
    this.swigValue = swigEnum.swigValue;
    swigNext = this.swigValue+1;
  }

  private static PathType[] swigValues = { ePathTypeLLDBShlibDir, ePathTypeSupportExecutableDir, ePathTypeHeaderDir, ePathTypePythonDir, ePathTypeLLDBSystemPlugins, ePathTypeLLDBUserPlugins, ePathTypeLLDBTempSystemDir, ePathTypeGlobalLLDBTempSystemDir, ePathTypeClangDir };
  private static int swigNext = 0;
  private final int swigValue;
  private final String swigName;
}

